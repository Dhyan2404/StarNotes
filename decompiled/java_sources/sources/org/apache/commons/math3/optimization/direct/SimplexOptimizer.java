package org.apache.commons.math3.optimization.direct;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleValueChecker;

@Deprecated
/* loaded from: classes12.dex */
public class SimplexOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateFunction> implements MultivariateOptimizer {

    /* renamed from: g */
    public AbstractSimplex f109475g;

    /* renamed from: org.apache.commons.math3.optimization.direct.SimplexOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19245a implements MultivariateFunction {
        public C19245a() {
        }

        @Override // org.apache.commons.math3.analysis.MultivariateFunction
        public double value(double[] dArr) {
            return SimplexOptimizer.this.computeObjectiveValue(dArr);
        }
    }

    /* renamed from: org.apache.commons.math3.optimization.direct.SimplexOptimizer$b */
    /* loaded from: classes12.dex */
    public class C19246b implements Comparator<PointValuePair> {

        /* renamed from: e */
        public final /* synthetic */ boolean f109477e;

        public C19246b(boolean z) {
            this.f109477e = z;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
            double doubleValue = pointValuePair.getValue().doubleValue();
            double doubleValue2 = pointValuePair2.getValue().doubleValue();
            return this.f109477e ? Double.compare(doubleValue, doubleValue2) : Double.compare(doubleValue2, doubleValue);
        }
    }

    @Deprecated
    public SimplexOptimizer() {
        this(new SimpleValueChecker());
    }

    /* renamed from: b */
    private void m68057b(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof AbstractSimplex) {
                this.f109475g = (AbstractSimplex) optimizationData;
            }
        }
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair doOptimize() {
        if (this.f109475g == null) {
            throw new NullArgumentException();
        }
        C19245a c19245a = new C19245a();
        C19246b c19246b = new C19246b(getGoalType() == GoalType.MINIMIZE);
        this.f109475g.build(getStartPoint());
        this.f109475g.evaluate(c19245a, c19246b);
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        PointValuePair[] pointValuePairArr = null;
        int i = 0;
        while (true) {
            if (i > 0) {
                boolean z = true;
                for (int i2 = 0; i2 < this.f109475g.getSize(); i2++) {
                    z = z && convergenceChecker.converged(i, pointValuePairArr[i2], this.f109475g.getPoint(i2));
                }
                if (z) {
                    return this.f109475g.getPoint(0);
                }
            }
            pointValuePairArr = this.f109475g.getPoints();
            this.f109475g.iterate(c19245a, c19246b);
            i++;
        }
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair optimizeInternal(int i, MultivariateFunction multivariateFunction, GoalType goalType, OptimizationData... optimizationDataArr) {
        m68057b(optimizationDataArr);
        return super.optimizeInternal(i, (int) multivariateFunction, goalType, optimizationDataArr);
    }

    @Deprecated
    public void setSimplex(AbstractSimplex abstractSimplex) {
        m68057b(abstractSimplex);
    }

    public SimplexOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public SimplexOptimizer(double d, double d2) {
        this(new SimpleValueChecker(d, d2));
    }
}
