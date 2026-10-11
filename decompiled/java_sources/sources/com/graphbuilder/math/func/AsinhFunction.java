package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class AsinhFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 1;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        double d = dArr[0];
        return Math.log(d + Math.sqrt((d * d) + 1.0d));
    }

    public String toString() {
        return "asinh(x)";
    }
}
