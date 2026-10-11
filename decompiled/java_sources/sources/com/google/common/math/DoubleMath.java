package com.google.common.math;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.ngj;
import com.sunia.HTREnginev2.sff;
import com.sunia.HTREnginev2.znf;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

@znf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class DoubleMath {

    /* renamed from: a */
    public static final double f34950a = -2.147483648E9d;

    /* renamed from: b */
    public static final double f34951b = 2.147483647E9d;

    /* renamed from: c */
    public static final double f34952c = -9.223372036854776E18d;

    /* renamed from: d */
    public static final double f34953d = 9.223372036854776E18d;

    /* renamed from: f */
    @VisibleForTesting
    public static final int f34955f = 170;

    /* renamed from: e */
    public static final double f34954e = Math.log(2.0d);

    /* renamed from: g */
    @VisibleForTesting
    public static final double[] f34956g = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    /* renamed from: com.google.common.math.DoubleMath$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6242a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34957a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f34957a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34957a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34957a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34957a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34957a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34957a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34957a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34957a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    /* renamed from: a */
    public static double m27264a(double d) {
        Preconditions.checkArgument(sff.m57158d(d));
        return d;
    }

    @GwtIncompatible
    /* renamed from: b */
    public static double m27265b(double d, RoundingMode roundingMode) {
        if (!sff.m57158d(d)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (C6242a.f34957a[roundingMode.ordinal()]) {
            case 1:
                ngj.m55753k(isMathematicalInteger(d));
                return d;
            case 2:
                return (d >= 0.0d || isMathematicalInteger(d)) ? d : ((long) d) - 1;
            case 3:
                return (d <= 0.0d || isMathematicalInteger(d)) ? d : ((long) d) + 1;
            case 4:
                return d;
            case 5:
                if (isMathematicalInteger(d)) {
                    return d;
                }
                return ((long) d) + (d > 0.0d ? 1 : -1);
            case 6:
                return Math.rint(d);
            case 7:
                double rint = Math.rint(d);
                return Math.abs(d - rint) == 0.5d ? d + Math.copySign(0.5d, d) : rint;
            case 8:
                double rint2 = Math.rint(d);
                return Math.abs(d - rint2) == 0.5d ? d : rint2;
            default:
                throw new AssertionError();
        }
    }

    public static double factorial(int i) {
        ngj.m55747e(GoogleApiAvailabilityLight.f29016b, i);
        if (i > 170) {
            return Double.POSITIVE_INFINITY;
        }
        double d = 1.0d;
        for (int i2 = (i & (-16)) + 1; i2 <= i; i2++) {
            d *= i2;
        }
        return d * f34956g[i >> 4];
    }

    public static int fuzzyCompare(double d, double d2, double d3) {
        if (fuzzyEquals(d, d2, d3)) {
            return 0;
        }
        if (d < d2) {
            return -1;
        }
        if (d > d2) {
            return 1;
        }
        return Booleans.compare(Double.isNaN(d), Double.isNaN(d2));
    }

    public static boolean fuzzyEquals(double d, double d2, double d3) {
        ngj.m55746d("tolerance", d3);
        return Math.copySign(d - d2, 1.0d) <= d3 || d == d2 || (Double.isNaN(d) && Double.isNaN(d2));
    }

    @GwtIncompatible
    public static boolean isMathematicalInteger(double d) {
        return sff.m57158d(d) && (d == 0.0d || 52 - Long.numberOfTrailingZeros(sff.m57157c(d)) <= Math.getExponent(d));
    }

    @GwtIncompatible
    public static boolean isPowerOfTwo(double d) {
        if (d <= 0.0d || !sff.m57158d(d)) {
            return false;
        }
        long m57157c = sff.m57157c(d);
        return (m57157c & (m57157c - 1)) == 0;
    }

    public static double log2(double d) {
        return Math.log(d) / f34954e;
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0, "Cannot take mean of 0 values");
        double m27264a = m27264a(dArr[0]);
        long j = 1;
        for (int i = 1; i < dArr.length; i++) {
            m27264a(dArr[i]);
            j++;
            m27264a += (dArr[i] - m27264a) / j;
        }
        return m27264a;
    }

    @GwtIncompatible
    public static BigInteger roundToBigInteger(double d, RoundingMode roundingMode) {
        double m27265b = m27265b(d, roundingMode);
        if (((-9.223372036854776E18d) - m27265b < 1.0d) && (m27265b < 9.223372036854776E18d)) {
            return BigInteger.valueOf((long) m27265b);
        }
        BigInteger shiftLeft = BigInteger.valueOf(sff.m57157c(m27265b)).shiftLeft(Math.getExponent(m27265b) - 52);
        return m27265b < 0.0d ? shiftLeft.negate() : shiftLeft;
    }

    @GwtIncompatible
    public static int roundToInt(double d, RoundingMode roundingMode) {
        double m27265b = m27265b(d, roundingMode);
        ngj.m55743a((m27265b > -2.147483649E9d) & (m27265b < 2.147483648E9d), d, roundingMode);
        return (int) m27265b;
    }

    @GwtIncompatible
    public static long roundToLong(double d, RoundingMode roundingMode) {
        double m27265b = m27265b(d, roundingMode);
        ngj.m55743a(((-9.223372036854776E18d) - m27265b < 1.0d) & (m27265b < 9.223372036854776E18d), d, roundingMode);
        return (long) m27265b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0032. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @com.google.common.annotations.GwtIncompatible
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log2(double r5, java.math.RoundingMode r7) {
        /*
            r0 = 0
            int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L10
            boolean r0 = com.sunia.HTREnginev2.sff.m57158d(r5)
            if (r0 == 0) goto L10
            r0 = r2
            goto L11
        L10:
            r0 = r1
        L11:
            java.lang.String r3 = "x must be positive and finite"
            com.google.common.base.Preconditions.checkArgument(r0, r3)
            int r0 = java.lang.Math.getExponent(r5)
            boolean r3 = com.sunia.HTREnginev2.sff.m57159e(r5)
            if (r3 != 0) goto L2a
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r5 = r5 * r0
            int r5 = log2(r5, r7)
            int r5 = r5 + (-52)
            return r5
        L2a:
            int[] r3 = com.google.common.math.DoubleMath.C6242a.f34957a
            int r7 = r7.ordinal()
            r7 = r3[r7]
            switch(r7) {
                case 1: goto L61;
                case 2: goto L68;
                case 3: goto L5a;
                case 4: goto L50;
                case 5: goto L48;
                case 6: goto L3b;
                case 7: goto L3b;
                case 8: goto L3b;
                default: goto L35;
            }
        L35:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            r5.<init>()
            throw r5
        L3b:
            double r5 = com.sunia.HTREnginev2.sff.m57161g(r5)
            double r5 = r5 * r5
            r3 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r5 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r5 <= 0) goto L68
            r1 = r2
            goto L68
        L48:
            if (r0 < 0) goto L4b
            r1 = r2
        L4b:
            boolean r5 = isPowerOfTwo(r5)
            goto L57
        L50:
            if (r0 >= 0) goto L53
            r1 = r2
        L53:
            boolean r5 = isPowerOfTwo(r5)
        L57:
            r5 = r5 ^ r2
            r1 = r1 & r5
            goto L68
        L5a:
            boolean r5 = isPowerOfTwo(r5)
            r1 = r5 ^ 1
            goto L68
        L61:
            boolean r5 = isPowerOfTwo(r5)
            com.sunia.HTREnginev2.ngj.m55753k(r5)
        L68:
            if (r1 == 0) goto L6c
            int r0 = r0 + 1
        L6c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.DoubleMath.log2(double, java.math.RoundingMode):int");
    }

    @Deprecated
    public static double mean(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0, "Cannot take mean of 0 values");
        long j = 0;
        for (int i : iArr) {
            j += i;
        }
        return j / iArr.length;
    }

    @Deprecated
    public static double mean(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0, "Cannot take mean of 0 values");
        double d = jArr[0];
        long j = 1;
        for (int i = 1; i < jArr.length; i++) {
            j++;
            d += (jArr[i] - d) / j;
        }
        return d;
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(Iterable<? extends Number> iterable) {
        return mean(iterable.iterator());
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(Iterator<? extends Number> it2) {
        Preconditions.checkArgument(it2.hasNext(), "Cannot take mean of 0 values");
        double m27264a = m27264a(it2.next().doubleValue());
        long j = 1;
        while (it2.hasNext()) {
            j++;
            m27264a += (m27264a(it2.next().doubleValue()) - m27264a) / j;
        }
        return m27264a;
    }
}
