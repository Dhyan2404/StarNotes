package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class LgFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 1;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return Math.log(dArr[0]) / Math.log(2.0d);
    }

    public String toString() {
        return "lg(x)";
    }
}
