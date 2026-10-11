package org.apache.commons.math3.optimization.fitting;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.optimization.DifferentiableMultivariateVectorOptimizer;

@Deprecated
/* loaded from: classes12.dex */
public class PolynomialFitter extends CurveFitter<PolynomialFunction.Parametric> {

    /* renamed from: d */
    @Deprecated
    public final int f109495d;

    @Deprecated
    public PolynomialFitter(int i, DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer) {
        super(differentiableMultivariateVectorOptimizer);
        this.f109495d = i;
    }

    @Deprecated
    public double[] fit() {
        return fit((PolynomialFitter) new PolynomialFunction.Parametric(), new double[this.f109495d + 1]);
    }

    public double[] fit(int i, double[] dArr) {
        return fit(i, new PolynomialFunction.Parametric(), dArr);
    }

    public PolynomialFitter(DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer) {
        super(differentiableMultivariateVectorOptimizer);
        this.f109495d = -1;
    }

    public double[] fit(double[] dArr) {
        return fit((PolynomialFitter) new PolynomialFunction.Parametric(), dArr);
    }
}
