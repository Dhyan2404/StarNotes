package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class ReversableAnimatedValueInterpolator implements TimeInterpolator {

    /* renamed from: a */
    public final TimeInterpolator f31649a;

    public ReversableAnimatedValueInterpolator(@NonNull TimeInterpolator timeInterpolator) {
        this.f31649a = timeInterpolator;
    }

    @NonNull
    /* renamed from: of */
    public static TimeInterpolator m24282of(boolean z, @NonNull TimeInterpolator timeInterpolator) {
        return z ? timeInterpolator : new ReversableAnimatedValueInterpolator(timeInterpolator);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        return 1.0f - this.f31649a.getInterpolation(f);
    }
}
