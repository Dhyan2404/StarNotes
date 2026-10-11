package com.sunia.HTREnginev2;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class zzm {

    /* renamed from: a */
    public double f92348a;

    /* renamed from: b */
    public double f92349b;

    /* renamed from: c */
    public double f92350c;

    /* renamed from: d */
    public double f92351d;

    /* renamed from: e */
    public boolean f92352e;

    public zzm() {
        this(true);
    }

    /* renamed from: a */
    public void m58769a(zzm zzmVar) {
        double d = this.f92350c;
        double d2 = zzmVar.f92350c + d;
        this.f92350c = d2;
        double d3 = zzmVar.f92348a;
        double d4 = this.f92348a;
        double d5 = d3 - d4;
        double d6 = zzmVar.f92349b;
        double d7 = this.f92349b;
        double d8 = d6 - d7;
        double d9 = zzmVar.f92350c;
        this.f92348a = d4 + ((d5 * d9) / d2);
        this.f92349b = d7 + ((d8 * d9) / d2);
        this.f92351d += zzmVar.f92351d + (((d * d9) / d2) * d5 * d8);
    }

    /* renamed from: b */
    public double m58770b() {
        return this.f92350c;
    }

    /* renamed from: c */
    public double m58771c() throws NumberIsTooSmallException {
        double d;
        double d2 = this.f92350c;
        if (d2 < 2.0d) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DIMENSION, Double.valueOf(this.f92350c), 2, true);
        }
        if (this.f92352e) {
            d = this.f92351d;
            d2 -= 1.0d;
        } else {
            d = this.f92351d;
        }
        return d / d2;
    }

    /* renamed from: d */
    public void m58772d(double d, double d2) {
        double d3 = this.f92350c + 1.0d;
        this.f92350c = d3;
        double d4 = this.f92348a;
        double d5 = d - d4;
        double d6 = this.f92349b;
        double d7 = d2 - d6;
        this.f92348a = d4 + (d5 / d3);
        this.f92349b = d6 + (d7 / d3);
        this.f92351d += ((d3 - 1.0d) / d3) * d5 * d7;
    }

    public zzm(boolean z) {
        this.f92349b = 0.0d;
        this.f92348a = 0.0d;
        this.f92350c = 0.0d;
        this.f92351d = 0.0d;
        this.f92352e = z;
    }
}
