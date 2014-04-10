// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "ui/aura/test/test_cursor_client.h"

#include "ui/aura/client/cursor_client_observer.h"

namespace aura {
namespace test {

TestCursorClient::TestCursorClient(aura::Window* root_window)
    : visible_(true),
      mouse_events_enabled_(true),
      cursor_lock_count_(0),
      calls_to_set_cursor_(0),
      root_window_(root_window) {
  client::SetCursorClient(root_window, this);
}

TestCursorClient::~TestCursorClient() {
  client::SetCursorClient(root_window_, NULL);
}

void TestCursorClient::SetCursor(gfx::NativeCursor cursor) {
  calls_to_set_cursor_++;
}

gfx::NativeCursor TestCursorClient::GetCursor() const {
  return ui::kCursorNull;
}

void TestCursorClient::ShowCursor() {
  visible_ = true;
  FOR_EACH_OBSERVER(aura::client::CursorClientObserver, observers_,
                    OnCursorVisibilityChanged(true));
}

void TestCursorClient::HideCursor() {
  visible_ = false;
  FOR_EACH_OBSERVER(aura::client::CursorClientObserver, observers_,
                    OnCursorVisibilityChanged(false));
}

void TestCursorClient::SetCursorSet(ui::CursorSetType cursor_set) {
}

ui::CursorSetType TestCursorClient::GetCursorSet() const {
  return ui::CURSOR_SET_NORMAL;
}

void TestCursorClient::SetScale(float scale) {
}

float TestCursorClient::GetScale() const {
  return 1.f;
}

bool TestCursorClient::IsCursorVisible() const {
  return visible_;
}

void TestCursorClient::EnableMouseEvents() {
  mouse_events_enabled_ = true;
}

void TestCursorClient::DisableMouseEvents() {
  mouse_events_enabled_ = false;
}

bool TestCursorClient::IsMouseEventsEnabled() const {
  return mouse_events_enabled_;
}

void TestCursorClient::SetDisplay(const gfx::Display& display) {
}

void TestCursorClient::LockCursor() {
  cursor_lock_count_++;
}

void TestCursorClient::UnlockCursor() {
  cursor_lock_count_--;
  if (cursor_lock_count_ < 0)
    cursor_lock_count_ = 0;
}

bool TestCursorClient::IsCursorLocked() const {
  return cursor_lock_count_ > 0;
}

void TestCursorClient::AddObserver(
    aura::client::CursorClientObserver* observer) {
  observers_.AddObserver(observer);
}

void TestCursorClient::RemoveObserver(
    aura::client::CursorClientObserver* observer) {
  observers_.RemoveObserver(observer);
}

bool TestCursorClient::ShouldHideCursorOnKeyEvent(
    const ui::KeyEvent& event) const {
  return true;
}

}  // namespace test
}  // namespace aura
