package org.apache.commons.math3.util;

import java.math.BigDecimal;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class Precision {

    /* renamed from: a */
    public static final long f109931a = 1023;

    /* renamed from: b */
    public static final long f109932b = Long.MIN_VALUE;

    /* renamed from: c */
    public static final int f109933c = Integer.MIN_VALUE;

    /* renamed from: d */
    public static final double f109934d = 0.0d;

    /* renamed from: e */
    public static final long f109935e = Double.doubleToRawLongBits(0.0d);

    /* renamed from: f */
    public static final long f109936f = Double.doubleToRawLongBits(-0.0d);

    /* renamed from: g */
    public static final int f109937g = Float.floatToRawIntBits(0.0f);

    /* renamed from: h */
    public static final int f109938h = Float.floatToRawIntBits(-0.0f);
    public static final double EPSILON = Double.longBitsToDouble(4368491638549381120L);
    public static final double SAFE_MIN = Double.longBitsToDouble(4503599627370496L);

    /* renamed from: a */
    public static double m68234a(double d, double d2, int i) throws MathArithmeticException, MathIllegalArgumentException {
        switch (i) {
            case 0:
                return d != FastMath.floor(d) ? FastMath.ceil(FastMath.nextAfter(d, Double.POSITIVE_INFINITY)) : d;
            case 1:
                return FastMath.floor(FastMath.nextAfter(d, Double.NEGATIVE_INFINITY));
            case 2:
                return d2 == -1.0d ? FastMath.floor(FastMath.nextAfter(d, Double.NEGATIVE_INFINITY)) : FastMath.ceil(FastMath.nextAfter(d, Double.POSITIVE_INFINITY));
            case 3:
                return d2 == -1.0d ? FastMath.ceil(FastMath.nextAfter(d, Double.POSITIVE_INFINITY)) : FastMath.floor(FastMath.nextAfter(d, Double.NEGATIVE_INFINITY));
            case 4:
                double nextAfter = FastMath.nextAfter(d, Double.POSITIVE_INFINITY);
                return nextAfter - FastMath.floor(nextAfter) >= 0.5d ? FastMath.ceil(nextAfter) : FastMath.floor(nextAfter);
            case 5:
                double nextAfter2 = FastMath.nextAfter(d, Double.NEGATIVE_INFINITY);
                return nextAfter2 - FastMath.floor(nextAfter2) > 0.5d ? FastMath.ceil(nextAfter2) : FastMath.floor(nextAfter2);
            case 6:
                double floor = d - FastMath.floor(d);
                if (floor > 0.5d) {
                    return FastMath.ceil(d);
                }
                if (floor >= 0.5d && FastMath.floor(d) / 2.0d != FastMath.floor(FastMath.floor(d) / 2.0d)) {
                    return FastMath.ceil(d);
                }
                return FastMath.floor(d);
            case 7:
                if (d == FastMath.floor(d)) {
                    return d;
                }
                throw new MathArithmeticException();
            default:
                throw new MathIllegalArgumentException(LocalizedFormats.INVALID_ROUNDING_METHOD, Integer.valueOf(i), "ROUND_CEILING", 2, "ROUND_DOWN", 1, "ROUND_FLOOR", 3, "ROUND_HALF_DOWN", 5, "ROUND_HALF_EVEN", 6, "ROUND_HALF_UP", 4, "ROUND_UNNECESSARY", 7, "ROUND_UP", 0);
        }
    }

    public static int compareTo(double d, double d2, double d3) {
        if (equals(d, d2, d3)) {
            return 0;
        }
        return d < d2 ? -1 : 1;
    }

    public static boolean equals(float f, float f2) {
        return equals(f, f2, 1);
    }

    public static boolean equalsIncludingNaN(float f, float f2) {
        if (f == f && f2 == f2) {
            return equals(f, f2, 1);
        }
        return !(((f2 > f2 ? 1 : (f2 == f2 ? 0 : -1)) != 0) ^ ((f > f ? 1 : (f == f ? 0 : -1)) != 0));
    }

    public static boolean equalsWithRelativeTolerance(double d, double d2, double d3) {
        if (equals(d, d2, 1)) {
            return true;
        }
        return FastMath.abs((d - d2) / FastMath.max(FastMath.abs(d), FastMath.abs(d2))) <= d3;
    }

    public static double representableDelta(double d, double d2) {
        return (d2 + d) - d;
    }

    public static double round(double d, int i) {
        return round(d, i, 4);
    }

    public static int compareTo(double d, double d2, int i) {
        if (equals(d, d2, i)) {
            return 0;
        }
        return d < d2 ? -1 : 1;
    }

    public static boolean equals(float f, float f2, float f3) {
        return equals(f, f2, 1) || FastMath.abs(f2 - f) <= f3;
    }

    public static boolean equalsIncludingNaN(float f, float f2, float f3) {
        return equalsIncludingNaN(f, f2) || FastMath.abs(f2 - f) <= f3;
    }

    public static double round(double d, int i, int i2) {
        try {
            double doubleValue = new BigDecimal(Double.toString(d)).setScale(i, i2).doubleValue();
            return doubleValue == 0.0d ? d * 0.0d : doubleValue;
        } catch (NumberFormatException unused) {
            if (Double.isInfinite(d)) {
                return d;
            }
            return Double.NaN;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 > (r8 - r1)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (org.apache.commons.math3.util.FastMath.abs(r0 - r1) <= r8) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
    
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean equals(float r6, float r7, int r8) {
        /*
            int r0 = java.lang.Float.floatToRawIntBits(r6)
            int r1 = java.lang.Float.floatToRawIntBits(r7)
            r2 = r0 ^ r1
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 & r3
            r3 = 1
            r4 = 0
            if (r2 != 0) goto L1a
            int r0 = r0 - r1
            int r0 = org.apache.commons.math3.util.FastMath.abs(r0)
            if (r0 > r8) goto L2e
        L18:
            r8 = r3
            goto L34
        L1a:
            if (r0 >= r1) goto L23
            int r2 = org.apache.commons.math3.util.Precision.f109937g
            int r1 = r1 - r2
            int r2 = org.apache.commons.math3.util.Precision.f109938h
            int r0 = r0 - r2
            goto L2c
        L23:
            int r2 = org.apache.commons.math3.util.Precision.f109937g
            int r0 = r0 - r2
            int r2 = org.apache.commons.math3.util.Precision.f109938h
            int r1 = r1 - r2
            r5 = r1
            r1 = r0
            r0 = r5
        L2c:
            if (r1 <= r8) goto L30
        L2e:
            r8 = r4
            goto L34
        L30:
            int r8 = r8 - r1
            if (r0 > r8) goto L2e
            goto L18
        L34:
            if (r8 == 0) goto L43
            boolean r6 = java.lang.Float.isNaN(r6)
            if (r6 != 0) goto L43
            boolean r6 = java.lang.Float.isNaN(r7)
            if (r6 != 0) goto L43
            goto L44
        L43:
            r3 = r4
        L44:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.Precision.equals(float, float, int):boolean");
    }

    public static boolean equalsIncludingNaN(float f, float f2, int i) {
        if (f == f && f2 == f2) {
            return equals(f, f2, i);
        }
        return !(((f2 > f2 ? 1 : (f2 == f2 ? 0 : -1)) != 0) ^ ((f > f ? 1 : (f == f ? 0 : -1)) != 0));
    }

    public static boolean equalsIncludingNaN(double d, double d2) {
        if (d == d && d2 == d2) {
            return equals(d, d2, 1);
        }
        return !(((d > d ? 1 : (d == d ? 0 : -1)) != 0) ^ ((d2 > d2 ? 1 : (d2 == d2 ? 0 : -1)) != 0));
    }

    public static float round(float f, int i) {
        return round(f, i, 4);
    }

    public static boolean equalsIncludingNaN(double d, double d2, double d3) {
        return equalsIncludingNaN(d, d2) || FastMath.abs(d2 - d) <= d3;
    }

    public static float round(float f, int i, int i2) throws MathArithmeticException, MathIllegalArgumentException {
        float copySign = FastMath.copySign(1.0f, f);
        return ((float) m68234a(f * r6, copySign, i2)) / (((float) FastMath.pow(10.0d, i)) * copySign);
    }

    public static boolean equalsIncludingNaN(double d, double d2, int i) {
        if (d == d && d2 == d2) {
            return equals(d, d2, i);
        }
        return !(((d2 > d2 ? 1 : (d2 == d2 ? 0 : -1)) != 0) ^ ((d > d ? 1 : (d == d ? 0 : -1)) != 0));
    }

    public static boolean equals(double d, double d2) {
        return equals(d, d2, 1);
    }

    public static boolean equals(double d, double d2, double d3) {
        return equals(d, d2, 1) || FastMath.abs(d2 - d) <= d3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        if (r0 > (r7 - r2)) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
    
        if (org.apache.commons.math3.util.FastMath.abs(r0 - r2) <= r15) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
    
        r15 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean equals(double r11, double r13, int r15) {
        /*
            long r0 = java.lang.Double.doubleToRawLongBits(r11)
            long r2 = java.lang.Double.doubleToRawLongBits(r13)
            long r4 = r0 ^ r2
            r6 = -9223372036854775808
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            r5 = 1
            r6 = 0
            if (r4 != 0) goto L21
            long r0 = r0 - r2
            long r0 = org.apache.commons.math3.util.FastMath.abs(r0)
            long r2 = (long) r15
            int r15 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r15 > 0) goto L3a
        L1f:
            r15 = r5
            goto L42
        L21:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L2c
            long r7 = org.apache.commons.math3.util.Precision.f109935e
            long r2 = r2 - r7
            long r7 = org.apache.commons.math3.util.Precision.f109936f
            long r0 = r0 - r7
            goto L35
        L2c:
            long r7 = org.apache.commons.math3.util.Precision.f109935e
            long r0 = r0 - r7
            long r7 = org.apache.commons.math3.util.Precision.f109936f
            long r2 = r2 - r7
            r9 = r0
            r0 = r2
            r2 = r9
        L35:
            long r7 = (long) r15
            int r15 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r15 <= 0) goto L3c
        L3a:
            r15 = r6
            goto L42
        L3c:
            long r7 = r7 - r2
            int r15 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r15 > 0) goto L3a
            goto L1f
        L42:
            if (r15 == 0) goto L51
            boolean r11 = java.lang.Double.isNaN(r11)
            if (r11 != 0) goto L51
            boolean r11 = java.lang.Double.isNaN(r13)
            if (r11 != 0) goto L51
            goto L52
        L51:
            r5 = r6
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.Precision.equals(double, double, int):boolean");
    }
}
