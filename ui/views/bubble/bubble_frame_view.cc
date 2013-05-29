// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "ui/views/bubble/bubble_frame_view.h"

#include <algorithm>

#include "grit/ui_resources.h"
#include "ui/base/hit_test.h"
#include "ui/base/resource/resource_bundle.h"
#include "ui/gfx/path.h"
#include "ui/gfx/screen.h"
#include "ui/views/bubble/bubble_border.h"
#include "ui/views/controls/button/label_button.h"
#include "ui/views/widget/widget.h"
#include "ui/views/widget/widget_delegate.h"
#include "ui/views/window/client_view.h"

namespace {

// Padding, in pixels, for the title view, when it exists.
const int kTitleTopInset = 12;
const int kTitleLeftInset = 19;
const int kTitleBottomInset = 12;

// Get the |vertical| or horizontal screen overflow of the |window_bounds|.
int GetOffScreenLength(const gfx::Rect& monitor_bounds,
                       const gfx::Rect& window_bounds,
                       bool vertical) {
  if (monitor_bounds.IsEmpty() || monitor_bounds.Contains(window_bounds))
    return 0;

  //  window_bounds
  //  +-------------------------------+
  //  |             top               |
  //  |      +----------------+       |
  //  | left | monitor_bounds | right |
  //  |      +----------------+       |
  //  |            bottom             |
  //  +-------------------------------+
  if (vertical)
    return std::max(0, monitor_bounds.y() - window_bounds.y()) +
           std::max(0, window_bounds.bottom() - monitor_bounds.bottom());
  return std::max(0, monitor_bounds.x() - window_bounds.x()) +
         std::max(0, window_bounds.right() - monitor_bounds.right());
}

}  // namespace

namespace views {

BubbleFrameView::BubbleFrameView(const gfx::Insets& content_margins)
    : bubble_border_(NULL),
      content_margins_(content_margins),
      title_(NULL),
      close_(NULL),
      titlebar_extra_view_(NULL) {
  ui::ResourceBundle& rb = ui::ResourceBundle::GetSharedInstance();
  title_ = new Label(string16(), rb.GetFont(ui::ResourceBundle::MediumFont));
  title_->SetHorizontalAlignment(gfx::ALIGN_LEFT);
  AddChildView(title_);

  close_ = new LabelButton(this, string16());
  close_->SetImage(CustomButton::STATE_NORMAL,
                   *rb.GetImageNamed(IDR_CLOSE_DIALOG).ToImageSkia());
  close_->SetImage(CustomButton::STATE_HOVERED,
                   *rb.GetImageNamed(IDR_CLOSE_DIALOG_H).ToImageSkia());
  close_->SetImage(CustomButton::STATE_PRESSED,
                   *rb.GetImageNamed(IDR_CLOSE_DIALOG_P).ToImageSkia());
  close_->SetSize(close_->GetPreferredSize());
  close_->set_border(NULL);
  close_->SetVisible(false);
  AddChildView(close_);
}

BubbleFrameView::~BubbleFrameView() {}

gfx::Rect BubbleFrameView::GetBoundsForClientView() const {
  gfx::Rect client_bounds = GetLocalBounds();
  client_bounds.Inset(GetInsets());
  client_bounds.Inset(bubble_border_->GetInsets());
  return client_bounds;
}

gfx::Rect BubbleFrameView::GetWindowBoundsForClientBounds(
    const gfx::Rect& client_bounds) const {
  return const_cast<BubbleFrameView*>(this)->GetUpdatedWindowBounds(
      gfx::Rect(), client_bounds.size(), false);
}

int BubbleFrameView::NonClientHitTest(const gfx::Point& point) {
  if (!bounds().Contains(point))
    return HTNOWHERE;
  if (close_->visible() && close_->GetMirroredBounds().Contains(point))
    return HTCLOSE;
  if (!GetWidget()->widget_delegate()->CanResize())
    return GetWidget()->client_view()->NonClientHitTest(point);

  const int size = bubble_border_->GetBorderThickness() + 4;
  const int hit = GetHTComponentForFrame(point, size, size, size, size, true);
  if (hit == HTNOWHERE && point.y() < title_->bounds().bottom())
    return HTCAPTION;
  return hit;
}

void BubbleFrameView::GetWindowMask(const gfx::Size& size,
                                    gfx::Path* window_mask) {
  if (bubble_border_->shadow() != BubbleBorder::NO_SHADOW_OPAQUE_BORDER)
    return;

  // Use a window mask roughly matching the border in the image assets.
  static const int kBorderStrokeSize = 1;
  static const SkScalar kCornerRadius = SkIntToScalar(6);
  gfx::Insets border_insets = bubble_border_->GetInsets();
  const SkRect rect = { SkIntToScalar(border_insets.left() - kBorderStrokeSize),
                        SkIntToScalar(border_insets.top() - kBorderStrokeSize),
                        SkIntToScalar(size.width() - border_insets.right() +
                                      kBorderStrokeSize),
                        SkIntToScalar(size.height() - border_insets.bottom() +
                                      kBorderStrokeSize) };
  window_mask->addRoundRect(rect, kCornerRadius, kCornerRadius);
}

void BubbleFrameView::ResetWindowControls() {}

void BubbleFrameView::UpdateWindowIcon() {}

void BubbleFrameView::UpdateWindowTitle() {}

gfx::Insets BubbleFrameView::GetInsets() const {
  gfx::Insets insets = content_margins_;
  const int title_height = title_->text().empty() ? 0 :
      title_->GetPreferredSize().height() + kTitleTopInset + kTitleBottomInset;
  const int close_height = close_->visible() ? close_->height() : 0;
  insets += gfx::Insets(std::max(title_height, close_height), 0, 0, 0);
  return insets;
}

gfx::Size BubbleFrameView::GetPreferredSize() {
  const gfx::Size client(GetWidget()->client_view()->GetPreferredSize());
  gfx::Size size(GetUpdatedWindowBounds(gfx::Rect(), client, false).size());
  // Accommodate the width of the title bar elements.
  int title_bar_width = GetInsets().width() + border()->GetInsets().width() +
      kTitleLeftInset + title_->GetPreferredSize().width() +
      close_->width() + 1;
  if (titlebar_extra_view_ != NULL)
    title_bar_width += titlebar_extra_view_->GetPreferredSize().width();
  size.ClampToMin(gfx::Size(title_bar_width, 0));
  return size;
}

void BubbleFrameView::Layout() {
  gfx::Rect bounds(GetLocalBounds());
  bounds.Inset(border()->GetInsets());
  // Small additional insets yield the desired 10px visual close button insets.
  bounds.Inset(0, 0, close_->width() + 1, 0);
  close_->SetPosition(gfx::Point(bounds.right(), bounds.y() + 2));

  gfx::Rect title_bounds(bounds);
  title_bounds.Inset(kTitleLeftInset, kTitleTopInset, 0, 0);
  gfx::Size title_size(title_->GetPreferredSize());
  const int title_width = std::max(0, close_->bounds().x() - title_bounds.x());
  title_size.ClampToMax(gfx::Size(title_width, title_size.height()));
  title_bounds.set_size(title_size);
  title_->SetBoundsRect(title_bounds);

  if (titlebar_extra_view_) {
    const int extra_width = close_->bounds().x() - title_->bounds().right();
    gfx::Size size = titlebar_extra_view_->GetPreferredSize();
    size.ClampToMax(gfx::Size(std::max(0, extra_width), size.height()));
    gfx::Rect titlebar_extra_view_bounds(
        bounds.right() - size.width(),
        title_bounds.y(),
        size.width(),
        title_bounds.height());
    titlebar_extra_view_bounds.Subtract(title_bounds);
    titlebar_extra_view_->SetBoundsRect(titlebar_extra_view_bounds);
  }
}

const char* BubbleFrameView::GetClassName() const {
  return "BubbleFrameView";
}

void BubbleFrameView::ChildPreferredSizeChanged(View* child) {
  if (child == titlebar_extra_view_ || child == title_)
    Layout();
}

void BubbleFrameView::ButtonPressed(Button* sender, const ui::Event& event) {
  if (sender == close_)
    GetWidget()->Close();
}

void BubbleFrameView::SetBubbleBorder(BubbleBorder* border) {
  bubble_border_ = border;
  set_border(bubble_border_);

  // Update the background, which relies on the border.
  set_background(new views::BubbleBackground(border));
}

void BubbleFrameView::SetTitle(const string16& title) {
  title_->SetText(title);
}

void BubbleFrameView::SetShowCloseButton(bool show) {
  close_->SetVisible(show);
}

void BubbleFrameView::SetTitlebarExtraView(View* view) {
  DCHECK(view);
  DCHECK(!titlebar_extra_view_);
  AddChildView(view);
  titlebar_extra_view_ = view;
}

gfx::Rect BubbleFrameView::GetUpdatedWindowBounds(const gfx::Rect& anchor_rect,
                                                  gfx::Size client_size,
                                                  bool adjust_if_offscreen) {
  gfx::Insets insets(GetInsets());
  client_size.Enlarge(insets.width(), insets.height());

  const BubbleBorder::Arrow arrow = bubble_border_->arrow();
  if (adjust_if_offscreen && BubbleBorder::has_arrow(arrow)) {
    if (!bubble_border_->is_arrow_at_center(arrow)) {
      // Try to mirror the anchoring if the bubble does not fit on the screen.
      MirrorArrowIfOffScreen(true, anchor_rect, client_size);
      MirrorArrowIfOffScreen(false, anchor_rect, client_size);
    } else {
      // Mirror as needed vertically if the arrow is on a horizontal edge and
      // vice-versa.
      MirrorArrowIfOffScreen(BubbleBorder::is_arrow_on_horizontal(arrow),
                             anchor_rect,
                             client_size);
      OffsetArrowIfOffScreen(anchor_rect, client_size);
    }
  }

  // Calculate the bounds with the arrow in its updated location and offset.
  return bubble_border_->GetBounds(anchor_rect, client_size);
}

gfx::Rect BubbleFrameView::GetMonitorBounds(const gfx::Rect& rect) {
  // TODO(scottmg): Native is wrong. http://crbug.com/133312
  return gfx::Screen::GetNativeScreen()->GetDisplayNearestPoint(
      rect.CenterPoint()).work_area();
}

void BubbleFrameView::MirrorArrowIfOffScreen(
    bool vertical,
    const gfx::Rect& anchor_rect,
    const gfx::Size& client_size) {
  // Check if the bounds don't fit on screen.
  gfx::Rect monitor_rect(GetMonitorBounds(anchor_rect));
  gfx::Rect window_bounds(bubble_border_->GetBounds(anchor_rect, client_size));
  if (GetOffScreenLength(monitor_rect, window_bounds, vertical) > 0) {
    BubbleBorder::Arrow arrow = bubble_border()->arrow();
    // Mirror the arrow and get the new bounds.
    bubble_border_->set_arrow(
        vertical ? BubbleBorder::vertical_mirror(arrow) :
                   BubbleBorder::horizontal_mirror(arrow));
    gfx::Rect mirror_bounds =
        bubble_border_->GetBounds(anchor_rect, client_size);
    // Restore the original arrow if mirroring doesn't show more of the bubble.
    if (GetOffScreenLength(monitor_rect, mirror_bounds, vertical) >=
        GetOffScreenLength(monitor_rect, window_bounds, vertical))
      bubble_border_->set_arrow(arrow);
    else
      SchedulePaint();
  }
}

void BubbleFrameView::OffsetArrowIfOffScreen(const gfx::Rect& anchor_rect,
                                             const gfx::Size& client_size) {
  BubbleBorder::Arrow arrow = bubble_border()->arrow();
  DCHECK(BubbleBorder::is_arrow_at_center(arrow));

  // Get the desired bubble bounds without adjustment.
  bubble_border_->set_arrow_offset(0);
  gfx::Rect window_bounds(bubble_border_->GetBounds(anchor_rect, client_size));

  gfx::Rect monitor_rect(GetMonitorBounds(anchor_rect));
  if (monitor_rect.IsEmpty() || monitor_rect.Contains(window_bounds))
    return;

  // Calculate off-screen adjustment.
  const bool is_horizontal = BubbleBorder::is_arrow_on_horizontal(arrow);
  int offscreen_adjust = 0;
  if (is_horizontal) {
    if (window_bounds.x() < monitor_rect.x())
      offscreen_adjust = monitor_rect.x() - window_bounds.x();
    else if (window_bounds.right() > monitor_rect.right())
      offscreen_adjust = monitor_rect.right() - window_bounds.right();
  } else {
    if (window_bounds.y() < monitor_rect.y())
      offscreen_adjust = monitor_rect.y() - window_bounds.y();
    else if (window_bounds.bottom() > monitor_rect.bottom())
      offscreen_adjust = monitor_rect.bottom() - window_bounds.bottom();
  }

  // For center arrows, arrows are moved in the opposite direction of
  // |offscreen_adjust|, e.g. positive |offscreen_adjust| means bubble
  // window needs to be moved to the right and that means we need to move arrow
  // to the left, and that means negative offset.
  bubble_border_->set_arrow_offset(
      bubble_border_->GetArrowOffset(window_bounds.size()) - offscreen_adjust);
  if (offscreen_adjust)
    SchedulePaint();
}

}  // namespace views
