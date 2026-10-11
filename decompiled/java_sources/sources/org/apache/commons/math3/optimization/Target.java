package org.apache.commons.math3.optimization;

@Deprecated
/* loaded from: classes12.dex */
public class Target implements OptimizationData {

    /* renamed from: a */
    public final double[] f109337a;

    public Target(double[] dArr) {
        this.f109337a = (double[]) dArr.clone();
    }

    public double[] getTarget() {
        return (double[]) this.f109337a.clone();
    }
}
