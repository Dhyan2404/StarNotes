package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.SimpleValueChecker;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;

/* loaded from: classes12.dex */
public class SimplexOptimizer extends MultivariateOptimizer {

    /* renamed from: g */
    public AbstractSimplex f109232g;

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.noderiv.SimplexOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19231a implements MultivariateFunction {
        public C19231a() {
        }

        @Override // org.apache.commons.math3.analysis.MultivariateFunction
        public double value(double[] dArr) {
            return SimplexOptimizer.this.computeObjectiveValue(dArr);
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.noderiv.SimplexOptimizer$b */
    /* loaded from: classes12.dex */
    public class C19232b implements Comparator<PointValuePair> {

        /* renamed from: e */
        public final /* synthetic */ boolean f109234e;

        public C19232b(boolean z) {
            this.f109234e = z;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
            double doubleValue = pointValuePair.getValue().doubleValue();
            double doubleValue2 = pointValuePair2.getValue().doubleValue();
            return this.f109234e ? Double.compare(doubleValue, doubleValue2) : Double.compare(doubleValue2, doubleValue);
        }
    }

    public SimplexOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    /* renamed from: a */
    private void m67972a() {
        if (this.f109232g == null) {
            throw new NullArgumentException();
        }
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof AbstractSimplex) {
                this.f109232g = (AbstractSimplex) optimizationData;
                return;
            }
        }
    }

    public SimplexOptimizer(double d, double d2) {
        this(new SimpleValueChecker(d, d2));
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair doOptimize() {
        m67972a();
        C19231a c19231a = new C19231a();
        C19232b c19232b = new C19232b(getGoalType() == GoalType.MINIMIZE);
        this.f109232g.build(getStartPoint());
        this.f109232g.evaluate(c19231a, c19232b);
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        PointValuePair[] pointValuePairArr = null;
        while (true) {
            if (getIterations() > 0) {
                boolean z = true;
                for (int i = 0; i < this.f109232g.getSize(); i++) {
                    z = z && convergenceChecker.converged(0, pointValuePairArr[i], this.f109232g.getPoint(i));
                }
                if (z) {
                    return this.f109232g.getPoint(0);
                }
            }
            pointValuePairArr = this.f109232g.getPoints();
            this.f109232g.iterate(c19231a, c19232b);
            incrementIterationCount();
        }
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) {
        return super.optimize(optimizationDataArr);
    }
}
