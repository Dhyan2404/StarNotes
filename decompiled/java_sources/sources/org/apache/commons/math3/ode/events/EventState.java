package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver;
import org.apache.commons.math3.analysis.solvers.PegasusSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class EventState {

    /* renamed from: a */
    public final EventHandler f108816a;

    /* renamed from: b */
    public final double f108817b;

    /* renamed from: c */
    public final double f108818c;

    /* renamed from: d */
    public final int f108819d;

    /* renamed from: l */
    public boolean f108827l;

    /* renamed from: o */
    public final UnivariateSolver f108830o;

    /* renamed from: e */
    public ExpandableStatefulODE f108820e = null;

    /* renamed from: f */
    public double f108821f = Double.NaN;

    /* renamed from: g */
    public double f108822g = Double.NaN;

    /* renamed from: h */
    public boolean f108823h = true;

    /* renamed from: i */
    public boolean f108824i = false;

    /* renamed from: j */
    public double f108825j = Double.NaN;

    /* renamed from: k */
    public double f108826k = Double.NaN;

    /* renamed from: m */
    public boolean f108828m = true;

    /* renamed from: n */
    public EventHandler.Action f108829n = EventHandler.Action.CONTINUE;

    /* loaded from: classes12.dex */
    public static class LocalMaxCountExceededException extends RuntimeException {
        private static final long serialVersionUID = 20120901;
        private final MaxCountExceededException wrapped;

        public LocalMaxCountExceededException(MaxCountExceededException maxCountExceededException) {
            this.wrapped = maxCountExceededException;
        }

        public MaxCountExceededException getException() {
            return this.wrapped;
        }
    }

    /* renamed from: org.apache.commons.math3.ode.events.EventState$a */
    /* loaded from: classes12.dex */
    public class C19198a implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ StepInterpolator f108831e;

        public C19198a(StepInterpolator stepInterpolator) {
            this.f108831e = stepInterpolator;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) throws LocalMaxCountExceededException {
            try {
                this.f108831e.setInterpolatedTime(d);
                return EventState.this.f108816a.mo67880g(d, EventState.this.m67883c(this.f108831e));
            } catch (MaxCountExceededException e) {
                throw new LocalMaxCountExceededException(e);
            }
        }
    }

    public EventState(EventHandler eventHandler, double d, double d2, int i, UnivariateSolver univariateSolver) {
        this.f108816a = eventHandler;
        this.f108817b = d;
        this.f108818c = FastMath.abs(d2);
        this.f108819d = i;
        this.f108830o = univariateSolver;
    }

    /* renamed from: c */
    public final double[] m67883c(StepInterpolator stepInterpolator) {
        double[] dArr = new double[this.f108820e.getTotalDimension()];
        this.f108820e.getPrimaryMapper().insertEquationData(stepInterpolator.getInterpolatedState(), dArr);
        EquationsMapper[] secondaryMappers = this.f108820e.getSecondaryMappers();
        int length = secondaryMappers.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            secondaryMappers[i].insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i2), dArr);
            i++;
            i2++;
        }
        return dArr;
    }

    public boolean evaluateStep(StepInterpolator stepInterpolator) throws MaxCountExceededException, NoBracketingException {
        double d;
        C19198a c19198a;
        C19198a c19198a2;
        int i;
        double forceSide;
        double d2;
        StepInterpolator stepInterpolator2 = stepInterpolator;
        try {
            this.f108827l = stepInterpolator.isForward();
            double currentTime = stepInterpolator.getCurrentTime();
            double d3 = currentTime - this.f108821f;
            boolean z = false;
            if (FastMath.abs(d3) < this.f108818c) {
                return false;
            }
            int max = FastMath.max(1, (int) FastMath.ceil(FastMath.abs(d3) / this.f108817b));
            double d4 = d3 / max;
            C19198a c19198a3 = new C19198a(stepInterpolator2);
            double d5 = this.f108821f;
            double d6 = this.f108822g;
            int i2 = 0;
            double d7 = d5;
            while (i2 < max) {
                double d8 = i2 == max + (-1) ? currentTime : this.f108821f + ((i2 + 1) * d4);
                stepInterpolator2.setInterpolatedTime(d8);
                double mo67880g = this.f108816a.mo67880g(d8, m67883c(stepInterpolator));
                if (this.f108823h ^ (mo67880g >= 0.0d)) {
                    this.f108828m = mo67880g >= d6;
                    UnivariateSolver univariateSolver = this.f108830o;
                    if (univariateSolver instanceof BracketedUnivariateSolver) {
                        BracketedUnivariateSolver bracketedUnivariateSolver = (BracketedUnivariateSolver) univariateSolver;
                        if (this.f108827l) {
                            c19198a2 = c19198a3;
                            i = i2;
                            forceSide = bracketedUnivariateSolver.solve(this.f108819d, (int) c19198a3, d7, d8, AllowedSolution.RIGHT_SIDE);
                        } else {
                            c19198a2 = c19198a3;
                            i = i2;
                            forceSide = bracketedUnivariateSolver.solve(this.f108819d, (int) c19198a2, d8, d7, AllowedSolution.LEFT_SIDE);
                        }
                        d = currentTime;
                    } else {
                        c19198a2 = c19198a3;
                        i = i2;
                        double solve = this.f108827l ? univariateSolver.solve(this.f108819d, c19198a2, d7, d8) : univariateSolver.solve(this.f108819d, c19198a2, d8, d7);
                        int evaluations = this.f108819d - this.f108830o.getEvaluations();
                        d = currentTime;
                        PegasusSolver pegasusSolver = new PegasusSolver(this.f108830o.getRelativeAccuracy(), this.f108830o.getAbsoluteAccuracy());
                        forceSide = this.f108827l ? UnivariateSolverUtils.forceSide(evaluations, c19198a2, pegasusSolver, solve, d7, d8, AllowedSolution.RIGHT_SIDE) : UnivariateSolverUtils.forceSide(evaluations, c19198a2, pegasusSolver, solve, d8, d7, AllowedSolution.LEFT_SIDE);
                    }
                    if (Double.isNaN(this.f108826k) || FastMath.abs(forceSide - d7) > this.f108818c || FastMath.abs(forceSide - this.f108826k) > this.f108818c) {
                        c19198a = c19198a2;
                        if (!Double.isNaN(this.f108826k) && FastMath.abs(this.f108826k - forceSide) <= this.f108818c) {
                            i2 = i;
                        }
                        this.f108825j = forceSide;
                        this.f108824i = true;
                        return true;
                    }
                    while (true) {
                        d2 = this.f108827l ? d7 + this.f108818c : d7 - this.f108818c;
                        c19198a = c19198a2;
                        mo67880g = c19198a.value(d2);
                        if (!(this.f108823h ^ (mo67880g >= 0.0d))) {
                            break;
                        }
                        if (!(this.f108827l ^ (d2 >= d8))) {
                            break;
                        }
                        d7 = d2;
                        c19198a2 = c19198a;
                    }
                    if (!((d2 >= d8) ^ this.f108827l)) {
                        this.f108825j = forceSide;
                        this.f108824i = true;
                        return true;
                    }
                    i2 = i - 1;
                    d8 = d2;
                } else {
                    d = currentTime;
                    c19198a = c19198a3;
                }
                d7 = d8;
                d6 = mo67880g;
                i2++;
                c19198a3 = c19198a;
                currentTime = d;
                z = false;
                stepInterpolator2 = stepInterpolator;
            }
            boolean z2 = z;
            this.f108824i = z2;
            this.f108825j = Double.NaN;
            return z2;
        } catch (LocalMaxCountExceededException e) {
            throw e.getException();
        }
    }

    public double getConvergence() {
        return this.f108818c;
    }

    public EventHandler getEventHandler() {
        return this.f108816a;
    }

    public double getEventTime() {
        return this.f108824i ? this.f108825j : this.f108827l ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
    }

    public double getMaxCheckInterval() {
        return this.f108817b;
    }

    public int getMaxIterationCount() {
        return this.f108819d;
    }

    public void reinitializeBegin(StepInterpolator stepInterpolator) throws MaxCountExceededException {
        double previousTime = stepInterpolator.getPreviousTime();
        this.f108821f = previousTime;
        stepInterpolator.setInterpolatedTime(previousTime);
        double mo67880g = this.f108816a.mo67880g(this.f108821f, m67883c(stepInterpolator));
        this.f108822g = mo67880g;
        if (mo67880g == 0.0d) {
            double max = this.f108821f + (FastMath.max(this.f108830o.getAbsoluteAccuracy(), FastMath.abs(this.f108830o.getRelativeAccuracy() * this.f108821f)) * 0.5d);
            stepInterpolator.setInterpolatedTime(max);
            this.f108822g = this.f108816a.mo67880g(max, m67883c(stepInterpolator));
        }
        this.f108823h = this.f108822g >= 0.0d;
    }

    public boolean reset(double d, double[] dArr) {
        if (!this.f108824i || FastMath.abs(this.f108825j - d) > this.f108818c) {
            return false;
        }
        EventHandler.Action action = this.f108829n;
        EventHandler.Action action2 = EventHandler.Action.RESET_STATE;
        if (action == action2) {
            this.f108816a.resetState(d, dArr);
        }
        this.f108824i = false;
        this.f108825j = Double.NaN;
        EventHandler.Action action3 = this.f108829n;
        return action3 == action2 || action3 == EventHandler.Action.RESET_DERIVATIVES;
    }

    public void setExpandable(ExpandableStatefulODE expandableStatefulODE) {
        this.f108820e = expandableStatefulODE;
    }

    public void stepAccepted(double d, double[] dArr) {
        this.f108821f = d;
        this.f108822g = this.f108816a.mo67880g(d, dArr);
        if (!this.f108824i || FastMath.abs(this.f108825j - d) > this.f108818c) {
            this.f108823h = this.f108822g >= 0.0d;
            this.f108829n = EventHandler.Action.CONTINUE;
        } else {
            this.f108826k = d;
            this.f108823h = this.f108828m;
            this.f108829n = this.f108816a.eventOccurred(d, dArr, !(r0 ^ this.f108827l));
        }
    }

    public boolean stop() {
        return this.f108829n == EventHandler.Action.STOP;
    }
}
