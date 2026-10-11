package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.optim.OptimizationData;

@Deprecated
/* loaded from: classes12.dex */
public class ModelFunctionJacobian implements OptimizationData {

    /* renamed from: e */
    public final MultivariateMatrixFunction f109238e;

    public ModelFunctionJacobian(MultivariateMatrixFunction multivariateMatrixFunction) {
        this.f109238e = multivariateMatrixFunction;
    }

    public MultivariateMatrixFunction getModelFunctionJacobian() {
        return this.f109238e;
    }
}
