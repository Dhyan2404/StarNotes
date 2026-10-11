package org.apache.commons.math3.stat.inference;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;
import org.apache.commons.math3.distribution.EnumeratedRealDistribution;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.distribution.UniformRealDistribution;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.BigFractionField;
import org.apache.commons.math3.fraction.FractionConversionException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class KolmogorovSmirnovTest {
    protected static final double KS_SUM_CAUCHY_CRITERION = 1.0E-20d;
    protected static final int LARGE_SAMPLE_PRODUCT = 10000;
    protected static final int MAXIMUM_PARTIAL_SUM_COUNT = 100000;

    @Deprecated
    protected static final int MONTE_CARLO_ITERATIONS = 1000000;
    protected static final double PG_SUM_RELATIVE_ERROR = 1.0E-10d;

    @Deprecated
    protected static final int SMALL_SAMPLE_PRODUCT = 200;

    /* renamed from: a */
    public final RandomGenerator f109756a;

    public KolmogorovSmirnovTest() {
        this.f109756a = new Well19937c();
    }

    /* renamed from: a */
    public static int m68127a(int i, int i2, int i3, int i4, long j, boolean z) {
        return z ? FastMath.abs((((long) i) * ((long) i4)) - (((long) i2) * ((long) i3))) <= j ? 1 : 0 : FastMath.abs((((long) i) * ((long) i4)) - (((long) i2) * ((long) i3))) < j ? 1 : 0;
    }

    /* renamed from: b */
    public static long m68128b(double d, int i, int i2, boolean z) {
        double d2 = i * i2;
        long ceil = (long) FastMath.ceil((d - 1.0E-12d) * d2);
        return (z && ((long) FastMath.floor((d + 1.0E-12d) * d2)) == ceil) ? ceil + 1 : ceil;
    }

    /* renamed from: g */
    public static void m68129g(boolean[] zArr, int i, RandomGenerator randomGenerator) {
        Arrays.fill(zArr, true);
        while (i < zArr.length) {
            int i2 = i + 1;
            int nextInt = randomGenerator.nextInt(i2);
            if (zArr[nextInt]) {
                i = nextInt;
            }
            zArr[i] = false;
            i = i2;
        }
    }

    /* renamed from: h */
    public static void m68130h(double[] dArr, double[] dArr2) {
        boolean m68131i;
        int i = 0;
        double[] unique = MathArrays.unique(MathArrays.concatenate(dArr, dArr2));
        if (unique.length == dArr.length + dArr2.length) {
            return;
        }
        double d = unique[0];
        double d2 = 1.0d;
        int i2 = 1;
        while (i2 < unique.length) {
            double d3 = unique[i2];
            double d4 = d - d3;
            if (d4 < d2) {
                d2 = d4;
            }
            i2++;
            d = d3;
        }
        double d5 = d2 / 2.0d;
        UniformRealDistribution uniformRealDistribution = new UniformRealDistribution(new JDKRandomGenerator(100), -d5, d5);
        do {
            m68132l(dArr, uniformRealDistribution);
            m68132l(dArr2, uniformRealDistribution);
            m68131i = m68131i(dArr, dArr2);
            i++;
            if (!m68131i) {
                break;
            }
        } while (i < 1000);
        if (m68131i) {
            throw new MathInternalError();
        }
    }

    /* renamed from: i */
    public static boolean m68131i(double[] dArr, double[] dArr2) {
        HashSet hashSet = new HashSet();
        for (double d : dArr) {
            if (!hashSet.add(Double.valueOf(d))) {
                return true;
            }
        }
        for (double d2 : dArr2) {
            if (!hashSet.add(Double.valueOf(d2))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: l */
    public static void m68132l(double[] dArr, RealDistribution realDistribution) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] + realDistribution.sample();
        }
    }

    /* renamed from: m */
    public static double m68133m(int i, int i2, int i3, int i4, long j, boolean z) {
        double[] dArr = new double[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            dArr[i5] = m68127a(0, r10, i3, i4, j, z);
        }
        double d = 0.0d;
        int i6 = 1;
        while (i6 <= i) {
            double m68127a = m68127a(i6, 0, i3, i4, j, z);
            for (int i7 = 1; i7 <= i2; i7++) {
                int i8 = i7 - 1;
                m68127a = (m68127a + dArr[i8]) * m68127a(i6, i7, i3, i4, j, z);
                dArr[i8] = m68127a;
            }
            i6++;
            d = m68127a;
        }
        return d;
    }

    public double approximateP(double d, int i, int i2) {
        double d2 = i2;
        double d3 = i;
        return 1.0d - ksSum(d * FastMath.sqrt((d2 * d3) / (d2 + d3)), KS_SUM_CAUCHY_CRITERION, 100000);
    }

    public double bootstrap(double[] dArr, double[] dArr2, int i, boolean z) {
        int length = dArr.length;
        int length2 = dArr2.length;
        double[] dArr3 = new double[length + length2];
        System.arraycopy(dArr, 0, dArr3, 0, length);
        System.arraycopy(dArr2, 0, dArr3, length, length2);
        EnumeratedRealDistribution enumeratedRealDistribution = new EnumeratedRealDistribution(this.f109756a, dArr3);
        long m68138j = m68138j(dArr, dArr2);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            long m68138j2 = m68138j(enumeratedRealDistribution.sample(length), enumeratedRealDistribution.sample(length2));
            if (m68138j2 > m68138j) {
                i2++;
            } else if (m68138j2 == m68138j) {
                i3++;
            }
        }
        if (!z) {
            i2 += i3;
        }
        return i2 / i;
    }

    /* renamed from: c */
    public final void m68134c(double[] dArr) {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        }
        if (dArr.length < 2) {
            throw new InsufficientDataException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(dArr.length), 2);
        }
    }

    public double cdf(double d, int i) throws MathArithmeticException {
        return cdf(d, i, false);
    }

    public double cdfExact(double d, int i) throws MathArithmeticException {
        return cdf(d, i, true);
    }

    /* renamed from: d */
    public final FieldMatrix<BigFraction> m68135d(double d, int i) throws NumberIsTooLargeException, FractionConversionException {
        BigFraction bigFraction;
        int i2;
        double d2 = i * d;
        int ceil = (int) Math.ceil(d2);
        int i3 = (ceil * 2) - 1;
        double d3 = ceil - d2;
        if (d3 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d3), Double.valueOf(1.0d), false);
        }
        try {
            try {
                bigFraction = new BigFraction(d3, KS_SUM_CAUCHY_CRITERION, 10000);
            } catch (FractionConversionException unused) {
                bigFraction = new BigFraction(d3, 1.0E-10d, 10000);
            }
        } catch (FractionConversionException unused2) {
            bigFraction = new BigFraction(d3, 1.0E-5d, 10000);
        }
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i3, i3);
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                if ((i4 - i5) + 1 < 0) {
                    bigFractionArr[i4][i5] = BigFraction.ZERO;
                } else {
                    bigFractionArr[i4][i5] = BigFraction.ONE;
                }
            }
        }
        BigFraction[] bigFractionArr2 = new BigFraction[i3];
        bigFractionArr2[0] = bigFraction;
        for (int i6 = 1; i6 < i3; i6++) {
            bigFractionArr2[i6] = bigFraction.multiply(bigFractionArr2[i6 - 1]);
        }
        for (int i7 = 0; i7 < i3; i7++) {
            BigFraction[] bigFractionArr3 = bigFractionArr[i7];
            bigFractionArr3[0] = bigFractionArr3[0].subtract(bigFractionArr2[i7]);
            BigFraction[] bigFractionArr4 = bigFractionArr[i3 - 1];
            bigFractionArr4[i7] = bigFractionArr4[i7].subtract(bigFractionArr2[(i3 - i7) - 1]);
        }
        if (bigFraction.compareTo(BigFraction.ONE_HALF) == 1) {
            BigFraction[] bigFractionArr5 = bigFractionArr[i3 - 1];
            bigFractionArr5[0] = bigFractionArr5[0].add(bigFraction.multiply(2).subtract(1).pow(i3));
        }
        int i8 = 0;
        while (i8 < i3) {
            int i9 = 0;
            while (true) {
                i2 = i8 + 1;
                if (i9 < i2) {
                    int i10 = (i8 - i9) + 1;
                    if (i10 > 0) {
                        for (int i11 = 2; i11 <= i10; i11++) {
                            BigFraction[] bigFractionArr6 = bigFractionArr[i8];
                            bigFractionArr6[i9] = bigFractionArr6[i9].divide(i11);
                        }
                    }
                    i9++;
                }
            }
            i8 = i2;
        }
        return new Array2DRowFieldMatrix(BigFractionField.getInstance(), bigFractionArr);
    }

    /* renamed from: e */
    public final RealMatrix m68136e(double d, int i) throws NumberIsTooLargeException {
        int i2;
        double d2 = i * d;
        int ceil = (int) Math.ceil(d2);
        int i3 = (ceil * 2) - 1;
        double d3 = ceil - d2;
        if (d3 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d3), Double.valueOf(1.0d), false);
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i3, i3);
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                if ((i4 - i5) + 1 < 0) {
                    dArr[i4][i5] = 0.0d;
                } else {
                    dArr[i4][i5] = 1.0d;
                }
            }
        }
        double[] dArr2 = new double[i3];
        dArr2[0] = d3;
        for (int i6 = 1; i6 < i3; i6++) {
            dArr2[i6] = dArr2[i6 - 1] * d3;
        }
        for (int i7 = 0; i7 < i3; i7++) {
            double[] dArr3 = dArr[i7];
            dArr3[0] = dArr3[0] - dArr2[i7];
            double[] dArr4 = dArr[i3 - 1];
            dArr4[i7] = dArr4[i7] - dArr2[(i3 - i7) - 1];
        }
        if (Double.compare(d3, 0.5d) > 0) {
            double[] dArr5 = dArr[i3 - 1];
            dArr5[0] = dArr5[0] + FastMath.pow((d3 * 2.0d) - 1.0d, i3);
        }
        int i8 = 0;
        while (i8 < i3) {
            int i9 = 0;
            while (true) {
                i2 = i8 + 1;
                if (i9 < i2) {
                    int i10 = (i8 - i9) + 1;
                    if (i10 > 0) {
                        for (int i11 = 2; i11 <= i10; i11++) {
                            double[] dArr6 = dArr[i8];
                            dArr6[i9] = dArr6[i9] / i11;
                        }
                    }
                    i9++;
                }
            }
            i8 = i2;
        }
        return MatrixUtils.createRealMatrix(dArr);
    }

    public double exactP(double d, int i, int i2, boolean z) {
        return 1.0d - (m68133m(i2, i, i2, i, m68128b(d, i2, i, z), z) / CombinatoricsUtils.binomialCoefficientDouble(i + i2, i2));
    }

    /* renamed from: f */
    public final double m68137f(double d, int i) throws MathArithmeticException {
        int ceil = (int) Math.ceil(i * d);
        FieldMatrix<BigFraction> power = m68135d(d, i).power(i);
        int i2 = ceil - 1;
        BigFraction entry = power.getEntry(i2, i2);
        for (int i3 = 1; i3 <= i; i3++) {
            entry = entry.multiply(i3).divide(i);
        }
        return entry.bigDecimalValue(20, 4).doubleValue();
    }

    /* renamed from: j */
    public final long m68138j(double[] dArr, double[] dArr2) {
        m68134c(dArr);
        m68134c(dArr2);
        double[] copyOf = MathArrays.copyOf(dArr);
        double[] copyOf2 = MathArrays.copyOf(dArr2);
        Arrays.sort(copyOf);
        Arrays.sort(copyOf2);
        int length = copyOf.length;
        int length2 = copyOf2.length;
        int i = 0;
        long j = 0;
        int i2 = 0;
        long j2 = 0;
        do {
            double d = Double.compare(copyOf[i], copyOf2[i2]) <= 0 ? copyOf[i] : copyOf2[i2];
            while (i < length && Double.compare(copyOf[i], d) == 0) {
                i++;
                j2 += length2;
            }
            while (i2 < length2 && Double.compare(copyOf2[i2], d) == 0) {
                i2++;
                j2 -= length;
            }
            if (j2 > j) {
                j = j2;
            } else {
                long j3 = -j2;
                if (j3 > j) {
                    j = j3;
                }
            }
            if (i >= length) {
                break;
            }
        } while (i2 < length2);
        return j;
    }

    /* renamed from: k */
    public final double m68139k(long j, int i, int i2, int i3) {
        int max = FastMath.max(i, i2);
        int min = FastMath.min(i, i2);
        int i4 = max + min;
        boolean[] zArr = new boolean[i4];
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            m68129g(zArr, max, this.f109756a);
            long j2 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                if (zArr[i7]) {
                    j2 += min;
                    if (j2 >= j) {
                        i5++;
                        break;
                    }
                } else {
                    j2 -= max;
                    if (j2 <= (-j)) {
                        i5++;
                        break;
                        break;
                    }
                }
            }
        }
        return i5 / i3;
    }

    public double kolmogorovSmirnovStatistic(RealDistribution realDistribution, double[] dArr) {
        m68134c(dArr);
        int length = dArr.length;
        double d = length;
        double[] dArr2 = new double[length];
        System.arraycopy(dArr, 0, dArr2, 0, length);
        Arrays.sort(dArr2);
        double d2 = 0.0d;
        for (int i = 1; i <= length; i++) {
            int i2 = i - 1;
            double cumulativeProbability = realDistribution.cumulativeProbability(dArr2[i2]);
            double max = FastMath.max(cumulativeProbability - (i2 / d), (i / d) - cumulativeProbability);
            if (max > d2) {
                d2 = max;
            }
        }
        return d2;
    }

    public double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, boolean z) {
        return 1.0d - cdf(kolmogorovSmirnovStatistic(realDistribution, dArr), dArr.length, z);
    }

    public double ksSum(double d, double d2, int i) {
        if (d == 0.0d) {
            return 0.0d;
        }
        double d3 = (-2.0d) * d * d;
        double d4 = 0.5d;
        double d5 = 1.0d;
        long j = 1;
        int i2 = -1;
        while (d5 > d2 && j < i) {
            double d6 = j;
            d5 = FastMath.exp(d3 * d6 * d6);
            d4 += i2 * d5;
            i2 *= -1;
            j++;
        }
        if (j != i) {
            return d4 * 2.0d;
        }
        throw new TooManyIterationsException(Integer.valueOf(i));
    }

    public double monteCarloP(double d, int i, int i2, boolean z, int i3) {
        return m68139k(m68128b(d, i, i2, z), i, i2, i3);
    }

    /* renamed from: n */
    public final double m68140n(double d, int i) {
        double d2 = i;
        int ceil = (int) Math.ceil(d2 * d);
        RealMatrix power = m68136e(d, i).power(i);
        int i2 = ceil - 1;
        double entry = power.getEntry(i2, i2);
        for (int i3 = 1; i3 <= i; i3++) {
            entry *= i3 / d2;
        }
        return entry;
    }

    public double pelzGood(double d, int i) {
        double d2;
        double d3;
        int i2;
        int i3;
        double d4;
        double d5 = i;
        double sqrt = FastMath.sqrt(d5);
        double d6 = d * sqrt;
        double d7 = d * d * d5;
        double d8 = d7 * d7;
        double d9 = d8 * d7;
        double d10 = 9.869604401089358d / (8.0d * d7);
        double d11 = 0.0d;
        double d12 = d8 * d8;
        double d13 = 0.0d;
        int i4 = 1;
        while (true) {
            if (i4 >= 100000) {
                d2 = d5;
                d3 = d9;
                i2 = 100000;
                break;
            }
            d2 = d5;
            double d14 = (i4 * 2) - 1;
            d3 = d9;
            double exp = FastMath.exp((-d10) * d14 * d14);
            d13 += exp;
            if (exp <= d13 * 1.0E-10d) {
                i2 = 100000;
                break;
            }
            i4++;
            d5 = d2;
            d9 = d3;
        }
        if (i4 == i2) {
            throw new TooManyIterationsException(Integer.valueOf(i2));
        }
        double sqrt2 = (d13 * FastMath.sqrt(6.283185307179586d)) / d6;
        double d15 = d7 * 2.0d;
        double d16 = 0.0d;
        int i5 = 0;
        while (true) {
            if (i5 >= i2) {
                break;
            }
            double d17 = i5 + 0.5d;
            double d18 = d17 * d17;
            double exp2 = ((d18 * 9.869604401089358d) - d7) * FastMath.exp((d18 * (-9.869604401089358d)) / d15);
            d16 += exp2;
            if (FastMath.abs(exp2) < FastMath.abs(d16) * 1.0E-10d) {
                i2 = 100000;
                break;
            }
            i5++;
            i2 = 100000;
        }
        if (i5 == i2) {
            throw new TooManyIterationsException(Integer.valueOf(i2));
        }
        double sqrt3 = FastMath.sqrt(1.5707963267948966d);
        double d19 = sqrt2 + ((d16 * sqrt3) / ((3.0d * d8) * sqrt));
        double d20 = 2.0d * d8;
        double d21 = 6.0d * d3;
        double d22 = d7 * 5.0d;
        double d23 = 0.0d;
        int i6 = 0;
        while (true) {
            i3 = 100000;
            d4 = sqrt;
            if (i6 >= 100000) {
                break;
            }
            double d24 = i6 + 0.5d;
            double d25 = d24 * d24;
            double exp3 = (d21 + d20 + ((d20 - d22) * 9.869604401089358d * d25) + ((1.0d - d15) * 97.40909103400243d * d25 * d25)) * FastMath.exp((d25 * (-9.869604401089358d)) / d15);
            d23 += exp3;
            if (FastMath.abs(exp3) < FastMath.abs(d23) * 1.0E-10d) {
                i3 = 100000;
                break;
            }
            i6++;
            sqrt = d4;
        }
        if (i6 == i3) {
            throw new TooManyIterationsException(Integer.valueOf(i3));
        }
        double d26 = 0.0d;
        int i7 = 1;
        while (true) {
            if (i7 >= i3) {
                break;
            }
            double d27 = i7 * i7;
            double exp4 = d27 * 9.869604401089358d * FastMath.exp((d27 * (-9.869604401089358d)) / d15);
            d26 += exp4;
            if (FastMath.abs(exp4) < FastMath.abs(d26) * 1.0E-10d) {
                i3 = 100000;
                break;
            }
            i7++;
            i3 = 100000;
        }
        if (i7 == i3) {
            throw new TooManyIterationsException(Integer.valueOf(i3));
        }
        double d28 = d19 + ((sqrt3 / d2) * ((d23 / ((((36.0d * d7) * d7) * d7) * d6)) - (d26 / ((18.0d * d7) * d6))));
        double d29 = 0.0d;
        int i8 = 100000;
        int i9 = 0;
        while (true) {
            if (i9 >= i8) {
                break;
            }
            double d30 = i9 + 0.5d;
            double d31 = d30 * d30;
            double d32 = d31 * d31;
            double d33 = d12;
            double exp5 = (((((((d32 * d31) * 961.3891935753043d) * (5.0d - (d7 * 30.0d))) + ((d32 * 97.40909103400243d) * (((-60.0d) * d7) + (212.0d * d8)))) + ((d31 * 9.869604401089358d) * ((135.0d * d8) - (96.0d * d3)))) - (d3 * 30.0d)) - (90.0d * d33)) * FastMath.exp((d31 * (-9.869604401089358d)) / d15);
            d29 += exp5;
            if (FastMath.abs(exp5) < FastMath.abs(d29) * 1.0E-10d) {
                i8 = 100000;
                break;
            }
            i9++;
            d12 = d33;
            i8 = 100000;
        }
        if (i9 == i8) {
            throw new TooManyIterationsException(Integer.valueOf(i8));
        }
        int i10 = 1;
        while (true) {
            if (i10 >= i8) {
                break;
            }
            double d34 = i10 * i10;
            double exp6 = ((d34 * d34 * (-97.40909103400243d)) + (29.608813203268074d * d34 * d7)) * FastMath.exp((d34 * (-9.869604401089358d)) / d15);
            d11 += exp6;
            if (FastMath.abs(exp6) < FastMath.abs(d11) * 1.0E-10d) {
                i8 = 100000;
                break;
            }
            i10++;
            i8 = 100000;
        }
        if (i10 != i8) {
            return d28 + ((sqrt3 / (d4 * d2)) * ((d29 / ((3240.0d * d3) * d8)) + (d11 / (108.0d * d3))));
        }
        throw new TooManyIterationsException(100000);
    }

    public double cdf(double d, int i, boolean z) throws MathArithmeticException {
        double d2 = i;
        double d3 = 1.0d;
        double d4 = 1.0d / d2;
        double d5 = 0.5d * d4;
        if (d <= d5) {
            return 0.0d;
        }
        if (d5 < d && d <= d4) {
            double d6 = (d * 2.0d) - d4;
            for (int i2 = 1; i2 <= i; i2++) {
                d3 *= i2 * d6;
            }
            return d3;
        }
        if (1.0d - d4 <= d && d < 1.0d) {
            return 1.0d - (Math.pow(1.0d - d, d2) * 2.0d);
        }
        if (1.0d <= d) {
            return 1.0d;
        }
        if (z) {
            return m68137f(d, i);
        }
        if (i <= 140) {
            return m68140n(d, i);
        }
        return pelzGood(d, i);
    }

    public double kolmogorovSmirnovTest(double[] dArr, double[] dArr2, boolean z) {
        double[] dArr3;
        double[] dArr4;
        long length = dArr.length * dArr2.length;
        if (length >= 10000 || !m68131i(dArr, dArr2)) {
            dArr3 = dArr;
            dArr4 = dArr2;
        } else {
            dArr3 = MathArrays.copyOf(dArr);
            dArr4 = MathArrays.copyOf(dArr2);
            m68130h(dArr3, dArr4);
        }
        if (length < 10000) {
            return exactP(kolmogorovSmirnovStatistic(dArr3, dArr4), dArr.length, dArr2.length, z);
        }
        return approximateP(kolmogorovSmirnovStatistic(dArr, dArr2), dArr.length, dArr2.length);
    }

    @Deprecated
    public KolmogorovSmirnovTest(RandomGenerator randomGenerator) {
        this.f109756a = randomGenerator;
    }

    public double kolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) {
        return m68138j(dArr, dArr2) / (dArr.length * dArr2.length);
    }

    public double kolmogorovSmirnovTest(double[] dArr, double[] dArr2) {
        return kolmogorovSmirnovTest(dArr, dArr2, true);
    }

    public double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr) {
        return kolmogorovSmirnovTest(realDistribution, dArr, false);
    }

    public double bootstrap(double[] dArr, double[] dArr2, int i) {
        return bootstrap(dArr, dArr2, i, true);
    }

    public boolean kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, double d) {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d), 0, Double.valueOf(0.5d));
        }
        return kolmogorovSmirnovTest(realDistribution, dArr) < d;
    }
}
