package org.apache.commons.math3.optimization.univariate;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.random.RandomGenerator;

@Deprecated
/* loaded from: classes12.dex */
public class UnivariateMultiStartOptimizer<FUNC extends UnivariateFunction> implements BaseUnivariateOptimizer<FUNC> {

    /* renamed from: a */
    public final BaseUnivariateOptimizer<FUNC> f109563a;

    /* renamed from: b */
    public int f109564b;

    /* renamed from: c */
    public int f109565c;

    /* renamed from: d */
    public int f109566d;

    /* renamed from: e */
    public RandomGenerator f109567e;

    /* renamed from: f */
    public UnivariatePointValuePair[] f109568f;

    /* renamed from: org.apache.commons.math3.optimization.univariate.UnivariateMultiStartOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19253a implements Comparator<UnivariatePointValuePair> {

        /* renamed from: e */
        public final /* synthetic */ GoalType f109569e;

        public C19253a(GoalType goalType) {
            this.f109569e = goalType;
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
            return this.f109569e == GoalType.MINIMIZE ? Double.compare(value, value2) : Double.compare(value2, value);
        }
    }

    public UnivariateMultiStartOptimizer(BaseUnivariateOptimizer<FUNC> baseUnivariateOptimizer, int i, RandomGenerator randomGenerator) {
        if (baseUnivariateOptimizer == null || randomGenerator == null) {
            throw new NullArgumentException();
        }
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f109563a = baseUnivariateOptimizer;
        this.f109566d = i;
        this.f109567e = randomGenerator;
    }

    /* renamed from: a */
    public final void m68082a(GoalType goalType) {
        Arrays.sort(this.f109568f, new C19253a(goalType));
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<UnivariatePointValuePair> getConvergenceChecker() {
        return this.f109563a.getConvergenceChecker();
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.f109565c;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.f109564b;
    }

    public UnivariatePointValuePair[] getOptima() {
        UnivariatePointValuePair[] univariatePointValuePairArr = this.f109568f;
        if (univariatePointValuePairArr != null) {
            return (UnivariatePointValuePair[]) univariatePointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, FUNC func, GoalType goalType, double d, double d2) {
        return optimize(i, func, goalType, d, d2, d + ((d2 - d) * 0.5d));
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, FUNC func, GoalType goalType, double d, double d2, double d3) {
        double nextDouble;
        this.f109568f = new UnivariatePointValuePair[this.f109566d];
        this.f109565c = 0;
        RuntimeException e = null;
        for (int i2 = 0; i2 < this.f109566d; i2++) {
            if (i2 == 0) {
                nextDouble = d3;
            } else {
                try {
                    nextDouble = d + (this.f109567e.nextDouble() * (d2 - d));
                } catch (RuntimeException e2) {
                    e = e2;
                    this.f109568f[i2] = null;
                }
            }
            this.f109568f[i2] = this.f109563a.optimize(i - this.f109565c, func, goalType, d, d2, nextDouble);
            this.f109565c += this.f109563a.getEvaluations();
        }
        m68082a(goalType);
        UnivariatePointValuePair univariatePointValuePair = this.f109568f[0];
        if (univariatePointValuePair != null) {
            return univariatePointValuePair;
        }
        throw e;
    }
}
