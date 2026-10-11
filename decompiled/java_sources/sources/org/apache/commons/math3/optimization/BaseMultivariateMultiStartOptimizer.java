package org.apache.commons.math3.optimization;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomVectorGenerator;

@Deprecated
/* loaded from: classes12.dex */
public class BaseMultivariateMultiStartOptimizer<FUNC extends MultivariateFunction> implements BaseMultivariateOptimizer<FUNC> {

    /* renamed from: a */
    public final BaseMultivariateOptimizer<FUNC> f109307a;

    /* renamed from: b */
    public int f109308b;

    /* renamed from: c */
    public int f109309c;

    /* renamed from: d */
    public int f109310d;

    /* renamed from: e */
    public RandomVectorGenerator f109311e;

    /* renamed from: f */
    public PointValuePair[] f109312f;

    /* renamed from: org.apache.commons.math3.optimization.BaseMultivariateMultiStartOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19235a implements Comparator<PointValuePair> {

        /* renamed from: e */
        public final /* synthetic */ GoalType f109313e;

        public C19235a(GoalType goalType) {
            this.f109313e = goalType;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
            if (pointValuePair == null) {
                return pointValuePair2 == null ? 0 : 1;
            }
            if (pointValuePair2 == null) {
                return -1;
            }
            double doubleValue = pointValuePair.getValue().doubleValue();
            double doubleValue2 = pointValuePair2.getValue().doubleValue();
            return this.f109313e == GoalType.MINIMIZE ? Double.compare(doubleValue, doubleValue2) : Double.compare(doubleValue2, doubleValue);
        }
    }

    public BaseMultivariateMultiStartOptimizer(BaseMultivariateOptimizer<FUNC> baseMultivariateOptimizer, int i, RandomVectorGenerator randomVectorGenerator) {
        if (baseMultivariateOptimizer == null || randomVectorGenerator == null) {
            throw new NullArgumentException();
        }
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f109307a = baseMultivariateOptimizer;
        this.f109310d = i;
        this.f109311e = randomVectorGenerator;
    }

    /* renamed from: a */
    public final void m67990a(GoalType goalType) {
        Arrays.sort(this.f109312f, new C19235a(goalType));
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<PointValuePair> getConvergenceChecker() {
        return this.f109307a.getConvergenceChecker();
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.f109309c;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.f109308b;
    }

    public PointValuePair[] getOptima() {
        PointValuePair[] pointValuePairArr = this.f109312f;
        if (pointValuePairArr != null) {
            return (PointValuePair[]) pointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override // org.apache.commons.math3.optimization.BaseMultivariateOptimizer
    public PointValuePair optimize(int i, FUNC func, GoalType goalType, double[] dArr) {
        this.f109308b = i;
        this.f109312f = new PointValuePair[this.f109310d];
        this.f109309c = 0;
        int i2 = 0;
        RuntimeException e = null;
        while (i2 < this.f109310d) {
            try {
                this.f109312f[i2] = this.f109307a.optimize(i - this.f109309c, func, goalType, i2 == 0 ? dArr : this.f109311e.nextVector());
            } catch (RuntimeException e2) {
                e = e2;
                this.f109312f[i2] = null;
            }
            this.f109309c += this.f109307a.getEvaluations();
            i2++;
        }
        m67990a(goalType);
        PointValuePair pointValuePair = this.f109312f[0];
        if (pointValuePair != null) {
            return pointValuePair;
        }
        throw e;
    }
}
