package org.apache.commons.math3.optim;

/* loaded from: classes12.dex */
public class InitialGuess implements OptimizationData {

    /* renamed from: e */
    public final double[] f109060e;

    public InitialGuess(double[] dArr) {
        this.f109060e = (double[]) dArr.clone();
    }

    public double[] getInitialGuess() {
        return (double[]) this.f109060e.clone();
    }
}
