package org.apache.commons.math3.optimization.linear;

import java.util.Collection;
import java.util.Collections;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractLinearOptimizer implements LinearOptimizer {
    public static final int DEFAULT_MAX_ITERATIONS = 100;

    /* renamed from: a */
    public LinearObjectiveFunction f109527a;

    /* renamed from: b */
    public Collection<LinearConstraint> f109528b;

    /* renamed from: c */
    public GoalType f109529c;

    /* renamed from: d */
    public boolean f109530d;

    /* renamed from: e */
    public int f109531e;

    /* renamed from: f */
    public int f109532f;

    public AbstractLinearOptimizer() {
        setMaxIterations(100);
    }

    public abstract PointValuePair doOptimize() throws MathIllegalStateException;

    public Collection<LinearConstraint> getConstraints() {
        return Collections.unmodifiableCollection(this.f109528b);
    }

    public LinearObjectiveFunction getFunction() {
        return this.f109527a;
    }

    public GoalType getGoalType() {
        return this.f109529c;
    }

    @Override // org.apache.commons.math3.optimization.linear.LinearOptimizer
    public int getIterations() {
        return this.f109532f;
    }

    @Override // org.apache.commons.math3.optimization.linear.LinearOptimizer
    public int getMaxIterations() {
        return this.f109531e;
    }

    public void incrementIterationsCounter() throws MaxCountExceededException {
        int i = this.f109532f + 1;
        this.f109532f = i;
        if (i > this.f109531e) {
            throw new MaxCountExceededException(Integer.valueOf(this.f109531e));
        }
    }

    @Override // org.apache.commons.math3.optimization.linear.LinearOptimizer
    public PointValuePair optimize(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z) throws MathIllegalStateException {
        this.f109527a = linearObjectiveFunction;
        this.f109528b = collection;
        this.f109529c = goalType;
        this.f109530d = z;
        this.f109532f = 0;
        return doOptimize();
    }

    public boolean restrictToNonNegative() {
        return this.f109530d;
    }

    @Override // org.apache.commons.math3.optimization.linear.LinearOptimizer
    public void setMaxIterations(int i) {
        this.f109531e = i;
    }
}
