// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "chrome/browser/extensions/api/storage/storage_schema_manifest_handler.h"

#include <string>
#include <vector>

#include "base/file_util.h"
#include "base/files/file_path.h"
#include "base/files/scoped_temp_dir.h"
#include "base/values.h"
#include "chrome/common/chrome_version_info.h"
#include "chrome/common/extensions/extension.h"
#include "chrome/common/extensions/features/feature.h"
#include "chrome/common/extensions/manifest.h"
#include "testing/gtest/include/gtest/gtest.h"

namespace extensions {

class StorageSchemaManifestHandlerTest : public testing::Test {
 public:
  StorageSchemaManifestHandlerTest()
      : scoped_channel_(chrome::VersionInfo::CHANNEL_DEV) {}

  virtual ~StorageSchemaManifestHandlerTest() {}

  virtual void SetUp() OVERRIDE {
    ASSERT_TRUE(temp_dir_.CreateUniqueTempDir());

    manifest_.SetString("name", "test");
    manifest_.SetString("version", "1.2.3.4");
    manifest_.SetInteger("manifest_version", 2);

    storage_schema_manifest_handler_ = new StorageSchemaManifestHandler();
    storage_schema_manifest_handler_->Register();
    // This is used to invoke the private virtual methods.
    handler_ = storage_schema_manifest_handler_;
  }

  scoped_refptr<Extension> CreateExtension(const std::string& schema) {
    std::string error;
    scoped_refptr<Extension> extension = Extension::Create(
        temp_dir_.path(), Manifest::UNPACKED, manifest_,
        Extension::NO_FLAGS, "", &error);
    if (!extension)
      return NULL;
    base::FilePath schema_path = temp_dir_.path().AppendASCII("schema.json");
    if (schema.empty()) {
      file_util::Delete(schema_path, false);
    } else {
      if (file_util::WriteFile(schema_path, schema.data(), schema.size()) !=
          static_cast<int>(schema.size())) {
        return NULL;
      }
    }
    return extension;
  }

  testing::AssertionResult Validates(const std::string& schema) {
    scoped_refptr<Extension> extension = CreateExtension(schema);
    if (!extension)
      return testing::AssertionFailure() << "Failed to create test extension";
    std::string error;
    std::vector<InstallWarning> warnings;
    if (handler_->Validate(extension.get(), &error, &warnings))
      return testing::AssertionSuccess();
    return testing::AssertionFailure() << error;
  }

  base::ScopedTempDir temp_dir_;
  Feature::ScopedCurrentChannel scoped_channel_;
  ManifestHandler* handler_;
  StorageSchemaManifestHandler* storage_schema_manifest_handler_;
  base::DictionaryValue manifest_;
};

TEST_F(StorageSchemaManifestHandlerTest, Parse) {
  scoped_refptr<Extension> extension = CreateExtension("");
  ASSERT_TRUE(extension);

  // No storage.managed_schema entry.
  string16 error;
  EXPECT_FALSE(handler_->Parse(extension.get(), &error));

  // Not a string.
  manifest_.SetInteger("storage.managed_schema", 123);
  extension = CreateExtension("");
  EXPECT_FALSE(extension);

  // All good now.
  manifest_.SetString("storage.managed_schema", "schema.json");
  extension = CreateExtension("");
  ASSERT_TRUE(extension);
  EXPECT_TRUE(handler_->Parse(extension.get(), &error)) << error;
}

TEST_F(StorageSchemaManifestHandlerTest, Validate) {
  // Doesn't have storage permission.
  EXPECT_FALSE(Validates(""));

  // File doesn't exist.
  base::ListValue permissions;
  permissions.AppendString("storage");
  manifest_.Set("permissions", permissions.DeepCopy());
  EXPECT_FALSE(Validates(""));

  // Absolute path.
  manifest_.SetString("storage.managed_storage", "/etc/passwd");
  EXPECT_FALSE(Validates(""));

  // Path with ..
  manifest_.SetString("storage.managed_storage", "../../../../../etc/passwd");
  EXPECT_FALSE(Validates(""));

  // Does not exist.
  manifest_.SetString("storage.managed_storage", "not-there");
  EXPECT_FALSE(Validates(""));

  // Invalid JSON.
  manifest_.SetString("storage.managed_schema", "schema.json");
  EXPECT_FALSE(Validates("-invalid-"));

  // No version.
  EXPECT_FALSE(Validates("{}"));

  // Invalid version.
  EXPECT_FALSE(Validates(
      "{"
      "  \"$schema\": \"http://json-schema.org/draft-42/schema#\""
      "}"));

  // Missing type.
  EXPECT_FALSE(Validates(
      "{"
      "  \"$schema\": \"http://json-schema.org/draft-03/schema#\""
      "}"));

  // Invalid type.
  EXPECT_FALSE(Validates(
      "{"
      "  \"$schema\": \"http://json-schema.org/draft-03/schema#\","
      "  \"type\": \"string\""
      "}"));

  // "additionalProperties" not supported at top level.
  EXPECT_FALSE(Validates(
      "{"
      "  \"$schema\": \"http://json-schema.org/draft-03/schema#\","
      "  \"type\": \"object\","
      "  \"additionalProperties\": {}"
      "}"));

  // All good now.
  EXPECT_TRUE(Validates(
      "{"
      "  \"$schema\": \"http://json-schema.org/draft-03/schema#\","
      "  \"type\": \"object\""
      "}"));
}

}  // namespace extensions
