package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class SignFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 1;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        double d = dArr[0];
        if (d > 0.0d) {
            return 1.0d;
        }
        return d < 0.0d ? -1.0d : 0.0d;
    }

    public String toString() {
        return "sign(x)";
    }
}
