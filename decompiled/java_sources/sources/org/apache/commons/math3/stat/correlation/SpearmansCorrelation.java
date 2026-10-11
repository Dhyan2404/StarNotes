package org.apache.commons.math3.stat.correlation;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.RankingAlgorithm;

/* loaded from: classes12.dex */
public class SpearmansCorrelation {

    /* renamed from: a */
    public final RealMatrix f109732a;

    /* renamed from: b */
    public final RankingAlgorithm f109733b;

    /* renamed from: c */
    public final PearsonsCorrelation f109734c;

    public SpearmansCorrelation() {
        this(new NaturalRanking());
    }

    /* renamed from: a */
    public final List<Integer> m68116a(double[] dArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < dArr.length; i++) {
            if (Double.isNaN(dArr[i])) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065 A[LOOP:2: B:20:0x005f->B:22:0x0065, LOOP_END] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.commons.math3.linear.RealMatrix m68117b(org.apache.commons.math3.linear.RealMatrix r6) {
        /*
            r5 = this;
            org.apache.commons.math3.stat.ranking.RankingAlgorithm r0 = r5.f109733b
            boolean r1 = r0 instanceof org.apache.commons.math3.stat.ranking.NaturalRanking
            r2 = 0
            if (r1 == 0) goto L58
            org.apache.commons.math3.stat.ranking.NaturalRanking r0 = (org.apache.commons.math3.stat.ranking.NaturalRanking) r0
            org.apache.commons.math3.stat.ranking.NaNStrategy r0 = r0.getNanStrategy()
            org.apache.commons.math3.stat.ranking.NaNStrategy r1 = org.apache.commons.math3.stat.ranking.NaNStrategy.REMOVED
            if (r0 != r1) goto L58
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            r1 = r2
        L17:
            int r3 = r6.getColumnDimension()
            if (r1 >= r3) goto L2b
            double[] r3 = r6.getColumn(r1)
            java.util.List r3 = r5.m68116a(r3)
            r0.addAll(r3)
            int r1 = r1 + 1
            goto L17
        L2b:
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto L58
            org.apache.commons.math3.linear.BlockRealMatrix r1 = new org.apache.commons.math3.linear.BlockRealMatrix
            int r3 = r6.getRowDimension()
            int r4 = r0.size()
            int r3 = r3 - r4
            int r4 = r6.getColumnDimension()
            r1.<init>(r3, r4)
            r3 = r2
        L44:
            int r4 = r1.getColumnDimension()
            if (r3 >= r4) goto L59
            double[] r4 = r6.getColumn(r3)
            double[] r4 = r5.m68118c(r4, r0)
            r1.setColumn(r3, r4)
            int r3 = r3 + 1
            goto L44
        L58:
            r1 = 0
        L59:
            if (r1 != 0) goto L5f
            org.apache.commons.math3.linear.RealMatrix r1 = r6.copy()
        L5f:
            int r6 = r1.getColumnDimension()
            if (r2 >= r6) goto L75
            org.apache.commons.math3.stat.ranking.RankingAlgorithm r6 = r5.f109733b
            double[] r0 = r1.getColumn(r2)
            double[] r6 = r6.rank(r0)
            r1.setColumn(r2, r6)
            int r2 = r2 + 1
            goto L5f
        L75:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.stat.correlation.SpearmansCorrelation.m68117b(org.apache.commons.math3.linear.RealMatrix):org.apache.commons.math3.linear.RealMatrix");
    }

    /* renamed from: c */
    public final double[] m68118c(double[] dArr, Set<Integer> set) {
        if (set.isEmpty()) {
            return dArr;
        }
        double[] dArr2 = new double[dArr.length - set.size()];
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            if (!set.contains(Integer.valueOf(i2))) {
                dArr2[i] = dArr[i2];
                i++;
            }
        }
        return dArr2;
    }

    public RealMatrix computeCorrelationMatrix(RealMatrix realMatrix) {
        return new PearsonsCorrelation().computeCorrelationMatrix(m68117b(realMatrix));
    }

    public double correlation(double[] dArr, double[] dArr2) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length < 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_DIMENSION, Integer.valueOf(dArr.length), 2);
        }
        RankingAlgorithm rankingAlgorithm = this.f109733b;
        if ((rankingAlgorithm instanceof NaturalRanking) && NaNStrategy.REMOVED == ((NaturalRanking) rankingAlgorithm).getNanStrategy()) {
            HashSet hashSet = new HashSet();
            hashSet.addAll(m68116a(dArr));
            hashSet.addAll(m68116a(dArr2));
            dArr = m68118c(dArr, hashSet);
            dArr2 = m68118c(dArr2, hashSet);
        }
        return new PearsonsCorrelation().correlation(this.f109733b.rank(dArr), this.f109733b.rank(dArr2));
    }

    public RealMatrix getCorrelationMatrix() {
        return this.f109734c.getCorrelationMatrix();
    }

    public PearsonsCorrelation getRankCorrelation() {
        return this.f109734c;
    }

    public SpearmansCorrelation(RankingAlgorithm rankingAlgorithm) {
        this.f109732a = null;
        this.f109733b = rankingAlgorithm;
        this.f109734c = null;
    }

    public RealMatrix computeCorrelationMatrix(double[][] dArr) {
        return computeCorrelationMatrix(new BlockRealMatrix(dArr));
    }

    public SpearmansCorrelation(RealMatrix realMatrix) {
        this(realMatrix, new NaturalRanking());
    }

    public SpearmansCorrelation(RealMatrix realMatrix, RankingAlgorithm rankingAlgorithm) {
        this.f109733b = rankingAlgorithm;
        RealMatrix m68117b = m68117b(realMatrix);
        this.f109732a = m68117b;
        this.f109734c = new PearsonsCorrelation(m68117b);
    }
}
