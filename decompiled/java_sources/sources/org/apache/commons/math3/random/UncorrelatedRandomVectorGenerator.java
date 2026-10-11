package org.apache.commons.math3.random;

import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;

/* loaded from: classes12.dex */
public class UncorrelatedRandomVectorGenerator implements RandomVectorGenerator {

    /* renamed from: a */
    public final NormalizedRandomGenerator f109610a;

    /* renamed from: b */
    public final double[] f109611b;

    /* renamed from: c */
    public final double[] f109612c;

    public UncorrelatedRandomVectorGenerator(double[] dArr, double[] dArr2, NormalizedRandomGenerator normalizedRandomGenerator) {
        if (dArr.length == dArr2.length) {
            this.f109611b = (double[]) dArr.clone();
            this.f109612c = (double[]) dArr2.clone();
            this.f109610a = normalizedRandomGenerator;
            return;
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        int length = this.f109611b.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = this.f109611b[i] + (this.f109612c[i] * this.f109610a.nextNormalizedDouble());
        }
        return dArr;
    }

    public UncorrelatedRandomVectorGenerator(int i, NormalizedRandomGenerator normalizedRandomGenerator) {
        this.f109611b = new double[i];
        double[] dArr = new double[i];
        this.f109612c = dArr;
        Arrays.fill(dArr, 1.0d);
        this.f109610a = normalizedRandomGenerator;
    }
}
