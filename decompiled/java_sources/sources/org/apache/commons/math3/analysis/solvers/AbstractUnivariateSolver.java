package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;

/* loaded from: classes12.dex */
public abstract class AbstractUnivariateSolver extends BaseAbstractUnivariateSolver<UnivariateFunction> implements UnivariateSolver {
    public AbstractUnivariateSolver(double d) {
        super(d);
    }

    public AbstractUnivariateSolver(double d, double d2) {
        super(d, d2);
    }

    public AbstractUnivariateSolver(double d, double d2, double d3) {
        super(d, d2, d3);
    }
}
