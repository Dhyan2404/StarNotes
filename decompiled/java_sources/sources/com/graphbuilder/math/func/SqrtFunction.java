package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class SqrtFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 1;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return Math.sqrt(dArr[0]);
    }

    public String toString() {
        return "sqrt(x)";
    }
}
