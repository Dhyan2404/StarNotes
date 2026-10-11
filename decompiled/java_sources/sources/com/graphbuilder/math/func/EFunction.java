package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class EFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 0;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return 2.718281828459045d;
    }

    public String toString() {
        return "e()";
    }
}
