package com.graphbuilder.math.func;

/* loaded from: classes4.dex */
public class LogFunction implements Function {
    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 1 || i == 2;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return i == 1 ? Math.log(dArr[0]) / Math.log(10.0d) : Math.log(dArr[0]) / Math.log(dArr[1]);
    }

    public String toString() {
        return "log(x):log(x, y)";
    }
}
