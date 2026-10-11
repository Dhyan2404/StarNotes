package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.BaseMultivariateOptimizer;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointVectorValuePair;

@Deprecated
/* loaded from: classes12.dex */
public abstract class MultivariateVectorOptimizer extends BaseMultivariateOptimizer<PointVectorValuePair> {

    /* renamed from: e */
    public double[] f109244e;

    /* renamed from: f */
    public RealMatrix f109245f;

    /* renamed from: g */
    public MultivariateVectorFunction f109246g;

    public MultivariateVectorOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    /* renamed from: a */
    private void m67978a() {
        if (this.f109244e.length != this.f109245f.getColumnDimension()) {
            throw new DimensionMismatchException(this.f109244e.length, this.f109245f.getColumnDimension());
        }
    }

    public double[] computeObjectiveValue(double[] dArr) {
        super.incrementEvaluationCount();
        return this.f109246g.value(dArr);
    }

    public double[] getTarget() {
        return (double[]) this.f109244e.clone();
    }

    public int getTargetSize() {
        return this.f109244e.length;
    }

    public RealMatrix getWeight() {
        return this.f109245f.copy();
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof ModelFunction) {
                this.f109246g = ((ModelFunction) optimizationData).getModelFunction();
            } else if (optimizationData instanceof Target) {
                this.f109244e = ((Target) optimizationData).getTarget();
            } else if (optimizationData instanceof Weight) {
                this.f109245f = ((Weight) optimizationData).getWeight();
            }
        }
        m67978a();
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointVectorValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return (PointVectorValuePair) super.optimize(optimizationDataArr);
    }
}
