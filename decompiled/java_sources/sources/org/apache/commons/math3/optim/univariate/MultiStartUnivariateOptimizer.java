package org.apache.commons.math3.optim.univariate;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.MaxEval;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.random.RandomGenerator;

/* loaded from: classes12.dex */
public class MultiStartUnivariateOptimizer extends UnivariateOptimizer {

    /* renamed from: g */
    public final UnivariateOptimizer f109282g;

    /* renamed from: h */
    public int f109283h;

    /* renamed from: i */
    public int f109284i;

    /* renamed from: j */
    public RandomGenerator f109285j;

    /* renamed from: k */
    public UnivariatePointValuePair[] f109286k;

    /* renamed from: l */
    public OptimizationData[] f109287l;

    /* renamed from: m */
    public int f109288m;

    /* renamed from: n */
    public int f109289n;

    /* renamed from: org.apache.commons.math3.optim.univariate.MultiStartUnivariateOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19234a implements Comparator<UnivariatePointValuePair> {

        /* renamed from: e */
        public final /* synthetic */ GoalType f109290e;

        public C19234a(GoalType goalType) {
            this.f109290e = goalType;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2) {
            if (univariatePointValuePair == null) {
                return univariatePointValuePair2 == null ? 0 : 1;
            }
            if (univariatePointValuePair2 == null) {
                return -1;
            }
            double value = univariatePointValuePair.getValue();
            double value2 = univariatePointValuePair2.getValue();
            return this.f109290e == GoalType.MINIMIZE ? Double.compare(value, value2) : Double.compare(value2, value);
        }
    }

    public MultiStartUnivariateOptimizer(UnivariateOptimizer univariateOptimizer, int i, RandomGenerator randomGenerator) {
        super(univariateOptimizer.getConvergenceChecker());
        this.f109288m = -1;
        this.f109289n = -1;
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f109282g = univariateOptimizer;
        this.f109284i = i;
        this.f109285j = randomGenerator;
    }

    /* renamed from: a */
    public final void m67988a(GoalType goalType) {
        Arrays.sort(this.f109286k, new C19234a(goalType));
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public int getEvaluations() {
        return this.f109283h;
    }

    public UnivariatePointValuePair[] getOptima() {
        UnivariatePointValuePair[] univariatePointValuePairArr = this.f109286k;
        if (univariatePointValuePairArr != null) {
            return (UnivariatePointValuePair[]) univariatePointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public UnivariatePointValuePair doOptimize() {
        int i = 0;
        while (true) {
            OptimizationData[] optimizationDataArr = this.f109287l;
            if (i >= optimizationDataArr.length) {
                break;
            }
            OptimizationData optimizationData = optimizationDataArr[i];
            if (optimizationData instanceof MaxEval) {
                optimizationDataArr[i] = null;
                this.f109288m = i;
            } else if (optimizationData instanceof SearchInterval) {
                optimizationDataArr[i] = null;
                this.f109289n = i;
            }
            i++;
        }
        if (this.f109288m != -1) {
            if (this.f109289n != -1) {
                this.f109286k = new UnivariatePointValuePair[this.f109284i];
                this.f109283h = 0;
                int maxEvaluations = getMaxEvaluations();
                double min = getMin();
                double max = getMax();
                double startValue = getStartValue();
                int i2 = 0;
                RuntimeException e = null;
                while (i2 < this.f109284i) {
                    try {
                        this.f109287l[this.f109288m] = new MaxEval(maxEvaluations - this.f109283h);
                        this.f109287l[this.f109289n] = new SearchInterval(min, max, i2 == 0 ? startValue : (this.f109285j.nextDouble() * (max - min)) + min);
                        this.f109286k[i2] = this.f109282g.optimize(this.f109287l);
                    } catch (RuntimeException e2) {
                        e = e2;
                        this.f109286k[i2] = null;
                    }
                    this.f109283h += this.f109282g.getEvaluations();
                    i2++;
                }
                m67988a(getGoalType());
                UnivariatePointValuePair univariatePointValuePair = this.f109286k[0];
                if (univariatePointValuePair != null) {
                    return univariatePointValuePair;
                }
                throw e;
            }
            throw new MathIllegalStateException();
        }
        throw new MathIllegalStateException();
    }

    @Override // org.apache.commons.math3.optim.univariate.UnivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public UnivariatePointValuePair optimize(OptimizationData... optimizationDataArr) {
        this.f109287l = optimizationDataArr;
        return super.optimize(optimizationDataArr);
    }
}
