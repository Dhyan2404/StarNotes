package com.miui.penengine.p016f;

import com.miui.penengine.p014d.C6989c;

/* renamed from: com.miui.penengine.f.h */
/* loaded from: classes7.dex */
public class C7009h {

    /* renamed from: o */
    public static C7009h f39778o;

    /* renamed from: a */
    public float f39779a;

    /* renamed from: b */
    public float f39780b;

    /* renamed from: c */
    public float f39781c;

    /* renamed from: d */
    public float f39782d;

    /* renamed from: e */
    public float f39783e;

    /* renamed from: f */
    public float f39784f;

    /* renamed from: g */
    public float f39785g;

    /* renamed from: h */
    public float f39786h;

    /* renamed from: i */
    public long f39787i;

    /* renamed from: j */
    public long f39788j;

    /* renamed from: k */
    public C7003b f39789k;

    /* renamed from: l */
    public double f39790l = 0.0d;

    /* renamed from: m */
    public double f39791m = 0.0d;

    /* renamed from: n */
    public double f39792n = 0.0d;

    public C7009h() {
        this.f39789k = null;
        this.f39789k = new C7003b();
    }

    /* renamed from: a */
    public static C7009h m31416a() {
        if (f39778o == null) {
            f39778o = new C7009h();
        }
        return f39778o;
    }

    /* renamed from: b */
    public double m31419b() {
        return this.f39792n;
    }

    /* renamed from: c */
    public double m31421c() {
        return this.f39790l;
    }

    /* renamed from: d */
    public double m31422d() {
        return this.f39791m;
    }

    /* renamed from: e */
    public float m31423e() {
        return this.f39783e;
    }

    /* renamed from: f */
    public float m31424f() {
        return this.f39784f;
    }

    /* renamed from: g */
    public void m31425g() {
        this.f39783e = 0.0f;
        this.f39784f = 0.0f;
        this.f39785g = 0.0f;
        this.f39786h = 0.0f;
        this.f39779a = 0.0f;
        this.f39780b = 0.0f;
        this.f39787i = 0L;
        this.f39788j = 0L;
        this.f39791m = 0.0d;
        this.f39792n = 0.0d;
        this.f39790l = 0.0d;
    }

    /* renamed from: a */
    public void m31417a(C6989c c6989c) {
        float m31306f;
        float m31307g;
        this.f39784f = c6989c.m31307g();
        this.f39783e = c6989c.m31306f();
        long j = this.f39787i - this.f39788j;
        float f = j == 0 ? 0.0f : (this.f39779a - this.f39781c) / ((float) j);
        float f2 = j == 0 ? 0.0f : (this.f39780b - this.f39782d) / ((float) j);
        double sqrt = Math.sqrt((f2 * f2) + (f * f));
        if (c6989c.m31306f() == this.f39779a && c6989c.m31307g() == this.f39780b) {
            long m31305e = c6989c.m31305e() - this.f39787i;
            float f3 = m31305e == 0 ? 0.0f : (f - this.f39785g) / ((float) m31305e);
            float f4 = m31305e != 0 ? (f2 - this.f39786h) / ((float) m31305e) : 0.0f;
            if (Math.abs(f) < 0.1f) {
                m31306f = c6989c.m31306f();
            } else {
                float f5 = (float) m31305e;
                m31306f = (((f3 * f5) * f5) / 2.0f) + (f * f5) + c6989c.m31306f();
            }
            if (Math.abs(f2) < 0.1f) {
                m31307g = c6989c.m31307g();
            } else {
                float f6 = (float) m31305e;
                m31307g = (((f4 * f6) * f6) / 2.0f) + (f2 * f6) + c6989c.m31307g();
            }
            if (sqrt > 0.30000001192092896d) {
                this.f39783e = m31306f;
                this.f39784f = m31307g;
            }
        } else {
            this.f39790l = c6989c.m31302c();
            this.f39791m = c6989c.m31304d();
            this.f39792n = c6989c.m31299b();
        }
        this.f39785g = f;
        this.f39786h = f2;
        this.f39782d = this.f39780b;
        this.f39781c = this.f39779a;
        this.f39779a = this.f39783e;
        this.f39780b = this.f39784f;
        this.f39788j = this.f39787i;
        this.f39787i = c6989c.m31305e();
    }

    /* renamed from: b */
    public void m31420b(C6989c c6989c) {
        this.f39783e = c6989c.m31306f();
        float m31307g = c6989c.m31307g();
        this.f39784f = m31307g;
        float f = this.f39783e;
        this.f39779a = f;
        this.f39780b = m31307g;
        this.f39781c = f;
        this.f39782d = m31307g;
        this.f39785g = 0.0f;
        this.f39786h = 0.0f;
        this.f39787i = c6989c.m31305e();
        this.f39788j = c6989c.m31305e();
        this.f39791m = c6989c.m31304d();
        this.f39790l = c6989c.m31302c();
        this.f39792n = c6989c.m31299b();
    }

    /* renamed from: a */
    public void m31418a(float[] fArr, float[] fArr2, int i) {
        this.f39789k.m31364a(fArr[0], fArr2[0]);
        for (int i2 = 1; i2 < fArr.length; i2++) {
            if (i2 < i) {
                this.f39789k.m31368b(fArr[i2], fArr2[i2]);
                fArr[i2] = this.f39789k.m31370c();
                fArr2[i2] = this.f39789k.m31373d();
            } else {
                int i3 = i2 - 1;
                fArr[i2] = fArr[i3];
                fArr2[i2] = fArr2[i3];
            }
        }
    }
}
