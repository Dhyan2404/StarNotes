package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class MultivariateFunctionPenaltyAdapter implements MultivariateFunction {

    /* renamed from: e */
    public final MultivariateFunction f109112e;

    /* renamed from: f */
    public final double[] f109113f;

    /* renamed from: g */
    public final double[] f109114g;

    /* renamed from: h */
    public final double f109115h;

    /* renamed from: i */
    public final double[] f109116i;

    public MultivariateFunctionPenaltyAdapter(MultivariateFunction multivariateFunction, double[] dArr, double[] dArr2, double d, double[] dArr3) {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        MathUtils.checkNotNull(dArr3);
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length != dArr3.length) {
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        for (int i = 0; i < dArr.length; i++) {
            if (dArr2[i] < dArr[i]) {
                throw new NumberIsTooSmallException(Double.valueOf(dArr2[i]), Double.valueOf(dArr[i]), true);
            }
        }
        this.f109112e = multivariateFunction;
        this.f109113f = (double[]) dArr.clone();
        this.f109114g = (double[]) dArr2.clone();
        this.f109115h = d;
        this.f109116i = (double[]) dArr3.clone();
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) {
        double d;
        int i = 0;
        while (i < this.f109116i.length) {
            double d2 = dArr[i];
            if (d2 < this.f109113f[i] || d2 > this.f109114g[i]) {
                double d3 = 0.0d;
                while (true) {
                    double[] dArr2 = this.f109116i;
                    if (i >= dArr2.length) {
                        return this.f109115h + d3;
                    }
                    double d4 = dArr[i];
                    double d5 = this.f109113f[i];
                    if (d4 < d5) {
                        d = dArr2[i] * (d5 - d4);
                    } else {
                        double d6 = this.f109114g[i];
                        d = d4 > d6 ? dArr2[i] * (d4 - d6) : 0.0d;
                    }
                    d3 += FastMath.sqrt(d);
                    i++;
                }
            } else {
                i++;
            }
        }
        return this.f109112e.value(dArr);
    }
}
