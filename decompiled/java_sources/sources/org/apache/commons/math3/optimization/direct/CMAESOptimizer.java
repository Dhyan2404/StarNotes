package org.apache.commons.math3.optimization.direct;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleValueChecker;
import org.apache.commons.math3.random.MersenneTwister;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
/* loaded from: classes12.dex */
public class CMAESOptimizer extends BaseAbstractMultivariateSimpleBoundsOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    public static final int DEFAULT_CHECKFEASABLECOUNT = 0;
    public static final int DEFAULT_DIAGONALONLY = 0;
    public static final boolean DEFAULT_ISACTIVECMA = true;
    public static final int DEFAULT_MAXITERATIONS = 30000;
    public static final RandomGenerator DEFAULT_RANDOMGENERATOR = new MersenneTwister();
    public static final double DEFAULT_STOPFITNESS = 0.0d;

    /* renamed from: A */
    public double f109388A;

    /* renamed from: B */
    public double f109389B;

    /* renamed from: C */
    public double f109390C;

    /* renamed from: D */
    public double f109391D;

    /* renamed from: E */
    public double f109392E;

    /* renamed from: F */
    public double f109393F;

    /* renamed from: G */
    public double f109394G;

    /* renamed from: H */
    public RealMatrix f109395H;

    /* renamed from: I */
    public RealMatrix f109396I;

    /* renamed from: J */
    public RealMatrix f109397J;

    /* renamed from: K */
    public double f109398K;

    /* renamed from: L */
    public RealMatrix f109399L;

    /* renamed from: M */
    public RealMatrix f109400M;

    /* renamed from: N */
    public RealMatrix f109401N;

    /* renamed from: O */
    public RealMatrix f109402O;

    /* renamed from: P */
    public RealMatrix f109403P;

    /* renamed from: Q */
    public RealMatrix f109404Q;

    /* renamed from: R */
    public int f109405R;

    /* renamed from: S */
    public double[] f109406S;

    /* renamed from: T */
    public int f109407T;

    /* renamed from: U */
    public RandomGenerator f109408U;

    /* renamed from: V */
    public List<Double> f109409V;

    /* renamed from: W */
    public List<RealMatrix> f109410W;

    /* renamed from: X */
    public List<Double> f109411X;

    /* renamed from: Y */
    public List<RealMatrix> f109412Y;

    /* renamed from: g */
    public int f109413g;

    /* renamed from: h */
    public boolean f109414h;

    /* renamed from: i */
    public int f109415i;

    /* renamed from: j */
    public double[] f109416j;

    /* renamed from: k */
    public int f109417k;

    /* renamed from: l */
    public int f109418l;

    /* renamed from: m */
    public boolean f109419m;

    /* renamed from: n */
    public boolean f109420n;

    /* renamed from: o */
    public int f109421o;

    /* renamed from: p */
    public double f109422p;

    /* renamed from: q */
    public double f109423q;

    /* renamed from: r */
    public double f109424r;

    /* renamed from: s */
    public double f109425s;

    /* renamed from: t */
    public double f109426t;

    /* renamed from: u */
    public int f109427u;

    /* renamed from: v */
    public double f109428v;

    /* renamed from: w */
    public RealMatrix f109429w;

    /* renamed from: x */
    public double f109430x;

    /* renamed from: y */
    public double f109431y;

    /* renamed from: z */
    public double f109432z;

    /* loaded from: classes12.dex */
    public static class PopulationSize implements OptimizationData {

        /* renamed from: a */
        public final int f109433a;

        public PopulationSize(int i) throws NotStrictlyPositiveException {
            if (i <= 0) {
                throw new NotStrictlyPositiveException(Integer.valueOf(i));
            }
            this.f109433a = i;
        }

        public int getPopulationSize() {
            return this.f109433a;
        }
    }

    /* loaded from: classes12.dex */
    public static class Sigma implements OptimizationData {

        /* renamed from: a */
        public final double[] f109434a;

        public Sigma(double[] dArr) throws NotPositiveException {
            for (int i = 0; i < dArr.length; i++) {
                if (dArr[i] < 0.0d) {
                    throw new NotPositiveException(Double.valueOf(dArr[i]));
                }
            }
            this.f109434a = (double[]) dArr.clone();
        }

        public double[] getSigma() {
            return (double[]) this.f109434a.clone();
        }
    }

    /* renamed from: org.apache.commons.math3.optimization.direct.CMAESOptimizer$a */
    /* loaded from: classes12.dex */
    public static class C19237a implements Comparable<C19237a> {

        /* renamed from: e */
        public final double f109435e;

        /* renamed from: f */
        public final int f109436f;

        public C19237a(double d, int i) {
            this.f109435e = d;
            this.f109436f = i;
        }

        @Override // java.lang.Comparable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public int compareTo(C19237a c19237a) {
            return Double.compare(this.f109435e, c19237a.f109435e);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C19237a) && Double.compare(this.f109435e, ((C19237a) obj).f109435e) == 0;
        }

        public int hashCode() {
            long doubleToLongBits = Double.doubleToLongBits(this.f109435e);
            return (int) ((doubleToLongBits ^ ((doubleToLongBits >>> 32) ^ 1438542)) & (-1));
        }
    }

    /* renamed from: org.apache.commons.math3.optimization.direct.CMAESOptimizer$b */
    /* loaded from: classes12.dex */
    public class C19238b {

        /* renamed from: a */
        public double f109437a = 1.0d;

        /* renamed from: b */
        public final boolean f109438b = true;

        public C19238b() {
        }

        /* renamed from: b */
        public boolean m68047b(double[] dArr) {
            double[] lowerBound = CMAESOptimizer.this.getLowerBound();
            double[] upperBound = CMAESOptimizer.this.getUpperBound();
            for (int i = 0; i < dArr.length; i++) {
                double d = dArr[i];
                if (d < lowerBound[i] || d > upperBound[i]) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: c */
        public final double m68048c(double[] dArr, double[] dArr2) {
            double d = 0.0d;
            for (int i = 0; i < dArr.length; i++) {
                d += FastMath.abs(dArr[i] - dArr2[i]) * this.f109437a;
            }
            return CMAESOptimizer.this.f109419m ? d : -d;
        }

        /* renamed from: d */
        public final double[] m68049d(double[] dArr) {
            double[] lowerBound = CMAESOptimizer.this.getLowerBound();
            double[] upperBound = CMAESOptimizer.this.getUpperBound();
            double[] dArr2 = new double[dArr.length];
            for (int i = 0; i < dArr.length; i++) {
                double d = dArr[i];
                double d2 = lowerBound[i];
                if (d < d2) {
                    dArr2[i] = d2;
                } else {
                    double d3 = upperBound[i];
                    if (d > d3) {
                        dArr2[i] = d3;
                    } else {
                        dArr2[i] = d;
                    }
                }
            }
            return dArr2;
        }

        /* renamed from: e */
        public void m68050e(double d) {
            this.f109437a = d;
        }

        /* renamed from: f */
        public double m68051f(double[] dArr) {
            double computeObjectiveValue;
            if (this.f109438b) {
                double[] m68049d = m68049d(dArr);
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(m68049d) + m68048c(dArr, m68049d);
            } else {
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(dArr);
            }
            return CMAESOptimizer.this.f109419m ? computeObjectiveValue : -computeObjectiveValue;
        }
    }

    @Deprecated
    public CMAESOptimizer() {
        this(0);
    }

    /* renamed from: A */
    public static RealMatrix m68011A(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, i2) * realMatrix2.getEntry(i, i2);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: B */
    public static RealMatrix m68012B(RealMatrix realMatrix, int i) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        int i2 = 0;
        while (i2 < realMatrix.getRowDimension()) {
            for (int i3 = 0; i3 < realMatrix.getColumnDimension(); i3++) {
                dArr[i2][i3] = i2 <= i3 - i ? realMatrix.getEntry(i2, i3) : 0.0d;
            }
            i2++;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: G */
    public static RealMatrix m68013G(int i, int i2) {
        return new Array2DRowRealMatrix(i, i2);
    }

    /* renamed from: a */
    private void m68014a() {
        double[] startPoint = getStartPoint();
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        double[] dArr = this.f109416j;
        if (dArr != null) {
            if (dArr.length != startPoint.length) {
                throw new DimensionMismatchException(this.f109416j.length, startPoint.length);
            }
            for (int i = 0; i < startPoint.length; i++) {
                double d = this.f109416j[i];
                if (d < 0.0d) {
                    throw new NotPositiveException(Double.valueOf(this.f109416j[i]));
                }
                if (d > upperBound[i] - lowerBound[i]) {
                    throw new OutOfRangeException(Double.valueOf(this.f109416j[i]), 0, Double.valueOf(upperBound[i] - lowerBound[i]));
                }
            }
        }
    }

    /* renamed from: b */
    private void m68015b(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Sigma) {
                this.f109416j = ((Sigma) optimizationData).getSigma();
            } else if (optimizationData instanceof PopulationSize) {
                this.f109413g = ((PopulationSize) optimizationData).getPopulationSize();
            }
        }
    }

    /* renamed from: d */
    public static void m68017d(RealMatrix realMatrix, int i, RealMatrix realMatrix2, int i2) {
        for (int i3 = 0; i3 < realMatrix.getRowDimension(); i3++) {
            realMatrix2.setEntry(i3, i2, realMatrix.getEntry(i3, i));
        }
    }

    /* renamed from: e */
    public static RealMatrix m68018e(RealMatrix realMatrix) {
        if (realMatrix.getColumnDimension() == 1) {
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getRowDimension());
            for (int i = 0; i < realMatrix.getRowDimension(); i++) {
                dArr[i][i] = realMatrix.getEntry(i, 0);
            }
            return new Array2DRowRealMatrix(dArr, false);
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), 1);
        for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
            dArr2[i2][0] = realMatrix.getEntry(i2, i2);
        }
        return new Array2DRowRealMatrix(dArr2, false);
    }

    /* renamed from: f */
    public static RealMatrix m68019f(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, i2) / realMatrix2.getEntry(i, i2);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: g */
    public static RealMatrix m68020g(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            if (i3 < i2) {
                dArr[i3][i3] = 1.0d;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: i */
    public static int[] m68021i(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[iArr[i]] = i;
        }
        return iArr2;
    }

    /* renamed from: j */
    public static RealMatrix m68022j(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = FastMath.log(realMatrix.getEntry(i, i2));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: k */
    public static double m68023k(RealMatrix realMatrix) {
        double d = -1.7976931348623157E308d;
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                double entry = realMatrix.getEntry(i, i2);
                if (d < entry) {
                    d = entry;
                }
            }
        }
        return d;
    }

    /* renamed from: l */
    public static double m68024l(double[] dArr) {
        double d = -1.7976931348623157E308d;
        for (double d2 : dArr) {
            if (d < d2) {
                d = d2;
            }
        }
        return d;
    }

    /* renamed from: m */
    public static double m68025m(RealMatrix realMatrix) {
        double d = Double.MAX_VALUE;
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                double entry = realMatrix.getEntry(i, i2);
                if (d > entry) {
                    d = entry;
                }
            }
        }
        return d;
    }

    /* renamed from: n */
    public static double m68026n(double[] dArr) {
        double d = Double.MAX_VALUE;
        for (double d2 : dArr) {
            if (d > d2) {
                d = d2;
            }
        }
        return d;
    }

    /* renamed from: o */
    public static RealMatrix m68027o(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            Arrays.fill(dArr[i3], 1.0d);
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: p */
    public static void m68028p(double[] dArr, double d) {
        for (int length = dArr.length - 1; length > 0; length--) {
            dArr[length] = dArr[length - 1];
        }
        dArr[0] = d;
    }

    /* renamed from: s */
    public static RealMatrix m68029s(RealMatrix realMatrix, int i, int i2) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        int i3 = i * rowDimension;
        int i4 = i2 * columnDimension;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i3, i4);
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                dArr[i5][i6] = realMatrix.getEntry(i5 % rowDimension, i6 % columnDimension);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: t */
    public static int[] m68030t(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = iArr[(iArr.length - i) - 1];
        }
        return iArr2;
    }

    /* renamed from: u */
    public static RealMatrix m68031u(RealMatrix realMatrix, int[] iArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), iArr.length);
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, iArr[i2]);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: v */
    public static RealMatrix m68032v(double d, double d2, double d3) {
        int i = (int) (((d2 - d) / d3) + 1.0d);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, 1);
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2][0] = d;
            d += d3;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: x */
    public static RealMatrix m68033x(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = FastMath.sqrt(realMatrix.getEntry(i, i2));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: y */
    public static RealMatrix m68034y(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                double entry = realMatrix.getEntry(i, i2);
                dArr[i][i2] = entry * entry;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: z */
    public static RealMatrix m68035z(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 1, realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getColumnDimension(); i++) {
            double d = 0.0d;
            for (int i2 = 0; i2 < realMatrix.getRowDimension(); i2++) {
                d += realMatrix.getEntry(i2, i);
            }
            dArr[0][i] = d;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: C */
    public final void m68036C(double d) {
        double d2 = this.f109390C;
        double d3 = this.f109391D;
        if (d2 + d3 + d <= 0.0d || (((this.f109405R % 1.0d) / ((d2 + d3) + d)) / this.f109417k) / 10.0d >= 1.0d) {
            return;
        }
        RealMatrix add = m68012B(this.f109403P, 0).add(m68012B(this.f109403P, 1).transpose());
        this.f109403P = add;
        EigenDecomposition eigenDecomposition = new EigenDecomposition(add);
        this.f109399L = eigenDecomposition.getV();
        RealMatrix d4 = eigenDecomposition.getD();
        this.f109400M = d4;
        RealMatrix m68018e = m68018e(d4);
        this.f109402O = m68018e;
        if (m68025m(m68018e) <= 0.0d) {
            for (int i = 0; i < this.f109417k; i++) {
                if (this.f109402O.getEntry(i, 0) < 0.0d) {
                    this.f109402O.setEntry(i, 0, 0.0d);
                }
            }
            double m68023k = m68023k(this.f109402O) / 1.0E14d;
            RealMatrix realMatrix = this.f109403P;
            int i2 = this.f109417k;
            this.f109403P = realMatrix.add(m68020g(i2, i2).scalarMultiply(m68023k));
            this.f109402O = this.f109402O.add(m68027o(this.f109417k, 1).scalarMultiply(m68023k));
        }
        if (m68023k(this.f109402O) > m68025m(this.f109402O) * 1.0E14d) {
            double m68023k2 = (m68023k(this.f109402O) / 1.0E14d) - m68025m(this.f109402O);
            RealMatrix realMatrix2 = this.f109403P;
            int i3 = this.f109417k;
            this.f109403P = realMatrix2.add(m68020g(i3, i3).scalarMultiply(m68023k2));
            this.f109402O = this.f109402O.add(m68027o(this.f109417k, 1).scalarMultiply(m68023k2));
        }
        this.f109404Q = m68018e(this.f109403P);
        RealMatrix m68033x = m68033x(this.f109402O);
        this.f109402O = m68033x;
        this.f109401N = m68011A(this.f109399L, m68029s(m68033x.transpose(), this.f109417k, 1));
    }

    /* renamed from: D */
    public final void m68037D(boolean z, RealMatrix realMatrix, RealMatrix realMatrix2, int[] iArr, RealMatrix realMatrix3) {
        double d;
        double d2;
        if (this.f109390C + this.f109391D > 0.0d) {
            RealMatrix scalarMultiply = realMatrix.subtract(m68029s(realMatrix3, 1, this.f109427u)).scalarMultiply(1.0d / this.f109431y);
            RealMatrix realMatrix4 = this.f109396I;
            RealMatrix scalarMultiply2 = realMatrix4.multiply(realMatrix4.transpose()).scalarMultiply(this.f109390C);
            if (z) {
                d2 = 0.0d;
            } else {
                double d3 = this.f109390C;
                double d4 = this.f109432z;
                d2 = d3 * d4 * (2.0d - d4);
            }
            double d5 = 1.0d - this.f109390C;
            double d6 = this.f109391D;
            double d7 = d2 + (d5 - d6);
            if (this.f109414h) {
                double pow = (((1.0d - d6) * 0.25d) * this.f109430x) / (FastMath.pow(this.f109417k + 2, 1.5d) + (this.f109430x * 2.0d));
                RealMatrix m68031u = m68031u(realMatrix2, MathArrays.copyOf(m68030t(iArr), this.f109427u));
                RealMatrix m68033x = m68033x(m68035z(m68034y(m68031u)));
                int[] m68043w = m68043w(m68033x.getRow(0));
                RealMatrix m68031u2 = m68031u(m68019f(m68031u(m68033x, m68030t(m68043w)), m68031u(m68033x, m68043w)), m68021i(m68043w));
                double entry = 0.33999999999999997d / m68034y(m68031u2).multiply(this.f109429w).getEntry(0, 0);
                if (pow <= entry) {
                    entry = pow;
                }
                RealMatrix multiply = this.f109401N.multiply(m68011A(m68031u, m68029s(m68031u2, this.f109417k, 1)));
                double d8 = 0.5d * entry;
                this.f109403P = this.f109403P.scalarMultiply(d7 + d8).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.f109391D + d8).multiply(m68011A(m68029s(this.f109429w, 1, this.f109417k), scalarMultiply.transpose()))).subtract(multiply.multiply(m68018e(this.f109429w)).multiply(multiply.transpose()).scalarMultiply(entry));
                d = entry;
                m68036C(d);
            }
            this.f109403P = this.f109403P.scalarMultiply(d7).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.f109391D).multiply(m68011A(m68029s(this.f109429w, 1, this.f109417k), scalarMultiply.transpose())));
        }
        d = 0.0d;
        m68036C(d);
    }

    /* renamed from: E */
    public final void m68038E(boolean z, RealMatrix realMatrix) {
        double d;
        if (z) {
            d = 0.0d;
        } else {
            double d2 = this.f109393F;
            double d3 = this.f109432z;
            d = d2 * d3 * (2.0d - d3);
        }
        RealMatrix add = this.f109404Q.scalarMultiply(d + ((1.0d - this.f109393F) - this.f109394G)).add(m68034y(this.f109396I).scalarMultiply(this.f109393F)).add(m68011A(this.f109404Q, m68034y(realMatrix).multiply(this.f109429w)).scalarMultiply(this.f109394G));
        this.f109404Q = add;
        this.f109402O = m68033x(add);
        int i = this.f109418l;
        if (i <= 1 || this.f109405R <= i) {
            return;
        }
        this.f109418l = 0;
        int i2 = this.f109417k;
        this.f109399L = m68020g(i2, i2);
        this.f109401N = m68018e(this.f109402O);
        this.f109403P = m68018e(this.f109404Q);
    }

    /* renamed from: F */
    public final boolean m68039F(RealMatrix realMatrix, RealMatrix realMatrix2) {
        RealMatrix scalarMultiply = this.f109397J.scalarMultiply(1.0d - this.f109388A);
        RealMatrix multiply = this.f109399L.multiply(realMatrix);
        double d = this.f109388A;
        RealMatrix add = scalarMultiply.add(multiply.scalarMultiply(FastMath.sqrt(d * (2.0d - d) * this.f109430x)));
        this.f109397J = add;
        double frobeniusNorm = add.getFrobeniusNorm();
        this.f109398K = frobeniusNorm;
        boolean z = (frobeniusNorm / FastMath.sqrt(1.0d - FastMath.pow(1.0d - this.f109388A, this.f109405R * 2))) / this.f109392E < (2.0d / (((double) this.f109417k) + 1.0d)) + 1.4d;
        RealMatrix scalarMultiply2 = this.f109396I.scalarMultiply(1.0d - this.f109432z);
        this.f109396I = scalarMultiply2;
        if (z) {
            RealMatrix subtract = this.f109395H.subtract(realMatrix2);
            double d2 = this.f109432z;
            this.f109396I = scalarMultiply2.add(subtract.scalarMultiply(FastMath.sqrt((d2 * (2.0d - d2)) * this.f109430x) / this.f109431y));
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0252, code lost:
    
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x026b, code lost:
    
        if (r19 != r2[r9[(int) ((r26.f109413g / 4.0d) + 0.1d)]]) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x026d, code lost:
    
        r2 = r14;
        r26.f109431y *= org.apache.commons.math3.util.FastMath.exp((r26.f109388A / r26.f109389B) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0287, code lost:
    
        if (r26.f109405R <= 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0294, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r8, r12) - org.apache.commons.math3.util.FastMath.min(r0, r12)) != 0.0d) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0296, code lost:
    
        r26.f109431y *= org.apache.commons.math3.util.FastMath.exp((r26.f109388A / r26.f109389B) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02aa, code lost:
    
        m68028p(r26.f109406S, r12);
        r7.m68050e(r21 - r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02b6, code lost:
    
        if (r26.f109420n == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02b8, code lost:
    
        r26.f109409V.add(java.lang.Double.valueOf(r26.f109431y));
        r26.f109411X.add(java.lang.Double.valueOf(r12));
        r26.f109410W.add(r26.f109395H.transpose());
        r26.f109412Y.add(r26.f109402O.transpose().scalarMultiply(100000.0d));
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02eb, code lost:
    
        r26.f109405R++;
        r9 = 1;
        r14 = r2;
        r8 = r5;
        r13 = r18;
        r11 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0283, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x023c, code lost:
    
        r14 = -r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0254, code lost:
    
        r5 = 0;
        r14 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01fd, code lost:
    
        r11 = r13;
        r12 = r21;
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01c1, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01c4, code lost:
    
        if (r0 >= r26.f109417k) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01cf, code lost:
    
        if ((r26.f109431y * r8[r0]) <= r26.f109423q) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d3, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01d6, code lost:
    
        r0 = m68026n(r26.f109406S);
        r8 = m68024l(r26.f109406S);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e5, code lost:
    
        if (r26.f109405R <= 2) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e7, code lost:
    
        r11 = r13;
        r12 = r21;
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01fa, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r8, r4) - org.apache.commons.math3.util.FastMath.min(r0, r12)) >= r26.f109425s) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0207, code lost:
    
        if (r26.f109405R <= r26.f109406S.length) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x020f, code lost:
    
        if ((r8 - r0) >= r26.f109426t) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0226, code lost:
    
        if ((m68023k(r26.f109402O) / m68025m(r26.f109402O)) <= 1.0E7d) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x022d, code lost:
    
        if (getConvergenceChecker() == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x022f, code lost:
    
        r5 = 0;
        r10 = r10.getColumn(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0238, code lost:
    
        if (r26.f109419m == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x023a, code lost:
    
        r14 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x023d, code lost:
    
        r4 = new org.apache.commons.math3.optimization.PointValuePair(r10, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0240, code lost:
    
        if (r11 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x024c, code lost:
    
        if (getConvergenceChecker().converged(r26.f109405R, r4, r11) == false) goto L97;
     */
    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.optimization.PointValuePair doOptimize() {
        /*
            Method dump skipped, instructions count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.direct.CMAESOptimizer.doOptimize():org.apache.commons.math3.optimization.PointValuePair");
    }

    public List<RealMatrix> getStatisticsDHistory() {
        return this.f109412Y;
    }

    public List<Double> getStatisticsFitnessHistory() {
        return this.f109411X;
    }

    public List<RealMatrix> getStatisticsMeanHistory() {
        return this.f109410W;
    }

    public List<Double> getStatisticsSigmaHistory() {
        return this.f109409V;
    }

    /* renamed from: h */
    public final void m68040h(double[] dArr) {
        if (this.f109413g <= 0) {
            this.f109413g = ((int) (FastMath.log(this.f109417k) * 3.0d)) + 4;
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, 1);
        for (int i = 0; i < dArr.length; i++) {
            double[] dArr3 = dArr2[i];
            double[] dArr4 = this.f109416j;
            dArr3[0] = dArr4 == null ? 0.3d : dArr4[i];
        }
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr2, false);
        this.f109431y = m68023k(array2DRowRealMatrix);
        this.f109423q = m68023k(array2DRowRealMatrix) * 1000.0d;
        this.f109424r = m68023k(array2DRowRealMatrix) * 1.0E-11d;
        this.f109425s = 1.0E-12d;
        this.f109426t = 1.0E-13d;
        int i2 = this.f109413g / 2;
        this.f109427u = i2;
        this.f109428v = FastMath.log(i2 + 0.5d);
        this.f109429w = m68022j(m68032v(1.0d, this.f109427u, 1.0d)).scalarMultiply(-1.0d).scalarAdd(this.f109428v);
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i3 = 0; i3 < this.f109427u; i3++) {
            double entry = this.f109429w.getEntry(i3, 0);
            d += entry;
            d2 += entry * entry;
        }
        this.f109429w = this.f109429w.scalarMultiply(1.0d / d);
        double d3 = (d * d) / d2;
        this.f109430x = d3;
        int i4 = this.f109417k;
        this.f109432z = ((d3 / i4) + 4.0d) / ((i4 + 4) + ((d3 * 2.0d) / i4));
        this.f109388A = (d3 + 2.0d) / ((i4 + d3) + 3.0d);
        this.f109389B = (((FastMath.max(0.0d, FastMath.sqrt((d3 - 1.0d) / (i4 + 1)) - 1.0d) * 2.0d) + 1.0d) * FastMath.max(0.3d, 1.0d - (this.f109417k / (this.f109421o + 1.0E-6d)))) + this.f109388A;
        int i5 = this.f109417k;
        double d4 = this.f109430x;
        double d5 = 2.0d / (((i5 + 1.3d) * (i5 + 1.3d)) + d4);
        this.f109390C = d5;
        this.f109391D = FastMath.min(1.0d - d5, (((d4 - 2.0d) + (1.0d / d4)) * 2.0d) / (((i5 + 2) * (i5 + 2)) + d4));
        this.f109393F = FastMath.min(1.0d, (this.f109390C * (this.f109417k + 1.5d)) / 3.0d);
        this.f109394G = FastMath.min(1.0d - this.f109390C, (this.f109391D * (this.f109417k + 1.5d)) / 3.0d);
        double sqrt = FastMath.sqrt(this.f109417k);
        int i6 = this.f109417k;
        this.f109392E = sqrt * ((1.0d - (1.0d / (i6 * 4.0d))) + (1.0d / ((i6 * 21.0d) * i6)));
        this.f109395H = MatrixUtils.createColumnRealMatrix(dArr);
        RealMatrix scalarMultiply = array2DRowRealMatrix.scalarMultiply(1.0d / this.f109431y);
        this.f109402O = scalarMultiply;
        this.f109404Q = m68034y(scalarMultiply);
        this.f109396I = m68013G(this.f109417k, 1);
        RealMatrix m68013G = m68013G(this.f109417k, 1);
        this.f109397J = m68013G;
        this.f109398K = m68013G.getFrobeniusNorm();
        int i7 = this.f109417k;
        this.f109399L = m68020g(i7, i7);
        this.f109400M = m68027o(this.f109417k, 1);
        this.f109401N = m68011A(this.f109399L, m68029s(this.f109402O.transpose(), this.f109417k, 1));
        this.f109403P = this.f109399L.multiply(m68018e(m68034y(this.f109400M)).multiply(this.f109399L.transpose()));
        int i8 = ((int) ((this.f109417k * 30) / this.f109413g)) + 10;
        this.f109407T = i8;
        this.f109406S = new double[i8];
        for (int i9 = 0; i9 < this.f109407T; i9++) {
            this.f109406S[i9] = Double.MAX_VALUE;
        }
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair optimizeInternal(int i, MultivariateFunction multivariateFunction, GoalType goalType, OptimizationData... optimizationDataArr) {
        m68015b(optimizationDataArr);
        return super.optimizeInternal(i, (int) multivariateFunction, goalType, optimizationDataArr);
    }

    /* renamed from: q */
    public final double[] m68041q(int i) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = this.f109408U.nextGaussian();
        }
        return dArr;
    }

    /* renamed from: r */
    public final RealMatrix m68042r(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                dArr[i3][i4] = this.f109408U.nextGaussian();
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: w */
    public final int[] m68043w(double[] dArr) {
        C19237a[] c19237aArr = new C19237a[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            c19237aArr[i] = new C19237a(dArr[i], i);
        }
        Arrays.sort(c19237aArr);
        int[] iArr = new int[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            iArr[i2] = c19237aArr[i2].f109436f;
        }
        return iArr;
    }

    @Deprecated
    public CMAESOptimizer(int i) {
        this(i, null, 30000, 0.0d, true, 0, 0, DEFAULT_RANDOMGENERATOR, false, null);
    }

    @Deprecated
    public CMAESOptimizer(int i, double[] dArr) {
        this(i, dArr, 30000, 0.0d, true, 0, 0, DEFAULT_RANDOMGENERATOR, false);
    }

    @Deprecated
    public CMAESOptimizer(int i, double[] dArr, int i2, double d, boolean z, int i3, int i4, RandomGenerator randomGenerator, boolean z2) {
        this(i, dArr, i2, d, z, i3, i4, randomGenerator, z2, new SimpleValueChecker());
    }

    @Deprecated
    public CMAESOptimizer(int i, double[] dArr, int i2, double d, boolean z, int i3, int i4, RandomGenerator randomGenerator, boolean z2, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.f109418l = 0;
        this.f109419m = true;
        this.f109420n = false;
        this.f109409V = new ArrayList();
        this.f109410W = new ArrayList();
        this.f109411X = new ArrayList();
        this.f109412Y = new ArrayList();
        this.f109413g = i;
        this.f109416j = dArr == null ? null : (double[]) dArr.clone();
        this.f109421o = i2;
        this.f109422p = d;
        this.f109414h = z;
        this.f109418l = i3;
        this.f109415i = i4;
        this.f109408U = randomGenerator;
        this.f109420n = z2;
    }

    public CMAESOptimizer(int i, double d, boolean z, int i2, int i3, RandomGenerator randomGenerator, boolean z2, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.f109418l = 0;
        this.f109419m = true;
        this.f109420n = false;
        this.f109409V = new ArrayList();
        this.f109410W = new ArrayList();
        this.f109411X = new ArrayList();
        this.f109412Y = new ArrayList();
        this.f109421o = i;
        this.f109422p = d;
        this.f109414h = z;
        this.f109418l = i2;
        this.f109415i = i3;
        this.f109408U = randomGenerator;
        this.f109420n = z2;
    }
}
