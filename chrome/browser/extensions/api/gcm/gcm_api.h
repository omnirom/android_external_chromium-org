// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef CHROME_BROWSER_EXTENSIONS_API_GCM_GCM_API_H_
#define CHROME_BROWSER_EXTENSIONS_API_GCM_GCM_API_H_

#include "chrome/common/extensions/api/gcm.h"
#include "components/gcm_driver/gcm_client.h"
#include "extensions/browser/extension_function.h"

namespace gcm {
class GCMDriver;
class GCMProfileService;
}  // namespace gcm

class Profile;

namespace extensions {

class GcmApiFunction : public AsyncExtensionFunction {
 public:
  GcmApiFunction() {}

 protected:
  virtual ~GcmApiFunction() {}

  // ExtensionFunction:
  virtual bool RunAsync() OVERRIDE FINAL;

  // Actual implementation of specific functions.
  virtual bool DoWork() = 0;

  // Checks that the GCM API is enabled.
  bool IsGcmApiEnabled() const;

  gcm::GCMDriver* GetGCMDriver() const;
};

class GcmRegisterFunction : public GcmApiFunction {
 public:
  DECLARE_EXTENSION_FUNCTION("gcm.register", GCM_REGISTER);

  GcmRegisterFunction();

 protected:
  virtual ~GcmRegisterFunction();

  // Register function implementation.
  virtual bool DoWork() OVERRIDE FINAL;

 private:
  void CompleteFunctionWithResult(const std::string& registration_id,
                                  gcm::GCMClient::Result result);
};

class GcmUnregisterFunction : public GcmApiFunction {
 public:
  DECLARE_EXTENSION_FUNCTION("gcm.unregister", GCM_UNREGISTER);

  GcmUnregisterFunction();

 protected:
  virtual ~GcmUnregisterFunction();

  // Register function implementation.
  virtual bool DoWork() OVERRIDE FINAL;

 private:
  void CompleteFunctionWithResult(gcm::GCMClient::Result result);
};

class GcmSendFunction : public GcmApiFunction {
 public:
  DECLARE_EXTENSION_FUNCTION("gcm.send", GCM_SEND);

  GcmSendFunction();

 protected:
  virtual ~GcmSendFunction();

  // Send function implementation.
  virtual bool DoWork() OVERRIDE FINAL;

 private:
  void CompleteFunctionWithResult(const std::string& message_id,
                                  gcm::GCMClient::Result result);

  // Validates that message data do not carry invalid keys and fit into
  // allowable size limits.
  bool ValidateMessageData(const gcm::GCMClient::MessageData& data) const;
};

class GcmJsEventRouter {
 public:
  explicit GcmJsEventRouter(Profile* profile);

  virtual ~GcmJsEventRouter();

  void OnMessage(const std::string& app_id,
                 const gcm::GCMClient::IncomingMessage& message);
  void OnMessagesDeleted(const std::string& app_id);
  void OnSendError(const std::string& app_id,
                   const gcm::GCMClient::SendErrorDetails& send_error_details);

 private:
  // The application we route the event to is running in context of the
  // |profile_| and the latter outlives the event router.
  Profile* profile_;
};

}  // namespace extensions

#endif  // CHROME_BROWSER_EXTENSIONS_API_GCM_GCM_API_H_
