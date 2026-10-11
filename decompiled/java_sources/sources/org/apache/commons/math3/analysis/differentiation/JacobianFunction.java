package org.apache.commons.math3.analysis.differentiation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;

/* loaded from: classes12.dex */
public class JacobianFunction implements MultivariateMatrixFunction {

    /* renamed from: a */
    public final MultivariateDifferentiableVectorFunction f107789a;

    public JacobianFunction(MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction) {
        this.f107789a = multivariateDifferentiableVectorFunction;
    }

    @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
    public double[][] value(double[] dArr) {
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            derivativeStructureArr[i] = new DerivativeStructure(dArr.length, 1, i, dArr[i]);
        }
        DerivativeStructure[] value = this.f107789a.value(derivativeStructureArr);
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, value.length, dArr.length);
        int[] iArr = new int[dArr.length];
        for (int i2 = 0; i2 < value.length; i2++) {
            for (int i3 = 0; i3 < dArr.length; i3++) {
                iArr[i3] = 1;
                dArr2[i2][i3] = value[i2].getPartialDerivative(iArr);
                iArr[i3] = 0;
            }
        }
        return dArr2;
    }
}
