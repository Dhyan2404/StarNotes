package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optim.BaseOptimizer;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;

/* loaded from: classes12.dex */
public abstract class UnivariateOptimizer extends BaseOptimizer<UnivariatePointValuePair> {

    /* renamed from: b */
    public UnivariateFunction f109298b;

    /* renamed from: c */
    public GoalType f109299c;

    /* renamed from: d */
    public double f109300d;

    /* renamed from: e */
    public double f109301e;

    /* renamed from: f */
    public double f109302f;

    public UnivariateOptimizer(ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public double computeObjectiveValue(double d) {
        super.incrementEvaluationCount();
        return this.f109298b.value(d);
    }

    public GoalType getGoalType() {
        return this.f109299c;
    }

    public double getMax() {
        return this.f109302f;
    }

    public double getMin() {
        return this.f109301e;
    }

    public double getStartValue() {
        return this.f109300d;
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof SearchInterval) {
                SearchInterval searchInterval = (SearchInterval) optimizationData;
                this.f109301e = searchInterval.getMin();
                this.f109302f = searchInterval.getMax();
                this.f109300d = searchInterval.getStartValue();
            } else if (optimizationData instanceof UnivariateObjectiveFunction) {
                this.f109298b = ((UnivariateObjectiveFunction) optimizationData).getObjectiveFunction();
            } else if (optimizationData instanceof GoalType) {
                this.f109299c = (GoalType) optimizationData;
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public UnivariatePointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return (UnivariatePointValuePair) super.optimize(optimizationDataArr);
    }
}
