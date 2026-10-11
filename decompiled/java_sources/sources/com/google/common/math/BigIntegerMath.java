package com.google.common.math;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.ngj;
import com.sunia.HTREnginev2.sff;
import com.sunia.HTREnginev2.uin;
import com.sunia.HTREnginev2.znf;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

@znf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class BigIntegerMath {

    /* renamed from: a */
    @VisibleForTesting
    public static final int f34944a = 256;

    /* renamed from: b */
    @VisibleForTesting
    public static final BigInteger f34945b = new BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);

    /* renamed from: c */
    public static final double f34946c = Math.log(10.0d);

    /* renamed from: d */
    public static final double f34947d = Math.log(2.0d);

    /* renamed from: com.google.common.math.BigIntegerMath$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6240a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34948a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f34948a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34948a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34948a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34948a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34948a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34948a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34948a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34948a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.math.BigIntegerMath$b */
    /* loaded from: classes6.dex */
    public static class C6241b extends uin<BigInteger> {

        /* renamed from: a */
        public static final C6241b f34949a = new C6241b();

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public BigInteger mo27247a(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger.subtract(bigInteger2);
        }

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public double mo27248c(BigInteger bigInteger) {
            return sff.m57155a(bigInteger);
        }

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public int mo27249d(BigInteger bigInteger) {
            return bigInteger.signum();
        }

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public BigInteger mo27250e(double d, RoundingMode roundingMode) {
            return DoubleMath.roundToBigInteger(d, roundingMode);
        }
    }

    @GwtIncompatible
    /* renamed from: a */
    public static boolean m27255a(BigInteger bigInteger) {
        return bigInteger.bitLength() <= 63;
    }

    /* renamed from: b */
    public static BigInteger m27256b(List<BigInteger> list) {
        return m27257c(list, 0, list.size());
    }

    public static BigInteger binomial(int i, int i2) {
        int i3;
        ngj.m55747e(GoogleApiAvailabilityLight.f29016b, i);
        ngj.m55747e(C4921e.f26537n, i2);
        int i4 = 1;
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        int[] iArr = LongMath.f34982h;
        if (i2 < iArr.length && i <= iArr[i2]) {
            return BigInteger.valueOf(LongMath.binomial(i, i2));
        }
        BigInteger bigInteger = BigInteger.ONE;
        long j = i;
        int log2 = LongMath.log2(j, RoundingMode.CEILING);
        long j2 = 1;
        while (true) {
            int i5 = log2;
            while (i4 < i2) {
                i3 = i - i4;
                i4++;
                i5 += log2;
                if (i5 >= 63) {
                    break;
                }
                j *= i3;
                j2 *= i4;
            }
            return bigInteger.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            bigInteger = bigInteger.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            j = i3;
            j2 = i4;
        }
    }

    /* renamed from: c */
    public static BigInteger m27257c(List<BigInteger> list, int i, int i2) {
        int i3 = i2 - i;
        if (i3 == 0) {
            return BigInteger.ONE;
        }
        if (i3 == 1) {
            return list.get(i);
        }
        if (i3 == 2) {
            return list.get(i).multiply(list.get(i + 1));
        }
        if (i3 == 3) {
            return list.get(i).multiply(list.get(i + 1)).multiply(list.get(i + 2));
        }
        int i4 = (i2 + i) >>> 1;
        return m27257c(list, i, i4).multiply(m27257c(list, i4, i2));
    }

    @Beta
    public static BigInteger ceilingPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.CEILING));
    }

    @GwtIncompatible
    /* renamed from: d */
    public static BigInteger m27258d(BigInteger bigInteger) {
        return DoubleMath.roundToBigInteger(Math.sqrt(sff.m57155a(bigInteger)), RoundingMode.HALF_EVEN);
    }

    @GwtIncompatible
    public static BigInteger divide(BigInteger bigInteger, BigInteger bigInteger2, RoundingMode roundingMode) {
        return new BigDecimal(bigInteger).divide(new BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }

    @GwtIncompatible
    /* renamed from: e */
    public static BigInteger m27259e(BigInteger bigInteger) {
        BigInteger shiftLeft;
        int log2 = log2(bigInteger, RoundingMode.FLOOR);
        if (log2 < 1023) {
            shiftLeft = m27258d(bigInteger);
        } else {
            int i = (log2 - 52) & (-2);
            shiftLeft = m27258d(bigInteger.shiftRight(i)).shiftLeft(i >> 1);
        }
        BigInteger shiftRight = shiftLeft.add(bigInteger.divide(shiftLeft)).shiftRight(1);
        if (shiftLeft.equals(shiftRight)) {
            return shiftLeft;
        }
        while (true) {
            BigInteger shiftRight2 = shiftRight.add(bigInteger.divide(shiftRight)).shiftRight(1);
            if (shiftRight2.compareTo(shiftRight) >= 0) {
                return shiftRight;
            }
            shiftRight = shiftRight2;
        }
    }

    public static BigInteger factorial(int i) {
        ngj.m55747e(GoogleApiAvailabilityLight.f29016b, i);
        long[] jArr = LongMath.f34981g;
        if (i < jArr.length) {
            return BigInteger.valueOf(jArr[i]);
        }
        ArrayList arrayList = new ArrayList(IntMath.divide(IntMath.log2(i, RoundingMode.CEILING) * i, 64, RoundingMode.CEILING));
        int length = jArr.length;
        long j = jArr[length - 1];
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j2 = j >> numberOfTrailingZeros;
        int log2 = LongMath.log2(j2, RoundingMode.FLOOR) + 1;
        long j3 = length;
        int log22 = LongMath.log2(j3, RoundingMode.FLOOR) + 1;
        int i2 = 1 << (log22 - 1);
        while (j3 <= i) {
            if ((j3 & i2) != 0) {
                i2 <<= 1;
                log22++;
            }
            int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j3);
            long j4 = j3 >> numberOfTrailingZeros2;
            numberOfTrailingZeros += numberOfTrailingZeros2;
            if ((log22 - numberOfTrailingZeros2) + log2 >= 64) {
                arrayList.add(BigInteger.valueOf(j2));
                j2 = 1;
            }
            j2 *= j4;
            log2 = LongMath.log2(j2, RoundingMode.FLOOR) + 1;
            j3++;
        }
        if (j2 > 1) {
            arrayList.add(BigInteger.valueOf(j2));
        }
        return m27256b(arrayList).shiftLeft(numberOfTrailingZeros);
    }

    @Beta
    public static BigInteger floorPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.FLOOR));
    }

    public static boolean isPowerOfTwo(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        return bigInteger.signum() > 0 && bigInteger.getLowestSetBit() == bigInteger.bitLength() - 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c A[FALL_THROUGH, RETURN] */
    @com.google.common.annotations.GwtIncompatible
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log10(java.math.BigInteger r7, java.math.RoundingMode r8) {
        /*
            java.lang.String r0 = "x"
            com.sunia.HTREnginev2.ngj.m55752j(r0, r7)
            boolean r0 = m27255a(r7)
            if (r0 == 0) goto L14
            long r0 = r7.longValue()
            int r7 = com.google.common.math.LongMath.log10(r0, r8)
            return r7
        L14:
            java.math.RoundingMode r0 = java.math.RoundingMode.FLOOR
            int r0 = log2(r7, r0)
            double r0 = (double) r0
            double r2 = com.google.common.math.BigIntegerMath.f34947d
            double r0 = r0 * r2
            double r2 = com.google.common.math.BigIntegerMath.f34946c
            double r0 = r0 / r2
            int r0 = (int) r0
            java.math.BigInteger r1 = java.math.BigInteger.TEN
            java.math.BigInteger r1 = r1.pow(r0)
            int r2 = r1.compareTo(r7)
            if (r2 <= 0) goto L3d
        L2e:
            int r0 = r0 + (-1)
            java.math.BigInteger r2 = java.math.BigInteger.TEN
            java.math.BigInteger r1 = r1.divide(r2)
            int r2 = r1.compareTo(r7)
            if (r2 > 0) goto L2e
            goto L60
        L3d:
            java.math.BigInteger r3 = java.math.BigInteger.TEN
            java.math.BigInteger r3 = r3.multiply(r1)
            int r4 = r3.compareTo(r7)
            r5 = r4
            r4 = r2
            r2 = r5
        L4a:
            if (r2 > 0) goto L5f
            int r0 = r0 + 1
            java.math.BigInteger r1 = java.math.BigInteger.TEN
            java.math.BigInteger r1 = r1.multiply(r3)
            int r4 = r1.compareTo(r7)
            r5 = r3
            r3 = r1
            r1 = r5
            r6 = r4
            r4 = r2
            r2 = r6
            goto L4a
        L5f:
            r2 = r4
        L60:
            int[] r3 = com.google.common.math.BigIntegerMath.C6240a.f34948a
            int r8 = r8.ordinal()
            r8 = r3[r8]
            switch(r8) {
                case 1: goto L94;
                case 2: goto L9c;
                case 3: goto L9c;
                case 4: goto L8a;
                case 5: goto L8a;
                case 6: goto L71;
                case 7: goto L71;
                case 8: goto L71;
                default: goto L6b;
            }
        L6b:
            java.lang.AssertionError r7 = new java.lang.AssertionError
            r7.<init>()
            throw r7
        L71:
            r8 = 2
            java.math.BigInteger r7 = r7.pow(r8)
            java.math.BigInteger r8 = r1.pow(r8)
            java.math.BigInteger r1 = java.math.BigInteger.TEN
            java.math.BigInteger r8 = r8.multiply(r1)
            int r7 = r7.compareTo(r8)
            if (r7 > 0) goto L87
            goto L89
        L87:
            int r0 = r0 + 1
        L89:
            return r0
        L8a:
            boolean r7 = r1.equals(r7)
            if (r7 == 0) goto L91
            goto L93
        L91:
            int r0 = r0 + 1
        L93:
            return r0
        L94:
            if (r2 != 0) goto L98
            r7 = 1
            goto L99
        L98:
            r7 = 0
        L99:
            com.sunia.HTREnginev2.ngj.m55753k(r7)
        L9c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.BigIntegerMath.log10(java.math.BigInteger, java.math.RoundingMode):int");
    }

    public static int log2(BigInteger bigInteger, RoundingMode roundingMode) {
        ngj.m55752j("x", (BigInteger) Preconditions.checkNotNull(bigInteger));
        int bitLength = bigInteger.bitLength() - 1;
        switch (C6240a.f34948a[roundingMode.ordinal()]) {
            case 1:
                ngj.m55753k(isPowerOfTwo(bigInteger));
            case 2:
            case 3:
                return bitLength;
            case 4:
            case 5:
                return isPowerOfTwo(bigInteger) ? bitLength : bitLength + 1;
            case 6:
            case 7:
            case 8:
                return bitLength < 256 ? bigInteger.compareTo(f34945b.shiftRight(256 - bitLength)) <= 0 ? bitLength : bitLength + 1 : bigInteger.pow(2).bitLength() + (-1) < (bitLength * 2) + 1 ? bitLength : bitLength + 1;
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible
    public static double roundToDouble(BigInteger bigInteger, RoundingMode roundingMode) {
        return C6241b.f34949a.m57626b(bigInteger, roundingMode);
    }

    @GwtIncompatible
    public static BigInteger sqrt(BigInteger bigInteger, RoundingMode roundingMode) {
        ngj.m55749g("x", bigInteger);
        if (m27255a(bigInteger)) {
            return BigInteger.valueOf(LongMath.sqrt(bigInteger.longValue(), roundingMode));
        }
        BigInteger m27259e = m27259e(bigInteger);
        switch (C6240a.f34948a[roundingMode.ordinal()]) {
            case 1:
                ngj.m55753k(m27259e.pow(2).equals(bigInteger));
            case 2:
            case 3:
                return m27259e;
            case 4:
            case 5:
                int intValue = m27259e.intValue();
                return intValue * intValue == bigInteger.intValue() && m27259e.pow(2).equals(bigInteger) ? m27259e : m27259e.add(BigInteger.ONE);
            case 6:
            case 7:
            case 8:
                return m27259e.pow(2).add(m27259e).compareTo(bigInteger) >= 0 ? m27259e : m27259e.add(BigInteger.ONE);
            default:
                throw new AssertionError();
        }
    }
}
