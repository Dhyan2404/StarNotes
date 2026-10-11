package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class FieldEventState<T extends RealFieldElement<T>> {

    /* renamed from: a */
    public final FieldEventHandler<T> f108833a;

    /* renamed from: b */
    public final double f108834b;

    /* renamed from: c */
    public final T f108835c;

    /* renamed from: d */
    public final int f108836d;

    /* renamed from: k */
    public boolean f108843k;

    /* renamed from: n */
    public final BracketedRealFieldUnivariateSolver<T> f108846n;

    /* renamed from: e */
    public T f108837e = null;

    /* renamed from: f */
    public T f108838f = null;

    /* renamed from: g */
    public boolean f108839g = true;

    /* renamed from: h */
    public boolean f108840h = false;

    /* renamed from: i */
    public T f108841i = null;

    /* renamed from: j */
    public T f108842j = null;

    /* renamed from: l */
    public boolean f108844l = true;

    /* renamed from: m */
    public Action f108845m = Action.CONTINUE;

    /* renamed from: org.apache.commons.math3.ode.events.FieldEventState$a */
    /* loaded from: classes12.dex */
    public class C19199a implements RealFieldUnivariateFunction<T> {

        /* renamed from: a */
        public final /* synthetic */ FieldStepInterpolator f108847a;

        public C19199a(FieldStepInterpolator fieldStepInterpolator) {
            this.f108847a = fieldStepInterpolator;
        }

        @Override // org.apache.commons.math3.analysis.RealFieldUnivariateFunction
        public T value(T t) {
            return (T) FieldEventState.this.f108833a.m67884g(this.f108847a.getInterpolatedState(t));
        }
    }

    public FieldEventState(FieldEventHandler<T> fieldEventHandler, double d, T t, int i, BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver) {
        this.f108833a = fieldEventHandler;
        this.f108834b = d;
        this.f108835c = (T) t.abs();
        this.f108836d = i;
        this.f108846n = bracketedRealFieldUnivariateSolver;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v23, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r11v26, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r9v5, types: [org.apache.commons.math3.RealFieldElement] */
    public boolean evaluateStep(FieldStepInterpolator<T> fieldStepInterpolator) throws MaxCountExceededException, NoBracketingException {
        T t;
        T t2;
        int i;
        T t3;
        BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver;
        int i2;
        AllowedSolution allowedSolution;
        C19199a c19199a;
        T t4;
        T t5;
        T t6;
        ?? value;
        T t7;
        this.f108843k = fieldStepInterpolator.isForward();
        T time = fieldStepInterpolator.getCurrentState().getTime();
        RealFieldElement realFieldElement = (RealFieldElement) time.subtract(this.f108837e);
        if (((RealFieldElement) ((RealFieldElement) realFieldElement.abs()).subtract(this.f108835c)).getReal() < 0.0d) {
            return false;
        }
        int max = FastMath.max(1, (int) FastMath.ceil(FastMath.abs(realFieldElement.getReal()) / this.f108834b));
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.divide(max);
        C19199a c19199a2 = new C19199a(fieldStepInterpolator);
        T t8 = this.f108837e;
        T t9 = this.f108838f;
        int i3 = 0;
        T t10 = t8;
        while (i3 < max) {
            T t11 = i3 == max + (-1) ? time : (RealFieldElement) this.f108837e.add(realFieldElement2.multiply(i3 + 1));
            T m67884g = this.f108833a.m67884g(fieldStepInterpolator.getInterpolatedState(t11));
            if (this.f108839g ^ (m67884g.getReal() >= 0.0d)) {
                this.f108844l = ((RealFieldElement) m67884g.subtract(t9)).getReal() >= 0.0d;
                if (this.f108843k) {
                    bracketedRealFieldUnivariateSolver = this.f108846n;
                    i2 = this.f108836d;
                    t = m67884g;
                    c19199a = c19199a2;
                    t2 = t11;
                    t11 = t10;
                    i = i3;
                    t4 = t2;
                    t3 = t10;
                    allowedSolution = AllowedSolution.RIGHT_SIDE;
                } else {
                    t = m67884g;
                    t2 = t11;
                    i = i3;
                    t3 = t10;
                    bracketedRealFieldUnivariateSolver = this.f108846n;
                    i2 = this.f108836d;
                    allowedSolution = AllowedSolution.LEFT_SIDE;
                    c19199a = c19199a2;
                    t4 = t3;
                }
                T solve = bracketedRealFieldUnivariateSolver.solve(i2, c19199a, t11, t4, allowedSolution);
                if (this.f108842j != null) {
                    T t12 = t3;
                    if (((RealFieldElement) ((RealFieldElement) ((RealFieldElement) solve.subtract(t12)).abs()).subtract(this.f108835c)).getReal() <= 0.0d && ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) solve.subtract(this.f108842j)).abs()).subtract(this.f108835c)).getReal() <= 0.0d) {
                        T t13 = t12;
                        while (true) {
                            t13 = (RealFieldElement) (this.f108843k ? t13.add(this.f108835c) : t13.subtract(this.f108835c));
                            value = c19199a2.value(t13);
                            if (!(this.f108839g ^ (value.getReal() >= 0.0d))) {
                                t7 = t2;
                                break;
                            }
                            t7 = t2;
                            if (!(this.f108843k ^ (((RealFieldElement) t13.subtract(t7)).getReal() >= 0.0d))) {
                                break;
                            }
                            t2 = t7;
                        }
                        if (!(this.f108843k ^ (((RealFieldElement) t13.subtract(t7)).getReal() >= 0.0d))) {
                            this.f108841i = solve;
                            this.f108840h = true;
                            return true;
                        }
                        i3 = i - 1;
                        t5 = t13;
                        t6 = value;
                        t9 = t6;
                        t10 = t5;
                    }
                }
                t5 = t2;
                T t14 = this.f108842j;
                if (t14 == null || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t14.subtract(solve)).abs()).subtract(this.f108835c)).getReal() > 0.0d) {
                    this.f108841i = solve;
                    this.f108840h = true;
                    return true;
                }
                t6 = t;
                i3 = i;
                t9 = t6;
                t10 = t5;
            } else {
                t10 = t11;
                t9 = m67884g;
            }
            i3++;
        }
        this.f108840h = false;
        this.f108841i = null;
        return false;
    }

    public T getConvergence() {
        return this.f108835c;
    }

    public FieldEventHandler<T> getEventHandler() {
        return this.f108833a;
    }

    public T getEventTime() {
        if (this.f108840h) {
            return this.f108841i;
        }
        return (T) ((RealFieldElement) this.f108837e.getField().getZero()).add(this.f108843k ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY);
    }

    public double getMaxCheckInterval() {
        return this.f108834b;
    }

    public int getMaxIterationCount() {
        return this.f108836d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reinitializeBegin(FieldStepInterpolator<T> fieldStepInterpolator) throws MaxCountExceededException {
        FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
        this.f108837e = previousState.getTime();
        T m67884g = this.f108833a.m67884g(previousState);
        this.f108838f = m67884g;
        if (m67884g.getReal() == 0.0d) {
            this.f108838f = this.f108833a.m67884g(fieldStepInterpolator.getInterpolatedState((RealFieldElement) this.f108837e.add(FastMath.max(this.f108846n.getAbsoluteAccuracy().getReal(), FastMath.abs(((RealFieldElement) this.f108846n.getRelativeAccuracy().multiply(this.f108837e)).getReal())) * 0.5d)));
        }
        this.f108839g = this.f108838f.getReal() >= 0.0d;
    }

    public FieldODEState<T> reset(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        if (!this.f108840h || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f108841i.subtract(fieldODEStateAndDerivative.getTime())).abs()).subtract(this.f108835c)).getReal() > 0.0d) {
            return null;
        }
        Action action = this.f108845m;
        if (action == Action.RESET_STATE) {
            fieldODEStateAndDerivative = this.f108833a.resetState(fieldODEStateAndDerivative);
        } else if (action != Action.RESET_DERIVATIVES) {
            fieldODEStateAndDerivative = null;
        }
        this.f108840h = false;
        this.f108841i = null;
        return fieldODEStateAndDerivative;
    }

    public void stepAccepted(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        this.f108837e = fieldODEStateAndDerivative.getTime();
        this.f108838f = this.f108833a.m67884g(fieldODEStateAndDerivative);
        if (!this.f108840h || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f108841i.subtract(fieldODEStateAndDerivative.getTime())).abs()).subtract(this.f108835c)).getReal() > 0.0d) {
            this.f108839g = this.f108838f.getReal() >= 0.0d;
            this.f108845m = Action.CONTINUE;
        } else {
            this.f108842j = fieldODEStateAndDerivative.getTime();
            this.f108839g = this.f108844l;
            this.f108845m = this.f108833a.eventOccurred(fieldODEStateAndDerivative, !(r0 ^ this.f108843k));
        }
    }

    public boolean stop() {
        return this.f108845m == Action.STOP;
    }
}
