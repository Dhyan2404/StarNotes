package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class AvgFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i > 0;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        double d = 0.0d;
        for (int i2 = 0; i2 < i; i2++) {
            d += dArr[i2];
        }
        return d / i;
    }

    public String toString() {
        return "avg(x1, x2, ..., xn)";
    }
}
