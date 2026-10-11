package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class ModFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 2;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return dArr[0] % dArr[1];
    }

    public String toString() {
        return "mod(x, y)";
    }
}
