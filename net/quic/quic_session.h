// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// A QuicSession, which demuxes a single connection to individual streams.

#ifndef NET_QUIC_QUIC_SESSION_H_
#define NET_QUIC_QUIC_SESSION_H_

#include <vector>

#include "base/compiler_specific.h"
#include "base/hash_tables.h"
#include "net/base/ip_endpoint.h"
#include "net/quic/blocked_list.h"
#include "net/quic/quic_connection.h"
#include "net/quic/quic_crypto_stream.h"
#include "net/quic/quic_packet_creator.h"
#include "net/quic/quic_protocol.h"
#include "net/quic/quic_spdy_compressor.h"
#include "net/quic/quic_spdy_decompressor.h"
#include "net/quic/reliable_quic_stream.h"

namespace net {

class QuicCryptoStream;
class ReliableQuicStream;
class VisitorShim;

namespace test {
class QuicSessionPeer;
}  // namespace test

class NET_EXPORT_PRIVATE QuicSession : public QuicConnectionVisitorInterface {
 public:
  // CryptoHandshakeEvent enumerates the events generated by a QuicCryptoStream.
  enum CryptoHandshakeEvent {
    // ENCRYPTION_FIRST_ESTABLISHED indicates that a full client hello has been
    // sent by a client and that subsequent packets will be encrypted. (Client
    // only.)
    ENCRYPTION_FIRST_ESTABLISHED,
    // ENCRYPTION_REESTABLISHED indicates that a client hello was rejected by
    // the server and thus the encryption key has been updated. Therefore the
    // connection should resend any packets that were sent under
    // ENCRYPTION_INITIAL. (Client only.)
    ENCRYPTION_REESTABLISHED,
    // HANDSHAKE_CONFIRMED, in a client, indicates the the server has accepted
    // our handshake. In a server it indicates that a full, valid client hello
    // has been received. (Client and server.)
    HANDSHAKE_CONFIRMED,
  };

  QuicSession(QuicConnection* connection,
              const QuicConfig& config,
              bool is_server);

  virtual ~QuicSession();

  // QuicConnectionVisitorInterface methods:
  virtual bool OnPacket(const IPEndPoint& self_address,
                        const IPEndPoint& peer_address,
                        const QuicPacketHeader& header,
                        const std::vector<QuicStreamFrame>& frame) OVERRIDE;
  virtual void OnRstStream(const QuicRstStreamFrame& frame) OVERRIDE;
  virtual void OnGoAway(const QuicGoAwayFrame& frame) OVERRIDE;
  virtual void ConnectionClose(QuicErrorCode error, bool from_peer) OVERRIDE;
  // Not needed for HTTP.
  virtual void OnAck(const SequenceNumberSet& acked_packets) OVERRIDE {}
  virtual bool OnCanWrite() OVERRIDE;

  // Called by streams when they want to write data to the peer.
  // Returns a pair with the number of bytes consumed from data, and a boolean
  // indicating if the fin bit was consumed.  This does not indicate the data
  // has been sent on the wire: it may have been turned into a packet and queued
  // if the socket was unexpectedly blocked.
  virtual QuicConsumedData WriteData(QuicStreamId id,
                                     base::StringPiece data,
                                     QuicStreamOffset offset,
                                     bool fin);
  // Called by streams when they want to close the stream in both directions.
  virtual void SendRstStream(QuicStreamId id, QuicRstStreamErrorCode error);

  // Called when the session wants to go away and not accept any new streams.
  void SendGoAway(QuicErrorCode error_code, const std::string& reason);

  // Removes the stream associated with 'stream_id' from the active stream map.
  virtual void CloseStream(QuicStreamId stream_id);

  // Returns true if outgoing packets will be encrypted, even if the server
  // hasn't confirmed the handshake yet.
  virtual bool IsEncryptionEstablished();

  // For a client, returns true if the server has confirmed our handshake. For
  // a server, returns true if a full, valid client hello has been received.
  virtual bool IsCryptoHandshakeConfirmed();

  // Called by the QuicCryptoStream when the handshake enters a new state.
  //
  // Clients will call this function in the order:
  //   ENCRYPTION_FIRST_ESTABLISHED
  //   zero or more ENCRYPTION_REESTABLISHED
  //   HANDSHAKE_CONFIRMED
  //
  // Servers will simply call it once with HANDSHAKE_CONFIRMED.
  virtual void OnCryptoHandshakeEvent(CryptoHandshakeEvent event);

  // Returns mutable config for this session. Returned config is owned
  // by QuicSession.
  virtual QuicConfig* config();

  // Returns true if the stream existed previously and has been closed.
  // Returns false if the stream is still active or if the stream has
  // not yet been created.
  bool IsClosedStream(QuicStreamId id);

  QuicConnection* connection() { return connection_.get(); }
  size_t num_active_requests() const { return stream_map_.size(); }
  const IPEndPoint& peer_address() const {
    return connection_->peer_address();
  }
  QuicGuid guid() const { return connection_->guid(); }

  QuicPacketCreator::Options* options() { return connection()->options(); }

  // Returns the number of currently open streams, including those which have
  // been implicitly created.
  virtual size_t GetNumOpenStreams() const;

  void MarkWriteBlocked(QuicStreamId id);

  // Marks that |stream_id| is blocked waiting to decompress the
  // headers identified by |decompression_id|.
  void MarkDecompressionBlocked(QuicHeaderId decompression_id,
                                QuicStreamId stream_id);

  bool goaway_received() const {
    return goaway_received_;
  }

  bool goaway_sent() const {
    return goaway_sent_;
  }

  QuicSpdyDecompressor* decompressor() { return &decompressor_; }
  QuicSpdyCompressor* compressor() { return &compressor_; }

 protected:
  // Creates a new stream, owned by the caller, to handle a peer-initiated
  // stream.  Returns NULL and does error handling if the stream can not be
  // created.
  virtual ReliableQuicStream* CreateIncomingReliableStream(QuicStreamId id) = 0;

  // Create a new stream, owned by the caller, to handle a locally-initiated
  // stream.  Returns NULL if max streams have already been opened.
  virtual ReliableQuicStream* CreateOutgoingReliableStream() = 0;

  // Return the reserved crypto stream.
  virtual QuicCryptoStream* GetCryptoStream() = 0;

  // Adds 'stream' to the active stream map.
  virtual void ActivateStream(ReliableQuicStream* stream);

  // Returns the stream id for a new stream.
  QuicStreamId GetNextStreamId();

  ReliableQuicStream* GetIncomingReliableStream(QuicStreamId stream_id);

  // This is called after every call other than OnConnectionClose from the
  // QuicConnectionVisitor to allow post-processing once the work has been done.
  // In this case, it deletes streams given that it's safe to do so (no other
  // operations are being done on the streams at this time)
  virtual void PostProcessAfterData();

  base::hash_map<QuicStreamId, ReliableQuicStream*>* streams() {
    return &stream_map_;
  }
  std::vector<ReliableQuicStream*>* closed_streams() {
    return &closed_streams_;
  }

  size_t get_max_open_streams() const {
    return max_open_streams_;
  }

  void set_max_open_streams(size_t max_open_streams) {
    max_open_streams_ = max_open_streams;
  }

 private:
  friend class test::QuicSessionPeer;
  friend class VisitorShim;

  typedef base::hash_map<QuicStreamId, ReliableQuicStream*> ReliableStreamMap;

  ReliableQuicStream* GetStream(const QuicStreamId stream_id);

  scoped_ptr<QuicConnection> connection_;

  // A shim to stand between the connection and the session, to handle stream
  // deletions.
  scoped_ptr<VisitorShim> visitor_shim_;

  std::vector<ReliableQuicStream*> closed_streams_;

  QuicSpdyDecompressor decompressor_;
  QuicSpdyCompressor compressor_;

  QuicConfig config_;

  // Returns the maximum number of streams this connection can open.
  size_t max_open_streams_;

  // Map from StreamId to pointers to streams that are owned by the caller.
  ReliableStreamMap stream_map_;
  QuicStreamId next_stream_id_;
  bool is_server_;

  // Set of stream ids that have been "implicitly created" by receipt
  // of a stream id larger than the next expected stream id.
  base::hash_set<QuicStreamId> implicitly_created_streams_;

  // A list of streams which need to write more data.
  BlockedList<QuicStreamId> write_blocked_streams_;

  // A map of headers waiting to be compressed, and the streams
  // they are associated with.
  map<uint32, QuicStreamId> decompression_blocked_streams_;

  QuicStreamId largest_peer_created_stream_id_;

  // Whether a GoAway has been received.
  bool goaway_received_;
  // Whether a GoAway has been sent.
  bool goaway_sent_;

  DISALLOW_COPY_AND_ASSIGN(QuicSession);
};

}  // namespace net

#endif  // NET_QUIC_QUIC_SESSION_H_
