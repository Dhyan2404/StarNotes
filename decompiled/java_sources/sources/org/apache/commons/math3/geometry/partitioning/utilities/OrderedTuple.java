package org.apache.commons.math3.geometry.partitioning.utilities;

import java.util.Arrays;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class OrderedTuple implements Comparable<OrderedTuple> {

    /* renamed from: l */
    public static final long f108402l = Long.MIN_VALUE;

    /* renamed from: m */
    public static final long f108403m = 9218868437227405312L;

    /* renamed from: n */
    public static final long f108404n = 4503599627370495L;

    /* renamed from: o */
    public static final long f108405o = 4503599627370496L;

    /* renamed from: e */
    public double[] f108406e;

    /* renamed from: f */
    public int f108407f;

    /* renamed from: g */
    public int f108408g;

    /* renamed from: h */
    public long[] f108409h;

    /* renamed from: i */
    public boolean f108410i;

    /* renamed from: j */
    public boolean f108411j;

    /* renamed from: k */
    public boolean f108412k;

    public OrderedTuple(double... dArr) {
        this.f108406e = (double[]) dArr.clone();
        this.f108408g = Integer.MAX_VALUE;
        this.f108410i = false;
        this.f108411j = false;
        this.f108412k = false;
        int i = Integer.MIN_VALUE;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            if (Double.isInfinite(dArr[i2])) {
                if (dArr[i2] < 0.0d) {
                    this.f108411j = true;
                } else {
                    this.f108410i = true;
                }
            } else if (Double.isNaN(dArr[i2])) {
                this.f108412k = true;
            } else {
                long doubleToLongBits = Double.doubleToLongBits(dArr[i2]);
                long m67757f = m67757f(doubleToLongBits);
                if (m67757f != 0) {
                    int m67756d = m67756d(doubleToLongBits);
                    i = FastMath.max(i, m67755b(m67757f) + m67756d);
                    this.f108408g = FastMath.min(this.f108408g, m67756d + m67754a(m67757f));
                }
            }
        }
        if (this.f108410i && this.f108411j) {
            this.f108410i = false;
            this.f108411j = false;
            this.f108412k = true;
        }
        if (this.f108408g <= i) {
            m67759c(i + 16);
        } else {
            this.f108409h = new long[]{0};
        }
    }

    /* renamed from: a */
    public static int m67754a(long j) {
        long j2 = -4294967296L;
        int i = 32;
        int i2 = 0;
        while (i != 0) {
            if ((j & j2) == j) {
                i2 |= i;
                j >>= i;
            }
            i >>= 1;
            j2 >>= i;
        }
        return i2;
    }

    /* renamed from: b */
    public static int m67755b(long j) {
        long j2 = 4294967295L;
        int i = 32;
        int i2 = 0;
        while (i != 0) {
            if ((j & j2) != j) {
                i2 |= i;
                j >>= i;
            }
            i >>= 1;
            j2 >>= i;
        }
        return i2;
    }

    /* renamed from: d */
    public static int m67756d(long j) {
        return ((int) ((j & 9218868437227405312L) >> 52)) - 1075;
    }

    /* renamed from: f */
    public static long m67757f(long j) {
        return (9218868437227405312L & j) == 0 ? (j & 4503599627370495L) << 1 : (j & 4503599627370495L) | 4503599627370496L;
    }

    /* renamed from: g */
    public static long m67758g(long j) {
        return j & Long.MIN_VALUE;
    }

    /* renamed from: c */
    public final void m67759c(int i) {
        int i2 = i + 31;
        this.f108407f = i2;
        int i3 = i2 - (i2 % 32);
        this.f108407f = i3;
        long[] jArr = this.f108409h;
        if (jArr != null && jArr.length == 1 && jArr[0] == 0) {
            return;
        }
        this.f108409h = new long[this.f108406e.length * ((((i3 + 1) - this.f108408g) + 62) / 63)];
        long j = 0;
        int i4 = 0;
        int i5 = 62;
        while (i4 < this.f108409h.length) {
            for (int i6 = 0; i6 < this.f108406e.length; i6++) {
                if (m67760e(i6, i3) != 0) {
                    j |= 1 << i5;
                }
                int i7 = i5 - 1;
                if (i5 == 0) {
                    this.f108409h[i4] = j;
                    j = 0;
                    i5 = 62;
                    i4++;
                } else {
                    i5 = i7;
                }
            }
            i3--;
        }
    }

    /* renamed from: e */
    public final int m67760e(int i, int i2) {
        int i3;
        long doubleToLongBits = Double.doubleToLongBits(this.f108406e[i]);
        int m67756d = m67756d(doubleToLongBits);
        if (i2 < m67756d || i2 > (i3 = this.f108407f)) {
            return 0;
        }
        if (i2 == i3) {
            return m67758g(doubleToLongBits) == 0 ? 1 : 0;
        }
        if (i2 > m67756d + 52) {
            return m67758g(doubleToLongBits) == 0 ? 0 : 1;
        }
        long m67758g = m67758g(doubleToLongBits);
        long m67757f = m67757f(doubleToLongBits);
        if (m67758g != 0) {
            m67757f = -m67757f;
        }
        return (int) ((m67757f >> (i2 - m67756d)) & 1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof OrderedTuple) && compareTo((OrderedTuple) obj) == 0;
    }

    public double[] getComponents() {
        return (double[]) this.f108406e.clone();
    }

    public int hashCode() {
        return (((((((((Arrays.hashCode(this.f108406e) * 37) + this.f108407f) * 37) + this.f108408g) * 37) + (this.f108410i ? 97 : 71)) * 37) + (this.f108411j ? 97 : 71)) * 37) + (this.f108412k ? 97 : 71);
    }

    @Override // java.lang.Comparable
    public int compareTo(OrderedTuple orderedTuple) {
        double[] dArr = this.f108406e;
        int length = dArr.length;
        double[] dArr2 = orderedTuple.f108406e;
        if (length == dArr2.length) {
            if (this.f108412k) {
                return 1;
            }
            if (orderedTuple.f108412k || this.f108411j || orderedTuple.f108410i) {
                return -1;
            }
            if (this.f108410i || orderedTuple.f108411j) {
                return 1;
            }
            int i = this.f108407f;
            int i2 = orderedTuple.f108407f;
            if (i < i2) {
                m67759c(i2);
            } else if (i > i2) {
                orderedTuple.m67759c(i);
            }
            int min = FastMath.min(this.f108409h.length, orderedTuple.f108409h.length);
            for (int i3 = 0; i3 < min; i3++) {
                long j = this.f108409h[i3];
                long j2 = orderedTuple.f108409h[i3];
                if (j < j2) {
                    return -1;
                }
                if (j > j2) {
                    return 1;
                }
            }
            long[] jArr = this.f108409h;
            int length2 = jArr.length;
            long[] jArr2 = orderedTuple.f108409h;
            if (length2 < jArr2.length) {
                return -1;
            }
            return jArr.length > jArr2.length ? 1 : 0;
        }
        return dArr.length - dArr2.length;
    }
}
