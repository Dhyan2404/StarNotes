package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class Sigmoid implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* renamed from: e */
    public final double f107808e;

    /* renamed from: f */
    public final double f107809f;

    /* loaded from: classes12.dex */
    public static class Parametric implements ParametricUnivariateFunction {
        /* renamed from: a */
        public final void m67484a(double[] dArr) throws NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 2) {
                throw new DimensionMismatchException(dArr.length, 2);
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d, double... dArr) throws NullArgumentException, DimensionMismatchException {
            m67484a(dArr);
            double exp = 1.0d / (FastMath.exp(-d) + 1.0d);
            return new double[]{1.0d - exp, exp};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d, double... dArr) throws NullArgumentException, DimensionMismatchException {
            m67484a(dArr);
            return Sigmoid.m67483b(d, dArr[0], dArr[1]);
        }
    }

    public Sigmoid() {
        this(0.0d, 1.0d);
    }

    /* renamed from: b */
    public static double m67483b(double d, double d2, double d3) {
        return d2 + ((d3 - d2) / (FastMath.exp(-d) + 1.0d));
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return m67483b(d, this.f107808e, this.f107809f);
    }

    public Sigmoid(double d, double d2) {
        this.f107808e = d;
        this.f107809f = d2;
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        boolean z;
        int i = 1;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double exp = FastMath.exp(-derivativeStructure.getValue());
        boolean z2 = false;
        if (Double.isInfinite(exp)) {
            dArr[0] = this.f107808e;
            Arrays.fill(dArr, 1, order, 0.0d);
        } else {
            double[] dArr2 = new double[order];
            double d = 1.0d;
            double d2 = 1.0d / (exp + 1.0d);
            double d3 = this.f107809f - this.f107808e;
            int i2 = 0;
            while (i2 < order) {
                dArr2[i2] = d;
                int i3 = i2;
                double d4 = 0.0d;
                while (i3 >= 0) {
                    d4 = (d4 * exp) + dArr2[i3];
                    if (i3 > i) {
                        int i4 = i3 - 1;
                        dArr2[i4] = (((i2 - i3) + 2) * dArr2[i3 - 2]) - (i4 * dArr2[i4]);
                        z = false;
                    } else {
                        z = z2;
                        dArr2[z ? 1 : 0] = 0.0d;
                    }
                    i3--;
                    z2 = z;
                    i = 1;
                }
                d3 *= d2;
                dArr[i2] = d4 * d3;
                i2++;
                z2 = z2;
                i = 1;
                d = 1.0d;
            }
            boolean z3 = z2;
            dArr[z3 ? 1 : 0] = dArr[z3 ? 1 : 0] + this.f107808e;
        }
        return derivativeStructure.compose(dArr);
    }
}
