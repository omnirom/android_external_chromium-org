// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package org.chromium.content.browser.input;

import android.content.Context;
import android.content.res.Configuration;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.accessibility.AccessibilityEvent;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import android.widget.NumberPicker;
import android.widget.NumberPicker.OnValueChangeListener;

import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

import org.chromium.content.R;

// This class is heavily based on android.widget.DatePicker.
public class MonthPicker extends FrameLayout {

    private static final int MONTHS_NUMBER = 12;

    private static final int DEFAULT_START_YEAR = 1900;

    private static final int DEFAULT_END_YEAR = 2100;

    private final NumberPicker mMonthSpinner;

    private final NumberPicker mYearSpinner;

    private OnMonthChangedListener mMonthChangedListener;

    private String[] mShortMonths;

    private Calendar mMinDate;

    private Calendar mMaxDate;

    private Calendar mCurrentDate;

    /**
     * The callback used to indicate the user changes\d the date.
     */
    public interface OnMonthChangedListener {

        /**
         * Called upon a date change.
         *
         * @param view The view associated with this listener.
         * @param year The year that was set.
         * @param month The month that was set (0-11) for compatibility
         *            with {@link java.util.Calendar}.
         */
        void onMonthChanged(MonthPicker view, int year, int month);
    }

    public MonthPicker(Context context) {
        super(context, null, android.R.attr.datePickerStyle);
        Calendar minCal = Calendar.getInstance();
        minCal.clear();
        minCal.set(DEFAULT_START_YEAR, 0, 1);
        mMinDate = minCal;
        Calendar maxCal = Calendar.getInstance();
        maxCal.clear();
        maxCal.set(DEFAULT_END_YEAR, 0, 1);
        mMaxDate = maxCal;

        LayoutInflater inflater = (LayoutInflater) context
                .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        inflater.inflate(R.layout.month_picker, this, true);

        OnValueChangeListener onChangeListener = new OnValueChangeListener() {
            @Override
            public void onValueChange(NumberPicker picker, int oldVal, int newVal) {
                int month = mCurrentDate.get(Calendar.MONTH);
                int year = mCurrentDate.get(Calendar.YEAR);

                // take care of wrapping months to update greater fields
                if (picker == mMonthSpinner) {
                    month = newVal;
                    if (oldVal == (MONTHS_NUMBER - 1) && newVal == 0) {
                        year += 1;
                    } else if (oldVal == 0 && newVal == (MONTHS_NUMBER - 1)) {
                        year -=1;
                    }
                } else if (picker == mYearSpinner) {
                    year = newVal;
                 } else {
                    throw new IllegalArgumentException();
                }

                // now set the date to the adjusted one
                setCurrentDate(year, month);
                updateSpinners();
                notifyDateChanged();
            }
        };

        mShortMonths =
                DateFormatSymbols.getInstance(Locale.getDefault()).getShortMonths();

        // month
        mMonthSpinner = (NumberPicker) findViewById(R.id.month);
        mMonthSpinner.setMinValue(0);
        mMonthSpinner.setMaxValue(MONTHS_NUMBER - 1);
        mMonthSpinner.setDisplayedValues(mShortMonths);
        mMonthSpinner.setOnLongPressUpdateInterval(200);
        mMonthSpinner.setOnValueChangedListener(onChangeListener);

        // year
        mYearSpinner = (NumberPicker) findViewById(R.id.year);
        mYearSpinner.setOnLongPressUpdateInterval(100);
        mYearSpinner.setOnValueChangedListener(onChangeListener);

        // initialize to current date
        mCurrentDate = Calendar.getInstance();
        init(mCurrentDate.get(Calendar.YEAR), mCurrentDate.get(Calendar.MONTH), null);
    }



    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        onPopulateAccessibilityEvent(event);
        return true;
    }

    @Override
    public void onPopulateAccessibilityEvent(AccessibilityEvent event) {
        super.onPopulateAccessibilityEvent(event);

        final int flags = DateUtils.FORMAT_SHOW_DATE | DateUtils.FORMAT_SHOW_YEAR;
        String selectedDateUtterance = DateUtils.formatDateTime(getContext(),
                mCurrentDate.getTimeInMillis(), flags);
        event.getText().add(selectedDateUtterance);
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    /**
     * Initialize the state. If the provided values designate an inconsistent
     * date the values are normalized before updating the spinners.
     *
     * @param year The initial year.
     * @param month The initial month <strong>starting from zero</strong>.
     * @param onMonthChangedListener How user is notified date is changed by
     *            user, can be null.
     */
    public void init(int year, int month, OnMonthChangedListener onMonthChangedListener) {
        setCurrentDate(year, month);
        updateSpinners();
        mMonthChangedListener = onMonthChangedListener;
    }

    private void setCurrentDate(int year, int month) {
        if (mCurrentDate == null) {
            mCurrentDate = Calendar.getInstance();
        }
        mCurrentDate.clear();
        if (mCurrentDate.getTimeInMillis() < mMinDate.getTimeInMillis()) {
            mCurrentDate.set(mMinDate.get(Calendar.YEAR), mMinDate.get(Calendar.MONTH),
                    mMinDate.get(Calendar.DAY_OF_MONTH));
        } else if (mCurrentDate.getTimeInMillis() > mMaxDate.getTimeInMillis()) {
            mCurrentDate.set(mMaxDate.get(Calendar.YEAR), mMaxDate.get(Calendar.MONTH),
                    mMaxDate.get(Calendar.DAY_OF_MONTH));
        } else {
            mCurrentDate.set(year, month, 1);
        }
    }

    private void updateSpinners() {
        // set the spinner ranges respecting the min and max dates
        mMonthSpinner.setDisplayedValues(null);
        mMonthSpinner.setMinValue(0);
        mMonthSpinner.setMaxValue(MONTHS_NUMBER - 1);
        if (mCurrentDate.get(Calendar.YEAR) == mMinDate.get(Calendar.YEAR)) {
            mMonthSpinner.setMinValue(mMinDate.get(Calendar.MONTH));
            mMonthSpinner.setWrapSelectorWheel(false);
        } else if (mCurrentDate.get(Calendar.YEAR) == mMaxDate.get(Calendar.YEAR)) {
            mMonthSpinner.setMaxValue(mMaxDate.get(Calendar.MONTH));
            mMonthSpinner.setWrapSelectorWheel(false);
        } else {
            mMonthSpinner.setWrapSelectorWheel(true);
        }

        // make sure the month names are a zero based array
        // with the months in the month spinner
        String[] displayedValues = Arrays.copyOfRange(mShortMonths,
                mMonthSpinner.getMinValue(), mMonthSpinner.getMaxValue() + 1);
        mMonthSpinner.setDisplayedValues(displayedValues);

        // year spinner range does not change based on the current date
        mYearSpinner.setMinValue(mMinDate.get(Calendar.YEAR));
        mYearSpinner.setMaxValue(mMaxDate.get(Calendar.YEAR));
        mYearSpinner.setWrapSelectorWheel(false);

        // set the spinner values
        mYearSpinner.setValue(mCurrentDate.get(Calendar.YEAR));
        mMonthSpinner.setValue(mCurrentDate.get(Calendar.MONTH));
    }

    /**
     * @return The selected year.
     */
    public int getYear() {
        return mCurrentDate.get(Calendar.YEAR);
    }

    /**
     * @return The selected month.
     */
    public int getMonth() {
        return mCurrentDate.get(Calendar.MONTH);
    }

    /**
     * Notifies the listener, if such, for a change in the selected date.
     */
    private void notifyDateChanged() {
        sendAccessibilityEvent(AccessibilityEvent.TYPE_VIEW_SELECTED);
        if (mMonthChangedListener != null) {
            mMonthChangedListener.onMonthChanged(this, getYear(), getMonth());
        }
    }
}
