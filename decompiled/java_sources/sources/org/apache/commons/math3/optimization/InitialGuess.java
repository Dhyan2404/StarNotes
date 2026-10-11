package org.apache.commons.math3.optimization;

@Deprecated
/* loaded from: classes12.dex */
public class InitialGuess implements OptimizationData {

    /* renamed from: a */
    public final double[] f109324a;

    public InitialGuess(double[] dArr) {
        this.f109324a = (double[]) dArr.clone();
    }

    public double[] getInitialGuess() {
        return (double[]) this.f109324a.clone();
    }
}
