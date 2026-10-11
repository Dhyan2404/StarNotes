package org.apache.commons.math3.optimization;

@Deprecated
/* loaded from: classes12.dex */
public class SimpleBounds implements OptimizationData {

    /* renamed from: a */
    public final double[] f109329a;

    /* renamed from: b */
    public final double[] f109330b;

    public SimpleBounds(double[] dArr, double[] dArr2) {
        this.f109329a = (double[]) dArr.clone();
        this.f109330b = (double[]) dArr2.clone();
    }

    public double[] getLower() {
        return (double[]) this.f109329a.clone();
    }

    public double[] getUpper() {
        return (double[]) this.f109330b.clone();
    }
}
