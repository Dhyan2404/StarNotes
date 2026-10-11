package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

/* loaded from: classes12.dex */
public abstract class BaseMultivariateOptimizer<PAIR> extends BaseOptimizer<PAIR> {

    /* renamed from: b */
    public double[] f109056b;

    /* renamed from: c */
    public double[] f109057c;

    /* renamed from: d */
    public double[] f109058d;

    public BaseMultivariateOptimizer(ConvergenceChecker<PAIR> convergenceChecker) {
        super(convergenceChecker);
    }

    /* renamed from: a */
    public final void m67903a() {
        double[] dArr = this.f109056b;
        if (dArr != null) {
            int length = dArr.length;
            double[] dArr2 = this.f109057c;
            if (dArr2 != null) {
                if (dArr2.length != length) {
                    throw new DimensionMismatchException(this.f109057c.length, length);
                }
                for (int i = 0; i < length; i++) {
                    double d = this.f109056b[i];
                    double d2 = this.f109057c[i];
                    if (d < d2) {
                        throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(d2), true);
                    }
                }
            }
            double[] dArr3 = this.f109058d;
            if (dArr3 != null) {
                if (dArr3.length != length) {
                    throw new DimensionMismatchException(this.f109058d.length, length);
                }
                for (int i2 = 0; i2 < length; i2++) {
                    double d3 = this.f109056b[i2];
                    double d4 = this.f109058d[i2];
                    if (d3 > d4) {
                        throw new NumberIsTooLargeException(Double.valueOf(d3), Double.valueOf(d4), true);
                    }
                }
            }
        }
    }

    public double[] getLowerBound() {
        double[] dArr = this.f109057c;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public double[] getStartPoint() {
        double[] dArr = this.f109056b;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public double[] getUpperBound() {
        double[] dArr = this.f109058d;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PAIR optimize(OptimizationData... optimizationDataArr) {
        return (PAIR) super.optimize(optimizationDataArr);
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof InitialGuess) {
                this.f109056b = ((InitialGuess) optimizationData).getInitialGuess();
            } else if (optimizationData instanceof SimpleBounds) {
                SimpleBounds simpleBounds = (SimpleBounds) optimizationData;
                this.f109057c = simpleBounds.getLower();
                this.f109058d = simpleBounds.getUpper();
            }
        }
        m67903a();
    }
}
