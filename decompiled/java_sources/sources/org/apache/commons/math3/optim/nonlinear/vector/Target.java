package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.optim.OptimizationData;

@Deprecated
/* loaded from: classes12.dex */
public class Target implements OptimizationData {

    /* renamed from: e */
    public final double[] f109247e;

    public Target(double[] dArr) {
        this.f109247e = (double[]) dArr.clone();
    }

    public double[] getTarget() {
        return (double[]) this.f109247e.clone();
    }
}
