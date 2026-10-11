package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;

/* loaded from: classes12.dex */
public abstract class AbstractPolynomialSolver extends BaseAbstractUnivariateSolver<PolynomialFunction> implements PolynomialSolver {

    /* renamed from: k */
    public PolynomialFunction f107950k;

    public AbstractPolynomialSolver(double d) {
        super(d);
    }

    public double[] getCoefficients() {
        return this.f107950k.getCoefficients();
    }

    public AbstractPolynomialSolver(double d, double d2) {
        super(d, d2);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public void setup(int i, PolynomialFunction polynomialFunction, double d, double d2, double d3) {
        super.setup(i, (int) polynomialFunction, d, d2, d3);
        this.f107950k = polynomialFunction;
    }

    public AbstractPolynomialSolver(double d, double d2, double d3) {
        super(d, d2, d3);
    }
}
