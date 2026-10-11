package com.google.zxing.oned.rss;

import com.google.zxing.ResultPoint;

/* loaded from: classes4.dex */
public final class FinderPattern {

    /* renamed from: a */
    public final int f38628a;

    /* renamed from: b */
    public final int[] f38629b;

    /* renamed from: c */
    public final ResultPoint[] f38630c;

    public FinderPattern(int i, int[] iArr, int i2, int i3, int i4) {
        this.f38628a = i;
        this.f38629b = iArr;
        float f = i4;
        this.f38630c = new ResultPoint[]{new ResultPoint(i2, f), new ResultPoint(i3, f)};
    }

    public boolean equals(Object obj) {
        return (obj instanceof FinderPattern) && this.f38628a == ((FinderPattern) obj).f38628a;
    }

    public ResultPoint[] getResultPoints() {
        return this.f38630c;
    }

    public int[] getStartEnd() {
        return this.f38629b;
    }

    public int getValue() {
        return this.f38628a;
    }

    public int hashCode() {
        return this.f38628a;
    }
}
