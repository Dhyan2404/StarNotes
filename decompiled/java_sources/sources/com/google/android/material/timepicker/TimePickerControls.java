package com.google.android.material.timepicker;

import androidx.annotation.IntRange;
import androidx.annotation.StringRes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public interface TimePickerControls {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface ActiveSelection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface ClockPeriod {
    }

    /* renamed from: a */
    void mo25439a(int i);

    /* renamed from: b */
    void mo25440b(int i, int i2, @IntRange(from = 0) int i3);

    /* renamed from: c */
    void mo25441c(String[] strArr, @StringRes int i);

    /* renamed from: d */
    void mo25442d(float f);
}
