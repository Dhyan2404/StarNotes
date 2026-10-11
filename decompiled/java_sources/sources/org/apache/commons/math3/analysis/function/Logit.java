package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class Logit implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* renamed from: e */
    public final double f107805e;

    /* renamed from: f */
    public final double f107806f;

    /* loaded from: classes12.dex */
    public static class Parametric implements ParametricUnivariateFunction {
        /* renamed from: a */
        public final void m67481a(double[] dArr) throws NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 2) {
                throw new DimensionMismatchException(dArr.length, 2);
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d, double... dArr) throws NullArgumentException, DimensionMismatchException {
            m67481a(dArr);
            return new double[]{1.0d / (dArr[0] - d), 1.0d / (dArr[1] - d)};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d, double... dArr) throws NullArgumentException, DimensionMismatchException {
            m67481a(dArr);
            return Logit.m67480b(d, dArr[0], dArr[1]);
        }
    }

    public Logit() {
        this(0.0d, 1.0d);
    }

    /* renamed from: b */
    public static double m67480b(double d, double d2, double d3) throws OutOfRangeException {
        if (d < d2 || d > d3) {
            throw new OutOfRangeException(Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3));
        }
        return FastMath.log((d - d2) / (d3 - d));
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) throws OutOfRangeException {
        return m67480b(d, this.f107805e, this.f107806f);
    }

    public Logit(double d, double d2) {
        this.f107805e = d;
        this.f107806f = d2;
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws OutOfRangeException {
        double value = derivativeStructure.getValue();
        if (value >= this.f107805e && value <= this.f107806f) {
            int order = derivativeStructure.getOrder() + 1;
            double[] dArr = new double[order];
            double log = FastMath.log((value - this.f107805e) / (this.f107806f - value));
            dArr[0] = log;
            if (Double.isInfinite(log)) {
                if (order > 1) {
                    dArr[1] = Double.POSITIVE_INFINITY;
                }
                for (int i = 2; i < order; i++) {
                    dArr[i] = dArr[i - 2];
                }
            } else {
                double d = 1.0d / (value - this.f107805e);
                double d2 = 1.0d / (this.f107806f - value);
                double d3 = d;
                double d4 = d2;
                for (int i2 = 1; i2 < order; i2++) {
                    dArr[i2] = d3 + d4;
                    d3 *= (-i2) * d;
                    d4 *= i2 * d2;
                }
            }
            return derivativeStructure.compose(dArr);
        }
        throw new OutOfRangeException(Double.valueOf(value), Double.valueOf(this.f107805e), Double.valueOf(this.f107806f));
    }
}
