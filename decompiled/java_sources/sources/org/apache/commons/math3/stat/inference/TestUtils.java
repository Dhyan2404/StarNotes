package org.apache.commons.math3.stat.inference;

import java.util.Collection;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;

/* loaded from: classes12.dex */
public class TestUtils {

    /* renamed from: a */
    public static final TTest f109761a = new TTest();

    /* renamed from: b */
    public static final ChiSquareTest f109762b = new ChiSquareTest();

    /* renamed from: c */
    public static final OneWayAnova f109763c = new OneWayAnova();

    /* renamed from: d */
    public static final GTest f109764d = new GTest();

    /* renamed from: e */
    public static final KolmogorovSmirnovTest f109765e = new KolmogorovSmirnovTest();

    public static double approximateP(double d, int i, int i2) {
        return f109765e.approximateP(d, i, i2);
    }

    public static double chiSquare(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        return f109762b.chiSquare(dArr, jArr);
    }

    public static double chiSquareDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        return f109762b.chiSquareDataSetsComparison(jArr, jArr2);
    }

    public static boolean chiSquareTest(double[] dArr, long[] jArr, double d) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        return f109762b.chiSquareTest(dArr, jArr, d);
    }

    public static double chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return f109762b.chiSquareTestDataSetsComparison(jArr, jArr2);
    }

    public static double exactP(double d, int i, int i2, boolean z) {
        return f109765e.exactP(d, i2, i, z);
    }

    /* renamed from: g */
    public static double m68159g(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException {
        return f109764d.m68126g(dArr, jArr);
    }

    public static double gDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException {
        return f109764d.gDataSetsComparison(jArr, jArr2);
    }

    public static double gTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return f109764d.gTest(dArr, jArr);
    }

    public static double gTestDataSetsComparison(long[] jArr, long[] jArr2) throws DimensionMismatchException, NotPositiveException, ZeroException, MaxCountExceededException {
        return f109764d.gTestDataSetsComparison(jArr, jArr2);
    }

    public static double gTestIntrinsic(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return f109764d.gTestIntrinsic(dArr, jArr);
    }

    public static double homoscedasticT(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        return f109761a.homoscedasticT(dArr, dArr2);
    }

    public static boolean homoscedasticTTest(double[] dArr, double[] dArr2, double d) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return f109761a.homoscedasticTTest(dArr, dArr2, d);
    }

    public static double kolmogorovSmirnovStatistic(RealDistribution realDistribution, double[] dArr) throws InsufficientDataException, NullArgumentException {
        return f109765e.kolmogorovSmirnovStatistic(realDistribution, dArr);
    }

    public static double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr) throws InsufficientDataException, NullArgumentException {
        return f109765e.kolmogorovSmirnovTest(realDistribution, dArr);
    }

    public static double monteCarloP(double d, int i, int i2, boolean z, int i3) {
        return f109765e.monteCarloP(d, i, i2, z, i3);
    }

    public static double oneWayAnovaFValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        return f109763c.anovaFValue(collection);
    }

    public static double oneWayAnovaPValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException, ConvergenceException, MaxCountExceededException {
        return f109763c.anovaPValue(collection);
    }

    public static boolean oneWayAnovaTest(Collection<double[]> collection, double d) throws NullArgumentException, DimensionMismatchException, OutOfRangeException, ConvergenceException, MaxCountExceededException {
        return f109763c.anovaTest(collection, d);
    }

    public static double pairedT(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException {
        return f109761a.pairedT(dArr, dArr2);
    }

    public static boolean pairedTTest(double[] dArr, double[] dArr2, double d) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return f109761a.pairedTTest(dArr, dArr2, d);
    }

    public static double rootLogLikelihoodRatio(long j, long j2, long j3, long j4) throws DimensionMismatchException, NotPositiveException, ZeroException {
        return f109764d.rootLogLikelihoodRatio(j, j2, j3, j4);
    }

    /* renamed from: t */
    public static double m68161t(double d, double[] dArr) throws NullArgumentException, NumberIsTooSmallException {
        return f109761a.m68156t(d, dArr);
    }

    public static boolean tTest(double d, double[] dArr, double d2) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return f109761a.tTest(d, dArr, d2);
    }

    public static double chiSquare(long[][] jArr) throws NullArgumentException, NotPositiveException, DimensionMismatchException {
        return f109762b.chiSquare(jArr);
    }

    public static double chiSquareTest(double[] dArr, long[] jArr) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, MaxCountExceededException {
        return f109762b.chiSquareTest(dArr, jArr);
    }

    public static boolean chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2, double d) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        return f109762b.chiSquareTestDataSetsComparison(jArr, jArr2, d);
    }

    public static boolean gTest(double[] dArr, long[] jArr, double d) throws NotPositiveException, NotStrictlyPositiveException, DimensionMismatchException, OutOfRangeException, MaxCountExceededException {
        return f109764d.gTest(dArr, jArr, d);
    }

    public static boolean gTestDataSetsComparison(long[] jArr, long[] jArr2, double d) throws DimensionMismatchException, NotPositiveException, ZeroException, OutOfRangeException, MaxCountExceededException {
        return f109764d.gTestDataSetsComparison(jArr, jArr2, d);
    }

    public static double homoscedasticT(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        return f109761a.homoscedasticT(statisticalSummary, statisticalSummary2);
    }

    public static double homoscedasticTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return f109761a.homoscedasticTTest(dArr, dArr2);
    }

    public static double kolmogorovSmirnovStatistic(double[] dArr, double[] dArr2) throws InsufficientDataException, NullArgumentException {
        return f109765e.kolmogorovSmirnovStatistic(dArr, dArr2);
    }

    public static double kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, boolean z) throws InsufficientDataException, NullArgumentException {
        return f109765e.kolmogorovSmirnovTest(realDistribution, dArr, z);
    }

    public static double pairedTTest(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException {
        return f109761a.pairedTTest(dArr, dArr2);
    }

    /* renamed from: t */
    public static double m68160t(double d, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException {
        return f109761a.m68155t(d, statisticalSummary);
    }

    public static double tTest(double d, double[] dArr) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return f109761a.tTest(d, dArr);
    }

    public static boolean chiSquareTest(long[][] jArr, double d) throws NullArgumentException, DimensionMismatchException, NotPositiveException, OutOfRangeException, MaxCountExceededException {
        return f109762b.chiSquareTest(jArr, d);
    }

    public static double homoscedasticTTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return f109761a.homoscedasticTTest(statisticalSummary, statisticalSummary2);
    }

    public static boolean kolmogorovSmirnovTest(RealDistribution realDistribution, double[] dArr, double d) throws InsufficientDataException, NullArgumentException {
        return f109765e.kolmogorovSmirnovTest(realDistribution, dArr, d);
    }

    /* renamed from: t */
    public static double m68163t(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException {
        return f109761a.m68158t(dArr, dArr2);
    }

    public static boolean tTest(double d, StatisticalSummary statisticalSummary, double d2) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return f109761a.tTest(d, statisticalSummary, d2);
    }

    public static double chiSquareTest(long[][] jArr) throws NullArgumentException, DimensionMismatchException, NotPositiveException, MaxCountExceededException {
        return f109762b.chiSquareTest(jArr);
    }

    public static double kolmogorovSmirnovTest(double[] dArr, double[] dArr2) throws InsufficientDataException, NullArgumentException {
        return f109765e.kolmogorovSmirnovTest(dArr, dArr2);
    }

    /* renamed from: t */
    public static double m68162t(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException {
        return f109761a.m68157t(statisticalSummary, statisticalSummary2);
    }

    public static double tTest(double d, StatisticalSummary statisticalSummary) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return f109761a.tTest(d, statisticalSummary);
    }

    public static double kolmogorovSmirnovTest(double[] dArr, double[] dArr2, boolean z) throws InsufficientDataException, NullArgumentException {
        return f109765e.kolmogorovSmirnovTest(dArr, dArr2, z);
    }

    public static boolean tTest(double[] dArr, double[] dArr2, double d) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return f109761a.tTest(dArr, dArr2, d);
    }

    public static double tTest(double[] dArr, double[] dArr2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return f109761a.tTest(dArr, dArr2);
    }

    public static boolean tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2, double d) throws NullArgumentException, NumberIsTooSmallException, OutOfRangeException, MaxCountExceededException {
        return f109761a.tTest(statisticalSummary, statisticalSummary2, d);
    }

    public static double tTest(StatisticalSummary statisticalSummary, StatisticalSummary statisticalSummary2) throws NullArgumentException, NumberIsTooSmallException, MaxCountExceededException {
        return f109761a.tTest(statisticalSummary, statisticalSummary2);
    }
}
