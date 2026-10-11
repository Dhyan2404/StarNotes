package com.miui.penengine.p016f;

import java.lang.reflect.Array;

/* renamed from: com.miui.penengine.f.b */
/* loaded from: classes7.dex */
public class C7003b {

    /* renamed from: d */
    public float f39739d;

    /* renamed from: e */
    public float f39740e;

    /* renamed from: f */
    public float f39741f;

    /* renamed from: l */
    public float[][] f39747l;

    /* renamed from: m */
    public float[][] f39748m;

    /* renamed from: n */
    public float[][] f39749n;

    /* renamed from: o */
    public float[][] f39750o;

    /* renamed from: p */
    public float[][] f39751p;

    /* renamed from: q */
    public float[][] f39752q;

    /* renamed from: r */
    public float[][] f39753r;

    /* renamed from: s */
    public float[][] f39754s;

    /* renamed from: t */
    public float[][] f39755t;

    /* renamed from: u */
    public float[][] f39756u;

    /* renamed from: v */
    public float[][] f39757v;

    /* renamed from: w */
    public float[][] f39758w;

    /* renamed from: a */
    public final float f39736a = 20000.0f;

    /* renamed from: b */
    public final float f39737b = 500.0f;

    /* renamed from: c */
    public final float f39738c = 1.0f;

    /* renamed from: g */
    public float[] f39742g = new float[2];

    /* renamed from: h */
    public float[] f39743h = new float[4];

    /* renamed from: i */
    public float[] f39744i = new float[2];

    /* renamed from: j */
    public float[] f39745j = new float[4];

    /* renamed from: k */
    public float[] f39746k = new float[2];

    public C7003b() {
        Class cls = Float.TYPE;
        this.f39747l = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
        this.f39748m = (float[][]) Array.newInstance((Class<?>) cls, 2, 2);
        this.f39749n = (float[][]) Array.newInstance((Class<?>) cls, 2, 2);
        this.f39750o = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
        this.f39751p = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
        this.f39752q = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
        this.f39753r = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
        this.f39754s = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
        this.f39755t = (float[][]) Array.newInstance((Class<?>) cls, 4, 2);
        this.f39756u = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
        this.f39757v = (float[][]) Array.newInstance((Class<?>) cls, 2, 2);
        this.f39758w = (float[][]) Array.newInstance((Class<?>) cls, 4, 4);
    }

    /* renamed from: a */
    public final void m31363a() {
        for (int i = 0; i < 2; i++) {
            for (int i2 = 0; i2 < 2; i2++) {
                this.f39757v[i][i2] = 0.0f;
            }
        }
        float[][] fArr = this.f39757v;
        float[] fArr2 = fArr[0];
        float[][] fArr3 = this.f39749n;
        float f = fArr3[0][0];
        float[][] fArr4 = this.f39754s;
        fArr2[0] = 1.0f / (f + fArr4[0][0]);
        fArr[1][1] = 1.0f / (fArr3[1][1] + fArr4[2][2]);
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 2; i4++) {
                this.f39755t[i3][i4] = 0.0f;
            }
        }
        float[][] fArr5 = this.f39755t;
        float[] fArr6 = fArr5[0];
        float[][] fArr7 = this.f39754s;
        float f2 = fArr7[0][0];
        float[][] fArr8 = this.f39757v;
        float[] fArr9 = fArr8[0];
        fArr6[0] = f2 * fArr9[0];
        fArr5[1][0] = fArr7[1][0] * fArr9[0];
        float[] fArr10 = fArr5[2];
        float f3 = fArr7[2][2];
        float[] fArr11 = fArr8[1];
        fArr10[1] = f3 * fArr11[1];
        fArr5[3][1] = fArr7[3][2] * fArr11[1];
    }

    /* renamed from: b */
    public final void m31367b() {
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                this.f39752q[i][i2] = 0.0f;
            }
        }
        float[][] fArr = this.f39752q;
        float[] fArr2 = fArr[0];
        float[][] fArr3 = this.f39758w;
        float[] fArr4 = fArr3[0];
        float f = fArr4[0];
        float[][] fArr5 = this.f39750o;
        float[] fArr6 = fArr5[0];
        float f2 = f * fArr6[0];
        float f3 = fArr4[1];
        float[] fArr7 = fArr5[1];
        fArr2[0] = (fArr7[0] * f3) + f2;
        fArr2[1] = (f3 * fArr7[1]) + (fArr4[0] * fArr6[1]);
        float[] fArr8 = fArr[1];
        float f4 = fArr3[1][1];
        fArr8[0] = fArr7[0] * f4;
        fArr8[1] = f4 * fArr7[1];
        float[] fArr9 = fArr[2];
        float[] fArr10 = fArr3[2];
        float f5 = fArr10[2];
        float[] fArr11 = fArr5[2];
        float f6 = f5 * fArr11[2];
        float f7 = fArr10[3];
        float[] fArr12 = fArr5[3];
        fArr9[2] = (fArr12[2] * f7) + f6;
        fArr9[3] = (f7 * fArr12[3]) + (fArr10[2] * fArr11[3]);
        float[] fArr13 = fArr[3];
        float f8 = fArr3[3][3];
        fArr13[2] = fArr12[2] * f8;
        fArr13[3] = f8 * fArr12[3];
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 4; i4++) {
                this.f39753r[i3][i4] = 0.0f;
            }
        }
        float[][] fArr14 = this.f39753r;
        float[] fArr15 = fArr14[0];
        float[][] fArr16 = this.f39752q;
        float[] fArr17 = fArr16[0];
        float f9 = fArr17[0];
        float[][] fArr18 = this.f39758w;
        float[] fArr19 = fArr18[0];
        float f10 = f9 * fArr19[0];
        float f11 = fArr17[1];
        fArr15[0] = (fArr19[1] * f11) + f10;
        float[] fArr20 = fArr18[1];
        fArr15[1] = f11 * fArr20[1];
        float[] fArr21 = fArr14[1];
        float[] fArr22 = fArr16[1];
        float f12 = fArr22[0] * fArr19[0];
        float f13 = fArr22[1];
        fArr21[0] = (fArr19[1] * f13) + f12;
        fArr21[1] = f13 * fArr20[1];
        float[] fArr23 = fArr14[2];
        float[] fArr24 = fArr16[2];
        float f14 = fArr24[2];
        float[] fArr25 = fArr18[2];
        float f15 = f14 * fArr25[2];
        float f16 = fArr24[3];
        fArr23[2] = (fArr25[3] * f16) + f15;
        float[] fArr26 = fArr18[3];
        fArr23[3] = f16 * fArr26[3];
        float[] fArr27 = fArr14[3];
        float[] fArr28 = fArr16[3];
        float f17 = fArr28[2] * fArr25[2];
        float f18 = fArr28[3];
        fArr27[2] = (fArr25[3] * f18) + f17;
        fArr27[3] = f18 * fArr26[3];
        for (int i5 = 0; i5 < 4; i5++) {
            for (int i6 = 0; i6 < 4; i6++) {
                this.f39747l[i5][i6] = 0.0f;
            }
        }
        float[][] fArr29 = this.f39747l;
        float[] fArr30 = fArr29[0];
        float f19 = this.f39741f;
        fArr30[0] = f19;
        float f20 = f19 / 10.0f;
        fArr29[1][1] = f20;
        fArr29[2][2] = f19;
        fArr29[3][3] = f20;
        for (int i7 = 0; i7 < 4; i7++) {
            for (int i8 = 0; i8 < 4; i8++) {
                this.f39756u[i7][i8] = 0.0f;
            }
        }
        m31365a(this.f39753r, this.f39739d, this.f39756u, 4, 4);
        m31365a(this.f39747l, 0.125f, this.f39752q, 4, 4);
        m31366a(this.f39756u, this.f39752q, this.f39754s, 4, 4);
    }

    /* renamed from: c */
    public float m31370c() {
        return this.f39743h[0];
    }

    /* renamed from: d */
    public float m31373d() {
        return this.f39743h[2];
    }

    /* renamed from: e */
    public final void m31374e() {
        float[] fArr = this.f39743h;
        float f = fArr[0];
        float[] fArr2 = this.f39744i;
        float f2 = f - fArr2[0];
        float f3 = fArr[2] - fArr2[1];
        double sqrt = Math.sqrt((f3 * f3) + (f2 * f2));
        float[] fArr3 = this.f39746k;
        float f4 = fArr3[0];
        float f5 = fArr3[1];
        this.f39741f = ((float) Math.sqrt(Math.sqrt((f5 * f5) + (f4 * f4)) * sqrt)) / 20000.0f;
    }

    /* renamed from: f */
    public final void m31375f() {
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                this.f39756u[i][i2] = 0.0f;
            }
        }
        float[][] fArr = this.f39756u;
        float[] fArr2 = fArr[0];
        float[][] fArr3 = this.f39755t;
        fArr2[0] = fArr3[0][0];
        fArr[1][0] = fArr3[1][0];
        fArr[2][2] = fArr3[2][1];
        fArr[3][2] = fArr3[3][1];
        m31372c(this.f39751p, fArr, fArr, 4, 4);
        m31369b(this.f39756u, this.f39754s, this.f39750o, 4, 4);
    }

    /* renamed from: g */
    public final void m31376g() {
        float[][] fArr = this.f39753r;
        float f = fArr[0][0] + fArr[2][2];
        float[] fArr2 = this.f39746k;
        float f2 = fArr2[0];
        float f3 = fArr2[1];
        float[] fArr3 = this.f39742g;
        fArr3[0] = ((fArr3[0] * 0.95f) + (f2 * f2)) / 1.95f;
        fArr3[1] = ((fArr3[1] * 0.95f) + (f3 * f3)) / 1.95f;
        float[][] fArr4 = this.f39757v;
        float[] fArr5 = fArr4[0];
        float[][] fArr6 = this.f39747l;
        float f4 = fArr6[0][0];
        float[][] fArr7 = this.f39748m;
        float f5 = f4 + fArr7[0][0];
        fArr5[0] = f5;
        float[] fArr8 = fArr4[1];
        float f6 = fArr6[2][2] + fArr7[1][1];
        fArr8[1] = f6;
        float f7 = ((fArr3[0] - f5) + fArr3[1]) - f6;
        if (f != 0.0f) {
            float f8 = (f7 / f) / 500.0f;
            this.f39739d = f8;
            float f9 = this.f39740e;
            float f10 = 0.02f + f9;
            if (f8 > f10) {
                this.f39739d = f10;
            } else {
                float f11 = f9 - 0.1f;
                if (f8 <= f11) {
                    this.f39739d = f11;
                }
            }
            float f12 = this.f39739d;
            if (f12 >= 1.0f) {
                if (f12 > 1.6f) {
                    this.f39739d = 1.6f;
                }
                this.f39740e = this.f39739d;
            }
        }
        this.f39739d = 1.0f;
        this.f39740e = this.f39739d;
    }

    /* renamed from: h */
    public void m31377h() {
        float[] fArr = this.f39745j;
        float[][] fArr2 = this.f39758w;
        float[] fArr3 = fArr2[0];
        float f = fArr3[0];
        float[] fArr4 = this.f39743h;
        float f2 = f * fArr4[0];
        float f3 = fArr3[1];
        float f4 = fArr4[1];
        fArr[0] = (f3 * f4) + f2;
        fArr[1] = fArr2[1][1] * f4;
        float[] fArr5 = fArr2[2];
        float f5 = fArr5[2] * fArr4[2];
        float f6 = fArr5[3];
        float f7 = fArr4[3];
        fArr[2] = (f6 * f7) + f5;
        fArr[3] = fArr2[3][3] * f7;
    }

    /* renamed from: a */
    public void m31364a(float f, float f2) {
        float[] fArr = this.f39743h;
        fArr[0] = f;
        fArr[1] = 0.0f;
        fArr[2] = f2;
        fArr[3] = 0.0f;
        this.f39741f = 0.01f;
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                this.f39747l[i][i2] = 0.0f;
            }
        }
        float[][] fArr2 = this.f39747l;
        float[] fArr3 = fArr2[0];
        float f3 = this.f39741f;
        fArr3[0] = f3;
        float f4 = f3 / 10.0f;
        fArr2[1][1] = f4;
        fArr2[2][2] = f3;
        fArr2[3][3] = f4;
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 4; i4++) {
                this.f39750o[i3][i4] = 0.0f;
            }
        }
        float[][] fArr4 = this.f39750o;
        fArr4[0][0] = 10.0f;
        fArr4[1][1] = 2.0f;
        fArr4[2][2] = 10.0f;
        fArr4[3][3] = 2.0f;
        for (int i5 = 0; i5 < 2; i5++) {
            this.f39742g[i5] = 0.0f;
        }
        this.f39739d = 1.0f;
        this.f39740e = 1.0f;
        for (int i6 = 0; i6 < 2; i6++) {
            for (int i7 = 0; i7 < 2; i7++) {
                this.f39749n[i6][i7] = 0.0f;
                this.f39748m[i6][i7] = 0.0f;
            }
        }
        float[][] fArr5 = this.f39749n;
        fArr5[0][0] = 1.0f;
        fArr5[1][1] = 1.0f;
        float[][] fArr6 = this.f39748m;
        fArr6[0][0] = 1.0f;
        fArr6[1][1] = 1.0f;
        for (int i8 = 0; i8 < 4; i8++) {
            for (int i9 = 0; i9 < 4; i9++) {
                this.f39758w[i8][i9] = 0.0f;
            }
        }
        float[][] fArr7 = this.f39758w;
        float[] fArr8 = fArr7[0];
        fArr8[0] = 1.0f;
        fArr8[1] = 1.0f;
        fArr7[1][1] = 1.0f;
        float[] fArr9 = fArr7[2];
        fArr9[2] = 1.0f;
        fArr9[3] = 1.0f;
        fArr7[3][3] = 1.0f;
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                this.f39751p[i10][i11] = 0.0f;
            }
        }
        float[][] fArr10 = this.f39751p;
        fArr10[0][0] = 1.0f;
        fArr10[1][1] = 1.0f;
        fArr10[2][2] = 1.0f;
        fArr10[3][3] = 1.0f;
    }

    /* renamed from: b */
    public final void m31369b(float[][] fArr, float[][] fArr2, float[][] fArr3, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                float f = 0.0f;
                for (int i5 = 0; i5 < i2; i5++) {
                    f += fArr[i3][i5] * fArr2[i5][i4];
                }
                fArr3[i3][i4] = f;
            }
        }
    }

    /* renamed from: c */
    public final void m31372c(float[][] fArr, float[][] fArr2, float[][] fArr3, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                fArr3[i3][i4] = fArr[i3][i4] - fArr2[i3][i4];
            }
        }
    }

    /* renamed from: a */
    public final void m31366a(float[][] fArr, float[][] fArr2, float[][] fArr3, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                fArr3[i3][i4] = fArr[i3][i4] + fArr2[i3][i4];
            }
        }
    }

    /* renamed from: b */
    public void m31368b(float f, float f2) {
        m31377h();
        m31367b();
        m31363a();
        m31371c(f, f2);
        m31375f();
        m31374e();
        m31376g();
    }

    /* renamed from: c */
    public final void m31371c(float f, float f2) {
        float[] fArr = this.f39746k;
        float[] fArr2 = this.f39745j;
        float f3 = f - fArr2[0];
        fArr[0] = f3;
        float f4 = fArr2[2];
        fArr[1] = f2 - f4;
        float[] fArr3 = this.f39743h;
        float f5 = fArr2[0];
        float[][] fArr4 = this.f39755t;
        fArr3[0] = (fArr4[0][0] * f3) + f5;
        fArr3[1] = (fArr4[1][0] * fArr[0]) + fArr2[1];
        float f6 = fArr4[2][1];
        float f7 = fArr[1];
        fArr3[2] = (f6 * f7) + f4;
        fArr3[3] = (fArr4[3][1] * f7) + fArr2[3];
    }

    /* renamed from: a */
    public final void m31365a(float[][] fArr, float f, float[][] fArr2, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                fArr2[i3][i4] = fArr[i3][i4] * f;
            }
        }
    }
}
