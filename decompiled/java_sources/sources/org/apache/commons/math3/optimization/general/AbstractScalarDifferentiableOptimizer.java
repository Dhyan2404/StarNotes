package org.apache.commons.math3.optimization.general;

import org.apache.commons.math3.analysis.DifferentiableMultivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.DifferentiableMultivariateOptimizer;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractScalarDifferentiableOptimizer extends BaseAbstractMultivariateOptimizer<DifferentiableMultivariateFunction> implements DifferentiableMultivariateOptimizer {

    /* renamed from: g */
    public MultivariateVectorFunction f109503g;

    @Deprecated
    public AbstractScalarDifferentiableOptimizer() {
    }

    public double[] computeObjectiveGradient(double[] dArr) {
        return this.f109503g.value(dArr);
    }

    public PointValuePair optimize(int i, MultivariateDifferentiableFunction multivariateDifferentiableFunction, GoalType goalType, double[] dArr) {
        return optimizeInternal(i, FunctionUtils.toDifferentiableMultivariateFunction(multivariateDifferentiableFunction), goalType, dArr);
    }

    public AbstractScalarDifferentiableOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair optimizeInternal(int i, DifferentiableMultivariateFunction differentiableMultivariateFunction, GoalType goalType, double[] dArr) {
        this.f109503g = differentiableMultivariateFunction.gradient();
        return super.optimizeInternal(i, (int) differentiableMultivariateFunction, goalType, dArr);
    }
}
