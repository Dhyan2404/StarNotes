package org.apache.poi.ss.util;

import java.util.Locale;

/* loaded from: classes13.dex */
public final class NumberComparer {
    public static int compare(double d, double d2) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        long doubleToLongBits2 = Double.doubleToLongBits(d2);
        int biasedExponent = IEEEDouble.getBiasedExponent(doubleToLongBits);
        int biasedExponent2 = IEEEDouble.getBiasedExponent(doubleToLongBits2);
        if (biasedExponent == 2047) {
            throw new IllegalArgumentException("Special double values are not allowed: " + toHex(d));
        }
        if (biasedExponent2 == 2047) {
            throw new IllegalArgumentException("Special double values are not allowed: " + toHex(d));
        }
        boolean z = doubleToLongBits < 0;
        if (z != (doubleToLongBits2 < 0)) {
            return z ? -1 : 1;
        }
        int i = biasedExponent - biasedExponent2;
        int abs = Math.abs(i);
        if (abs > 1) {
            return z ? -i : i;
        }
        if (abs != 1 && doubleToLongBits == doubleToLongBits2) {
            return 0;
        }
        if (biasedExponent == 0) {
            return biasedExponent2 == 0 ? compareSubnormalNumbers(doubleToLongBits & 4503599627370495L, 4503599627370495L & doubleToLongBits2, z) : -compareAcrossSubnormalThreshold(doubleToLongBits2, doubleToLongBits, z);
        }
        if (biasedExponent2 == 0) {
            return compareAcrossSubnormalThreshold(doubleToLongBits, doubleToLongBits2, z);
        }
        int compareNormalised = ExpandedDouble.fromRawBitsAndExponent(doubleToLongBits, biasedExponent - 1023).normaliseBaseTen().roundUnits().compareNormalised(ExpandedDouble.fromRawBitsAndExponent(doubleToLongBits2, biasedExponent2 - 1023).normaliseBaseTen().roundUnits());
        return z ? -compareNormalised : compareNormalised;
    }

    private static int compareAcrossSubnormalThreshold(long j, long j2, boolean z) {
        long j3 = j2 & 4503599627370495L;
        if (j3 == 0) {
            return z ? -1 : 1;
        }
        long j4 = j & 4503599627370495L;
        if (j4 > 7 || j3 < 4503599627370490L) {
            return z ? -1 : 1;
        }
        if (j4 == 7 && j3 == 4503599627370490L) {
            return 0;
        }
        return z ? 1 : -1;
    }

    private static int compareSubnormalNumbers(long j, long j2, boolean z) {
        return z ? Long.compare(j2, j) : Long.compare(j, j2);
    }

    private static String toHex(double d) {
        return "0x" + Long.toHexString(Double.doubleToLongBits(d)).toUpperCase(Locale.ROOT);
    }
}
