package org.apache.commons.math3.analysis.function;

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
public class HarmonicOscillator implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* renamed from: e */
    public final double f107796e;

    /* renamed from: f */
    public final double f107797f;

    /* renamed from: g */
    public final double f107798g;

    /* loaded from: classes12.dex */
    public static class Parametric implements ParametricUnivariateFunction {
        /* renamed from: a */
        public final void m67475a(double[] dArr) throws NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 3) {
                throw new DimensionMismatchException(dArr.length, 3);
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d, double... dArr) throws NullArgumentException, DimensionMismatchException {
            m67475a(dArr);
            double d2 = dArr[0];
            double d3 = (dArr[1] * d) + dArr[2];
            double m67474b = HarmonicOscillator.m67474b(d3, 1.0d);
            double sin = (-d2) * FastMath.sin(d3);
            return new double[]{m67474b, d * sin, sin};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d, double... dArr) throws NullArgumentException, DimensionMismatchException {
            m67475a(dArr);
            return HarmonicOscillator.m67474b((d * dArr[1]) + dArr[2], dArr[0]);
        }
    }

    public HarmonicOscillator(double d, double d2, double d3) {
        this.f107796e = d;
        this.f107797f = d2;
        this.f107798g = d3;
    }

    /* renamed from: b */
    public static double m67474b(double d, double d2) {
        return d2 * FastMath.cos(d);
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return m67474b((this.f107797f * d) + this.f107798g, this.f107796e);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double value = derivativeStructure.getValue();
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double d = (this.f107797f * value) + this.f107798g;
        dArr[0] = this.f107796e * FastMath.cos(d);
        if (order > 1) {
            dArr[1] = (-this.f107796e) * this.f107797f * FastMath.sin(d);
            double d2 = this.f107797f;
            double d3 = (-d2) * d2;
            for (int i = 2; i < order; i++) {
                dArr[i] = dArr[i - 2] * d3;
            }
        }
        return derivativeStructure.compose(dArr);
    }
}
