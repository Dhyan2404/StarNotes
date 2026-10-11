package com.github.mikephil.charting.highlight;

/* loaded from: classes4.dex */
public final class Range {
    public float from;

    /* renamed from: to */
    public float f21665to;

    public Range(float f, float f2) {
        this.from = f;
        this.f21665to = f2;
    }

    public boolean contains(float f) {
        return f > this.from && f <= this.f21665to;
    }

    public boolean isLarger(float f) {
        return f > this.f21665to;
    }

    public boolean isSmaller(float f) {
        return f < this.from;
    }
}
