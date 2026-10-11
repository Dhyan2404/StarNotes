package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.sunia.HTREnginev2.ze */
/* loaded from: classes6.dex */
public final class C14756ze {

    /* renamed from: i */
    public static final float f91644i = 0.1f;

    /* renamed from: a */
    public final int f91645a;

    /* renamed from: b */
    public float f91646b;

    /* renamed from: c */
    public int f91647c;

    /* renamed from: d */
    public int f91648d;

    /* renamed from: e */
    public float f91649e;

    /* renamed from: f */
    public float f91650f;

    /* renamed from: g */
    public final int f91651g;

    /* renamed from: h */
    public final float f91652h;

    public C14756ze(int i, float f, float f2, float f3, int i2, float f4, int i3, float f5, int i4, float f6) {
        this.f91645a = i;
        this.f91646b = MathUtils.clamp(f, f2, f3);
        this.f91647c = i2;
        this.f91649e = f4;
        this.f91648d = i3;
        this.f91650f = f5;
        this.f91651g = i4;
        m58663d(f6, f2, f3, f5);
        this.f91652h = m58662b(f5);
    }

    /* renamed from: c */
    public static C14756ze m58660c(float f, float f2, float f3, float f4, int[] iArr, float f5, int[] iArr2, float f6, int[] iArr3) {
        C14756ze c14756ze = null;
        int i = 1;
        for (int i2 : iArr3) {
            int length = iArr2.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = iArr2[i3];
                int length2 = iArr.length;
                int i5 = 0;
                while (i5 < length2) {
                    int i6 = i5;
                    int i7 = length2;
                    int i8 = i3;
                    int i9 = length;
                    C14756ze c14756ze2 = new C14756ze(i, f2, f3, f4, iArr[i5], f5, i4, f6, i2, f);
                    if (c14756ze == null || c14756ze2.f91652h < c14756ze.f91652h) {
                        if (c14756ze2.f91652h == 0.0f) {
                            return c14756ze2;
                        }
                        c14756ze = c14756ze2;
                    }
                    i++;
                    i5 = i6 + 1;
                    length2 = i7;
                    i3 = i8;
                    length = i9;
                }
                i3++;
            }
        }
        return c14756ze;
    }

    /* renamed from: a */
    public final float m58661a(float f, int i, float f2, int i2, int i3) {
        if (i <= 0) {
            f2 = 0.0f;
        }
        float f3 = i;
        float f4 = i2 / 2.0f;
        return (f - ((f3 + f4) * f2)) / (i3 + f4);
    }

    /* renamed from: b */
    public final float m58662b(float f) {
        if (m58666g()) {
            return Math.abs(f - this.f91650f) * this.f91645a;
        }
        return Float.MAX_VALUE;
    }

    /* renamed from: d */
    public final void m58663d(float f, float f2, float f3, float f4) {
        float m58665f = f - m58665f();
        int i = this.f91647c;
        if (i > 0 && m58665f > 0.0f) {
            float f5 = this.f91646b;
            this.f91646b = f5 + Math.min(m58665f / i, f3 - f5);
        } else if (i > 0 && m58665f < 0.0f) {
            float f6 = this.f91646b;
            this.f91646b = f6 + Math.max(m58665f / i, f2 - f6);
        }
        int i2 = this.f91647c;
        float f7 = i2 > 0 ? this.f91646b : 0.0f;
        this.f91646b = f7;
        float m58661a = m58661a(f, i2, f7, this.f91648d, this.f91651g);
        this.f91650f = m58661a;
        float f8 = (this.f91646b + m58661a) / 2.0f;
        this.f91649e = f8;
        int i3 = this.f91648d;
        if (i3 <= 0 || m58661a == f4) {
            return;
        }
        float f9 = (f4 - m58661a) * this.f91651g;
        float min = Math.min(Math.abs(f9), f8 * 0.1f * i3);
        if (f9 > 0.0f) {
            this.f91649e -= min / this.f91648d;
            this.f91650f += min / this.f91651g;
        } else {
            this.f91649e += min / this.f91648d;
            this.f91650f -= min / this.f91651g;
        }
    }

    /* renamed from: e */
    public int m58664e() {
        return this.f91647c + this.f91648d + this.f91651g;
    }

    /* renamed from: f */
    public final float m58665f() {
        return (this.f91650f * this.f91651g) + (this.f91649e * this.f91648d) + (this.f91646b * this.f91647c);
    }

    /* renamed from: g */
    public final boolean m58666g() {
        int i = this.f91651g;
        if (i <= 0 || this.f91647c <= 0 || this.f91648d <= 0) {
            return i <= 0 || this.f91647c <= 0 || this.f91650f > this.f91646b;
        }
        float f = this.f91650f;
        float f2 = this.f91649e;
        return f > f2 && f2 > this.f91646b;
    }

    @NonNull
    public String toString() {
        return "Arrangement [priority=" + this.f91645a + ", smallCount=" + this.f91647c + ", smallSize=" + this.f91646b + ", mediumCount=" + this.f91648d + ", mediumSize=" + this.f91649e + ", largeCount=" + this.f91651g + ", largeSize=" + this.f91650f + ", cost=" + this.f91652h + IteratorUtils.f104924b;
    }
}
