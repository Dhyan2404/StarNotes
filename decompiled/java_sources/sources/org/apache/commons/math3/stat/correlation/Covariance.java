package org.apache.commons.math3.stat.correlation;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.descriptive.moment.Mean;
import org.apache.commons.math3.stat.descriptive.moment.Variance;

/* loaded from: classes12.dex */
public class Covariance {

    /* renamed from: a */
    public final RealMatrix f109726a;

    /* renamed from: b */
    public final int f109727b;

    public Covariance() {
        this.f109726a = null;
        this.f109727b = 0;
    }

    /* renamed from: a */
    public final void m68112a(RealMatrix realMatrix) throws MathIllegalArgumentException {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        if (rowDimension < 2 || columnDimension < 1) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_ROWS_AND_COLUMNS, Integer.valueOf(rowDimension), Integer.valueOf(columnDimension));
        }
    }

    public RealMatrix computeCovarianceMatrix(RealMatrix realMatrix, boolean z) throws MathIllegalArgumentException {
        int columnDimension = realMatrix.getColumnDimension();
        Variance variance = new Variance(z);
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(columnDimension, columnDimension);
        for (int i = 0; i < columnDimension; i++) {
            for (int i2 = 0; i2 < i; i2++) {
                double covariance = covariance(realMatrix.getColumn(i), realMatrix.getColumn(i2), z);
                blockRealMatrix.setEntry(i, i2, covariance);
                blockRealMatrix.setEntry(i2, i, covariance);
            }
            blockRealMatrix.setEntry(i, i, variance.evaluate(realMatrix.getColumn(i)));
        }
        return blockRealMatrix;
    }

    public double covariance(double[] dArr, double[] dArr2, boolean z) throws MathIllegalArgumentException {
        Mean mean = new Mean();
        int length = dArr.length;
        if (length != dArr2.length) {
            throw new MathIllegalArgumentException(LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE, Integer.valueOf(length), Integer.valueOf(dArr2.length));
        }
        if (length >= 2) {
            double evaluate = mean.evaluate(dArr);
            double evaluate2 = mean.evaluate(dArr2);
            double d = 0.0d;
            int i = 0;
            while (i < length) {
                double d2 = ((dArr[i] - evaluate) * (dArr2[i] - evaluate2)) - d;
                i++;
                d += d2 / i;
            }
            return z ? d * (length / (length - 1)) : d;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(length), 2);
    }

    public RealMatrix getCovarianceMatrix() {
        return this.f109726a;
    }

    public int getN() {
        return this.f109727b;
    }

    public Covariance(double[][] dArr, boolean z) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        this(new BlockRealMatrix(dArr), z);
    }

    public Covariance(double[][] dArr) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        this(dArr, true);
    }

    public Covariance(RealMatrix realMatrix, boolean z) throws MathIllegalArgumentException {
        m68112a(realMatrix);
        this.f109727b = realMatrix.getRowDimension();
        this.f109726a = computeCovarianceMatrix(realMatrix, z);
    }

    public RealMatrix computeCovarianceMatrix(RealMatrix realMatrix) throws MathIllegalArgumentException {
        return computeCovarianceMatrix(realMatrix, true);
    }

    public RealMatrix computeCovarianceMatrix(double[][] dArr, boolean z) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        return computeCovarianceMatrix(new BlockRealMatrix(dArr), z);
    }

    public Covariance(RealMatrix realMatrix) throws MathIllegalArgumentException {
        this(realMatrix, true);
    }

    public RealMatrix computeCovarianceMatrix(double[][] dArr) throws MathIllegalArgumentException, NotStrictlyPositiveException {
        return computeCovarianceMatrix(dArr, true);
    }

    public double covariance(double[] dArr, double[] dArr2) throws MathIllegalArgumentException {
        return covariance(dArr, dArr2, true);
    }
}
