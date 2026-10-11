package org.apache.commons.math3.stat.inference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.distribution.FDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.descriptive.SummaryStatistics;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class OneWayAnova {

    /* renamed from: org.apache.commons.math3.stat.inference.OneWayAnova$b */
    /* loaded from: classes12.dex */
    public static class C19278b {

        /* renamed from: a */
        public final int f109758a;

        /* renamed from: b */
        public final int f109759b;

        /* renamed from: c */
        public final double f109760c;

        public C19278b(int i, int i2, double d) {
            this.f109758a = i;
            this.f109759b = i2;
            this.f109760c = d;
        }
    }

    /* renamed from: a */
    public final C19278b m68144a(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<double[]> it2 = collection.iterator();
        while (true) {
            if (!it2.hasNext()) {
                return m68145b(arrayList, false);
            }
            double[] next = it2.next();
            SummaryStatistics summaryStatistics = new SummaryStatistics();
            arrayList.add(summaryStatistics);
            for (double d : next) {
                summaryStatistics.addValue(d);
            }
        }
    }

    public double anovaFValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        return m68144a(collection).f109760c;
    }

    public double anovaPValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException, ConvergenceException, MaxCountExceededException {
        return 1.0d - new FDistribution((RandomGenerator) null, r6.f109758a, r6.f109759b).cumulativeProbability(m68144a(collection).f109760c);
    }

    public boolean anovaTest(Collection<double[]> collection, double d) throws NullArgumentException, DimensionMismatchException, OutOfRangeException, ConvergenceException, MaxCountExceededException {
        if (d <= 0.0d || d > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d), 0, Double.valueOf(0.5d));
        }
        return anovaPValue(collection) < d;
    }

    /* renamed from: b */
    public final C19278b m68145b(Collection<SummaryStatistics> collection, boolean z) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(collection);
        if (!z) {
            if (collection.size() < 2) {
                throw new DimensionMismatchException(LocalizedFormats.TWO_OR_MORE_CATEGORIES_REQUIRED, collection.size(), 2);
            }
            for (SummaryStatistics summaryStatistics : collection) {
                if (summaryStatistics.getN() <= 1) {
                    throw new DimensionMismatchException(LocalizedFormats.TWO_OR_MORE_VALUES_IN_CATEGORY_REQUIRED, (int) summaryStatistics.getN(), 2);
                }
            }
        }
        int i = 0;
        double d = 0.0d;
        int i2 = 0;
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (SummaryStatistics summaryStatistics2 : collection) {
            double sum = summaryStatistics2.getSum();
            double sumsq = summaryStatistics2.getSumsq();
            int n = (int) summaryStatistics2.getN();
            i += n;
            d2 += sum;
            d += sumsq;
            i2 += n - 1;
            d3 += sumsq - ((sum * sum) / n);
        }
        double d4 = (d - ((d2 * d2) / i)) - d3;
        int size = collection.size() - 1;
        return new C19278b(size, i2, (d4 / size) / (d3 / i2));
    }

    public double anovaPValue(Collection<SummaryStatistics> collection, boolean z) throws NullArgumentException, DimensionMismatchException, ConvergenceException, MaxCountExceededException {
        return 1.0d - new FDistribution((RandomGenerator) null, r6.f109758a, r6.f109759b).cumulativeProbability(m68145b(collection, z).f109760c);
    }
}
