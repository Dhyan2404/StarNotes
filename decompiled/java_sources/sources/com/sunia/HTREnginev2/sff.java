package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.math.BigInteger;

@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class sff {

    /* renamed from: a */
    public static final long f84092a = 4503599627370495L;

    /* renamed from: b */
    public static final long f84093b = 9218868437227405312L;

    /* renamed from: c */
    public static final long f84094c = Long.MIN_VALUE;

    /* renamed from: d */
    public static final int f84095d = 52;

    /* renamed from: e */
    public static final int f84096e = 1023;

    /* renamed from: f */
    public static final long f84097f = 4503599627370496L;

    /* renamed from: g */
    @VisibleForTesting
    public static final long f84098g = 4607182418800017408L;

    /* renamed from: a */
    public static double m57155a(BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        boolean z = true;
        int bitLength = abs.bitLength() - 1;
        if (bitLength < 63) {
            return bigInteger.longValue();
        }
        if (bitLength > 1023) {
            return bigInteger.signum() * Double.POSITIVE_INFINITY;
        }
        int i = (bitLength - 52) - 1;
        long longValue = abs.shiftRight(i).longValue();
        long j = (longValue >> 1) & 4503599627370495L;
        if ((longValue & 1) == 0 || ((j & 1) == 0 && abs.getLowestSetBit() >= i)) {
            z = false;
        }
        if (z) {
            j++;
        }
        return Double.longBitsToDouble((((bitLength + 1023) << 52) + j) | (bigInteger.signum() & Long.MIN_VALUE));
    }

    /* renamed from: b */
    public static double m57156b(double d) {
        Preconditions.checkArgument(!Double.isNaN(d));
        return Math.max(d, 0.0d);
    }

    /* renamed from: c */
    public static long m57157c(double d) {
        Preconditions.checkArgument(m57158d(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? doubleToRawLongBits << 1 : doubleToRawLongBits | 4503599627370496L;
    }

    /* renamed from: d */
    public static boolean m57158d(double d) {
        return Math.getExponent(d) <= 1023;
    }

    /* renamed from: e */
    public static boolean m57159e(double d) {
        return Math.getExponent(d) >= -1022;
    }

    /* renamed from: f */
    public static double m57160f(double d) {
        return -Math.nextUp(-d);
    }

    /* renamed from: g */
    public static double m57161g(double d) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d) & 4503599627370495L) | f84098g);
    }
}
