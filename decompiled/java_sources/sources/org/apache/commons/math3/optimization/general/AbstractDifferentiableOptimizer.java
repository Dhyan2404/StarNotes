package org.apache.commons.math3.optimization.general;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.differentiation.GradientFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractDifferentiableOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateDifferentiableFunction> {

    /* renamed from: g */
    public MultivariateVectorFunction f109498g;

    public AbstractDifferentiableOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public double[] computeObjectiveGradient(double[] dArr) {
        return this.f109498g.value(dArr);
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    @Deprecated
    public PointValuePair optimizeInternal(int i, MultivariateDifferentiableFunction multivariateDifferentiableFunction, GoalType goalType, double[] dArr) {
        return optimizeInternal(i, multivariateDifferentiableFunction, goalType, new InitialGuess(dArr));
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair optimizeInternal(int i, MultivariateDifferentiableFunction multivariateDifferentiableFunction, GoalType goalType, OptimizationData... optimizationDataArr) {
        this.f109498g = new GradientFunction(multivariateDifferentiableFunction);
        return super.optimizeInternal(i, (int) multivariateDifferentiableFunction, goalType, optimizationDataArr);
    }
}
