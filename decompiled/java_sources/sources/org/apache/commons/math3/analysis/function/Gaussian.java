package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class Gaussian implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* renamed from: e */
    public final double f107792e;

    /* renamed from: f */
    public final double f107793f;

    /* renamed from: g */
    public final double f107794g;

    /* renamed from: h */
    public final double f107795h;

    /* loaded from: classes12.dex */
    public static class Parametric implements ParametricUnivariateFunction {
        /* renamed from: a */
        public final void m67472a(double[] dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 3) {
                throw new DimensionMismatchException(dArr.length, 3);
            }
            if (dArr[2] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[2]));
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            m67472a(dArr);
            double d2 = dArr[0];
            double d3 = d - dArr[1];
            double d4 = dArr[2];
            double d5 = 1.0d / ((d4 * 2.0d) * d4);
            double m67471b = Gaussian.m67471b(d3, 1.0d, d5);
            double d6 = d2 * m67471b * 2.0d * d5 * d3;
            return new double[]{m67471b, d6, (d3 * d6) / d4};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            m67472a(dArr);
            double d2 = d - dArr[1];
            double d3 = dArr[2];
            return Gaussian.m67471b(d2, dArr[0], 1.0d / ((2.0d * d3) * d3));
        }
    }

    public Gaussian(double d, double d2, double d3) throws NotStrictlyPositiveException {
        if (d3 > 0.0d) {
            this.f107795h = d;
            this.f107792e = d2;
            double d4 = 1.0d / d3;
            this.f107793f = d4;
            this.f107794g = 0.5d * d4 * d4;
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d3));
    }

    /* renamed from: b */
    public static double m67471b(double d, double d2, double d3) {
        return d2 * FastMath.exp((-d) * d * d3);
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return m67471b(d - this.f107792e, this.f107795h, this.f107794g);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double d;
        double value = this.f107793f * (derivativeStructure.getValue() - this.f107792e);
        int i = 1;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double[] dArr2 = new double[order];
        dArr2[0] = 1.0d;
        double d2 = value * value;
        double exp = this.f107795h * FastMath.exp((-0.5d) * d2);
        if (exp <= Precision.SAFE_MIN) {
            Arrays.fill(dArr, 0.0d);
        } else {
            dArr[0] = exp;
            int i2 = 1;
            while (i2 < order) {
                dArr2[i2] = -dArr2[i2 - 1];
                int i3 = i2;
                double d3 = 0.0d;
                while (i3 >= 0) {
                    d3 = (d3 * d2) + dArr2[i3];
                    if (i3 > 2) {
                        int i4 = i3 - 1;
                        d = d2;
                        dArr2[i3 - 2] = (i4 * dArr2[i4]) - dArr2[i3 - 3];
                        i = 1;
                    } else {
                        d = d2;
                        i = 1;
                        if (i3 == 2) {
                            dArr2[0] = dArr2[1];
                            i3 -= 2;
                            d2 = d;
                        }
                    }
                    i3 -= 2;
                    d2 = d;
                }
                double d4 = d2;
                if ((i2 & 1) == i) {
                    d3 *= value;
                }
                exp *= this.f107793f;
                dArr[i2] = d3 * exp;
                i2++;
                d2 = d4;
            }
        }
        return derivativeStructure.compose(dArr);
    }

    public Gaussian(double d, double d2) throws NotStrictlyPositiveException {
        this(1.0d / (FastMath.sqrt(6.283185307179586d) * d2), d, d2);
    }

    public Gaussian() {
        this(0.0d, 1.0d);
    }
}
