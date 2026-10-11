package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.LineSearch;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;
import org.apache.commons.math3.optim.univariate.UnivariatePointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class PowellOptimizer extends MultivariateOptimizer {

    /* renamed from: j */
    public static final double f109228j = FastMath.ulp(1.0d) * 2.0d;

    /* renamed from: g */
    public final double f109229g;

    /* renamed from: h */
    public final double f109230h;

    /* renamed from: i */
    public final LineSearch f109231i;

    public PowellOptimizer(double d, double d2, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(d, d2, FastMath.sqrt(d), FastMath.sqrt(d2), convergenceChecker);
    }

    /* renamed from: a */
    private void m67970a() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    /* renamed from: b */
    public final double[][] m67971b(double[] dArr, double[] dArr2, double d) {
        int length = dArr.length;
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        for (int i = 0; i < length; i++) {
            double d2 = dArr2[i] * d;
            dArr4[i] = d2;
            dArr3[i] = dArr[i] + d2;
        }
        return new double[][]{dArr3, dArr4};
    }

    public PowellOptimizer(double d, double d2, double d3, double d4, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d5 = f109228j;
        if (d < d5) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(d5), true);
        }
        if (d2 > 0.0d) {
            this.f109229g = d;
            this.f109230h = d2;
            this.f109231i = new LineSearch(this, d3, d4, 1.0d);
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d2));
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair doOptimize() {
        double d;
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        ConvergenceChecker<PointValuePair> convergenceChecker;
        int i;
        m67970a();
        GoalType goalType = getGoalType();
        double[] startPoint = getStartPoint();
        int length = startPoint.length;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            dArr[i3][i3] = 1.0d;
        }
        ConvergenceChecker<PointValuePair> convergenceChecker2 = getConvergenceChecker();
        double computeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArr2 = (double[]) startPoint.clone();
        while (true) {
            incrementIterationCount();
            int i4 = i2;
            int i5 = i4;
            d = computeObjectiveValue;
            double d2 = 0.0d;
            while (i4 < length) {
                double[] copyOf = MathArrays.copyOf(dArr[i4]);
                UnivariatePointValuePair search = this.f109231i.search(startPoint, copyOf);
                double value = search.getValue();
                int i6 = length;
                double[][] dArr3 = dArr;
                startPoint = m67971b(startPoint, copyOf, search.getPoint())[i2];
                double d3 = d - value;
                if (d3 > d2) {
                    i5 = i4;
                    d2 = d3;
                }
                i4++;
                length = i6;
                d = value;
                dArr = dArr3;
            }
            int i7 = length;
            double[][] dArr4 = dArr;
            double d4 = computeObjectiveValue - d;
            ConvergenceChecker<PointValuePair> convergenceChecker3 = convergenceChecker2;
            boolean z = d4 * 2.0d <= (this.f109229g * (FastMath.abs(computeObjectiveValue) + FastMath.abs(d))) + this.f109230h;
            pointValuePair = new PointValuePair(dArr2, computeObjectiveValue);
            pointValuePair2 = new PointValuePair(startPoint, d);
            if (z || convergenceChecker3 == null) {
                convergenceChecker = convergenceChecker3;
            } else {
                convergenceChecker = convergenceChecker3;
                z = convergenceChecker.converged(getIterations(), pointValuePair, pointValuePair2);
            }
            if (z) {
                break;
            }
            double[] dArr5 = new double[i7];
            double[] dArr6 = new double[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                dArr5[i8] = startPoint[i8] - dArr2[i8];
                dArr6[i8] = (startPoint[i8] * 2.0d) - dArr2[i8];
            }
            dArr2 = (double[]) startPoint.clone();
            double computeObjectiveValue2 = computeObjectiveValue(dArr6);
            if (computeObjectiveValue > computeObjectiveValue2) {
                double d5 = d4 - d2;
                double d6 = ((computeObjectiveValue + computeObjectiveValue2) - (d * 2.0d)) * 2.0d * d5 * d5;
                double d7 = computeObjectiveValue - computeObjectiveValue2;
                if (d6 - ((d2 * d7) * d7) < 0.0d) {
                    UnivariatePointValuePair search2 = this.f109231i.search(startPoint, dArr5);
                    double value2 = search2.getValue();
                    double[][] m67971b = m67971b(startPoint, dArr5, search2.getPoint());
                    i = 0;
                    double[] dArr7 = m67971b[0];
                    int i9 = i7 - 1;
                    dArr4[i5] = dArr4[i9];
                    dArr4[i9] = m67971b[1];
                    startPoint = dArr7;
                    computeObjectiveValue = value2;
                    convergenceChecker2 = convergenceChecker;
                    dArr = dArr4;
                    i2 = i;
                    length = i7;
                }
            }
            i = 0;
            computeObjectiveValue = d;
            convergenceChecker2 = convergenceChecker;
            dArr = dArr4;
            i2 = i;
            length = i7;
        }
        return goalType == GoalType.MINIMIZE ? d < computeObjectiveValue ? pointValuePair2 : pointValuePair : d > computeObjectiveValue ? pointValuePair2 : pointValuePair;
    }

    public PowellOptimizer(double d, double d2) {
        this(d, d2, null);
    }

    public PowellOptimizer(double d, double d2, double d3, double d4) {
        this(d, d2, d3, d4, null);
    }
}
