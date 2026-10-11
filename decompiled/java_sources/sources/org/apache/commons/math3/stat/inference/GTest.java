package org.apache.commons.math3.stat.inference;

import java.lang.reflect.Array;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class GTest {
    /* renamed from: a */
    public final double m68124a(long[] jArr) {
        double d = 0.0d;
        double d2 = 0.0d;
        for (long j : jArr) {
            d2 += j;
        }
        for (long j2 : jArr) {
            if (j2 != 0) {
                double d3 = j2 / d2;
                d += d3 * FastMath.log(d3);
            }
        }
        return -d;
    }

    /* renamed from: b */
    public final double m68125b(long[][] jArr) {
        double d = 0.0d;
        double d2 = 0.0d;
        for (long[] jArr2 : jArr) {
            int i = 0;
            while (true) {
                if (i < jArr2.length) {
                    d2 += r6[i];
                    i++;
                }
            }
        }
        for (long[] jArr3 : jArr) {
            int i2 = 0;
            while (true) {
                if (i2 < jArr3.length) {
                    long j = jArr3[i2];
                    if (j != 0) {
                        double d3 = j / d2;
                        d += d3 * FastMath.log(d3);
                    }
                    i2++;
                }
            }
        }
        return -d;
    }

    /* renamed from: g */
    public double m68126g(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        double d;
        boolean z;
        double d2;
        double d3;
        if (dArr.length < 2) {
            throw new DimensionMismatchException(dArr.length, 2);
        }
        if (dArr.length != jArr.length) {
            throw new DimensionMismatchException(dArr.length, jArr.length);
        }
        MathArrays.checkPositive(dArr);
        MathArrays.checkNonNegative(jArr);
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        for (int i = 0; i < jArr.length; i++) {
            d5 += dArr[i];
            d6 += jArr[i];
        }
        if (FastMath.abs(d5 - d6) > 1.0E-5d) {
            d = d6 / d5;
            z = true;
        } else {
            d = 1.0d;
            z = false;
        }
        for (int i2 = 0; i2 < jArr.length; i2++) {
            if (z) {
                d2 = jArr[i2];
                d3 = dArr[i2] * d;
            } else {
                d2 = jArr[i2];
                d3 = dArr[i2];
            }
            d4 += jArr[i2] * FastMath.log(d2 / d3);
        }
        return d4 * 2.0d;
    }

    public double gDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr.length != jArr2.length) {
            throw new DimensionMismatchException(jArr.length, jArr2.length);
        }
        MathArrays.checkNonNegative(jArr);
        MathArrays.checkNonNegative(jArr2);
        long[] jArr3 = new long[jArr.length];
        long[][] jArr4 = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 2, jArr.length);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < jArr.length; i++) {
            long j3 = jArr[i];
            if (j3 == 0 && jArr2[i] == 0) {
                throw new ZeroException(LocalizedFormats.OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY, Integer.valueOf(i));
            }
            j += j3;
            long j4 = jArr2[i];
            j2 += j4;
            jArr3[i] = j3 + j4;
            jArr4[0][i] = jArr[i];
            jArr4[1][i] = jArr2[i];
        }
        if (j == 0 || j2 == 0) {
            throw new ZeroException();
        }
        return (j + j2) * 2.0d * ((m68124a(new long[]{j, j2}) + m68124a(jArr3)) - m68125b(jArr4));
    }

    public double gTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, dArr.length - 1.0d).cumulativeProbability(m68126g(dArr, jArr));
    }

    public double gTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, jArr.length - 1.0d).cumulativeProbability(gDataSetsComparison(jArr, jArr2));
    }

    public double gTestIntrinsic(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, dArr.length - 2.0d).cumulativeProbability(m68126g(dArr, jArr));
    }

    public double rootLogLikelihoodRatio(long j, long j2, long j3, long j4) {
        double sqrt = FastMath.sqrt(gDataSetsComparison(new long[]{j, j2}, new long[]{j3, j4}));
        return ((double) j) / ((double) (j + j2)) < ((double) j3) / ((double) (j3 + j4)) ? -sqrt : sqrt;
    }

    public boolean gTest(double[] dArr, long[] jArr, double d) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d), 0, Double.valueOf(0.5d));
        }
        return gTest(dArr, jArr) < d;
    }

    public boolean gTestDataSetsComparison(long[] jArr, long[] jArr2, double d) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d), 0, Double.valueOf(0.5d));
        }
        return gTestDataSetsComparison(jArr, jArr2) < d;
    }
}
