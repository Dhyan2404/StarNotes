package com.graphbuilder.math.func;

import com.graphbuilder.math.PascalsTriangle;

/* loaded from: classes4.dex */
public class CombinFunction implements Function {

    /* renamed from: a */
    public final PascalsTriangle f38868a = new PascalsTriangle();

    @Override // com.graphbuilder.math.func.Function
    public boolean acceptNumParam(int i) {
        return i == 2;
    }

    @Override // com.graphbuilder.math.func.Function
    /* renamed from: of */
    public double mo30860of(double[] dArr, int i) {
        return this.f38868a.nCr((int) dArr[0], (int) dArr[1]);
    }

    public String toString() {
        return "combin(n, r)";
    }
}
