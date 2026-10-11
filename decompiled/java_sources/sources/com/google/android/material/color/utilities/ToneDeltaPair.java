package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class ToneDeltaPair {

    /* renamed from: a */
    public final DynamicColor f31030a;

    /* renamed from: b */
    public final DynamicColor f31031b;

    /* renamed from: c */
    public final double f31032c;

    /* renamed from: d */
    public final TonePolarity f31033d;

    /* renamed from: e */
    public final boolean f31034e;

    public ToneDeltaPair(@NonNull DynamicColor dynamicColor, @NonNull DynamicColor dynamicColor2, double d, @NonNull TonePolarity tonePolarity, boolean z) {
        this.f31030a = dynamicColor;
        this.f31031b = dynamicColor2;
        this.f31032c = d;
        this.f31033d = tonePolarity;
        this.f31034e = z;
    }

    public double getDelta() {
        return this.f31032c;
    }

    @NonNull
    public TonePolarity getPolarity() {
        return this.f31033d;
    }

    @NonNull
    public DynamicColor getRoleA() {
        return this.f31030a;
    }

    @NonNull
    public DynamicColor getRoleB() {
        return this.f31031b;
    }

    public boolean getStayTogether() {
        return this.f31034e;
    }
}
