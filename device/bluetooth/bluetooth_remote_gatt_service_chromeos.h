// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef DEVICE_BLUETOOTH_BLUETOOTH_REMOTE_GATT_SERVICE_CHROMEOS_H_
#define DEVICE_BLUETOOTH_BLUETOOTH_REMOTE_GATT_SERVICE_CHROMEOS_H_

#include <string>
#include <vector>

#include "base/memory/weak_ptr.h"
#include "base/observer_list.h"
#include "chromeos/dbus/bluetooth_gatt_service_client.h"
#include "dbus/object_path.h"
#include "device/bluetooth/bluetooth_gatt_service.h"
#include "device/bluetooth/bluetooth_uuid.h"

namespace device {

class BluetoothGattCharacteristic;

}  // namespace device

namespace chromeos {

class BluetoothDeviceChromeOS;

// The BluetoothRemoteGattServiceChromeOS class implements BluetootGattService
// for remote GATT services on the the Chrome OS platform.
class BluetoothRemoteGattServiceChromeOS
    : public device::BluetoothGattService,
      public BluetoothGattServiceClient::Observer {
 public:
  // device::BluetoothGattService overrides.
  virtual std::string GetIdentifier() const OVERRIDE;
  virtual device::BluetoothUUID GetUUID() const OVERRIDE;
  virtual bool IsLocal() const OVERRIDE;
  virtual bool IsPrimary() const OVERRIDE;
  virtual const std::vector<device::BluetoothGattCharacteristic*>&
      GetCharacteristics() const OVERRIDE;
  virtual const std::vector<device::BluetoothGattService*>&
      GetIncludedServices() const OVERRIDE;
  virtual void AddObserver(
      device::BluetoothGattService::Observer* observer) OVERRIDE;
  virtual void RemoveObserver(
      device::BluetoothGattService::Observer* observer) OVERRIDE;
  virtual bool AddCharacteristic(
      device::BluetoothGattCharacteristic* characteristic) OVERRIDE;
  virtual bool AddIncludedService(
      device::BluetoothGattService* service) OVERRIDE;
  virtual void Register(const base::Closure& callback,
                        const ErrorCallback& error_callback) OVERRIDE;
  virtual void Unregister(const base::Closure& callback,
                          const ErrorCallback& error_callback) OVERRIDE;

  // Object path of the underlying service.
  const dbus::ObjectPath& object_path() const { return object_path_; }

 private:
  friend class BluetoothDeviceChromeOS;

  BluetoothRemoteGattServiceChromeOS(BluetoothDeviceChromeOS* device,
                                     const dbus::ObjectPath& object_path);
  virtual ~BluetoothRemoteGattServiceChromeOS();

  // BluetoothGattServiceClient::Observer override.
  virtual void GattServicePropertyChanged(
      const dbus::ObjectPath& object_path,
      const std::string& property_name) OVERRIDE;

  // Object path of the GATT service.
  dbus::ObjectPath object_path_;

  // List of observers interested in event notifications from us.
  ObserverList<device::BluetoothGattService::Observer> observers_;

  // The device this GATT service belongs to.
  BluetoothDeviceChromeOS* device_;

  // The list of characteristics that belong to this service.
  std::vector<device::BluetoothGattCharacteristic*> characteristics_;

  // The list of GATT services included by this service.
  std::vector<device::BluetoothGattService*> includes_;

  // Note: This should remain the last member so it'll be destroyed and
  // invalidate its weak pointers before any other members are destroyed.
  base::WeakPtrFactory<BluetoothRemoteGattServiceChromeOS> weak_ptr_factory_;

  DISALLOW_COPY_AND_ASSIGN(BluetoothRemoteGattServiceChromeOS);
};

}  // namespace chromeos

#endif  // DEVICE_BLUETOOTH_BLUETOOTH_REMOTE_GATT_SERVICE_CHROMEOS_H_
