package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class TanhFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 1;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        double pow = Math.pow(2.718281828459045d, dArr[0] * 2.0d);
        return (pow - 1.0d) / (pow + 1.0d);
    }

    public String toString() {
        return "tanh(x)";
    }
}
