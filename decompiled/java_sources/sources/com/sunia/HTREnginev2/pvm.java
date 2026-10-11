package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.util.Assertions;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class pvm {

    /* renamed from: w */
    public static final int f81290w = 65;

    /* renamed from: x */
    public static final int f81291x = 400;

    /* renamed from: y */
    public static final int f81292y = 4000;

    /* renamed from: z */
    public static final int f81293z = 2;

    /* renamed from: a */
    public final int f81294a;

    /* renamed from: b */
    public final int f81295b;

    /* renamed from: c */
    public final float f81296c;

    /* renamed from: d */
    public final float f81297d;

    /* renamed from: e */
    public final float f81298e;

    /* renamed from: f */
    public final int f81299f;

    /* renamed from: g */
    public final int f81300g;

    /* renamed from: h */
    public final int f81301h;

    /* renamed from: i */
    public final short[] f81302i;

    /* renamed from: j */
    public short[] f81303j;

    /* renamed from: k */
    public int f81304k;

    /* renamed from: l */
    public short[] f81305l;

    /* renamed from: m */
    public int f81306m;

    /* renamed from: n */
    public short[] f81307n;

    /* renamed from: o */
    public int f81308o;

    /* renamed from: p */
    public int f81309p;

    /* renamed from: q */
    public int f81310q;

    /* renamed from: r */
    public int f81311r;

    /* renamed from: s */
    public int f81312s;

    /* renamed from: t */
    public int f81313t;

    /* renamed from: u */
    public int f81314u;

    /* renamed from: v */
    public int f81315v;

    public pvm(int i, int i2, float f, float f2, int i3) {
        this.f81294a = i;
        this.f81295b = i2;
        this.f81296c = f;
        this.f81297d = f2;
        this.f81298e = i / i3;
        this.f81299f = i / 400;
        int i4 = i / 65;
        this.f81300g = i4;
        int i5 = i4 * 2;
        this.f81301h = i5;
        this.f81302i = new short[i5];
        this.f81303j = new short[i5 * i2];
        this.f81305l = new short[i5 * i2];
        this.f81307n = new short[i5 * i2];
    }

    /* renamed from: p */
    public static void m56427p(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    /* renamed from: a */
    public final void m56428a(float f, int i) {
        int i2;
        int i3;
        if (this.f81306m == i) {
            return;
        }
        int i4 = this.f81294a;
        int i5 = (int) (i4 / f);
        while (true) {
            if (i5 <= 16384 && i4 <= 16384) {
                break;
            }
            i5 /= 2;
            i4 /= 2;
        }
        m56442o(i);
        int i6 = 0;
        while (true) {
            int i7 = this.f81308o;
            if (i6 >= i7 - 1) {
                m56447u(i7 - 1);
                return;
            }
            while (true) {
                i2 = this.f81309p;
                int i8 = (i2 + 1) * i5;
                i3 = this.f81310q;
                if (i8 <= i3 * i4) {
                    break;
                }
                this.f81305l = m56433f(this.f81305l, this.f81306m, 1);
                int i9 = 0;
                while (true) {
                    int i10 = this.f81295b;
                    if (i9 < i10) {
                        this.f81305l[(this.f81306m * i10) + i9] = m56441n(this.f81307n, (i10 * i6) + i9, i4, i5);
                        i9++;
                    }
                }
                this.f81310q++;
                this.f81306m++;
            }
            int i11 = i2 + 1;
            this.f81309p = i11;
            if (i11 == i4) {
                this.f81309p = 0;
                Assertions.checkState(i3 == i5);
                this.f81310q = 0;
            }
            i6++;
        }
    }

    /* renamed from: b */
    public final void m56429b(float f) {
        int m56449w;
        int i = this.f81304k;
        if (i < this.f81301h) {
            return;
        }
        int i2 = 0;
        do {
            if (this.f81311r > 0) {
                m56449w = m56430c(i2);
            } else {
                int m56434g = m56434g(this.f81303j, i2);
                m56449w = ((double) f) > 1.0d ? m56434g + m56449w(this.f81303j, i2, f, m56434g) : m56440m(this.f81303j, i2, f, m56434g);
            }
            i2 += m56449w;
        } while (this.f81301h + i2 <= i);
        m56448v(i2);
    }

    /* renamed from: c */
    public final int m56430c(int i) {
        int min = Math.min(this.f81301h, this.f81311r);
        m56431d(this.f81303j, i, min);
        this.f81311r -= min;
        return min;
    }

    /* renamed from: d */
    public final void m56431d(short[] sArr, int i, int i2) {
        short[] m56433f = m56433f(this.f81305l, this.f81306m, i2);
        this.f81305l = m56433f;
        int i3 = this.f81295b;
        System.arraycopy(sArr, i * i3, m56433f, this.f81306m * i3, i3 * i2);
        this.f81306m += i2;
    }

    /* renamed from: e */
    public final void m56432e(short[] sArr, int i, int i2) {
        int i3 = this.f81301h / i2;
        int i4 = this.f81295b;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.f81302i[i7] = (short) (i8 / i5);
        }
    }

    /* renamed from: f */
    public final short[] m56433f(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f81295b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: g */
    public final int m56434g(short[] sArr, int i) {
        int i2;
        int i3 = this.f81294a;
        int i4 = i3 > 4000 ? i3 / 4000 : 1;
        if (this.f81295b == 1 && i4 == 1) {
            i2 = m56435h(sArr, i, this.f81299f, this.f81300g);
        } else {
            m56432e(sArr, i, i4);
            int m56435h = m56435h(this.f81302i, 0, this.f81299f / i4, this.f81300g / i4);
            if (i4 != 1) {
                int i5 = m56435h * i4;
                int i6 = i4 * 4;
                int i7 = i5 - i6;
                int i8 = i5 + i6;
                int i9 = this.f81299f;
                if (i7 < i9) {
                    i7 = i9;
                }
                int i10 = this.f81300g;
                if (i8 > i10) {
                    i8 = i10;
                }
                if (this.f81295b == 1) {
                    i2 = m56435h(sArr, i, i7, i8);
                } else {
                    m56432e(sArr, i, 1);
                    i2 = m56435h(this.f81302i, 0, i7, i8);
                }
            } else {
                i2 = m56435h;
            }
        }
        int i11 = m56443q(this.f81314u, this.f81315v) ? this.f81312s : i2;
        this.f81313t = this.f81314u;
        this.f81312s = i2;
        return i11;
    }

    /* renamed from: h */
    public final int m56435h(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f81295b;
        int i5 = 255;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                i9 += Math.abs(sArr[i4 + i10] - sArr[(i4 + i2) + i10]);
            }
            if (i9 * i7 < i6 * i2) {
                i7 = i2;
                i6 = i9;
            }
            if (i9 * i5 > i8 * i2) {
                i5 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.f81314u = i6 / i7;
        this.f81315v = i8 / i5;
        return i7;
    }

    /* renamed from: i */
    public void m56436i() {
        this.f81304k = 0;
        this.f81306m = 0;
        this.f81308o = 0;
        this.f81309p = 0;
        this.f81310q = 0;
        this.f81311r = 0;
        this.f81312s = 0;
        this.f81313t = 0;
        this.f81314u = 0;
        this.f81315v = 0;
    }

    /* renamed from: j */
    public void m56437j(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f81295b, this.f81306m);
        shortBuffer.put(this.f81305l, 0, this.f81295b * min);
        int i = this.f81306m - min;
        this.f81306m = i;
        short[] sArr = this.f81305l;
        int i2 = this.f81295b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: k */
    public int m56438k() {
        return this.f81306m * this.f81295b * 2;
    }

    /* renamed from: l */
    public int m56439l() {
        return this.f81304k * this.f81295b * 2;
    }

    /* renamed from: m */
    public final int m56440m(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            this.f81311r = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] m56433f = m56433f(this.f81305l, this.f81306m, i4);
        this.f81305l = m56433f;
        int i5 = this.f81295b;
        System.arraycopy(sArr, i * i5, m56433f, this.f81306m * i5, i5 * i2);
        m56427p(i3, this.f81295b, this.f81305l, this.f81306m + i2, sArr, i + i2, sArr, i);
        this.f81306m += i4;
        return i3;
    }

    /* renamed from: n */
    public final short m56441n(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.f81295b];
        int i4 = this.f81310q * i2;
        int i5 = this.f81309p;
        int i6 = i5 * i3;
        int i7 = (i5 + 1) * i3;
        int i8 = i7 - i4;
        int i9 = i7 - i6;
        return (short) (((s * i8) + ((i9 - i8) * s2)) / i9);
    }

    /* renamed from: o */
    public final void m56442o(int i) {
        int i2 = this.f81306m - i;
        short[] m56433f = m56433f(this.f81307n, this.f81308o, i2);
        this.f81307n = m56433f;
        short[] sArr = this.f81305l;
        int i3 = this.f81295b;
        System.arraycopy(sArr, i * i3, m56433f, this.f81308o * i3, i3 * i2);
        this.f81306m = i;
        this.f81308o += i2;
    }

    /* renamed from: q */
    public final boolean m56443q(int i, int i2) {
        return i != 0 && this.f81312s != 0 && i2 <= i * 3 && i * 2 > this.f81313t * 3;
    }

    /* renamed from: r */
    public final void m56444r() {
        int i = this.f81306m;
        float f = this.f81296c;
        float f2 = this.f81297d;
        float f3 = f / f2;
        float f4 = this.f81298e * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            m56429b(f3);
        } else {
            m56431d(this.f81303j, 0, this.f81304k);
            this.f81304k = 0;
        }
        if (f4 != 1.0f) {
            m56428a(f4, i);
        }
    }

    /* renamed from: s */
    public void m56445s() {
        int i;
        int i2 = this.f81304k;
        float f = this.f81296c;
        float f2 = this.f81297d;
        int i3 = this.f81306m + ((int) ((((i2 / (f / f2)) + this.f81308o) / (this.f81298e * f2)) + 0.5f));
        this.f81303j = m56433f(this.f81303j, i2, (this.f81301h * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.f81301h;
            int i5 = this.f81295b;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.f81303j[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.f81304k += i * 2;
        m56444r();
        if (this.f81306m > i3) {
            this.f81306m = i3;
        }
        this.f81304k = 0;
        this.f81311r = 0;
        this.f81308o = 0;
    }

    /* renamed from: t */
    public void m56446t(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f81295b;
        int i2 = remaining / i;
        short[] m56433f = m56433f(this.f81303j, this.f81304k, i2);
        this.f81303j = m56433f;
        shortBuffer.get(m56433f, this.f81304k * this.f81295b, ((i * i2) * 2) / 2);
        this.f81304k += i2;
        m56444r();
    }

    /* renamed from: u */
    public final void m56447u(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.f81307n;
        int i2 = this.f81295b;
        System.arraycopy(sArr, i * i2, sArr, 0, (this.f81308o - i) * i2);
        this.f81308o -= i;
    }

    /* renamed from: v */
    public final void m56448v(int i) {
        int i2 = this.f81304k - i;
        short[] sArr = this.f81303j;
        int i3 = this.f81295b;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.f81304k = i2;
    }

    /* renamed from: w */
    public final int m56449w(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f >= 2.0f) {
            i3 = (int) (i2 / (f - 1.0f));
        } else {
            this.f81311r = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            i3 = i2;
        }
        short[] m56433f = m56433f(this.f81305l, this.f81306m, i3);
        this.f81305l = m56433f;
        m56427p(i3, this.f81295b, m56433f, this.f81306m, sArr, i, sArr, i + i2);
        this.f81306m += i3;
        return i3;
    }
}
