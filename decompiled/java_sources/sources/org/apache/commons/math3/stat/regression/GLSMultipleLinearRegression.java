package org.apache.commons.math3.stat.regression;

import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

/* loaded from: classes12.dex */
public class GLSMultipleLinearRegression extends AbstractMultipleLinearRegression {

    /* renamed from: d */
    public RealMatrix f109784d;

    /* renamed from: e */
    public RealMatrix f109785e;

    @Override // org.apache.commons.math3.stat.regression.AbstractMultipleLinearRegression
    public RealVector calculateBeta() {
        RealMatrix omegaInverse = getOmegaInverse();
        RealMatrix transpose = getX().transpose();
        return new LUDecomposition(transpose.multiply(omegaInverse).multiply(getX())).getSolver().getInverse().multiply(transpose).multiply(omegaInverse).operate(getY());
    }

    @Override // org.apache.commons.math3.stat.regression.AbstractMultipleLinearRegression
    public RealMatrix calculateBetaVariance() {
        return new LUDecomposition(getX().transpose().multiply(getOmegaInverse()).multiply(getX())).getSolver().getInverse();
    }

    @Override // org.apache.commons.math3.stat.regression.AbstractMultipleLinearRegression
    public double calculateErrorVariance() {
        RealVector calculateResiduals = calculateResiduals();
        return calculateResiduals.dotProduct(getOmegaInverse().operate(calculateResiduals)) / (getX().getRowDimension() - getX().getColumnDimension());
    }

    public RealMatrix getOmegaInverse() {
        if (this.f109785e == null) {
            this.f109785e = new LUDecomposition(this.f109784d).getSolver().getInverse();
        }
        return this.f109785e;
    }

    public void newCovarianceData(double[][] dArr) {
        this.f109784d = new Array2DRowRealMatrix(dArr);
        this.f109785e = null;
    }

    public void newSampleData(double[] dArr, double[][] dArr2, double[][] dArr3) {
        validateSampleData(dArr2, dArr);
        newYSampleData(dArr);
        newXSampleData(dArr2);
        validateCovarianceData(dArr2, dArr3);
        newCovarianceData(dArr3);
    }
}
