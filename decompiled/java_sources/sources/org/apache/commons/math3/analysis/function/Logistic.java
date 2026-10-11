package org.apache.commons.math3.analysis.function;

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

/* loaded from: classes12.dex */
public class Logistic implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* renamed from: e */
    public final double f107799e;

    /* renamed from: f */
    public final double f107800f;

    /* renamed from: g */
    public final double f107801g;

    /* renamed from: h */
    public final double f107802h;

    /* renamed from: i */
    public final double f107803i;

    /* renamed from: j */
    public final double f107804j;

    /* loaded from: classes12.dex */
    public static class Parametric implements ParametricUnivariateFunction {
        /* renamed from: a */
        public final void m67478a(double[] dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 6) {
                throw new DimensionMismatchException(dArr.length, 6);
            }
            if (dArr[5] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[5]));
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            m67478a(dArr);
            double d2 = dArr[2];
            double d3 = dArr[3];
            double d4 = dArr[1] - d;
            double d5 = 1.0d / dArr[5];
            double exp = FastMath.exp(d2 * d4);
            double d6 = d3 * exp;
            double d7 = d6 + 1.0d;
            double pow = ((dArr[0] - dArr[4]) * d5) / FastMath.pow(d7, d5);
            double d8 = (-pow) / d7;
            return new double[]{Logistic.m67477b(d4, 1.0d, d2, d3, 0.0d, d5), d8 * d2 * d6, d6 * d8 * d4, d8 * exp, Logistic.m67477b(d4, 0.0d, d2, d3, 1.0d, d5), pow * FastMath.log(d7) * d5};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d, double... dArr) throws NullArgumentException, DimensionMismatchException, NotStrictlyPositiveException {
            m67478a(dArr);
            return Logistic.m67477b(dArr[1] - d, dArr[0], dArr[2], dArr[3], dArr[4], 1.0d / dArr[5]);
        }
    }

    public Logistic(double d, double d2, double d3, double d4, double d5, double d6) throws NotStrictlyPositiveException {
        if (d6 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d6));
        }
        this.f107800f = d;
        this.f107804j = d2;
        this.f107801g = d3;
        this.f107803i = d4;
        this.f107799e = d5;
        this.f107802h = 1.0d / d6;
    }

    /* renamed from: b */
    public static double m67477b(double d, double d2, double d3, double d4, double d5, double d6) {
        return d5 + ((d2 - d5) / FastMath.pow((d4 * FastMath.exp(d3 * d)) + 1.0d, d6));
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return m67477b(this.f107804j - d, this.f107800f, this.f107801g, this.f107803i, this.f107799e, this.f107802h);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return derivativeStructure.negate().add(this.f107804j).multiply(this.f107801g).exp().multiply(this.f107803i).add(1.0d).pow(this.f107802h).reciprocal().multiply(this.f107800f - this.f107799e).add(this.f107799e);
    }
}
