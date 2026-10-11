package org.apache.commons.math3.analysis.differentiation;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;

/* loaded from: classes12.dex */
public class GradientFunction implements MultivariateVectorFunction {

    /* renamed from: a */
    public final MultivariateDifferentiableFunction f107788a;

    public GradientFunction(MultivariateDifferentiableFunction multivariateDifferentiableFunction) {
        this.f107788a = multivariateDifferentiableFunction;
    }

    @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
    public double[] value(double[] dArr) {
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            derivativeStructureArr[i] = new DerivativeStructure(dArr.length, 1, i, dArr[i]);
        }
        DerivativeStructure value = this.f107788a.value(derivativeStructureArr);
        double[] dArr2 = new double[dArr.length];
        int[] iArr = new int[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            iArr[i2] = 1;
            dArr2[i2] = value.getPartialDerivative(iArr);
            iArr[i2] = 0;
        }
        return dArr2;
    }
}
