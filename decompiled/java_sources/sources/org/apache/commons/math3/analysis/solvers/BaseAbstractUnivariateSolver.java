package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public abstract class BaseAbstractUnivariateSolver<FUNC extends UnivariateFunction> implements BaseUnivariateSolver<FUNC> {

    /* renamed from: i */
    public static final double f107952i = 1.0E-14d;

    /* renamed from: j */
    public static final double f107953j = 1.0E-15d;

    /* renamed from: a */
    public final double f107954a;

    /* renamed from: b */
    public final double f107955b;

    /* renamed from: c */
    public final double f107956c;

    /* renamed from: d */
    public IntegerSequence.Incrementor f107957d;

    /* renamed from: e */
    public double f107958e;

    /* renamed from: f */
    public double f107959f;

    /* renamed from: g */
    public double f107960g;

    /* renamed from: h */
    public FUNC f107961h;

    public BaseAbstractUnivariateSolver(double d) {
        this(1.0E-14d, d, 1.0E-15d);
    }

    public double computeObjectiveValue(double d) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.f107961h.value(d);
    }

    public abstract double doSolve() throws TooManyEvaluationsException, NoBracketingException;

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getAbsoluteAccuracy() {
        return this.f107955b;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public int getEvaluations() {
        return this.f107957d.getCount();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getFunctionValueAccuracy() {
        return this.f107954a;
    }

    public double getMax() {
        return this.f107959f;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public int getMaxEvaluations() {
        return this.f107957d.getMaximalCount();
    }

    public double getMin() {
        return this.f107958e;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getRelativeAccuracy() {
        return this.f107956c;
    }

    public double getStartValue() {
        return this.f107960g;
    }

    public void incrementEvaluationCount() throws TooManyEvaluationsException {
        try {
            this.f107957d.increment();
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }

    public boolean isBracketing(double d, double d2) {
        return UnivariateSolverUtils.isBracketing(this.f107961h, d, d2);
    }

    public boolean isSequence(double d, double d2, double d3) {
        return UnivariateSolverUtils.isSequence(d, d2, d3);
    }

    public void setup(int i, FUNC func, double d, double d2, double d3) throws NullArgumentException {
        MathUtils.checkNotNull(func);
        this.f107958e = d;
        this.f107959f = d2;
        this.f107960g = d3;
        this.f107961h = func;
        this.f107957d = this.f107957d.withMaximalCount(i).withStart(0);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d, double d2, double d3) throws TooManyEvaluationsException, NoBracketingException {
        setup(i, func, d, d2, d3);
        return doSolve();
    }

    public void verifyBracketing(double d, double d2) throws NullArgumentException, NoBracketingException {
        UnivariateSolverUtils.verifyBracketing(this.f107961h, d, d2);
    }

    public void verifyInterval(double d, double d2) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifyInterval(d, d2);
    }

    public void verifySequence(double d, double d2, double d3) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifySequence(d, d2, d3);
    }

    public BaseAbstractUnivariateSolver(double d, double d2) {
        this(d, d2, 1.0E-15d);
    }

    public BaseAbstractUnivariateSolver(double d, double d2, double d3) {
        this.f107955b = d2;
        this.f107956c = d;
        this.f107954a = d3;
        this.f107957d = IntegerSequence.Incrementor.create();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d, double d2) {
        return solve(i, func, d, d2, d + ((d2 - d) * 0.5d));
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d) throws TooManyEvaluationsException, NoBracketingException {
        return solve(i, func, Double.NaN, Double.NaN, d);
    }
}
