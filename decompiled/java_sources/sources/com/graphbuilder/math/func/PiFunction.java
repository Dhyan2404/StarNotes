package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class PiFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 0;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return 3.141592653589793d;
    }

    public String toString() {
        return "pi()";
    }
}
