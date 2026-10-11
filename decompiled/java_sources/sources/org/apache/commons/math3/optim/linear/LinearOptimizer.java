package org.apache.commons.math3.optim.linear;

import java.util.Collection;
import java.util.Collections;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;

/* loaded from: classes12.dex */
public abstract class LinearOptimizer extends MultivariateOptimizer {

    /* renamed from: g */
    public LinearObjectiveFunction f109072g;

    /* renamed from: h */
    public Collection<LinearConstraint> f109073h;

    /* renamed from: i */
    public boolean f109074i;

    public LinearOptimizer() {
        super(null);
    }

    public Collection<LinearConstraint> getConstraints() {
        return Collections.unmodifiableCollection(this.f109073h);
    }

    public LinearObjectiveFunction getFunction() {
        return this.f109072g;
    }

    public boolean isRestrictedToNonNegative() {
        return this.f109074i;
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof LinearObjectiveFunction) {
                this.f109072g = (LinearObjectiveFunction) optimizationData;
            } else if (optimizationData instanceof LinearConstraintSet) {
                this.f109073h = ((LinearConstraintSet) optimizationData).getConstraints();
            } else if (optimizationData instanceof NonNegativeConstraint) {
                this.f109074i = ((NonNegativeConstraint) optimizationData).isRestrictedToNonNegative();
            }
        }
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyIterationsException {
        return super.optimize(optimizationDataArr);
    }
}
