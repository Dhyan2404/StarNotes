package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optim.BaseMultivariateOptimizer;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;

/* loaded from: classes12.dex */
public abstract class MultivariateOptimizer extends BaseMultivariateOptimizer<PointValuePair> {

    /* renamed from: e */
    public MultivariateFunction f109117e;

    /* renamed from: f */
    public GoalType f109118f;

    public MultivariateOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public double computeObjectiveValue(double[] dArr) {
        super.incrementEvaluationCount();
        return this.f109117e.value(dArr);
    }

    public GoalType getGoalType() {
        return this.f109118f;
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof GoalType) {
                this.f109118f = (GoalType) optimizationData;
            } else if (optimizationData instanceof ObjectiveFunction) {
                this.f109117e = ((ObjectiveFunction) optimizationData).getObjectiveFunction();
            }
        }
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return (PointValuePair) super.optimize(optimizationDataArr);
    }
}
