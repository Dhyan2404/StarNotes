package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

/* loaded from: classes12.dex */
public abstract class AbstractUnivariateDifferentiableSolver extends BaseAbstractUnivariateSolver<UnivariateDifferentiableFunction> implements UnivariateDifferentiableSolver {

    /* renamed from: k */
    public UnivariateDifferentiableFunction f107951k;

    public AbstractUnivariateDifferentiableSolver(double d) {
        super(d);
    }

    public DerivativeStructure computeObjectiveValueAndDerivative(double d) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.f107951k.value(new DerivativeStructure(1, 1, 0, d));
    }

    public AbstractUnivariateDifferentiableSolver(double d, double d2, double d3) {
        super(d, d2, d3);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public void setup(int i, UnivariateDifferentiableFunction univariateDifferentiableFunction, double d, double d2, double d3) {
        super.setup(i, (int) univariateDifferentiableFunction, d, d2, d3);
        this.f107951k = univariateDifferentiableFunction;
    }
}
