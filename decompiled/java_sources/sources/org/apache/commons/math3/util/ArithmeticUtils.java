package org.apache.commons.math3.util;

import com.fasterxml.jackson.core.base.ParserBase;
import java.math.BigInteger;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public final class ArithmeticUtils {
    /* renamed from: a */
    public static long m68196a(long j, long j2, Localizable localizable) throws MathArithmeticException {
        long j3 = j + j2;
        if (((j ^ j2) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new MathArithmeticException(localizable, Long.valueOf(j), Long.valueOf(j2));
    }

    public static int addAndCheck(int i, int i2) throws MathArithmeticException {
        long j = i + i2;
        if (j < ParserBase.f21225q || j > 2147483647L) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i), Integer.valueOf(i2));
        }
        return (int) j;
    }

    /* renamed from: b */
    public static int m68197b(int i, int i2) {
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int i3 = i >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i2);
        int i4 = i2 >> numberOfTrailingZeros2;
        int min = FastMath.min(numberOfTrailingZeros, numberOfTrailingZeros2);
        while (i3 != i4) {
            int i5 = i3 - i4;
            i4 = Math.min(i3, i4);
            int abs = Math.abs(i5);
            i3 = abs >> Integer.numberOfTrailingZeros(abs);
        }
        return i3 << min;
    }

    @Deprecated
    public static long binomialCoefficient(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.binomialCoefficient(i, i2);
    }

    @Deprecated
    public static double binomialCoefficientDouble(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.binomialCoefficientDouble(i, i2);
    }

    @Deprecated
    public static double binomialCoefficientLog(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.binomialCoefficientLog(i, i2);
    }

    @Deprecated
    public static long factorial(int i) throws NotPositiveException, MathArithmeticException {
        return CombinatoricsUtils.factorial(i);
    }

    @Deprecated
    public static double factorialDouble(int i) throws NotPositiveException {
        return CombinatoricsUtils.factorialDouble(i);
    }

    @Deprecated
    public static double factorialLog(int i) throws NotPositiveException {
        return CombinatoricsUtils.factorialLog(i);
    }

    public static int gcd(int i, int i2) throws MathArithmeticException {
        int i3;
        int i4;
        if (i == 0 || i2 == 0) {
            if (i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE) {
                return FastMath.abs(i + i2);
            }
            throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_32_BITS, Integer.valueOf(i), Integer.valueOf(i2));
        }
        long j = i;
        long j2 = i2;
        boolean z = true;
        boolean z2 = false;
        if (i < 0) {
            if (Integer.MIN_VALUE == i) {
                i3 = i;
                z2 = true;
            } else {
                i3 = -i;
            }
            j = -j;
        } else {
            i3 = i;
        }
        if (i2 < 0) {
            if (Integer.MIN_VALUE == i2) {
                i4 = i2;
            } else {
                i4 = -i2;
                z = z2;
            }
            j2 = -j2;
            z2 = z;
        } else {
            i4 = i2;
        }
        if (z2) {
            if (j != j2) {
                long j3 = j2 % j;
                if (j3 == 0) {
                    if (j <= 2147483647L) {
                        return (int) j;
                    }
                    throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_32_BITS, Integer.valueOf(i), Integer.valueOf(i2));
                }
                i4 = (int) j3;
                i3 = (int) (j % j3);
            } else {
                throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_32_BITS, Integer.valueOf(i), Integer.valueOf(i2));
            }
        }
        return m68197b(i3, i4);
    }

    public static boolean isPowerOfTwo(long j) {
        return j > 0 && (j & (j - 1)) == 0;
    }

    public static int lcm(int i, int i2) throws MathArithmeticException {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int abs = FastMath.abs(mulAndCheck(i / gcd(i, i2), i2));
        if (abs != Integer.MIN_VALUE) {
            return abs;
        }
        throw new MathArithmeticException(LocalizedFormats.LCM_OVERFLOW_32_BITS, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static int mulAndCheck(int i, int i2) throws MathArithmeticException {
        long j = i * i2;
        if (j < ParserBase.f21225q || j > 2147483647L) {
            throw new MathArithmeticException();
        }
        return (int) j;
    }

    public static int pow(int i, int i2) throws NotPositiveException, MathArithmeticException {
        if (i2 < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Integer.valueOf(i2));
        }
        int i3 = 1;
        int i4 = i;
        int i5 = i2;
        while (true) {
            if ((i5 & 1) != 0) {
                try {
                    i3 = mulAndCheck(i3, i4);
                } catch (MathArithmeticException e) {
                    e.getContext().addMessage(LocalizedFormats.OVERFLOW, new Object[0]);
                    e.getContext().addMessage(LocalizedFormats.BASE, Integer.valueOf(i));
                    e.getContext().addMessage(LocalizedFormats.EXPONENT, Integer.valueOf(i2));
                    throw e;
                }
            }
            i5 >>= 1;
            if (i5 == 0) {
                return i3;
            }
            i4 = mulAndCheck(i4, i4);
        }
    }

    @Deprecated
    public static long stirlingS2(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.stirlingS2(i, i2);
    }

    public static int subAndCheck(int i, int i2) throws MathArithmeticException {
        long j = i - i2;
        if (j < ParserBase.f21225q || j > 2147483647L) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i), Integer.valueOf(i2));
        }
        return (int) j;
    }

    public static long addAndCheck(long j, long j2) throws MathArithmeticException {
        return m68196a(j, j2, LocalizedFormats.OVERFLOW_IN_ADDITION);
    }

    public static long mulAndCheck(long j, long j2) throws MathArithmeticException {
        if (j > j2) {
            return mulAndCheck(j2, j);
        }
        if (j >= 0) {
            if (j > 0) {
                if (j > Long.MAX_VALUE / j2) {
                    throw new MathArithmeticException();
                }
                return j * j2;
            }
            return 0L;
        }
        if (j2 >= 0) {
            if (j2 > 0) {
                if (Long.MIN_VALUE / j2 > j) {
                    throw new MathArithmeticException();
                }
            }
            return 0L;
        }
        if (j < Long.MAX_VALUE / j2) {
            throw new MathArithmeticException();
        }
        return j * j2;
    }

    public static long subAndCheck(long j, long j2) throws MathArithmeticException {
        if (j2 != Long.MIN_VALUE) {
            return m68196a(j, -j2, LocalizedFormats.OVERFLOW_IN_ADDITION);
        }
        if (j < 0) {
            return j - j2;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j), Long.valueOf(-j2));
    }

    public static long lcm(long j, long j2) throws MathArithmeticException {
        if (j == 0 || j2 == 0) {
            return 0L;
        }
        long abs = FastMath.abs(mulAndCheck(j / gcd(j, j2), j2));
        if (abs != Long.MIN_VALUE) {
            return abs;
        }
        throw new MathArithmeticException(LocalizedFormats.LCM_OVERFLOW_64_BITS, Long.valueOf(j), Long.valueOf(j2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
    
        if (r13 != 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
    
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        if ((r0 & 1) != 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (r0 <= 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
    
        r8 = -r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        r0 = (r6 - r8) / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (r0 != 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0064, code lost:
    
        return (-r8) * (1 << r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0057, code lost:
    
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004d, code lost:
    
        r0 = r0 / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0042, code lost:
    
        r0 = -(r8 / 2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long gcd(long r21, long r23) throws org.apache.commons.math3.exception.MathArithmeticException {
        /*
            r0 = r21
            r2 = r23
            r4 = 0
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 == 0) goto L79
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 != 0) goto L10
            goto L79
        L10:
            if (r6 <= 0) goto L14
            long r8 = -r0
            goto L15
        L14:
            r8 = r0
        L15:
            if (r7 <= 0) goto L19
            long r6 = -r2
            goto L1a
        L19:
            r6 = r2
        L1a:
            r10 = 0
        L1b:
            r11 = 1
            long r13 = r8 & r11
            int r15 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            r4 = 63
            r17 = 2
            if (r15 != 0) goto L3a
            long r19 = r6 & r11
            r15 = 0
            int r5 = (r19 > r15 ? 1 : (r19 == r15 ? 0 : -1))
            if (r5 != 0) goto L3a
            if (r10 >= r4) goto L3a
            long r8 = r8 / r17
            long r6 = r6 / r17
            int r10 = r10 + 1
            r4 = 0
            goto L1b
        L3a:
            if (r10 == r4) goto L65
            int r0 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r0 != 0) goto L42
            r0 = r6
            goto L45
        L42:
            long r0 = r8 / r17
            long r0 = -r0
        L45:
            long r2 = r0 & r11
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 != 0) goto L50
            long r0 = r0 / r17
            goto L45
        L50:
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 <= 0) goto L57
            long r0 = -r0
            r8 = r0
            goto L58
        L57:
            r6 = r0
        L58:
            long r0 = r6 - r8
            long r0 = r0 / r17
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 != 0) goto L45
            long r0 = -r8
            long r2 = r11 << r10
            long r0 = r0 * r2
            return r0
        L65:
            org.apache.commons.math3.exception.MathArithmeticException r4 = new org.apache.commons.math3.exception.MathArithmeticException
            org.apache.commons.math3.exception.util.LocalizedFormats r5 = org.apache.commons.math3.exception.util.LocalizedFormats.GCD_OVERFLOW_64_BITS
            java.lang.Long r0 = java.lang.Long.valueOf(r21)
            java.lang.Long r1 = java.lang.Long.valueOf(r23)
            java.lang.Object[] r0 = new java.lang.Object[]{r0, r1}
            r4.<init>(r5, r0)
            throw r4
        L79:
            r4 = -9223372036854775808
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 == 0) goto L8d
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 == 0) goto L8d
            long r0 = org.apache.commons.math3.util.FastMath.abs(r21)
            long r2 = org.apache.commons.math3.util.FastMath.abs(r23)
            long r0 = r0 + r2
            return r0
        L8d:
            org.apache.commons.math3.exception.MathArithmeticException r4 = new org.apache.commons.math3.exception.MathArithmeticException
            org.apache.commons.math3.exception.util.LocalizedFormats r5 = org.apache.commons.math3.exception.util.LocalizedFormats.GCD_OVERFLOW_64_BITS
            java.lang.Long r0 = java.lang.Long.valueOf(r21)
            java.lang.Long r1 = java.lang.Long.valueOf(r23)
            java.lang.Object[] r0 = new java.lang.Object[]{r0, r1}
            r4.<init>(r5, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.ArithmeticUtils.gcd(long, long):long");
    }

    @Deprecated
    public static int pow(int i, long j) throws NotPositiveException {
        if (j < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Long.valueOf(j));
        }
        int i2 = 1;
        while (j != 0) {
            if ((1 & j) != 0) {
                i2 *= i;
            }
            i *= i;
            j >>= 1;
        }
        return i2;
    }

    public static long pow(long j, int i) throws NotPositiveException, MathArithmeticException {
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Integer.valueOf(i));
        }
        long j2 = 1;
        long j3 = j;
        int i2 = i;
        while (true) {
            if ((i2 & 1) != 0) {
                try {
                    j2 = mulAndCheck(j2, j3);
                } catch (MathArithmeticException e) {
                    e.getContext().addMessage(LocalizedFormats.OVERFLOW, new Object[0]);
                    e.getContext().addMessage(LocalizedFormats.BASE, Long.valueOf(j));
                    e.getContext().addMessage(LocalizedFormats.EXPONENT, Integer.valueOf(i));
                    throw e;
                }
            }
            i2 >>= 1;
            if (i2 == 0) {
                return j2;
            }
            j3 = mulAndCheck(j3, j3);
        }
    }

    @Deprecated
    public static long pow(long j, long j2) throws NotPositiveException {
        if (j2 < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Long.valueOf(j2));
        }
        long j3 = 1;
        while (j2 != 0) {
            if ((j2 & 1) != 0) {
                j3 *= j;
            }
            j *= j;
            j2 >>= 1;
        }
        return j3;
    }

    public static BigInteger pow(BigInteger bigInteger, int i) throws NotPositiveException {
        if (i >= 0) {
            return bigInteger.pow(i);
        }
        throw new NotPositiveException(LocalizedFormats.EXPONENT, Integer.valueOf(i));
    }

    public static BigInteger pow(BigInteger bigInteger, long j) throws NotPositiveException {
        if (j >= 0) {
            BigInteger bigInteger2 = BigInteger.ONE;
            while (j != 0) {
                if ((1 & j) != 0) {
                    bigInteger2 = bigInteger2.multiply(bigInteger);
                }
                bigInteger = bigInteger.multiply(bigInteger);
                j >>= 1;
            }
            return bigInteger2;
        }
        throw new NotPositiveException(LocalizedFormats.EXPONENT, Long.valueOf(j));
    }

    public static BigInteger pow(BigInteger bigInteger, BigInteger bigInteger2) throws NotPositiveException {
        if (bigInteger2.compareTo(BigInteger.ZERO) >= 0) {
            BigInteger bigInteger3 = BigInteger.ONE;
            while (!BigInteger.ZERO.equals(bigInteger2)) {
                if (bigInteger2.testBit(0)) {
                    bigInteger3 = bigInteger3.multiply(bigInteger);
                }
                bigInteger = bigInteger.multiply(bigInteger);
                bigInteger2 = bigInteger2.shiftRight(1);
            }
            return bigInteger3;
        }
        throw new NotPositiveException(LocalizedFormats.EXPONENT, bigInteger2);
    }
}
