package com.google.zxing.common;

/* loaded from: classes4.dex */
public final class PerspectiveTransform {

    /* renamed from: a */
    public final float f38404a;

    /* renamed from: b */
    public final float f38405b;

    /* renamed from: c */
    public final float f38406c;

    /* renamed from: d */
    public final float f38407d;

    /* renamed from: e */
    public final float f38408e;

    /* renamed from: f */
    public final float f38409f;

    /* renamed from: g */
    public final float f38410g;

    /* renamed from: h */
    public final float f38411h;

    /* renamed from: i */
    public final float f38412i;

    public PerspectiveTransform(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f38404a = f;
        this.f38405b = f4;
        this.f38406c = f7;
        this.f38407d = f2;
        this.f38408e = f5;
        this.f38409f = f8;
        this.f38410g = f3;
        this.f38411h = f6;
        this.f38412i = f9;
    }

    public static PerspectiveTransform quadrilateralToQuadrilateral(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        return squareToQuadrilateral(f9, f10, f11, f12, f13, f14, f15, f16).m30518b(quadrilateralToSquare(f, f2, f3, f4, f5, f6, f7, f8));
    }

    public static PerspectiveTransform quadrilateralToSquare(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return squareToQuadrilateral(f, f2, f3, f4, f5, f6, f7, f8).m30517a();
    }

    public static PerspectiveTransform squareToQuadrilateral(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9 = ((f - f3) + f5) - f7;
        float f10 = ((f2 - f4) + f6) - f8;
        if (f9 == 0.0f && f10 == 0.0f) {
            return new PerspectiveTransform(f3 - f, f5 - f3, f, f4 - f2, f6 - f4, f2, 0.0f, 0.0f, 1.0f);
        }
        float f11 = f3 - f5;
        float f12 = f7 - f5;
        float f13 = f4 - f6;
        float f14 = f8 - f6;
        float f15 = (f11 * f14) - (f12 * f13);
        float f16 = ((f14 * f9) - (f12 * f10)) / f15;
        float f17 = ((f11 * f10) - (f9 * f13)) / f15;
        return new PerspectiveTransform((f16 * f3) + (f3 - f), (f17 * f7) + (f7 - f), f, (f4 - f2) + (f16 * f4), (f8 - f2) + (f17 * f8), f2, f16, f17, 1.0f);
    }

    /* renamed from: a */
    public PerspectiveTransform m30517a() {
        float f = this.f38408e;
        float f2 = this.f38412i;
        float f3 = this.f38409f;
        float f4 = this.f38411h;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = this.f38410g;
        float f7 = this.f38407d;
        float f8 = (f3 * f6) - (f7 * f2);
        float f9 = (f7 * f4) - (f * f6);
        float f10 = this.f38406c;
        float f11 = this.f38405b;
        float f12 = this.f38404a;
        return new PerspectiveTransform(f5, f8, f9, (f10 * f4) - (f11 * f2), (f2 * f12) - (f10 * f6), (f6 * f11) - (f4 * f12), (f11 * f3) - (f10 * f), (f10 * f7) - (f3 * f12), (f12 * f) - (f11 * f7));
    }

    /* renamed from: b */
    public PerspectiveTransform m30518b(PerspectiveTransform perspectiveTransform) {
        float f = this.f38404a;
        float f2 = perspectiveTransform.f38404a;
        float f3 = this.f38407d;
        float f4 = perspectiveTransform.f38405b;
        float f5 = this.f38410g;
        float f6 = perspectiveTransform.f38406c;
        float f7 = (f * f2) + (f3 * f4) + (f5 * f6);
        float f8 = perspectiveTransform.f38407d;
        float f9 = perspectiveTransform.f38408e;
        float f10 = perspectiveTransform.f38409f;
        float f11 = (f * f8) + (f3 * f9) + (f5 * f10);
        float f12 = perspectiveTransform.f38410g;
        float f13 = perspectiveTransform.f38411h;
        float f14 = perspectiveTransform.f38412i;
        float f15 = (f * f12) + (f3 * f13) + (f5 * f14);
        float f16 = this.f38405b;
        float f17 = this.f38408e;
        float f18 = this.f38411h;
        float f19 = (f16 * f2) + (f17 * f4) + (f18 * f6);
        float f20 = (f16 * f8) + (f17 * f9) + (f18 * f10);
        float f21 = (f18 * f14) + (f16 * f12) + (f17 * f13);
        float f22 = this.f38406c;
        float f23 = this.f38409f;
        float f24 = this.f38412i;
        return new PerspectiveTransform(f7, f11, f15, f19, f20, f21, (f6 * f24) + (f2 * f22) + (f4 * f23), (f8 * f22) + (f9 * f23) + (f10 * f24), (f22 * f12) + (f23 * f13) + (f24 * f14));
    }

    public void transformPoints(float[] fArr) {
        int length = fArr.length;
        float f = this.f38404a;
        float f2 = this.f38405b;
        float f3 = this.f38406c;
        float f4 = this.f38407d;
        float f5 = this.f38408e;
        float f6 = this.f38409f;
        float f7 = this.f38410g;
        float f8 = this.f38411h;
        float f9 = this.f38412i;
        for (int i = 0; i < length; i += 2) {
            float f10 = fArr[i];
            int i2 = i + 1;
            float f11 = fArr[i2];
            float f12 = (f3 * f10) + (f6 * f11) + f9;
            fArr[i] = (((f * f10) + (f4 * f11)) + f7) / f12;
            fArr[i2] = (((f10 * f2) + (f11 * f5)) + f8) / f12;
        }
    }

    public void transformPoints(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            float f = fArr[i];
            float f2 = fArr2[i];
            float f3 = (this.f38406c * f) + (this.f38409f * f2) + this.f38412i;
            fArr[i] = (((this.f38404a * f) + (this.f38407d * f2)) + this.f38410g) / f3;
            fArr2[i] = (((this.f38405b * f) + (this.f38408e * f2)) + this.f38411h) / f3;
        }
    }
}
