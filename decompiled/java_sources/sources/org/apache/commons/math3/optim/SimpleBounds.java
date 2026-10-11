package org.apache.commons.math3.optim;

import java.util.Arrays;

/* loaded from: classes12.dex */
public class SimpleBounds implements OptimizationData {

    /* renamed from: e */
    public final double[] f109063e;

    /* renamed from: f */
    public final double[] f109064f;

    public SimpleBounds(double[] dArr, double[] dArr2) {
        this.f109063e = (double[]) dArr.clone();
        this.f109064f = (double[]) dArr2.clone();
    }

    public static SimpleBounds unbounded(int i) {
        double[] dArr = new double[i];
        Arrays.fill(dArr, Double.NEGATIVE_INFINITY);
        double[] dArr2 = new double[i];
        Arrays.fill(dArr2, Double.POSITIVE_INFINITY);
        return new SimpleBounds(dArr, dArr2);
    }

    public double[] getLower() {
        return (double[]) this.f109063e.clone();
    }

    public double[] getUpper() {
        return (double[]) this.f109064f.clone();
    }
}
