package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class NewtonRaphsonSolver extends AbstractUnivariateDifferentiableSolver {

    /* renamed from: l */
    public static final double f107988l = 1.0E-6d;

    public NewtonRaphsonSolver() {
        this(1.0E-6d);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public double doSolve() throws TooManyEvaluationsException {
        double startValue = getStartValue();
        double absoluteAccuracy = getAbsoluteAccuracy();
        while (true) {
            DerivativeStructure computeObjectiveValueAndDerivative = computeObjectiveValueAndDerivative(startValue);
            double value = startValue - (computeObjectiveValueAndDerivative.getValue() / computeObjectiveValueAndDerivative.getPartialDerivative(1));
            if (FastMath.abs(value - startValue) <= absoluteAccuracy) {
                return value;
            }
            startValue = value;
        }
    }

    public NewtonRaphsonSolver(double d) {
        super(d);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver, org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, UnivariateDifferentiableFunction univariateDifferentiableFunction, double d, double d2) throws TooManyEvaluationsException {
        return super.solve(i, univariateDifferentiableFunction, UnivariateSolverUtils.midpoint(d, d2));
    }
}
