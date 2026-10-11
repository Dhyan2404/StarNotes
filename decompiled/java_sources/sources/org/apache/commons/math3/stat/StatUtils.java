package org.apache.commons.math3.stat;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.DescriptiveStatistics;
import org.apache.commons.math3.stat.descriptive.UnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.moment.GeometricMean;
import org.apache.commons.math3.stat.descriptive.moment.Mean;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.stat.descriptive.rank.Max;
import org.apache.commons.math3.stat.descriptive.rank.Min;
import org.apache.commons.math3.stat.descriptive.rank.Percentile;
import org.apache.commons.math3.stat.descriptive.summary.Product;
import org.apache.commons.math3.stat.descriptive.summary.Sum;
import org.apache.commons.math3.stat.descriptive.summary.SumOfLogs;
import org.apache.commons.math3.stat.descriptive.summary.SumOfSquares;

/* loaded from: classes12.dex */
public final class StatUtils {

    /* renamed from: a */
    public static final UnivariateStatistic f109711a = new Sum();

    /* renamed from: b */
    public static final UnivariateStatistic f109712b = new SumOfSquares();

    /* renamed from: c */
    public static final UnivariateStatistic f109713c = new Product();

    /* renamed from: d */
    public static final UnivariateStatistic f109714d = new SumOfLogs();

    /* renamed from: e */
    public static final UnivariateStatistic f109715e = new Min();

    /* renamed from: f */
    public static final UnivariateStatistic f109716f = new Max();

    /* renamed from: g */
    public static final UnivariateStatistic f109717g = new Mean();

    /* renamed from: h */
    public static final Variance f109718h = new Variance();

    /* renamed from: i */
    public static final Percentile f109719i = new Percentile();

    /* renamed from: j */
    public static final GeometricMean f109720j = new GeometricMean();

    /* renamed from: a */
    public static double[] m68102a(double[] dArr, int i, int i2) {
        Frequency frequency = new Frequency();
        for (int i3 = i; i3 < i + i2; i3++) {
            double d = dArr[i3];
            if (!Double.isNaN(d)) {
                frequency.addValue(Double.valueOf(d));
            }
        }
        List<Comparable<?>> mode = frequency.getMode();
        double[] dArr2 = new double[mode.size()];
        Iterator<Comparable<?>> it2 = mode.iterator();
        int i4 = 0;
        while (it2.hasNext()) {
            dArr2[i4] = ((Double) it2.next()).doubleValue();
            i4++;
        }
        return dArr2;
    }

    public static double geometricMean(double[] dArr) throws MathIllegalArgumentException {
        return f109720j.evaluate(dArr);
    }

    public static double max(double[] dArr) throws MathIllegalArgumentException {
        return f109716f.evaluate(dArr);
    }

    public static double mean(double[] dArr) throws MathIllegalArgumentException {
        return f109717g.evaluate(dArr);
    }

    public static double meanDifference(double[] dArr, double[] dArr2) throws DimensionMismatchException, NoDataException {
        return sumDifference(dArr, dArr2) / dArr.length;
    }

    public static double min(double[] dArr) throws MathIllegalArgumentException {
        return f109715e.evaluate(dArr);
    }

    public static double[] mode(double[] dArr) throws MathIllegalArgumentException {
        if (dArr != null) {
            return m68102a(dArr, 0, dArr.length);
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    public static double[] normalize(double[] dArr) {
        DescriptiveStatistics descriptiveStatistics = new DescriptiveStatistics();
        for (double d : dArr) {
            descriptiveStatistics.addValue(d);
        }
        double mean = descriptiveStatistics.getMean();
        double standardDeviation = descriptiveStatistics.getStandardDeviation();
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = (dArr[i] - mean) / standardDeviation;
        }
        return dArr2;
    }

    public static double percentile(double[] dArr, double d) throws MathIllegalArgumentException {
        return f109719i.evaluate(dArr, d);
    }

    public static double populationVariance(double[] dArr) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr);
    }

    public static double product(double[] dArr) throws MathIllegalArgumentException {
        return f109713c.evaluate(dArr);
    }

    public static double sum(double[] dArr) throws MathIllegalArgumentException {
        return f109711a.evaluate(dArr);
    }

    public static double sumDifference(double[] dArr, double[] dArr2) throws DimensionMismatchException, NoDataException {
        int length = dArr.length;
        if (length != dArr2.length) {
            throw new DimensionMismatchException(length, dArr2.length);
        }
        if (length <= 0) {
            throw new NoDataException(LocalizedFormats.INSUFFICIENT_DIMENSION);
        }
        double d = 0.0d;
        for (int i = 0; i < length; i++) {
            d += dArr[i] - dArr2[i];
        }
        return d;
    }

    public static double sumLog(double[] dArr) throws MathIllegalArgumentException {
        return f109714d.evaluate(dArr);
    }

    public static double sumSq(double[] dArr) throws MathIllegalArgumentException {
        return f109712b.evaluate(dArr);
    }

    public static double variance(double[] dArr) throws MathIllegalArgumentException {
        return f109718h.evaluate(dArr);
    }

    public static double varianceDifference(double[] dArr, double[] dArr2, double d) throws DimensionMismatchException, NumberIsTooSmallException {
        int length = dArr.length;
        if (length != dArr2.length) {
            throw new DimensionMismatchException(length, dArr2.length);
        }
        if (length < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(length), 2, true);
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (int i = 0; i < length; i++) {
            double d4 = (dArr[i] - dArr2[i]) - d;
            d2 += d4 * d4;
            d3 += d4;
        }
        return (d2 - ((d3 * d3) / length)) / (length - 1);
    }

    public static double geometricMean(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109720j.evaluate(dArr, i, i2);
    }

    public static double max(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109716f.evaluate(dArr, i, i2);
    }

    public static double mean(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109717g.evaluate(dArr, i, i2);
    }

    public static double min(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109715e.evaluate(dArr, i, i2);
    }

    public static double percentile(double[] dArr, int i, int i2, double d) throws MathIllegalArgumentException {
        return f109719i.evaluate(dArr, i, i2, d);
    }

    public static double populationVariance(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr, i, i2);
    }

    public static double product(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109713c.evaluate(dArr, i, i2);
    }

    public static double sum(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109711a.evaluate(dArr, i, i2);
    }

    public static double sumLog(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109714d.evaluate(dArr, i, i2);
    }

    public static double sumSq(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109712b.evaluate(dArr, i, i2);
    }

    public static double variance(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return f109718h.evaluate(dArr, i, i2);
    }

    public static double[] mode(double[] dArr, int i, int i2) {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
        }
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.START_POSITION, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return m68102a(dArr, i, i2);
        }
        throw new NotPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i2));
    }

    public static double populationVariance(double[] dArr, double d, int i, int i2) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr, d, i, i2);
    }

    public static double variance(double[] dArr, double d, int i, int i2) throws MathIllegalArgumentException {
        return f109718h.evaluate(dArr, d, i, i2);
    }

    public static double populationVariance(double[] dArr, double d) throws MathIllegalArgumentException {
        return new Variance(false).evaluate(dArr, d);
    }

    public static double variance(double[] dArr, double d) throws MathIllegalArgumentException {
        return f109718h.evaluate(dArr, d);
    }
}
