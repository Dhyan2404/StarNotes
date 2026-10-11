package org.apache.commons.math3.optimization.direct;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.univariate.BracketFinder;
import org.apache.commons.math3.optimization.univariate.BrentOptimizer;
import org.apache.commons.math3.optimization.univariate.SimpleUnivariateValueChecker;
import org.apache.commons.math3.optimization.univariate.UnivariatePointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
/* loaded from: classes12.dex */
public class PowellOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateFunction> implements MultivariateOptimizer {

    /* renamed from: j */
    public static final double f109463j = FastMath.ulp(1.0d) * 2.0d;

    /* renamed from: g */
    public final double f109464g;

    /* renamed from: h */
    public final double f109465h;

    /* renamed from: i */
    public final C19244a f109466i;

    /* renamed from: org.apache.commons.math3.optimization.direct.PowellOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19244a extends BrentOptimizer {

        /* renamed from: n */
        public static final double f109467n = 1.0E-15d;

        /* renamed from: o */
        public static final double f109468o = Double.MIN_VALUE;

        /* renamed from: l */
        public final BracketFinder f109469l;

        /* renamed from: org.apache.commons.math3.optimization.direct.PowellOptimizer$a$a */
        /* loaded from: classes12.dex */
        public class a implements UnivariateFunction {

            /* renamed from: e */
            public final /* synthetic */ int f109471e;

            /* renamed from: f */
            public final /* synthetic */ double[] f109472f;

            /* renamed from: g */
            public final /* synthetic */ double[] f109473g;

            public a(int i, double[] dArr, double[] dArr2) {
                this.f109471e = i;
                this.f109472f = dArr;
                this.f109473g = dArr2;
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d) {
                double[] dArr = new double[this.f109471e];
                for (int i = 0; i < this.f109471e; i++) {
                    dArr[i] = this.f109472f[i] + (this.f109473g[i] * d);
                }
                return PowellOptimizer.this.computeObjectiveValue(dArr);
            }
        }

        public C19244a(double d, double d2) {
            super(1.0E-15d, Double.MIN_VALUE, new SimpleUnivariateValueChecker(d, d2));
            this.f109469l = new BracketFinder();
        }

        /* renamed from: b */
        public UnivariatePointValuePair m68056b(double[] dArr, double[] dArr2) {
            a aVar = new a(dArr.length, dArr, dArr2);
            GoalType goalType = PowellOptimizer.this.getGoalType();
            this.f109469l.search(aVar, goalType, 0.0d, 1.0d);
            return optimize(Integer.MAX_VALUE, aVar, goalType, this.f109469l.getLo(), this.f109469l.getHi(), this.f109469l.getMid());
        }
    }

    public PowellOptimizer(double d, double d2, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(d, d2, FastMath.sqrt(d), FastMath.sqrt(d2), convergenceChecker);
    }

    /* renamed from: c */
    public final double[][] m68055c(double[] dArr, double[] dArr2, double d) {
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

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair doOptimize() {
        double d;
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        GoalType goalType = getGoalType();
        double[] startPoint = getStartPoint();
        int length = startPoint.length;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
        for (int i = 0; i < length; i++) {
            dArr[i][i] = 1.0d;
        }
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        double computeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArr2 = (double[]) startPoint.clone();
        int i2 = 0;
        while (true) {
            i2++;
            d = computeObjectiveValue;
            int i3 = 0;
            int i4 = 0;
            double d2 = 0.0d;
            while (i4 < length) {
                double[] copyOf = MathArrays.copyOf(dArr[i4]);
                UnivariatePointValuePair m68056b = this.f109466i.m68056b(startPoint, copyOf);
                double value = m68056b.getValue();
                double[][] dArr3 = dArr;
                startPoint = m68055c(startPoint, copyOf, m68056b.getPoint())[0];
                double d3 = d - value;
                if (d3 > d2) {
                    d2 = d3;
                    i3 = i4;
                }
                i4++;
                d = value;
                dArr = dArr3;
            }
            double[][] dArr4 = dArr;
            double d4 = computeObjectiveValue - d;
            boolean z = d4 * 2.0d <= (this.f109464g * (FastMath.abs(computeObjectiveValue) + FastMath.abs(d))) + this.f109465h;
            pointValuePair = new PointValuePair(dArr2, computeObjectiveValue);
            pointValuePair2 = new PointValuePair(startPoint, d);
            if (!z && convergenceChecker != null) {
                z = convergenceChecker.converged(i2, pointValuePair, pointValuePair2);
            }
            if (z) {
                break;
            }
            double[] dArr5 = new double[length];
            double[] dArr6 = new double[length];
            for (int i5 = 0; i5 < length; i5++) {
                dArr5[i5] = startPoint[i5] - dArr2[i5];
                dArr6[i5] = (startPoint[i5] * 2.0d) - dArr2[i5];
            }
            dArr2 = (double[]) startPoint.clone();
            double computeObjectiveValue2 = computeObjectiveValue(dArr6);
            if (computeObjectiveValue > computeObjectiveValue2) {
                double d5 = d4 - d2;
                double d6 = ((computeObjectiveValue + computeObjectiveValue2) - (d * 2.0d)) * 2.0d * d5 * d5;
                double d7 = computeObjectiveValue - computeObjectiveValue2;
                if (d6 - ((d2 * d7) * d7) < 0.0d) {
                    UnivariatePointValuePair m68056b2 = this.f109466i.m68056b(startPoint, dArr5);
                    computeObjectiveValue = m68056b2.getValue();
                    double[][] m68055c = m68055c(startPoint, dArr5, m68056b2.getPoint());
                    double[] dArr7 = m68055c[0];
                    int i6 = length - 1;
                    dArr4[i3] = dArr4[i6];
                    dArr4[i6] = m68055c[1];
                    startPoint = dArr7;
                    dArr = dArr4;
                }
            }
            computeObjectiveValue = d;
            dArr = dArr4;
        }
        return goalType == GoalType.MINIMIZE ? d < computeObjectiveValue ? pointValuePair2 : pointValuePair : d > computeObjectiveValue ? pointValuePair2 : pointValuePair;
    }

    public PowellOptimizer(double d, double d2, double d3, double d4, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d5 = f109463j;
        if (d < d5) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(d5), true);
        }
        if (d2 > 0.0d) {
            this.f109464g = d;
            this.f109465h = d2;
            this.f109466i = new C19244a(d3, d4);
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d2));
    }

    public PowellOptimizer(double d, double d2) {
        this(d, d2, null);
    }

    public PowellOptimizer(double d, double d2, double d3, double d4) {
        this(d, d2, d3, d4, null);
    }
}
