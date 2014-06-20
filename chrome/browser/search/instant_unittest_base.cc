// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "chrome/browser/search/instant_unittest_base.h"

#include <string>

#include "base/strings/utf_string_conversions.h"
#include "chrome/browser/chrome_notification_types.h"
#include "chrome/browser/profiles/profile.h"
#include "chrome/browser/search/instant_service.h"
#include "chrome/browser/search/instant_service_factory.h"
#include "chrome/browser/search/search.h"
#include "chrome/browser/search_engines/template_url.h"
#include "chrome/browser/search_engines/template_url_service.h"
#include "chrome/browser/search_engines/template_url_service_factory.h"
#include "chrome/browser/search_engines/ui_thread_search_terms_data.h"
#include "chrome/common/pref_names.h"
#include "chrome/test/base/browser_with_test_window_test.h"
#include "chrome/test/base/testing_pref_service_syncable.h"
#include "chrome/test/base/ui_test_utils.h"
#include "components/google/core/browser/google_pref_names.h"
#include "components/google/core/browser/google_url_tracker.h"
#include "components/variations/entropy_provider.h"

InstantUnitTestBase::InstantUnitTestBase() {
  field_trial_list_.reset(new base::FieldTrialList(
      new metrics::SHA1EntropyProvider("42")));
}

InstantUnitTestBase::~InstantUnitTestBase() {
}

void InstantUnitTestBase::SetUp() {
  chrome::EnableQueryExtractionForTesting();
  SetUpHelper();
}

void InstantUnitTestBase::TearDown() {
  UIThreadSearchTermsData::SetGoogleBaseURL("");
  BrowserWithTestWindowTest::TearDown();
}

#if !defined(OS_IOS) && !defined(OS_ANDROID)
void InstantUnitTestBase::SetUpWithoutQueryExtraction() {
  SetUpHelper();
}
#endif

void InstantUnitTestBase::SetUserSelectedDefaultSearchProvider(
    const std::string& base_url) {
  TemplateURLData data;
  data.SetKeyword(base::UTF8ToUTF16(base_url));
  data.SetURL(base_url + "url?bar={searchTerms}");
  data.instant_url = base_url +
      "instant?{google:omniboxStartMarginParameter}{google:forceInstantResults}"
      "foo=foo#foo=foo&strk";
  data.new_tab_url = base_url + "newtab";
  data.alternate_urls.push_back(base_url + "alt#quux={searchTerms}");
  data.search_terms_replacement_key = "strk";

  TemplateURL* template_url = new TemplateURL(data);
  // Takes ownership of |template_url|.
  template_url_service_->Add(template_url);
  template_url_service_->SetUserSelectedDefaultSearchProvider(template_url);
}

void InstantUnitTestBase::NotifyGoogleBaseURLUpdate(
    const std::string& new_google_base_url) {
  // GoogleURLTracker is not created in tests.
  // (See GoogleURLTrackerFactory::ServiceIsNULLWhileTesting())
  // For determining google:baseURL for NTP, the following is used:
  // UIThreadSearchTermsData::GoogleBaseURLValue()
  // For simulating test behavior, this is overridden below.
  UIThreadSearchTermsData::SetGoogleBaseURL(new_google_base_url);
  TemplateURLServiceFactory::GetForProfile(profile())->OnGoogleURLUpdated(
      GURL("https://www.google.com"), GURL(new_google_base_url));
}

bool InstantUnitTestBase::IsInstantServiceObserver(
    InstantServiceObserver* observer) {
  return instant_service_->observers_.HasObserver(observer);
}

TestingProfile* InstantUnitTestBase::CreateProfile() {
  TestingProfile* profile = BrowserWithTestWindowTest::CreateProfile();
  TemplateURLServiceFactory::GetInstance()->SetTestingFactoryAndUse(
      profile, &TemplateURLServiceFactory::BuildInstanceFor);
  return profile;
}

void InstantUnitTestBase::SetUpHelper() {
  BrowserWithTestWindowTest::SetUp();

  template_url_service_ = TemplateURLServiceFactory::GetForProfile(profile());
  ui_test_utils::WaitForTemplateURLServiceToLoad(template_url_service_);

  UIThreadSearchTermsData::SetGoogleBaseURL("https://www.google.com/");
  TestingPrefServiceSyncable* pref_service = profile()->GetTestingPrefService();
  pref_service->SetUserPref(prefs::kLastPromptedGoogleURL,
                            new base::StringValue("https://www.google.com/"));
  SetUserSelectedDefaultSearchProvider("{google:baseURL}");
  instant_service_ = InstantServiceFactory::GetForProfile(profile());
}
