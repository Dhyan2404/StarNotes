package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

/* loaded from: classes4.dex */
public final class FinderPattern extends ResultPoint {

    /* renamed from: c */
    public final float f38767c;

    /* renamed from: d */
    public final int f38768d;

    public FinderPattern(float f, float f2, float f3) {
        this(f, f2, f3, 1);
    }

    /* renamed from: b */
    public boolean m30774b(float f, float f2, float f3) {
        if (Math.abs(f2 - getY()) > f || Math.abs(f3 - getX()) > f) {
            return false;
        }
        float abs = Math.abs(f - this.f38767c);
        return abs <= 1.0f || abs <= this.f38767c;
    }

    /* renamed from: c */
    public FinderPattern m30775c(float f, float f2, float f3) {
        int i = this.f38768d;
        int i2 = i + 1;
        float x = (i * getX()) + f2;
        float f4 = i2;
        return new FinderPattern(x / f4, ((this.f38768d * getY()) + f) / f4, ((this.f38768d * this.f38767c) + f3) / f4, i2);
    }

    /* renamed from: d */
    public int m30776d() {
        return this.f38768d;
    }

    public float getEstimatedModuleSize() {
        return this.f38767c;
    }

    public FinderPattern(float f, float f2, float f3, int i) {
        super(f, f2);
        this.f38767c = f3;
        this.f38768d = i;
    }
}
