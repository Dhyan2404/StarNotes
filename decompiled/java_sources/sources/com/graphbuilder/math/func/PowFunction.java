package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class PowFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 2;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return Math.pow(dArr[0], dArr[1]);
    }

    public String toString() {
        return "pow(x, y)";
    }
}
