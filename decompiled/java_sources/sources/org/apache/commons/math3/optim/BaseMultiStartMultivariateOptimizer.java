package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.random.RandomVectorGenerator;

/* loaded from: classes12.dex */
public abstract class BaseMultiStartMultivariateOptimizer<PAIR> extends BaseMultivariateOptimizer<PAIR> {

    /* renamed from: e */
    public final BaseMultivariateOptimizer<PAIR> f109049e;

    /* renamed from: f */
    public int f109050f;

    /* renamed from: g */
    public int f109051g;

    /* renamed from: h */
    public RandomVectorGenerator f109052h;

    /* renamed from: i */
    public OptimizationData[] f109053i;

    /* renamed from: j */
    public int f109054j;

    /* renamed from: k */
    public int f109055k;

    public BaseMultiStartMultivariateOptimizer(BaseMultivariateOptimizer<PAIR> baseMultivariateOptimizer, int i, RandomVectorGenerator randomVectorGenerator) {
        super(baseMultivariateOptimizer.getConvergenceChecker());
        this.f109054j = -1;
        this.f109055k = -1;
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f109049e = baseMultivariateOptimizer;
        this.f109051g = i;
        this.f109052h = randomVectorGenerator;
    }

    public abstract void clear();

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PAIR doOptimize() {
        double[] dArr;
        int i = 0;
        while (true) {
            OptimizationData[] optimizationDataArr = this.f109053i;
            if (i >= optimizationDataArr.length) {
                break;
            }
            if (optimizationDataArr[i] instanceof MaxEval) {
                optimizationDataArr[i] = null;
                this.f109054j = i;
            }
            if (optimizationDataArr[i] instanceof InitialGuess) {
                optimizationDataArr[i] = null;
                this.f109055k = i;
            }
            i++;
        }
        if (this.f109054j == -1) {
            throw new MathIllegalStateException();
        }
        if (this.f109055k == -1) {
            throw new MathIllegalStateException();
        }
        this.f109050f = 0;
        clear();
        int maxEvaluations = getMaxEvaluations();
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        double[] startPoint = getStartPoint();
        RuntimeException e = null;
        for (int i2 = 0; i2 < this.f109051g; i2++) {
            try {
                this.f109053i[this.f109054j] = new MaxEval(maxEvaluations - this.f109050f);
                if (i2 != 0) {
                    int i3 = 0;
                    dArr = null;
                    while (dArr == null) {
                        int i4 = i3 + 1;
                        if (i3 >= getMaxEvaluations()) {
                            throw new TooManyEvaluationsException(Integer.valueOf(getMaxEvaluations()));
                            break;
                        }
                        double[] nextVector = this.f109052h.nextVector();
                        for (int i5 = 0; nextVector != null && i5 < nextVector.length; i5++) {
                            if ((lowerBound != null && nextVector[i5] < lowerBound[i5]) || (upperBound != null && nextVector[i5] > upperBound[i5])) {
                                nextVector = null;
                            }
                        }
                        double[] dArr2 = nextVector;
                        i3 = i4;
                        dArr = dArr2;
                    }
                } else {
                    dArr = startPoint;
                }
                this.f109053i[this.f109055k] = new InitialGuess(dArr);
                store(this.f109049e.optimize(this.f109053i));
            } catch (RuntimeException e2) {
                e = e2;
            }
            this.f109050f += this.f109049e.getEvaluations();
        }
        PAIR[] optima = getOptima();
        if (optima.length != 0) {
            return optima[0];
        }
        throw e;
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public int getEvaluations() {
        return this.f109050f;
    }

    public abstract PAIR[] getOptima();

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PAIR optimize(OptimizationData... optimizationDataArr) {
        this.f109053i = optimizationDataArr;
        return (PAIR) super.optimize(optimizationDataArr);
    }

    public abstract void store(PAIR pair);
}
