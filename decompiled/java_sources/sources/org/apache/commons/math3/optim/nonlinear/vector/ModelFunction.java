package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.optim.OptimizationData;

@Deprecated
/* loaded from: classes12.dex */
public class ModelFunction implements OptimizationData {

    /* renamed from: e */
    public final MultivariateVectorFunction f109237e;

    public ModelFunction(MultivariateVectorFunction multivariateVectorFunction) {
        this.f109237e = multivariateVectorFunction;
    }

    public MultivariateVectorFunction getModelFunction() {
        return this.f109237e;
    }
}
