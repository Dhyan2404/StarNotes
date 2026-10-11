package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class FactFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 1;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        double d = 1.0d;
        for (int i2 = (int) dArr[0]; i2 > 1; i2--) {
            d *= i2;
        }
        return d;
    }

    public String toString() {
        return "fact(n)";
    }
}
