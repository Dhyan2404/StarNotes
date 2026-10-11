package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class ContrastCurve {

    /* renamed from: a */
    public final double f30933a;

    /* renamed from: b */
    public final double f30934b;

    /* renamed from: c */
    public final double f30935c;

    /* renamed from: d */
    public final double f30936d;

    public ContrastCurve(double d, double d2, double d3, double d4) {
        this.f30933a = d;
        this.f30934b = d2;
        this.f30935c = d3;
        this.f30936d = d4;
    }

    public double getContrast(double d) {
        return d <= -1.0d ? this.f30933a : d < 0.0d ? MathUtils.lerp(this.f30933a, this.f30934b, (d - (-1.0d)) / 1.0d) : d < 0.5d ? MathUtils.lerp(this.f30934b, this.f30935c, (d - 0.0d) / 0.5d) : d < 1.0d ? MathUtils.lerp(this.f30935c, this.f30936d, (d - 0.5d) / 0.5d) : this.f30936d;
    }
}
