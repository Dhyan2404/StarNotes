package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.StatUtils;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class TTest {
    /* renamed from: a */
    public final void m68149a(StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException {
        if (statisticalSummary == null) {
            throw new NullArgumentException();
        }
        if (statisticalSummary.getN() < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DATA_FOR_T_STATISTIC, Long.valueOf(statisticalSummary.getN()), 2, true);
        }
    }

    /* renamed from: b */
    public final void m68150b(double[] dArr) throws NullArgumentException, NumberIsTooSmallException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DATA_FOR_T_STATISTIC, Integer.valueOf(dArr.length), 2, true);
        }
    }

    /* renamed from: c */
    public final void m68151c(double d) throws OutOfRangeException {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.SIGNIFICANCE_LEVEL, Double.valueOf(d), Double.valueOf(0.0d), Double.valueOf(0.5d));
        }
    }

    /* renamed from: df */
    public double m68152df(double d, double d2, double d3, double d4) {
        double d5 = (d / d3) + (d2 / d4);
        return (d5 * d5) / (((d * d) / ((d3 * d3) * (d3 - 1.0d))) + ((d2 * d2) / ((d4 * d4) * (d4 - 1.0d))));
    }

    public double homoscedasticT(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        m68150b(dArr);
        m68150b(dArr2);
        return homoscedasticT(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double homoscedasticTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        m68150b(dArr);
        m68150b(dArr2);
        return homoscedasticTTest(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double pairedT(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException {
        m68150b(dArr);
        m68150b(dArr2);
        double meanDifference = StatUtils.meanDifference(dArr, dArr2);
        return m68153t(meanDifference, 0.0d, StatUtils.varianceDifference(dArr, dArr2, meanDifference), dArr.length);
    }

    public double pairedTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException {
        double meanDifference = StatUtils.meanDifference(dArr, dArr2);
        return tTest(meanDifference, 0.0d, StatUtils.varianceDifference(dArr, dArr2, meanDifference), dArr.length);
    }

    /* renamed from: t */
    public double m68156t(double d, double[] dArr) throws NullArgumentException, NumberIsTooSmallException {
        m68150b(dArr);
        return m68153t(StatUtils.mean(dArr), d, StatUtils.variance(dArr), dArr.length);
    }

    public double tTest(double d, double[] dArr) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        m68150b(dArr);
        return tTest(StatUtils.mean(dArr), d, StatUtils.variance(dArr), dArr.length);
    }

    public boolean pairedTTest(double[] dArr, double[] dArr2, double d) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        m68151c(d);
        return pairedTTest(dArr, dArr2) < d;
    }

    /* renamed from: t */
    public double m68155t(double d, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException {
        m68149a(statisticalSummary);
        return m68153t(statisticalSummary.getMean(), d, statisticalSummary.getVariance(), statisticalSummary.getN());
    }

    public boolean tTest(double d, double[] dArr, double d2) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        m68151c(d2);
        return tTest(d, dArr) < d2;
    }

    public double homoscedasticT(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        m68149a(statisticalSummary);
        m68149a(statisticalSummary2);
        return homoscedasticT(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public boolean homoscedasticTTest(double[] dArr, double[] dArr2, double d) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        m68151c(d);
        return homoscedasticTTest(dArr, dArr2) < d;
    }

    /* renamed from: t */
    public double m68158t(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        m68150b(dArr);
        m68150b(dArr2);
        return m68154t(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    public double tTest(double d, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        m68149a(statisticalSummary);
        return tTest(statisticalSummary.getMean(), d, statisticalSummary.getVariance(), statisticalSummary.getN());
    }

    public double homoscedasticTTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        m68149a(statisticalSummary);
        m68149a(statisticalSummary2);
        return homoscedasticTTest(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public double homoscedasticT(double d, double d2, double d3, double d4, double d5, double d6) {
        return (d - d2) / FastMath.sqrt(((((d5 - 1.0d) * d3) + ((d6 - 1.0d) * d4)) / ((d5 + d6) - 2.0d)) * ((1.0d / d5) + (1.0d / d6)));
    }

    public boolean tTest(double d, StatisticalSummary statisticalSummary, double d2) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        m68151c(d2);
        return tTest(d, statisticalSummary) < d2;
    }

    /* renamed from: t */
    public double m68157t(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        m68149a(statisticalSummary);
        m68149a(statisticalSummary2);
        return m68154t(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public double homoscedasticTTest(double d, double d2, double d3, double d4, double d5, double d6) throws MaxCountExceededException, NotStrictlyPositiveException {
        return new TDistribution((RandomGenerator) null, (d5 + d6) - 2.0d).cumulativeProbability(-FastMath.abs(homoscedasticT(d, d2, d3, d4, d5, d6))) * 2.0d;
    }

    public double tTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        m68150b(dArr);
        m68150b(dArr2);
        return tTest(StatUtils.mean(dArr), StatUtils.mean(dArr2), StatUtils.variance(dArr), StatUtils.variance(dArr2), dArr.length, dArr2.length);
    }

    /* renamed from: t */
    public double m68153t(double d, double d2, double d3, double d4) {
        return (d - d2) / FastMath.sqrt(d3 / d4);
    }

    /* renamed from: t */
    public double m68154t(double d, double d2, double d3, double d4, double d5, double d6) {
        return (d - d2) / FastMath.sqrt((d3 / d5) + (d4 / d6));
    }

    public boolean tTest(double[] dArr, double[] dArr2, double d) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        m68151c(d);
        return tTest(dArr, dArr2) < d;
    }

    public double tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        m68149a(statisticalSummary);
        m68149a(statisticalSummary2);
        return tTest(statisticalSummary.getMean(), statisticalSummary2.getMean(), statisticalSummary.getVariance(), statisticalSummary2.getVariance(), statisticalSummary.getN(), statisticalSummary2.getN());
    }

    public boolean tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2, double d) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        m68151c(d);
        return tTest(statisticalSummary, statisticalSummary2) < d;
    }

    public double tTest(double d, double d2, double d3, double d4) throws MaxCountExceededException, MathIllegalArgumentException {
        return new TDistribution((RandomGenerator) null, d4 - 1.0d).cumulativeProbability(-FastMath.abs(m68153t(d, d2, d3, d4))) * 2.0d;
    }

    public double tTest(double d, double d2, double d3, double d4, double d5, double d6) throws MaxCountExceededException, NotStrictlyPositiveException {
        return new TDistribution((RandomGenerator) null, m68152df(d3, d4, d5, d6)).cumulativeProbability(-FastMath.abs(m68154t(d, d2, d3, d4, d5, d6))) * 2.0d;
    }
}
