package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.TiesStrategy;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class MannWhitneyUTest {

    /* renamed from: a */
    public NaturalRanking f109757a;

    public MannWhitneyUTest() {
        this.f109757a = new NaturalRanking(NaNStrategy.FIXED, TiesStrategy.AVERAGE);
    }

    /* renamed from: a */
    public final double m68141a(double d, int i, int i2) throws ConvergenceException, MaxCountExceededException {
        return new NormalDistribution((RandomGenerator) null, 0.0d, 1.0d).cumulativeProbability((d - ((i * i2) / 2.0d)) / FastMath.sqrt((r2 * ((i + i2) + 1)) / 12.0d)) * 2.0d;
    }

    /* renamed from: b */
    public final double[] m68142b(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    /* renamed from: c */
    public final void m68143c(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException();
        }
    }

    public double mannWhitneyU(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        m68143c(dArr, dArr2);
        double[] rank = this.f109757a.rank(m68142b(dArr, dArr2));
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += rank[i];
        }
        double length = d - ((dArr.length * (dArr.length + 1)) / 2);
        return FastMath.max(length, (dArr.length * dArr2.length) - length);
    }

    public double mannWhitneyUTest(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, ConvergenceException, MaxCountExceededException {
        m68143c(dArr, dArr2);
        return m68141a((dArr.length * dArr2.length) - mannWhitneyU(dArr, dArr2), dArr.length, dArr2.length);
    }

    public MannWhitneyUTest(NaNStrategy naNStrategy, TiesStrategy tiesStrategy) {
        this.f109757a = new NaturalRanking(naNStrategy, tiesStrategy);
    }
}
