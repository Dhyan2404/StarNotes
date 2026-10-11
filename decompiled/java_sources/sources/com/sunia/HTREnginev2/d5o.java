package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class d5o {

    /* renamed from: k */
    public static final d5o f67513k = m53579k(and.f64879c, (float) ((and.m53050h(50.0f) * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);

    /* renamed from: a */
    public final float f67514a;

    /* renamed from: b */
    public final float f67515b;

    /* renamed from: c */
    public final float f67516c;

    /* renamed from: d */
    public final float f67517d;

    /* renamed from: e */
    public final float f67518e;

    /* renamed from: f */
    public final float f67519f;

    /* renamed from: g */
    public final float[] f67520g;

    /* renamed from: h */
    public final float f67521h;

    /* renamed from: i */
    public final float f67522i;

    /* renamed from: j */
    public final float f67523j;

    public d5o(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.f67519f = f;
        this.f67514a = f2;
        this.f67515b = f3;
        this.f67516c = f4;
        this.f67517d = f5;
        this.f67518e = f6;
        this.f67520g = fArr;
        this.f67521h = f7;
        this.f67522i = f8;
        this.f67523j = f9;
    }

    @NonNull
    /* renamed from: k */
    public static d5o m53579k(@NonNull float[] fArr, float f, float f2, float f3, boolean z) {
        float[][] fArr2 = and.f64877a;
        float f4 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f5 = fArr3[0] * f4;
        float f6 = fArr[1];
        float f7 = f5 + (fArr3[1] * f6);
        float f8 = fArr[2];
        float f9 = f7 + (fArr3[2] * f8);
        float[] fArr4 = fArr2[1];
        float f10 = (fArr4[0] * f4) + (fArr4[1] * f6) + (fArr4[2] * f8);
        float[] fArr5 = fArr2[2];
        float f11 = (f4 * fArr5[0]) + (f6 * fArr5[1]) + (f8 * fArr5[2]);
        float f12 = (f3 / 10.0f) + 0.8f;
        float m53046d = ((double) f12) >= 0.9d ? and.m53046d(0.59f, 0.69f, (f12 - 0.9f) * 10.0f) : and.m53046d(0.525f, 0.59f, (f12 - 0.8f) * 10.0f);
        float exp = z ? 1.0f : (1.0f - (((float) Math.exp(((-f) - 42.0f) / 92.0f)) * 0.2777778f)) * f12;
        double d = exp;
        if (d > 1.0d) {
            exp = 1.0f;
        } else if (d < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f9) * exp) + 1.0f) - exp, (((100.0f / f10) * exp) + 1.0f) - exp, (((100.0f / f11) * exp) + 1.0f) - exp};
        float f13 = 1.0f / ((5.0f * f) + 1.0f);
        float f14 = f13 * f13 * f13 * f13;
        float f15 = 1.0f - f14;
        float cbrt = (f14 * f) + (0.1f * f15 * f15 * ((float) Math.cbrt(f * 5.0d)));
        float m53050h = and.m53050h(f2) / fArr[1];
        double d2 = m53050h;
        float sqrt = ((float) Math.sqrt(d2)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float pow2 = (float) Math.pow(((fArr6[2] * cbrt) * f11) / 100.0d, 0.42d);
        float[] fArr7 = {(float) Math.pow(((fArr6[0] * cbrt) * f9) / 100.0d, 0.42d), (float) Math.pow(((fArr6[1] * cbrt) * f10) / 100.0d, 0.42d), pow2};
        float f16 = fArr7[0];
        float f17 = fArr7[1];
        return new d5o(m53050h, ((((f16 * 400.0f) / (f16 + 27.13f)) * 2.0f) + ((f17 * 400.0f) / (f17 + 27.13f)) + (((400.0f * pow2) / (pow2 + 27.13f)) * 0.05f)) * pow, pow, pow, m53046d, f12, fArr6, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    /* renamed from: a */
    public float m53580a() {
        return this.f67514a;
    }

    /* renamed from: b */
    public float m53581b() {
        return this.f67517d;
    }

    /* renamed from: c */
    public float m53582c() {
        return this.f67521h;
    }

    /* renamed from: d */
    public float m53583d() {
        return this.f67522i;
    }

    /* renamed from: e */
    public float m53584e() {
        return this.f67519f;
    }

    /* renamed from: f */
    public float m53585f() {
        return this.f67515b;
    }

    /* renamed from: g */
    public float m53586g() {
        return this.f67518e;
    }

    /* renamed from: h */
    public float m53587h() {
        return this.f67516c;
    }

    @NonNull
    /* renamed from: i */
    public float[] m53588i() {
        return this.f67520g;
    }

    /* renamed from: j */
    public float m53589j() {
        return this.f67523j;
    }
}
