package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.optim.OptimizationData;

/* loaded from: classes12.dex */
public class ObjectiveFunctionGradient implements OptimizationData {

    /* renamed from: e */
    public final MultivariateVectorFunction f109120e;

    public ObjectiveFunctionGradient(MultivariateVectorFunction multivariateVectorFunction) {
        this.f109120e = multivariateVectorFunction;
    }

    public MultivariateVectorFunction getObjectiveFunctionGradient() {
        return this.f109120e;
    }
}
