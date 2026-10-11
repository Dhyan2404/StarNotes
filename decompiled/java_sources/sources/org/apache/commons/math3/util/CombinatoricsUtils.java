package org.apache.commons.math3.util;

import com.sunia.HTREnginev2.cyi;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public final class CombinatoricsUtils {

    /* renamed from: a */
    public static final long[] f109826a = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};

    /* renamed from: b */
    public static final AtomicReference<long[][]> f109827b = new AtomicReference<>(null);

    public static long binomialCoefficient(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        checkBinomial(i, i2);
        long j = 1;
        if (i == i2 || i2 == 0) {
            return 1L;
        }
        if (i2 == 1 || i2 == i - 1) {
            return i;
        }
        if (i2 > i / 2) {
            return binomialCoefficient(i, i - i2);
        }
        if (i <= 61) {
            int i3 = (i - i2) + 1;
            for (int i4 = 1; i4 <= i2; i4++) {
                j = (j * i3) / i4;
                i3++;
            }
        } else if (i <= 66) {
            int i5 = (i - i2) + 1;
            for (int i6 = 1; i6 <= i2; i6++) {
                long gcd = ArithmeticUtils.gcd(i5, i6);
                j = (j / (i6 / gcd)) * (i5 / gcd);
                i5++;
            }
        } else {
            int i7 = (i - i2) + 1;
            for (int i8 = 1; i8 <= i2; i8++) {
                long gcd2 = ArithmeticUtils.gcd(i7, i8);
                j = ArithmeticUtils.mulAndCheck(j / (i8 / gcd2), i7 / gcd2);
                i7++;
            }
        }
        return j;
    }

    public static double binomialCoefficientDouble(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        checkBinomial(i, i2);
        double d = 1.0d;
        if (i == i2 || i2 == 0) {
            return 1.0d;
        }
        if (i2 == 1 || i2 == i - 1) {
            return i;
        }
        if (i2 > i / 2) {
            return binomialCoefficientDouble(i, i - i2);
        }
        if (i < 67) {
            return binomialCoefficient(i, i2);
        }
        for (int i3 = 1; i3 <= i2; i3++) {
            d *= ((i - i2) + i3) / i3;
        }
        return FastMath.floor(d + 0.5d);
    }

    public static double binomialCoefficientLog(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        checkBinomial(i, i2);
        double d = 0.0d;
        if (i == i2 || i2 == 0) {
            return 0.0d;
        }
        if (i2 == 1 || i2 == i - 1) {
            return FastMath.log(i);
        }
        if (i < 67) {
            return FastMath.log(binomialCoefficient(i, i2));
        }
        if (i < 1030) {
            return FastMath.log(binomialCoefficientDouble(i, i2));
        }
        if (i2 > i / 2) {
            return binomialCoefficientLog(i, i - i2);
        }
        for (int i3 = (i - i2) + 1; i3 <= i; i3++) {
            d += FastMath.log(i3);
        }
        for (int i4 = 2; i4 <= i2; i4++) {
            d -= FastMath.log(i4);
        }
        return d;
    }

    public static void checkBinomial(int i, int i2) throws NumberIsTooLargeException, NotPositiveException {
        if (i < i2) {
            throw new NumberIsTooLargeException(LocalizedFormats.BINOMIAL_INVALID_PARAMETERS_ORDER, Integer.valueOf(i2), Integer.valueOf(i), true);
        }
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.BINOMIAL_NEGATIVE_PARAMETER, Integer.valueOf(i));
        }
    }

    public static Iterator<int[]> combinationsIterator(int i, int i2) {
        return new Combinations(i, i2).iterator();
    }

    public static long factorial(int i) throws NotPositiveException, MathArithmeticException {
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.FACTORIAL_NEGATIVE_PARAMETER, Integer.valueOf(i));
        }
        if (i <= 20) {
            return f109826a[i];
        }
        throw new MathArithmeticException();
    }

    public static double factorialDouble(int i) throws NotPositiveException {
        if (i >= 0) {
            return i < 21 ? f109826a[i] : FastMath.floor(FastMath.exp(factorialLog(i)) + 0.5d);
        }
        throw new NotPositiveException(LocalizedFormats.FACTORIAL_NEGATIVE_PARAMETER, Integer.valueOf(i));
    }

    public static double factorialLog(int i) throws NotPositiveException {
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.FACTORIAL_NEGATIVE_PARAMETER, Integer.valueOf(i));
        }
        if (i < 21) {
            return FastMath.log(f109826a[i]);
        }
        double d = 0.0d;
        for (int i2 = 2; i2 <= i; i2++) {
            d += FastMath.log(i2);
        }
        return d;
    }

    public static long stirlingS2(int i, int i2) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        if (i2 < 0) {
            throw new NotPositiveException(Integer.valueOf(i2));
        }
        if (i2 > i) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), Integer.valueOf(i), true);
        }
        long[][] jArr = f109827b.get();
        char c = 0;
        long j = 1;
        if (jArr == null) {
            long[][] jArr2 = new long[26];
            long[] jArr3 = new long[1];
            jArr3[0] = 1;
            jArr2[0] = jArr3;
            int i3 = 1;
            while (i3 < 26) {
                int i4 = i3 + 1;
                long[] jArr4 = new long[i4];
                jArr2[i3] = jArr4;
                jArr4[c] = 0;
                jArr4[1] = j;
                jArr4[i3] = j;
                int i5 = 2;
                while (i5 < i3) {
                    long[] jArr5 = jArr2[i3];
                    long[] jArr6 = jArr2[i3 - 1];
                    jArr5[i5] = (i5 * jArr6[i5]) + jArr6[i5 - 1];
                    i5++;
                    c = 0;
                    j = 1;
                }
                i3 = i4;
            }
            cyi.m53538a(f109827b, null, jArr2);
            jArr = jArr2;
        }
        if (i < jArr.length) {
            return jArr[i][i2];
        }
        if (i2 == 0) {
            return 0L;
        }
        if (i2 == 1 || i2 == i) {
            return 1L;
        }
        if (i2 == 2) {
            return (1 << (i - 1)) - 1;
        }
        if (i2 == i - 1) {
            return binomialCoefficient(i, 2);
        }
        long j2 = (i2 & 1) == 0 ? 1L : -1L;
        int i6 = 1;
        long j3 = 0;
        while (i6 <= i2) {
            j2 = -j2;
            long[][] jArr7 = jArr;
            j3 += binomialCoefficient(i2, i6) * j2 * ArithmeticUtils.pow(i6, i);
            if (j3 < 0) {
                throw new MathArithmeticException(LocalizedFormats.ARGUMENT_OUTSIDE_DOMAIN, Integer.valueOf(i), 0, Integer.valueOf(jArr7.length - 1));
            }
            i6++;
            jArr = jArr7;
        }
        return j3 / factorial(i2);
    }
}
