package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class CMAESOptimizer extends MultivariateOptimizer {

    /* renamed from: A */
    public double f109163A;

    /* renamed from: B */
    public double f109164B;

    /* renamed from: C */
    public double f109165C;

    /* renamed from: D */
    public double f109166D;

    /* renamed from: E */
    public double f109167E;

    /* renamed from: F */
    public double f109168F;

    /* renamed from: G */
    public double f109169G;

    /* renamed from: H */
    public RealMatrix f109170H;

    /* renamed from: I */
    public RealMatrix f109171I;

    /* renamed from: J */
    public RealMatrix f109172J;

    /* renamed from: K */
    public double f109173K;

    /* renamed from: L */
    public RealMatrix f109174L;

    /* renamed from: M */
    public RealMatrix f109175M;

    /* renamed from: N */
    public RealMatrix f109176N;

    /* renamed from: O */
    public RealMatrix f109177O;

    /* renamed from: P */
    public RealMatrix f109178P;

    /* renamed from: Q */
    public RealMatrix f109179Q;

    /* renamed from: R */
    public int f109180R;

    /* renamed from: S */
    public double[] f109181S;

    /* renamed from: T */
    public int f109182T;

    /* renamed from: U */
    public final RandomGenerator f109183U;

    /* renamed from: V */
    public final List<Double> f109184V;

    /* renamed from: W */
    public final List<RealMatrix> f109185W;

    /* renamed from: X */
    public final List<Double> f109186X;

    /* renamed from: Y */
    public final List<RealMatrix> f109187Y;

    /* renamed from: g */
    public int f109188g;

    /* renamed from: h */
    public final boolean f109189h;

    /* renamed from: i */
    public final int f109190i;

    /* renamed from: j */
    public double[] f109191j;

    /* renamed from: k */
    public int f109192k;

    /* renamed from: l */
    public int f109193l;

    /* renamed from: m */
    public boolean f109194m;

    /* renamed from: n */
    public final boolean f109195n;

    /* renamed from: o */
    public final int f109196o;

    /* renamed from: p */
    public final double f109197p;

    /* renamed from: q */
    public double f109198q;

    /* renamed from: r */
    public double f109199r;

    /* renamed from: s */
    public double f109200s;

    /* renamed from: t */
    public double f109201t;

    /* renamed from: u */
    public int f109202u;

    /* renamed from: v */
    public double f109203v;

    /* renamed from: w */
    public RealMatrix f109204w;

    /* renamed from: x */
    public double f109205x;

    /* renamed from: y */
    public double f109206y;

    /* renamed from: z */
    public double f109207z;

    /* loaded from: classes12.dex */
    public static class PopulationSize implements OptimizationData {

        /* renamed from: e */
        public final int f109208e;

        public PopulationSize(int i) throws NotStrictlyPositiveException {
            if (i <= 0) {
                throw new NotStrictlyPositiveException(Integer.valueOf(i));
            }
            this.f109208e = i;
        }

        public int getPopulationSize() {
            return this.f109208e;
        }
    }

    /* loaded from: classes12.dex */
    public static class Sigma implements OptimizationData {

        /* renamed from: e */
        public final double[] f109209e;

        public Sigma(double[] dArr) throws NotPositiveException {
            for (int i = 0; i < dArr.length; i++) {
                if (dArr[i] < 0.0d) {
                    throw new NotPositiveException(Double.valueOf(dArr[i]));
                }
            }
            this.f109209e = (double[]) dArr.clone();
        }

        public double[] getSigma() {
            return (double[]) this.f109209e.clone();
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.noderiv.CMAESOptimizer$a */
    /* loaded from: classes12.dex */
    public static class C19228a implements Comparable<C19228a> {

        /* renamed from: e */
        public final double f109210e;

        /* renamed from: f */
        public final int f109211f;

        public C19228a(double d, int i) {
            this.f109210e = d;
            this.f109211f = i;
        }

        @Override // java.lang.Comparable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public int compareTo(C19228a c19228a) {
            return Double.compare(this.f109210e, c19228a.f109210e);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C19228a) && Double.compare(this.f109210e, ((C19228a) obj).f109210e) == 0;
        }

        public int hashCode() {
            long doubleToLongBits = Double.doubleToLongBits(this.f109210e);
            return (int) ((doubleToLongBits ^ ((doubleToLongBits >>> 32) ^ 1438542)) & (-1));
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.noderiv.CMAESOptimizer$b */
    /* loaded from: classes12.dex */
    public class C19229b {

        /* renamed from: a */
        public final boolean f109212a = true;

        public C19229b() {
        }

        /* renamed from: b */
        public boolean m67963b(double[] dArr) {
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
        public final double m67964c(double[] dArr, double[] dArr2) {
            double d = 0.0d;
            for (int i = 0; i < dArr.length; i++) {
                d += FastMath.abs(dArr[i] - dArr2[i]);
            }
            return CMAESOptimizer.this.f109194m ? d : -d;
        }

        /* renamed from: d */
        public final double[] m67965d(double[] dArr) {
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
        public C19230c m67966e(double[] dArr) {
            double computeObjectiveValue;
            double d;
            if (this.f109212a) {
                double[] m67965d = m67965d(dArr);
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(m67965d);
                d = m67964c(dArr, m67965d);
            } else {
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(dArr);
                d = 0.0d;
            }
            if (!CMAESOptimizer.this.f109194m) {
                computeObjectiveValue = -computeObjectiveValue;
            }
            if (!CMAESOptimizer.this.f109194m) {
                d = -d;
            }
            return new C19230c(computeObjectiveValue, d);
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.noderiv.CMAESOptimizer$c */
    /* loaded from: classes12.dex */
    public static class C19230c {

        /* renamed from: a */
        public double f109214a;

        /* renamed from: b */
        public double f109215b;

        public C19230c(double d, double d2) {
            this.f109214a = d;
            this.f109215b = d2;
        }
    }

    public CMAESOptimizer(int i, double d, boolean z, int i2, int i3, RandomGenerator randomGenerator, boolean z2, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.f109194m = true;
        this.f109184V = new ArrayList();
        this.f109185W = new ArrayList();
        this.f109186X = new ArrayList();
        this.f109187Y = new ArrayList();
        this.f109196o = i;
        this.f109197p = d;
        this.f109189h = z;
        this.f109193l = i2;
        this.f109190i = i3;
        this.f109183U = randomGenerator;
        this.f109195n = z2;
    }

    /* renamed from: A */
    public static RealMatrix m67927A(RealMatrix realMatrix, int i) {
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
    public static RealMatrix m67928G(int i, int i2) {
        return new Array2DRowRealMatrix(i, i2);
    }

    /* renamed from: a */
    private void m67929a() {
        double[] startPoint = getStartPoint();
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        double[] dArr = this.f109191j;
        if (dArr != null) {
            if (dArr.length != startPoint.length) {
                throw new DimensionMismatchException(this.f109191j.length, startPoint.length);
            }
            for (int i = 0; i < startPoint.length; i++) {
                if (this.f109191j[i] > upperBound[i] - lowerBound[i]) {
                    throw new OutOfRangeException(Double.valueOf(this.f109191j[i]), 0, Double.valueOf(upperBound[i] - lowerBound[i]));
                }
            }
        }
    }

    /* renamed from: c */
    public static void m67931c(RealMatrix realMatrix, int i, RealMatrix realMatrix2, int i2) {
        for (int i3 = 0; i3 < realMatrix.getRowDimension(); i3++) {
            realMatrix2.setEntry(i3, i2, realMatrix.getEntry(i3, i));
        }
    }

    /* renamed from: d */
    public static RealMatrix m67932d(RealMatrix realMatrix) {
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

    /* renamed from: e */
    public static RealMatrix m67933e(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, i2) / realMatrix2.getEntry(i, i2);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: f */
    public static RealMatrix m67934f(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            if (i3 < i2) {
                dArr[i3][i3] = 1.0d;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: h */
    public static int[] m67935h(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[iArr[i]] = i;
        }
        return iArr2;
    }

    /* renamed from: i */
    public static RealMatrix m67936i(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = FastMath.log(realMatrix.getEntry(i, i2));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: j */
    public static double m67937j(RealMatrix realMatrix) {
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

    /* renamed from: k */
    public static double m67938k(double[] dArr) {
        double d = -1.7976931348623157E308d;
        for (double d2 : dArr) {
            if (d < d2) {
                d = d2;
            }
        }
        return d;
    }

    /* renamed from: l */
    public static double m67939l(RealMatrix realMatrix) {
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

    /* renamed from: m */
    public static double m67940m(double[] dArr) {
        double d = Double.MAX_VALUE;
        for (double d2 : dArr) {
            if (d > d2) {
                d = d2;
            }
        }
        return d;
    }

    /* renamed from: n */
    public static RealMatrix m67941n(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            Arrays.fill(dArr[i3], 1.0d);
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: o */
    public static void m67942o(double[] dArr, double d) {
        for (int length = dArr.length - 1; length > 0; length--) {
            dArr[length] = dArr[length - 1];
        }
        dArr[0] = d;
    }

    /* renamed from: r */
    public static RealMatrix m67943r(RealMatrix realMatrix, int i, int i2) {
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

    /* renamed from: s */
    public static int[] m67944s(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = iArr[(iArr.length - i) - 1];
        }
        return iArr2;
    }

    /* renamed from: t */
    public static RealMatrix m67945t(RealMatrix realMatrix, int[] iArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), iArr.length);
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, iArr[i2]);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: u */
    public static RealMatrix m67946u(double d, double d2, double d3) {
        int i = (int) (((d2 - d) / d3) + 1.0d);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, 1);
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2][0] = d;
            d += d3;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: w */
    public static RealMatrix m67947w(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = FastMath.sqrt(realMatrix.getEntry(i, i2));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: x */
    public static RealMatrix m67948x(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                double entry = realMatrix.getEntry(i, i2);
                dArr[i][i2] = entry * entry;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: y */
    public static RealMatrix m67949y(RealMatrix realMatrix) {
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

    /* renamed from: z */
    public static RealMatrix m67950z(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i = 0; i < realMatrix.getRowDimension(); i++) {
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                dArr[i][i2] = realMatrix.getEntry(i, i2) * realMatrix2.getEntry(i, i2);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: B */
    public final void m67951B(double d) {
        double d2 = this.f109165C;
        double d3 = this.f109166D;
        if (d2 + d3 + d <= 0.0d || (((this.f109180R % 1.0d) / ((d2 + d3) + d)) / this.f109192k) / 10.0d >= 1.0d) {
            return;
        }
        RealMatrix add = m67927A(this.f109178P, 0).add(m67927A(this.f109178P, 1).transpose());
        this.f109178P = add;
        EigenDecomposition eigenDecomposition = new EigenDecomposition(add);
        this.f109174L = eigenDecomposition.getV();
        RealMatrix d4 = eigenDecomposition.getD();
        this.f109175M = d4;
        RealMatrix m67932d = m67932d(d4);
        this.f109177O = m67932d;
        if (m67939l(m67932d) <= 0.0d) {
            for (int i = 0; i < this.f109192k; i++) {
                if (this.f109177O.getEntry(i, 0) < 0.0d) {
                    this.f109177O.setEntry(i, 0, 0.0d);
                }
            }
            double m67937j = m67937j(this.f109177O) / 1.0E14d;
            RealMatrix realMatrix = this.f109178P;
            int i2 = this.f109192k;
            this.f109178P = realMatrix.add(m67934f(i2, i2).scalarMultiply(m67937j));
            this.f109177O = this.f109177O.add(m67941n(this.f109192k, 1).scalarMultiply(m67937j));
        }
        if (m67937j(this.f109177O) > m67939l(this.f109177O) * 1.0E14d) {
            double m67937j2 = (m67937j(this.f109177O) / 1.0E14d) - m67939l(this.f109177O);
            RealMatrix realMatrix2 = this.f109178P;
            int i3 = this.f109192k;
            this.f109178P = realMatrix2.add(m67934f(i3, i3).scalarMultiply(m67937j2));
            this.f109177O = this.f109177O.add(m67941n(this.f109192k, 1).scalarMultiply(m67937j2));
        }
        this.f109179Q = m67932d(this.f109178P);
        RealMatrix m67947w = m67947w(this.f109177O);
        this.f109177O = m67947w;
        this.f109176N = m67950z(this.f109174L, m67943r(m67947w.transpose(), this.f109192k, 1));
    }

    /* renamed from: C */
    public final void m67952C(boolean z, RealMatrix realMatrix, RealMatrix realMatrix2, int[] iArr, RealMatrix realMatrix3) {
        double d;
        double d2;
        if (this.f109165C + this.f109166D > 0.0d) {
            RealMatrix scalarMultiply = realMatrix.subtract(m67943r(realMatrix3, 1, this.f109202u)).scalarMultiply(1.0d / this.f109206y);
            RealMatrix realMatrix4 = this.f109171I;
            RealMatrix scalarMultiply2 = realMatrix4.multiply(realMatrix4.transpose()).scalarMultiply(this.f109165C);
            if (z) {
                d2 = 0.0d;
            } else {
                double d3 = this.f109165C;
                double d4 = this.f109207z;
                d2 = d3 * d4 * (2.0d - d4);
            }
            double d5 = 1.0d - this.f109165C;
            double d6 = this.f109166D;
            double d7 = d2 + (d5 - d6);
            if (this.f109189h) {
                double pow = (((1.0d - d6) * 0.25d) * this.f109205x) / (FastMath.pow(this.f109192k + 2, 1.5d) + (this.f109205x * 2.0d));
                RealMatrix m67945t = m67945t(realMatrix2, MathArrays.copyOf(m67944s(iArr), this.f109202u));
                RealMatrix m67947w = m67947w(m67949y(m67948x(m67945t)));
                int[] m67959v = m67959v(m67947w.getRow(0));
                RealMatrix m67945t2 = m67945t(m67933e(m67945t(m67947w, m67944s(m67959v)), m67945t(m67947w, m67959v)), m67935h(m67959v));
                double entry = 0.33999999999999997d / m67948x(m67945t2).multiply(this.f109204w).getEntry(0, 0);
                if (pow <= entry) {
                    entry = pow;
                }
                RealMatrix multiply = this.f109176N.multiply(m67950z(m67945t, m67943r(m67945t2, this.f109192k, 1)));
                double d8 = 0.5d * entry;
                this.f109178P = this.f109178P.scalarMultiply(d7 + d8).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.f109166D + d8).multiply(m67950z(m67943r(this.f109204w, 1, this.f109192k), scalarMultiply.transpose()))).subtract(multiply.multiply(m67932d(this.f109204w)).multiply(multiply.transpose()).scalarMultiply(entry));
                d = entry;
                m67951B(d);
            }
            this.f109178P = this.f109178P.scalarMultiply(d7).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.f109166D).multiply(m67950z(m67943r(this.f109204w, 1, this.f109192k), scalarMultiply.transpose())));
        }
        d = 0.0d;
        m67951B(d);
    }

    /* renamed from: D */
    public final void m67953D(boolean z, RealMatrix realMatrix) {
        double d;
        if (z) {
            d = 0.0d;
        } else {
            double d2 = this.f109168F;
            double d3 = this.f109207z;
            d = d2 * d3 * (2.0d - d3);
        }
        RealMatrix add = this.f109179Q.scalarMultiply(d + ((1.0d - this.f109168F) - this.f109169G)).add(m67948x(this.f109171I).scalarMultiply(this.f109168F)).add(m67950z(this.f109179Q, m67948x(realMatrix).multiply(this.f109204w)).scalarMultiply(this.f109169G));
        this.f109179Q = add;
        this.f109177O = m67947w(add);
        int i = this.f109193l;
        if (i <= 1 || this.f109180R <= i) {
            return;
        }
        this.f109193l = 0;
        int i2 = this.f109192k;
        this.f109174L = m67934f(i2, i2);
        this.f109176N = m67932d(this.f109177O);
        this.f109178P = m67932d(this.f109179Q);
    }

    /* renamed from: E */
    public final boolean m67954E(RealMatrix realMatrix, RealMatrix realMatrix2) {
        RealMatrix scalarMultiply = this.f109172J.scalarMultiply(1.0d - this.f109163A);
        RealMatrix multiply = this.f109174L.multiply(realMatrix);
        double d = this.f109163A;
        RealMatrix add = scalarMultiply.add(multiply.scalarMultiply(FastMath.sqrt(d * (2.0d - d) * this.f109205x)));
        this.f109172J = add;
        double frobeniusNorm = add.getFrobeniusNorm();
        this.f109173K = frobeniusNorm;
        boolean z = (frobeniusNorm / FastMath.sqrt(1.0d - FastMath.pow(1.0d - this.f109163A, this.f109180R * 2))) / this.f109167E < (2.0d / (((double) this.f109192k) + 1.0d)) + 1.4d;
        RealMatrix scalarMultiply2 = this.f109171I.scalarMultiply(1.0d - this.f109207z);
        this.f109171I = scalarMultiply2;
        if (z) {
            RealMatrix subtract = this.f109170H.subtract(realMatrix2);
            double d2 = this.f109207z;
            this.f109171I = scalarMultiply2.add(subtract.scalarMultiply(FastMath.sqrt((d2 * (2.0d - d2)) * this.f109205x) / this.f109206y));
        }
        return z;
    }

    /* renamed from: F */
    public final double m67955F(C19230c[] c19230cArr) {
        double d = Double.NEGATIVE_INFINITY;
        double d2 = Double.MAX_VALUE;
        for (C19230c c19230c : c19230cArr) {
            if (c19230c.f109214a > d) {
                d = c19230c.f109214a;
            }
            if (c19230c.f109214a < d2) {
                d2 = c19230c.f109214a;
            }
        }
        return d - d2;
    }

    /* renamed from: g */
    public final void m67956g(double[] dArr) {
        if (this.f109188g <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(this.f109188g));
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, 1);
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i][0] = this.f109191j[i];
        }
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr2, false);
        this.f109206y = m67937j(array2DRowRealMatrix);
        this.f109198q = m67937j(array2DRowRealMatrix) * 1000.0d;
        this.f109199r = m67937j(array2DRowRealMatrix) * 1.0E-11d;
        this.f109200s = 1.0E-12d;
        this.f109201t = 1.0E-13d;
        int i2 = this.f109188g / 2;
        this.f109202u = i2;
        this.f109203v = FastMath.log(i2 + 0.5d);
        this.f109204w = m67936i(m67946u(1.0d, this.f109202u, 1.0d)).scalarMultiply(-1.0d).scalarAdd(this.f109203v);
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i3 = 0; i3 < this.f109202u; i3++) {
            double entry = this.f109204w.getEntry(i3, 0);
            d += entry;
            d2 += entry * entry;
        }
        this.f109204w = this.f109204w.scalarMultiply(1.0d / d);
        double d3 = (d * d) / d2;
        this.f109205x = d3;
        int i4 = this.f109192k;
        this.f109207z = ((d3 / i4) + 4.0d) / ((i4 + 4) + ((d3 * 2.0d) / i4));
        this.f109163A = (d3 + 2.0d) / ((i4 + d3) + 3.0d);
        this.f109164B = (((FastMath.max(0.0d, FastMath.sqrt((d3 - 1.0d) / (i4 + 1)) - 1.0d) * 2.0d) + 1.0d) * FastMath.max(0.3d, 1.0d - (this.f109192k / (this.f109196o + 1.0E-6d)))) + this.f109163A;
        int i5 = this.f109192k;
        double d4 = this.f109205x;
        double d5 = 2.0d / (((i5 + 1.3d) * (i5 + 1.3d)) + d4);
        this.f109165C = d5;
        this.f109166D = FastMath.min(1.0d - d5, (((d4 - 2.0d) + (1.0d / d4)) * 2.0d) / (((i5 + 2) * (i5 + 2)) + d4));
        this.f109168F = FastMath.min(1.0d, (this.f109165C * (this.f109192k + 1.5d)) / 3.0d);
        this.f109169G = FastMath.min(1.0d - this.f109165C, (this.f109166D * (this.f109192k + 1.5d)) / 3.0d);
        double sqrt = FastMath.sqrt(this.f109192k);
        int i6 = this.f109192k;
        this.f109167E = sqrt * ((1.0d - (1.0d / (i6 * 4.0d))) + (1.0d / ((i6 * 21.0d) * i6)));
        this.f109170H = MatrixUtils.createColumnRealMatrix(dArr);
        RealMatrix scalarMultiply = array2DRowRealMatrix.scalarMultiply(1.0d / this.f109206y);
        this.f109177O = scalarMultiply;
        this.f109179Q = m67948x(scalarMultiply);
        this.f109171I = m67928G(this.f109192k, 1);
        RealMatrix m67928G = m67928G(this.f109192k, 1);
        this.f109172J = m67928G;
        this.f109173K = m67928G.getFrobeniusNorm();
        int i7 = this.f109192k;
        this.f109174L = m67934f(i7, i7);
        this.f109175M = m67941n(this.f109192k, 1);
        this.f109176N = m67950z(this.f109174L, m67943r(this.f109177O.transpose(), this.f109192k, 1));
        this.f109178P = this.f109174L.multiply(m67932d(m67948x(this.f109175M)).multiply(this.f109174L.transpose()));
        int i8 = ((int) ((this.f109192k * 30) / this.f109188g)) + 10;
        this.f109182T = i8;
        this.f109181S = new double[i8];
        for (int i9 = 0; i9 < this.f109182T; i9++) {
            this.f109181S[i9] = Double.MAX_VALUE;
        }
    }

    public List<RealMatrix> getStatisticsDHistory() {
        return this.f109187Y;
    }

    public List<Double> getStatisticsFitnessHistory() {
        return this.f109186X;
    }

    public List<RealMatrix> getStatisticsMeanHistory() {
        return this.f109185W;
    }

    public List<Double> getStatisticsSigmaHistory() {
        return this.f109184V;
    }

    /* renamed from: p */
    public final double[] m67957p(int i) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = this.f109183U.nextGaussian();
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Sigma) {
                this.f109191j = ((Sigma) optimizationData).getSigma();
            } else if (optimizationData instanceof PopulationSize) {
                this.f109188g = ((PopulationSize) optimizationData).getPopulationSize();
            }
        }
        m67929a();
    }

    /* renamed from: q */
    public final RealMatrix m67958q(int i, int i2) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                dArr[i3][i4] = this.f109183U.nextGaussian();
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    /* renamed from: v */
    public final int[] m67959v(double[] dArr) {
        C19228a[] c19228aArr = new C19228a[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            c19228aArr[i] = new C19228a(dArr[i], i);
        }
        Arrays.sort(c19228aArr);
        int[] iArr = new int[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            iArr[i2] = c19228aArr[i2].f109211f;
        }
        return iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x026f, code lost:
    
        r0 = new org.apache.commons.math3.optim.PointValuePair(r4, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0272, code lost:
    
        if (r21 == null) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0280, code lost:
    
        if (getConvergenceChecker().converged(r24.f109180R, r0, r21) == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0285, code lost:
    
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02a4, code lost:
    
        if (r17 != r15[r23[(int) ((r24.f109188g / 4.0d) + 0.1d)]]) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02a6, code lost:
    
        r21 = r1;
        r15 = r14;
        r24.f109206y *= org.apache.commons.math3.util.FastMath.exp((r24.f109163A / r24.f109164B) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02bf, code lost:
    
        if (r24.f109180R <= 2) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02c1, code lost:
    
        r0 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02ce, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r11, r0) - org.apache.commons.math3.util.FastMath.min(r7, r0)) != 0.0d) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02d0, code lost:
    
        r24.f109206y *= org.apache.commons.math3.util.FastMath.exp((r24.f109163A / r24.f109164B) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02e2, code lost:
    
        m67942o(r24.f109181S, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02e9, code lost:
    
        if (r24.f109195n == false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02eb, code lost:
    
        r24.f109184V.add(java.lang.Double.valueOf(r24.f109206y));
        r24.f109186X.add(java.lang.Double.valueOf(r0));
        r24.f109185W.add(r24.f109170H.transpose());
        r24.f109187Y.add(r24.f109177O.transpose().scalarMultiply(100000.0d));
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x031e, code lost:
    
        r24.f109180R++;
        r9 = 1;
        r11 = r5;
        r14 = r15;
        r7 = r16;
        r12 = r17;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02e0, code lost:
    
        r0 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02b9, code lost:
    
        r21 = r1;
        r15 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x026e, code lost:
    
        r13 = -r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0287, code lost:
    
        r14 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01fe, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0201, code lost:
    
        if (r7 >= r24.f109192k) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x020c, code lost:
    
        if ((r24.f109206y * r0[r7]) <= r24.f109198q) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0210, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0213, code lost:
    
        r7 = m67940m(r24.f109181S);
        r11 = m67938k(r24.f109181S);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0222, code lost:
    
        if (r24.f109180R <= 2) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0231, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r11, r3) - org.apache.commons.math3.util.FastMath.min(r7, r1)) >= r24.f109200s) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0239, code lost:
    
        if (r24.f109180R <= r24.f109181S.length) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0241, code lost:
    
        if ((r11 - r7) >= r24.f109201t) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0258, code lost:
    
        if ((m67937j(r24.f109177O) / m67939l(r24.f109177O)) <= 1.0E7d) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x025f, code lost:
    
        if (getConvergenceChecker() == null) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0261, code lost:
    
        r4 = r10.getColumn(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x026a, code lost:
    
        if (r24.f109194m == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x026c, code lost:
    
        r13 = r1;
     */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.optim.PointValuePair doOptimize() {
        /*
            Method dump skipped, instructions count: 817
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optim.nonlinear.scalar.noderiv.CMAESOptimizer.doOptimize():org.apache.commons.math3.optim.PointValuePair");
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return super.optimize(optimizationDataArr);
    }
}
