package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractDifferentiableUnivariateSolver extends BaseAbstractUnivariateSolver<DifferentiableUnivariateFunction> implements DifferentiableUnivariateSolver {

    /* renamed from: k */
    public UnivariateFunction f107949k;

    public AbstractDifferentiableUnivariateSolver(double d) {
        super(d);
    }

    public double computeDerivativeObjectiveValue(double d) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.f107949k.value(d);
    }

    public AbstractDifferentiableUnivariateSolver(double d, double d2, double d3) {
        super(d, d2, d3);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public void setup(int i, DifferentiableUnivariateFunction differentiableUnivariateFunction, double d, double d2, double d3) {
        super.setup(i, (int) differentiableUnivariateFunction, d, d2, d3);
        this.f107949k = differentiableUnivariateFunction.derivative();
    }
}
