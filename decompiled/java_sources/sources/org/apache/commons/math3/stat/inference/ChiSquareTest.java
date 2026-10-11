package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class ChiSquareTest {
    /* renamed from: a */
    public final void m68123a(long[][] jArr) throws NullArgumentException, DimensionMismatchException, NotPositiveException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr[0].length < 2) {
            throw new DimensionMismatchException(jArr[0].length, 2);
        }
        MathArrays.checkRectangular(jArr);
        MathArrays.checkNonNegative(jArr);
    }

    public double chiSquare(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        double d;
        boolean z;
        double d2;
        double d3;
        if (dArr.length >= 2) {
            if (dArr.length == jArr.length) {
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
                        double d7 = jArr[i2];
                        double d8 = dArr[i2];
                        double d9 = d7 - (d * d8);
                        d3 = d9 * d9;
                        d2 = d8 * d;
                    } else {
                        double d10 = jArr[i2];
                        d2 = dArr[i2];
                        double d11 = d10 - d2;
                        d3 = d11 * d11;
                    }
                    d4 += d3 / d2;
                }
                return d4;
            }
            throw new DimensionMismatchException(dArr.length, jArr.length);
        }
        throw new DimensionMismatchException(dArr.length, 2);
    }

    public double chiSquareDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr.length != jArr2.length) {
            throw new DimensionMismatchException(jArr.length, jArr2.length);
        }
        MathArrays.checkNonNegative(jArr);
        MathArrays.checkNonNegative(jArr2);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < jArr.length; i++) {
            j += jArr[i];
            j2 += jArr2[i];
        }
        if (j == 0 || j2 == 0) {
            throw new ZeroException();
        }
        boolean z = j != j2;
        double d = 0.0d;
        double sqrt = z ? FastMath.sqrt(j / j2) : 0.0d;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            long j3 = jArr[i2];
            if (j3 == 0 && jArr2[i2] == 0) {
                throw new ZeroException(LocalizedFormats.OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY, Integer.valueOf(i2));
            }
            double d2 = j3;
            double d3 = jArr2[i2];
            double d4 = z ? (d2 / sqrt) - (d3 * sqrt) : d2 - d3;
            d += (d4 * d4) / (d2 + d3);
        }
        return d;
    }

    public double chiSquareTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, dArr.length - 1.0d).cumulativeProbability(chiSquare(dArr, jArr));
    }

    public double chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, jArr.length - 1.0d).cumulativeProbability(chiSquareDataSetsComparison(jArr, jArr2));
    }

    public boolean chiSquareTest(double[] dArr, long[] jArr, double d) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d), 0, Double.valueOf(0.5d));
        }
        return chiSquareTest(dArr, jArr) < d;
    }

    public boolean chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2, double d) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d), 0, Double.valueOf(0.5d));
        }
        return chiSquareTestDataSetsComparison(jArr, jArr2) < d;
    }

    public double chiSquareTest(long[][] jArr) throws NullArgumentException, DimensionMismatchException, NotPositiveException, MaxCountExceededException {
        m68123a(jArr);
        return 1.0d - new ChiSquaredDistribution((jArr.length - 1.0d) * (jArr[0].length - 1.0d)).cumulativeProbability(chiSquare(jArr));
    }

    public boolean chiSquareTest(long[][] jArr, double d) throws NullArgumentException, DimensionMismatchException, NotPositiveException, OutOfRangeException, MaxCountExceededException {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d), 0, Double.valueOf(0.5d));
        }
        return chiSquareTest(jArr) < d;
    }

    public double chiSquare(long[][] jArr) throws NullArgumentException, NotPositiveException, DimensionMismatchException {
        m68123a(jArr);
        int length = jArr.length;
        int i = 0;
        int length2 = jArr[0].length;
        double[] dArr = new double[length];
        double[] dArr2 = new double[length2];
        double d = 0.0d;
        for (int i2 = 0; i2 < length; i2++) {
            for (int i3 = 0; i3 < length2; i3++) {
                double d2 = dArr[i2];
                long j = jArr[i2][i3];
                dArr[i2] = d2 + j;
                dArr2[i3] = dArr2[i3] + j;
                d += j;
            }
        }
        int i4 = 0;
        double d3 = 0.0d;
        while (i4 < length) {
            int i5 = i;
            while (i5 < length2) {
                double d4 = (dArr[i4] * dArr2[i5]) / d;
                long j2 = jArr[i4][i5];
                d3 += ((j2 - d4) * (j2 - d4)) / d4;
                i5++;
                length2 = length2;
            }
            i4++;
            i = 0;
        }
        return d3;
    }
}
