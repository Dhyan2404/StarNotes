package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;

/* loaded from: classes12.dex */
public class LeastSquaresBuilder {

    /* renamed from: a */
    public int f108153a;

    /* renamed from: b */
    public int f108154b;

    /* renamed from: c */
    public ConvergenceChecker<LeastSquaresProblem.Evaluation> f108155c;

    /* renamed from: d */
    public MultivariateJacobianFunction f108156d;

    /* renamed from: e */
    public RealVector f108157e;

    /* renamed from: f */
    public RealVector f108158f;

    /* renamed from: g */
    public RealMatrix f108159g;

    /* renamed from: h */
    public boolean f108160h;

    /* renamed from: i */
    public ParameterValidator f108161i;

    public LeastSquaresProblem build() {
        return LeastSquaresFactory.create(this.f108156d, this.f108157e, this.f108158f, this.f108159g, this.f108155c, this.f108153a, this.f108154b, this.f108160h, this.f108161i);
    }

    public LeastSquaresBuilder checker(ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker) {
        this.f108155c = convergenceChecker;
        return this;
    }

    public LeastSquaresBuilder checkerPair(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        return checker(LeastSquaresFactory.evaluationChecker(convergenceChecker));
    }

    public LeastSquaresBuilder lazyEvaluation(boolean z) {
        this.f108160h = z;
        return this;
    }

    public LeastSquaresBuilder maxEvaluations(int i) {
        this.f108153a = i;
        return this;
    }

    public LeastSquaresBuilder maxIterations(int i) {
        this.f108154b = i;
        return this;
    }

    public LeastSquaresBuilder model(MultivariateVectorFunction multivariateVectorFunction, MultivariateMatrixFunction multivariateMatrixFunction) {
        return model(LeastSquaresFactory.model(multivariateVectorFunction, multivariateMatrixFunction));
    }

    public LeastSquaresBuilder parameterValidator(ParameterValidator parameterValidator) {
        this.f108161i = parameterValidator;
        return this;
    }

    public LeastSquaresBuilder start(RealVector realVector) {
        this.f108158f = realVector;
        return this;
    }

    public LeastSquaresBuilder target(RealVector realVector) {
        this.f108157e = realVector;
        return this;
    }

    public LeastSquaresBuilder weight(RealMatrix realMatrix) {
        this.f108159g = realMatrix;
        return this;
    }

    public LeastSquaresBuilder model(MultivariateJacobianFunction multivariateJacobianFunction) {
        this.f108156d = multivariateJacobianFunction;
        return this;
    }

    public LeastSquaresBuilder start(double[] dArr) {
        return start(new ArrayRealVector(dArr, false));
    }

    public LeastSquaresBuilder target(double[] dArr) {
        return target(new ArrayRealVector(dArr, false));
    }
}
