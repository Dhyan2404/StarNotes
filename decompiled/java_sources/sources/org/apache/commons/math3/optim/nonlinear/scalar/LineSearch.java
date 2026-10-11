package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.optim.MaxEval;
import org.apache.commons.math3.optim.univariate.BracketFinder;
import org.apache.commons.math3.optim.univariate.BrentOptimizer;
import org.apache.commons.math3.optim.univariate.SearchInterval;
import org.apache.commons.math3.optim.univariate.SimpleUnivariateValueChecker;
import org.apache.commons.math3.optim.univariate.UnivariateObjectiveFunction;
import org.apache.commons.math3.optim.univariate.UnivariateOptimizer;
import org.apache.commons.math3.optim.univariate.UnivariatePointValuePair;

/* loaded from: classes12.dex */
public class LineSearch {

    /* renamed from: e */
    public static final double f109093e = 1.0E-15d;

    /* renamed from: f */
    public static final double f109094f = Double.MIN_VALUE;

    /* renamed from: a */
    public final UnivariateOptimizer f109095a;

    /* renamed from: b */
    public final BracketFinder f109096b = new BracketFinder();

    /* renamed from: c */
    public final double f109097c;

    /* renamed from: d */
    public final MultivariateOptimizer f109098d;

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.LineSearch$a */
    /* loaded from: classes12.dex */
    public class C19219a implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ int f109099e;

        /* renamed from: f */
        public final /* synthetic */ double[] f109100f;

        /* renamed from: g */
        public final /* synthetic */ double[] f109101g;

        public C19219a(int i, double[] dArr, double[] dArr2) {
            this.f109099e = i;
            this.f109100f = dArr;
            this.f109101g = dArr2;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double[] dArr = new double[this.f109099e];
            for (int i = 0; i < this.f109099e; i++) {
                dArr[i] = this.f109100f[i] + (this.f109101g[i] * d);
            }
            return LineSearch.this.f109098d.computeObjectiveValue(dArr);
        }
    }

    public LineSearch(MultivariateOptimizer multivariateOptimizer, double d, double d2, double d3) {
        this.f109098d = multivariateOptimizer;
        this.f109095a = new BrentOptimizer(1.0E-15d, Double.MIN_VALUE, new SimpleUnivariateValueChecker(d, d2));
        this.f109097c = d3;
    }

    public UnivariatePointValuePair search(double[] dArr, double[] dArr2) {
        C19219a c19219a = new C19219a(dArr.length, dArr, dArr2);
        GoalType goalType = this.f109098d.getGoalType();
        this.f109096b.search(c19219a, goalType, 0.0d, this.f109097c);
        return this.f109095a.optimize(new MaxEval(Integer.MAX_VALUE), new UnivariateObjectiveFunction(c19219a), goalType, new SearchInterval(this.f109096b.getLo(), this.f109096b.getHi(), this.f109096b.getMid()));
    }
}
