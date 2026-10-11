package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.RealMatrix;

/* loaded from: classes12.dex */
public class LeastSquaresConverter implements MultivariateFunction {

    /* renamed from: e */
    public final MultivariateVectorFunction f109089e;

    /* renamed from: f */
    public final double[] f109090f;

    /* renamed from: g */
    public final double[] f109091g;

    /* renamed from: h */
    public final RealMatrix f109092h;

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr) {
        this.f109089e = multivariateVectorFunction;
        this.f109090f = (double[]) dArr.clone();
        this.f109091g = null;
        this.f109092h = null;
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) {
        double[] value = this.f109089e.value(dArr);
        if (value.length != this.f109090f.length) {
            throw new DimensionMismatchException(value.length, this.f109090f.length);
        }
        int i = 0;
        for (int i2 = 0; i2 < value.length; i2++) {
            value[i2] = value[i2] - this.f109090f[i2];
        }
        double d = 0.0d;
        if (this.f109091g != null) {
            while (i < value.length) {
                double d2 = value[i];
                d += this.f109091g[i] * d2 * d2;
                i++;
            }
        } else {
            RealMatrix realMatrix = this.f109092h;
            if (realMatrix != null) {
                double[] operate = realMatrix.operate(value);
                int length = operate.length;
                while (i < length) {
                    double d3 = operate[i];
                    d += d3 * d3;
                    i++;
                }
            } else {
                int length2 = value.length;
                while (i < length2) {
                    double d4 = value[i];
                    d += d4 * d4;
                    i++;
                }
            }
        }
        return d;
    }

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr, double[] dArr2) {
        if (dArr.length == dArr2.length) {
            this.f109089e = multivariateVectorFunction;
            this.f109090f = (double[]) dArr.clone();
            this.f109091g = (double[]) dArr2.clone();
            this.f109092h = null;
            return;
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr, RealMatrix realMatrix) {
        if (dArr.length == realMatrix.getColumnDimension()) {
            this.f109089e = multivariateVectorFunction;
            this.f109090f = (double[]) dArr.clone();
            this.f109091g = null;
            this.f109092h = realMatrix.copy();
            return;
        }
        throw new DimensionMismatchException(dArr.length, realMatrix.getColumnDimension());
    }
}
