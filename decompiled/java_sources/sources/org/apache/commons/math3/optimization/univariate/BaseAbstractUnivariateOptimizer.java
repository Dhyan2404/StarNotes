package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
/* loaded from: classes12.dex */
public abstract class BaseAbstractUnivariateOptimizer implements UnivariateOptimizer {

    /* renamed from: a */
    public final ConvergenceChecker<UnivariatePointValuePair> f109540a;

    /* renamed from: b */
    public final Incrementor f109541b = new Incrementor();

    /* renamed from: c */
    public GoalType f109542c;

    /* renamed from: d */
    public double f109543d;

    /* renamed from: e */
    public double f109544e;

    /* renamed from: f */
    public double f109545f;

    /* renamed from: g */
    public UnivariateFunction f109546g;

    public BaseAbstractUnivariateOptimizer(ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        this.f109540a = convergenceChecker;
    }

    public double computeObjectiveValue(double d) {
        try {
            this.f109541b.incrementCount();
            return this.f109546g.value(d);
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }

    public abstract UnivariatePointValuePair doOptimize();

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<UnivariatePointValuePair> getConvergenceChecker() {
        return this.f109540a;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.f109541b.getCount();
    }

    public GoalType getGoalType() {
        return this.f109542c;
    }

    public double getMax() {
        return this.f109544e;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.f109541b.getMaximalCount();
    }

    public double getMin() {
        return this.f109543d;
    }

    public double getStartValue() {
        return this.f109545f;
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, UnivariateFunction univariateFunction, GoalType goalType, double d, double d2, double d3) {
        if (univariateFunction == null) {
            throw new NullArgumentException();
        }
        if (goalType != null) {
            this.f109543d = d;
            this.f109544e = d2;
            this.f109545f = d3;
            this.f109542c = goalType;
            this.f109546g = univariateFunction;
            this.f109541b.setMaximalCount(i);
            this.f109541b.resetCount();
            return doOptimize();
        }
        throw new NullArgumentException();
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, UnivariateFunction univariateFunction, GoalType goalType, double d, double d2) {
        return optimize(i, univariateFunction, goalType, d, d2, d + ((d2 - d) * 0.5d));
    }
}
