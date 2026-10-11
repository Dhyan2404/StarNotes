package org.apache.commons.math3.stat.regression;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.stat.StatUtils;
import org.apache.commons.math3.stat.descriptive.moment.SecondMoment;

/* loaded from: classes12.dex */
public class OLSMultipleLinearRegression extends AbstractMultipleLinearRegression {

    /* renamed from: d */
    public QRDecomposition f109805d;

    /* renamed from: e */
    public final double f109806e;

    public OLSMultipleLinearRegression() {
        this(0.0d);
    }

    public double calculateAdjustedRSquared() {
        double rowDimension = getX().getRowDimension();
        return 1.0d - (isNoIntercept() ? (1.0d - calculateRSquared()) * (rowDimension / (rowDimension - getX().getColumnDimension())) : (calculateResidualSumOfSquares() * (rowDimension - 1.0d)) / (calculateTotalSumOfSquares() * (rowDimension - getX().getColumnDimension())));
    }

    @Override // org.apache.commons.math3.stat.regression.AbstractMultipleLinearRegression
    public RealVector calculateBeta() {
        return this.f109805d.getSolver().solve(getY());
    }

    @Override // org.apache.commons.math3.stat.regression.AbstractMultipleLinearRegression
    public RealMatrix calculateBetaVariance() {
        int columnDimension = getX().getColumnDimension() - 1;
        RealMatrix inverse = new LUDecomposition(this.f109805d.getR().getSubMatrix(0, columnDimension, 0, columnDimension)).getSolver().getInverse();
        return inverse.multiply(inverse.transpose());
    }

    public RealMatrix calculateHat() {
        RealMatrix q = this.f109805d.getQ();
        int columnDimension = this.f109805d.getR().getColumnDimension();
        int columnDimension2 = q.getColumnDimension();
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(columnDimension2, columnDimension2);
        double[][] dataRef = array2DRowRealMatrix.getDataRef();
        for (int i = 0; i < columnDimension2; i++) {
            for (int i2 = 0; i2 < columnDimension2; i2++) {
                if (i != i2 || i >= columnDimension) {
                    dataRef[i][i2] = 0.0d;
                } else {
                    dataRef[i][i2] = 1.0d;
                }
            }
        }
        return q.multiply(array2DRowRealMatrix).multiply(q.transpose());
    }

    public double calculateRSquared() {
        return 1.0d - (calculateResidualSumOfSquares() / calculateTotalSumOfSquares());
    }

    public double calculateResidualSumOfSquares() {
        RealVector calculateResiduals = calculateResiduals();
        return calculateResiduals.dotProduct(calculateResiduals);
    }

    public double calculateTotalSumOfSquares() {
        return isNoIntercept() ? StatUtils.sumSq(getY().toArray()) : new SecondMoment().evaluate(getY().toArray());
    }

    public void newSampleData(double[] dArr, double[][] dArr2) throws MathIllegalArgumentException {
        validateSampleData(dArr2, dArr);
        newYSampleData(dArr);
        newXSampleData(dArr2);
    }

    @Override // org.apache.commons.math3.stat.regression.AbstractMultipleLinearRegression
    public void newXSampleData(double[][] dArr) {
        super.newXSampleData(dArr);
        this.f109805d = new QRDecomposition(getX(), this.f109806e);
    }

    public OLSMultipleLinearRegression(double d) {
        this.f109805d = null;
        this.f109806e = d;
    }

    @Override // org.apache.commons.math3.stat.regression.AbstractMultipleLinearRegression
    public void newSampleData(double[] dArr, int i, int i2) {
        super.newSampleData(dArr, i, i2);
        this.f109805d = new QRDecomposition(getX(), this.f109806e);
    }
}
