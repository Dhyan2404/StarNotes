package org.apache.commons.math3.stat.correlation;

import java.lang.reflect.Array;
import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.regression.SimpleRegression;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class PearsonsCorrelation {

    /* renamed from: a */
    public final RealMatrix f109730a;

    /* renamed from: b */
    public final int f109731b;

    public PearsonsCorrelation() {
        this.f109730a = null;
        this.f109731b = 0;
    }

    /* renamed from: a */
    public final void m68115a(RealMatrix realMatrix) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        if (rowDimension < 2 || columnDimension < 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_ROWS_AND_COLUMNS, Integer.valueOf(rowDimension), Integer.valueOf(columnDimension));
        }
    }

    public RealMatrix computeCorrelationMatrix(RealMatrix realMatrix) {
        m68115a(realMatrix);
        int columnDimension = realMatrix.getColumnDimension();
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(columnDimension, columnDimension);
        for (int i = 0; i < columnDimension; i++) {
            for (int i2 = 0; i2 < i; i2++) {
                double correlation = correlation(realMatrix.getColumn(i), realMatrix.getColumn(i2));
                blockRealMatrix.setEntry(i, i2, correlation);
                blockRealMatrix.setEntry(i2, i, correlation);
            }
            blockRealMatrix.setEntry(i, i, 1.0d);
        }
        return blockRealMatrix;
    }

    public double correlation(double[] dArr, double[] dArr2) {
        SimpleRegression simpleRegression = new SimpleRegression();
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length < 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_DIMENSION, Integer.valueOf(dArr.length), 2);
        }
        for (int i = 0; i < dArr.length; i++) {
            simpleRegression.addData(dArr[i], dArr2[i]);
        }
        return simpleRegression.getR();
    }

    public RealMatrix covarianceToCorrelation(RealMatrix realMatrix) {
        int columnDimension = realMatrix.getColumnDimension();
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(columnDimension, columnDimension);
        for (int i = 0; i < columnDimension; i++) {
            double sqrt = FastMath.sqrt(realMatrix.getEntry(i, i));
            blockRealMatrix.setEntry(i, i, 1.0d);
            for (int i2 = 0; i2 < i; i2++) {
                double entry = realMatrix.getEntry(i, i2) / (FastMath.sqrt(realMatrix.getEntry(i2, i2)) * sqrt);
                blockRealMatrix.setEntry(i, i2, entry);
                blockRealMatrix.setEntry(i2, i, entry);
            }
        }
        return blockRealMatrix;
    }

    public RealMatrix getCorrelationMatrix() {
        return this.f109730a;
    }

    public RealMatrix getCorrelationPValues() {
        TDistribution tDistribution = new TDistribution(this.f109731b - 2);
        int columnDimension = this.f109730a.getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, columnDimension, columnDimension);
        for (int i = 0; i < columnDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                if (i == i2) {
                    dArr[i][i2] = 0.0d;
                } else {
                    double entry = this.f109730a.getEntry(i, i2);
                    dArr[i][i2] = tDistribution.cumulativeProbability(-FastMath.abs(entry * FastMath.sqrt((this.f109731b - 2) / (1.0d - (entry * entry))))) * 2.0d;
                }
            }
        }
        return new BlockRealMatrix(dArr);
    }

    public RealMatrix getCorrelationStandardErrors() {
        int columnDimension = this.f109730a.getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, columnDimension, columnDimension);
        for (int i = 0; i < columnDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                double entry = this.f109730a.getEntry(i, i2);
                dArr[i][i2] = FastMath.sqrt((1.0d - (entry * entry)) / (this.f109731b - 2));
            }
        }
        return new BlockRealMatrix(dArr);
    }

    public PearsonsCorrelation(double[][] dArr) {
        this(new BlockRealMatrix(dArr));
    }

    public PearsonsCorrelation(RealMatrix realMatrix) {
        this.f109731b = realMatrix.getRowDimension();
        this.f109730a = computeCorrelationMatrix(realMatrix);
    }

    public PearsonsCorrelation(Covariance covariance) {
        RealMatrix covarianceMatrix = covariance.getCovarianceMatrix();
        if (covarianceMatrix != null) {
            this.f109731b = covariance.getN();
            this.f109730a = covarianceToCorrelation(covarianceMatrix);
            return;
        }
        throw new NullArgumentException(LocalizedFormats.COVARIANCE_MATRIX, new Object[0]);
    }

    public RealMatrix computeCorrelationMatrix(double[][] dArr) {
        return computeCorrelationMatrix(new BlockRealMatrix(dArr));
    }

    public PearsonsCorrelation(RealMatrix realMatrix, int i) {
        this.f109731b = i;
        this.f109730a = covarianceToCorrelation(realMatrix);
    }
}
