package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.optim.nonlinear.vector.JacobianMultivariateVectorOptimizer;
import org.apache.commons.math3.optim.nonlinear.vector.Weight;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractLeastSquaresOptimizer extends JacobianMultivariateVectorOptimizer {

    /* renamed from: i */
    public RealMatrix f109249i;

    /* renamed from: j */
    public double f109250j;

    public AbstractLeastSquaresOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    /* renamed from: b */
    public final RealMatrix m67979b(RealMatrix realMatrix) {
        if (!(realMatrix instanceof DiagonalMatrix)) {
            return new EigenDecomposition(realMatrix).getSquareRoot();
        }
        int rowDimension = realMatrix.getRowDimension();
        DiagonalMatrix diagonalMatrix = new DiagonalMatrix(rowDimension);
        for (int i = 0; i < rowDimension; i++) {
            diagonalMatrix.setEntry(i, i, FastMath.sqrt(realMatrix.getEntry(i, i)));
        }
        return diagonalMatrix;
    }

    public double computeCost(double[] dArr) {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr);
        return FastMath.sqrt(arrayRealVector.dotProduct(getWeight().operate(arrayRealVector)));
    }

    public double[][] computeCovariances(double[] dArr, double d) {
        RealMatrix computeWeightedJacobian = computeWeightedJacobian(dArr);
        return new QRDecomposition(computeWeightedJacobian.transpose().multiply(computeWeightedJacobian), d).getSolver().getInverse().getData();
    }

    public double[] computeResiduals(double[] dArr) {
        double[] target = getTarget();
        if (dArr.length != target.length) {
            throw new DimensionMismatchException(target.length, dArr.length);
        }
        double[] dArr2 = new double[target.length];
        for (int i = 0; i < target.length; i++) {
            dArr2[i] = target[i] - dArr[i];
        }
        return dArr2;
    }

    public double[] computeSigma(double[] dArr, double d) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        double[][] computeCovariances = computeCovariances(dArr, d);
        for (int i = 0; i < length; i++) {
            dArr2[i] = FastMath.sqrt(computeCovariances[i][i]);
        }
        return dArr2;
    }

    public RealMatrix computeWeightedJacobian(double[] dArr) {
        return this.f109249i.multiply(MatrixUtils.createRealMatrix(computeJacobian(dArr)));
    }

    public double getChiSquare() {
        double d = this.f109250j;
        return d * d;
    }

    public double getRMS() {
        return FastMath.sqrt(getChiSquare() / getTargetSize());
    }

    public RealMatrix getWeightSquareRoot() {
        return this.f109249i.copy();
    }

    @Override // org.apache.commons.math3.optim.nonlinear.vector.JacobianMultivariateVectorOptimizer, org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Weight) {
                this.f109249i = m67979b(((Weight) optimizationData).getWeight());
                return;
            }
        }
    }

    public void setCost(double d) {
        this.f109250j = d;
    }

    @Override // org.apache.commons.math3.optim.nonlinear.vector.JacobianMultivariateVectorOptimizer, org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointVectorValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return super.optimize(optimizationDataArr);
    }
}
