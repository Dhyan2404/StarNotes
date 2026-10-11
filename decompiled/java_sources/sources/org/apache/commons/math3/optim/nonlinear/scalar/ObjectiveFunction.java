package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optim.OptimizationData;

/* loaded from: classes12.dex */
public class ObjectiveFunction implements OptimizationData {

    /* renamed from: e */
    public final MultivariateFunction f109119e;

    public ObjectiveFunction(MultivariateFunction multivariateFunction) {
        this.f109119e = multivariateFunction;
    }

    public MultivariateFunction getObjectiveFunction() {
        return this.f109119e;
    }
}
