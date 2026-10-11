package org.apache.commons.math3.analysis.polynomials;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class PolynomialFunctionNewtonForm implements UnivariateDifferentiableFunction {

    /* renamed from: e */
    public double[] f107932e;

    /* renamed from: f */
    public final double[] f107933f;

    /* renamed from: g */
    public final double[] f107934g;

    /* renamed from: h */
    public boolean f107935h;

    public PolynomialFunctionNewtonForm(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        verifyInputArray(dArr, dArr2);
        double[] dArr3 = new double[dArr.length];
        this.f107934g = dArr3;
        double[] dArr4 = new double[dArr2.length];
        this.f107933f = dArr4;
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        this.f107935h = false;
    }

    public static double evaluate(double[] dArr, double[] dArr2, double d) throws NullArgumentException, DimensionMismatchException, NoDataException {
        verifyInputArray(dArr, dArr2);
        int length = dArr2.length;
        double d2 = dArr[length];
        for (int i = length - 1; i >= 0; i--) {
            d2 = dArr[i] + ((d - dArr2[i]) * d2);
        }
        return d2;
    }

    public static void verifyInputArray(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException(LocalizedFormats.EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY);
        }
        if (dArr.length != dArr2.length + 1) {
            throw new DimensionMismatchException(LocalizedFormats.ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1, dArr.length, dArr2.length);
        }
    }

    public void computeCoefficients() {
        int degree = degree();
        this.f107932e = new double[degree + 1];
        for (int i = 0; i <= degree; i++) {
            this.f107932e[i] = 0.0d;
        }
        this.f107932e[0] = this.f107934g[degree];
        for (int i2 = degree - 1; i2 >= 0; i2--) {
            for (int i3 = degree - i2; i3 > 0; i3--) {
                double[] dArr = this.f107932e;
                dArr[i3] = dArr[i3 - 1] - (this.f107933f[i2] * dArr[i3]);
            }
            double[] dArr2 = this.f107932e;
            dArr2[0] = this.f107934g[i2] - (this.f107933f[i2] * dArr2[0]);
        }
        this.f107935h = true;
    }

    public int degree() {
        return this.f107933f.length;
    }

    public double[] getCenters() {
        double[] dArr = this.f107933f;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getCoefficients() {
        if (!this.f107935h) {
            computeCoefficients();
        }
        double[] dArr = this.f107932e;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getNewtonCoefficients() {
        double[] dArr = this.f107934g;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return evaluate(this.f107934g, this.f107933f, d);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        verifyInputArray(this.f107934g, this.f107933f);
        int length = this.f107933f.length;
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(derivativeStructure.getFreeParameters(), derivativeStructure.getOrder(), this.f107934g[length]);
        for (int i = length - 1; i >= 0; i--) {
            derivativeStructure2 = derivativeStructure.subtract(this.f107933f[i]).multiply(derivativeStructure2).add(this.f107934g[i]);
        }
        return derivativeStructure2;
    }
}
