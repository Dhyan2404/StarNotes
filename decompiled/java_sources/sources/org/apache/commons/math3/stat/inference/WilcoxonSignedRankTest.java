package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.TiesStrategy;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class WilcoxonSignedRankTest {

    /* renamed from: a */
    public NaturalRanking f109766a;

    public WilcoxonSignedRankTest() {
        this.f109766a = new NaturalRanking(NaNStrategy.FIXED, TiesStrategy.AVERAGE);
    }

    /* renamed from: a */
    public final double[] m68164a(double[] dArr) throws NullArgumentException, NoDataException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = FastMath.abs(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: b */
    public final double m68165b(double d, int i) {
        double d2 = ((i + 1) * i) / 4.0d;
        return new NormalDistribution((RandomGenerator) null, 0.0d, 1.0d).cumulativeProbability(((d - d2) - 0.5d) / FastMath.sqrt((((i * 2) + 1) / 6.0d) * d2)) * 2.0d;
    }

    /* renamed from: c */
    public final double[] m68166c(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr2[i] - dArr[i];
        }
        return dArr3;
    }

    /* renamed from: d */
    public final double m68167d(double d, int i) {
        int i2 = 1 << i;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                if (((i4 >> i6) & 1) == 1) {
                    i5 += i6 + 1;
                }
            }
            if (i5 >= d) {
                i3++;
            }
        }
        return (i3 * 2.0d) / i2;
    }

    /* renamed from: e */
    public final void m68168e(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException();
        }
        if (dArr2.length != dArr.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
    }

    public double wilcoxonSignedRank(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        m68168e(dArr, dArr2);
        double[] m68166c = m68166c(dArr, dArr2);
        double[] rank = this.f109766a.rank(m68164a(m68166c));
        double d = 0.0d;
        for (int i = 0; i < m68166c.length; i++) {
            if (m68166c[i] > 0.0d) {
                d += rank[i];
            }
        }
        int length = dArr.length;
        return FastMath.max(d, ((length * (length + 1)) / 2.0d) - d);
    }

    public double wilcoxonSignedRankTest(double[] dArr, double[] dArr2, boolean z) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooLargeException, ConvergenceException, MaxCountExceededException {
        m68168e(dArr, dArr2);
        int length = dArr.length;
        double wilcoxonSignedRank = wilcoxonSignedRank(dArr, dArr2);
        if (!z || length <= 30) {
            return z ? m68167d(wilcoxonSignedRank, length) : m68165b((((length + 1) * length) / 2.0d) - wilcoxonSignedRank, length);
        }
        throw new NumberIsTooLargeException(Integer.valueOf(length), 30, true);
    }

    public WilcoxonSignedRankTest(NaNStrategy naNStrategy, TiesStrategy tiesStrategy) {
        this.f109766a = new NaturalRanking(naNStrategy, tiesStrategy);
    }
}
