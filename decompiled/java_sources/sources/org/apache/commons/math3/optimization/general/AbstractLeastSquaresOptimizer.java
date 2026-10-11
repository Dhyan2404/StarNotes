package org.apache.commons.math3.optimization.general;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.DifferentiableMultivariateVectorOptimizer;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.optimization.Target;
import org.apache.commons.math3.optimization.Weight;
import org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateVectorOptimizer;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractLeastSquaresOptimizer extends BaseAbstractMultivariateVectorOptimizer<DifferentiableMultivariateVectorFunction> implements DifferentiableMultivariateVectorOptimizer {

    /* renamed from: j */
    @Deprecated
    public static final double f109499j = 1.0E-14d;

    @Deprecated
    protected int cols;

    @Deprecated
    protected double cost;

    /* renamed from: g */
    public MultivariateDifferentiableVectorFunction f109500g;

    /* renamed from: h */
    public int f109501h;

    /* renamed from: i */
    public RealMatrix f109502i;

    @Deprecated
    protected double[] objective;

    @Deprecated
    protected double[] point;

    @Deprecated
    protected int rows;

    @Deprecated
    protected double[][] weightedResidualJacobian;

    @Deprecated
    protected double[] weightedResiduals;

    @Deprecated
    public AbstractLeastSquaresOptimizer() {
    }

    /* renamed from: c */
    public final RealMatrix m68071c(RealMatrix realMatrix) {
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
        this.f109501h++;
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            derivativeStructureArr[i] = new DerivativeStructure(length, 1, i, dArr[i]);
        }
        DerivativeStructure[] value = this.f109500g.value(derivativeStructureArr);
        int length2 = getTarget().length;
        if (value.length != length2) {
            throw new DimensionMismatchException(value.length, length2);
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length2, length);
        for (int i2 = 0; i2 < length2; i2++) {
            int[] iArr = new int[length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = 1;
                dArr2[i2][i3] = value[i2].getPartialDerivative(iArr);
                iArr[i3] = 0;
            }
        }
        return this.f109502i.multiply(MatrixUtils.createRealMatrix(dArr2));
    }

    public double getChiSquare() {
        double d = this.cost;
        return d * d;
    }

    @Deprecated
    public double[][] getCovariances() {
        return getCovariances(1.0E-14d);
    }

    public int getJacobianEvaluations() {
        return this.f109501h;
    }

    public double getRMS() {
        return FastMath.sqrt(getChiSquare() / this.rows);
    }

    public RealMatrix getWeightSquareRoot() {
        return this.f109502i.copy();
    }

    @Deprecated
    public double[] guessParametersErrors() {
        int i = this.rows;
        int i2 = this.cols;
        if (i <= i2) {
            throw new NumberIsTooSmallException(LocalizedFormats.NO_DEGREES_OF_FREEDOM, Integer.valueOf(this.rows), Integer.valueOf(this.cols), false);
        }
        double[] dArr = new double[i2];
        double sqrt = FastMath.sqrt(getChiSquare() / (this.rows - this.cols));
        double[][] computeCovariances = computeCovariances(this.point, 1.0E-14d);
        for (int i3 = 0; i3 < i2; i3++) {
            dArr[i3] = FastMath.sqrt(computeCovariances[i3][i3]) * sqrt;
        }
        return dArr;
    }

    @Deprecated
    public PointVectorValuePair optimizeInternal(int i, MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction, OptimizationData... optimizationDataArr) {
        return super.optimizeInternal(i, (int) FunctionUtils.toDifferentiableMultivariateVectorFunction(multivariateDifferentiableVectorFunction), optimizationDataArr);
    }

    public void setCost(double d) {
        this.cost = d;
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateVectorOptimizer
    public void setUp() {
        super.setUp();
        this.f109501h = 0;
        this.f109502i = m68071c(getWeight());
        this.f109500g = FunctionUtils.toMultivariateDifferentiableVectorFunction(getObjectiveFunction());
        this.point = getStartPoint();
        this.rows = getTarget().length;
        this.cols = this.point.length;
    }

    @Deprecated
    public void updateJacobian() {
        this.weightedResidualJacobian = computeWeightedJacobian(this.point).scalarMultiply(-1.0d).getData();
    }

    @Deprecated
    public void updateResidualsAndCost() {
        double[] computeObjectiveValue = computeObjectiveValue(this.point);
        this.objective = computeObjectiveValue;
        double[] computeResiduals = computeResiduals(computeObjectiveValue);
        this.cost = computeCost(computeResiduals);
        this.weightedResiduals = this.f109502i.operate(new ArrayRealVector(computeResiduals)).toArray();
    }

    public AbstractLeastSquaresOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    @Deprecated
    public double[][] getCovariances(double d) {
        return computeCovariances(this.point, d);
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateVectorOptimizer, org.apache.commons.math3.optimization.BaseMultivariateVectorOptimizer
    @Deprecated
    public PointVectorValuePair optimize(int i, DifferentiableMultivariateVectorFunction differentiableMultivariateVectorFunction, double[] dArr, double[] dArr2, double[] dArr3) {
        return optimizeInternal(i, FunctionUtils.toMultivariateDifferentiableVectorFunction(differentiableMultivariateVectorFunction), new Target(dArr), new Weight(dArr2), new InitialGuess(dArr3));
    }

    @Deprecated
    public PointVectorValuePair optimize(int i, MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction, double[] dArr, double[] dArr2, double[] dArr3) {
        return optimizeInternal(i, multivariateDifferentiableVectorFunction, new Target(dArr), new Weight(dArr2), new InitialGuess(dArr3));
    }
}
