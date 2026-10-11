package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.optim.OptimizationData;

/* loaded from: classes12.dex */
public class UnivariateObjectiveFunction implements OptimizationData {

    /* renamed from: e */
    public final UnivariateFunction f109297e;

    public UnivariateObjectiveFunction(UnivariateFunction univariateFunction) {
        this.f109297e = univariateFunction;
    }

    public UnivariateFunction getObjectiveFunction() {
        return this.f109297e;
    }
}
