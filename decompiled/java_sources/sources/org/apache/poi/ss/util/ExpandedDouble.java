package org.apache.poi.ss.util;

import java.math.BigInteger;

/* loaded from: classes13.dex */
final class ExpandedDouble {
    private static final BigInteger BI_FRAC_MASK = BigInteger.valueOf(4503599627370495L);
    private static final BigInteger BI_IMPLIED_FRAC_MSB = BigInteger.valueOf(4503599627370496L);
    private final int _binaryExponent;
    private final BigInteger _significand;

    public ExpandedDouble(long j) {
        if (Math.toIntExact(j >> 52) == 0) {
            BigInteger and = BigInteger.valueOf(j).and(BI_FRAC_MASK);
            int bitLength = 64 - and.bitLength();
            this._significand = and.shiftLeft(bitLength);
            this._binaryExponent = (-1023) - bitLength;
            return;
        }
        this._significand = getFrac(j);
        this._binaryExponent = (r0 & 2047) - 1023;
    }

    public static ExpandedDouble fromRawBitsAndExponent(long j, int i) {
        return new ExpandedDouble(getFrac(j), i);
    }

    private static BigInteger getFrac(long j) {
        return BigInteger.valueOf(j).and(BI_FRAC_MASK).or(BI_IMPLIED_FRAC_MSB).shiftLeft(11);
    }

    public int getBinaryExponent() {
        return this._binaryExponent;
    }

    public BigInteger getSignificand() {
        return this._significand;
    }

    public NormalisedDecimal normaliseBaseTen() {
        return NormalisedDecimal.create(this._significand, this._binaryExponent);
    }

    public ExpandedDouble(BigInteger bigInteger, int i) {
        if (bigInteger.bitLength() == 64) {
            this._significand = bigInteger;
            this._binaryExponent = i;
            return;
        }
        throw new IllegalArgumentException("bad bit length");
    }
}
