// Copyright (c) 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef CHROME_BROWSER_IMPORTER_IE_IMPORTER_TEST_REGISTRY_OVERRIDER_WIN_H_
#define CHROME_BROWSER_IMPORTER_IE_IMPORTER_TEST_REGISTRY_OVERRIDER_WIN_H_

#include "base/basictypes.h"
#include "base/string16.h"

// A helper class to let tests generate a random registry key to be used in
// HKEY_CURRENT_USER in tests. After the key has been generated by constructing
// an IEImporterTestRegistryOverrider, consumers in this process (or in any
// child processes created after the key has been generated) can obtain the key
// via GetTestRegistryOverride(). IEImporterTestRegistryOverrider will delete
// the temporary key upon being deleted itself. Only one
// IEImporterTestRegistryOverrider should live at once in a given process
// hiearchy.
class IEImporterTestRegistryOverrider {
 public:
  IEImporterTestRegistryOverrider();
  ~IEImporterTestRegistryOverrider();

  // Returns a test key if one was chosen and set by a call to
  // SetTestRegistryOverride(); returns the empty string if none.
  static base::string16 GetTestRegistryOverride();

 private:
  base::string16 temporary_key_;

  DISALLOW_COPY_AND_ASSIGN(IEImporterTestRegistryOverrider);
};

#endif  // CHROME_BROWSER_IMPORTER_IE_IMPORTER_TEST_REGISTRY_OVERRIDER_WIN_H_
