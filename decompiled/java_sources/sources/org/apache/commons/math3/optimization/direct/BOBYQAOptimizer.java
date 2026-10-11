package org.apache.commons.math3.optimization.direct;

import com.google.android.material.motion.MotionUtils;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class BOBYQAOptimizer extends BaseAbstractMultivariateSimpleBoundsOptimizer<MultivariateFunction> implements MultivariateOptimizer {

    /* renamed from: C */
    public static final double f109342C = 0.0d;

    /* renamed from: D */
    public static final double f109343D = 1.0d;
    public static final double DEFAULT_INITIAL_RADIUS = 10.0d;
    public static final double DEFAULT_STOPPING_RADIUS = 1.0E-8d;

    /* renamed from: E */
    public static final double f109344E = 2.0d;

    /* renamed from: F */
    public static final double f109345F = 10.0d;

    /* renamed from: G */
    public static final double f109346G = 16.0d;

    /* renamed from: H */
    public static final double f109347H = 250.0d;

    /* renamed from: I */
    public static final double f109348I = -1.0d;

    /* renamed from: J */
    public static final double f109349J = 0.5d;

    /* renamed from: K */
    public static final double f109350K = 0.25d;

    /* renamed from: L */
    public static final double f109351L = 0.125d;

    /* renamed from: M */
    public static final double f109352M = 0.1d;
    public static final int MINIMUM_PROBLEM_DIMENSION = 2;

    /* renamed from: N */
    public static final double f109353N = 0.001d;

    /* renamed from: A */
    public ArrayRealVector f109354A;

    /* renamed from: B */
    public ArrayRealVector f109355B;

    /* renamed from: g */
    public final int f109356g;

    /* renamed from: h */
    public double f109357h;

    /* renamed from: i */
    public final double f109358i;

    /* renamed from: j */
    public boolean f109359j;

    /* renamed from: k */
    public ArrayRealVector f109360k;

    /* renamed from: l */
    public double[] f109361l;

    /* renamed from: m */
    public int f109362m;

    /* renamed from: n */
    public Array2DRowRealMatrix f109363n;

    /* renamed from: o */
    public Array2DRowRealMatrix f109364o;

    /* renamed from: p */
    public Array2DRowRealMatrix f109365p;

    /* renamed from: q */
    public ArrayRealVector f109366q;

    /* renamed from: r */
    public ArrayRealVector f109367r;

    /* renamed from: s */
    public ArrayRealVector f109368s;

    /* renamed from: t */
    public ArrayRealVector f109369t;

    /* renamed from: u */
    public ArrayRealVector f109370u;

    /* renamed from: v */
    public ArrayRealVector f109371v;

    /* renamed from: w */
    public ArrayRealVector f109372w;

    /* renamed from: x */
    public ArrayRealVector f109373x;

    /* renamed from: y */
    public ArrayRealVector f109374y;

    /* renamed from: z */
    public ArrayRealVector f109375z;

    /* loaded from: classes12.dex */
    public static class PathIsExploredException extends RuntimeException {
        private static final String PATH_IS_EXPLORED = "If this exception is thrown, just remove it from the code";
        private static final long serialVersionUID = 745350979634801853L;

        public PathIsExploredException() {
            super("If this exception is thrown, just remove it from the code " + BOBYQAOptimizer.m67997g(3));
        }
    }

    public BOBYQAOptimizer(int i) {
        this(i, 10.0d, 1.0E-8d);
    }

    /* renamed from: g */
    public static String m67997g(int i) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i];
        return stackTraceElement.getMethodName() + " (at line " + stackTraceElement.getLineNumber() + MotionUtils.f31762d;
    }

    /* renamed from: i */
    public static void m67998i() {
    }

    /* renamed from: j */
    public static void m67999j(int i) {
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x051b A[SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double[] m68000d(int r51, double r52) {
        /*
            Method dump skipped, instructions count: 1342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.direct.BOBYQAOptimizer.m68000d(int, double):double[]");
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair doOptimize() {
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        m68004k(lowerBound, upperBound);
        this.f109359j = getGoalType() == GoalType.MINIMIZE;
        this.f109360k = new ArrayRealVector(getStartPoint());
        double m68001e = m68001e(lowerBound, upperBound);
        double[] dataRef = this.f109360k.getDataRef();
        if (!this.f109359j) {
            m68001e = -m68001e;
        }
        return new PointValuePair(dataRef, m68001e);
    }

    /* renamed from: e */
    public final double m68001e(double[] dArr, double[] dArr2) {
        m67998i();
        int dimension = this.f109360k.getDimension();
        for (int i = 0; i < dimension; i++) {
            double d = this.f109361l[i];
            this.f109370u.setEntry(i, dArr[i] - this.f109360k.getEntry(i));
            this.f109371v.setEntry(i, dArr2[i] - this.f109360k.getEntry(i));
            if (this.f109370u.getEntry(i) >= (-this.f109357h)) {
                if (this.f109370u.getEntry(i) >= 0.0d) {
                    this.f109360k.setEntry(i, dArr[i]);
                    this.f109370u.setEntry(i, 0.0d);
                    this.f109371v.setEntry(i, d);
                } else {
                    this.f109360k.setEntry(i, dArr[i] + this.f109357h);
                    this.f109370u.setEntry(i, -this.f109357h);
                    this.f109371v.setEntry(i, FastMath.max(dArr2[i] - this.f109360k.getEntry(i), this.f109357h));
                }
            } else if (this.f109371v.getEntry(i) <= this.f109357h) {
                if (this.f109371v.getEntry(i) <= 0.0d) {
                    this.f109360k.setEntry(i, dArr2[i]);
                    this.f109370u.setEntry(i, -d);
                    this.f109371v.setEntry(i, 0.0d);
                } else {
                    this.f109360k.setEntry(i, dArr2[i] - this.f109357h);
                    this.f109370u.setEntry(i, FastMath.min(dArr[i] - this.f109360k.getEntry(i), -this.f109357h));
                    this.f109371v.setEntry(i, this.f109357h);
                }
            }
        }
        return m68002f(dArr, dArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0fd8  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0fe5  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0fcc  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0414 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x042f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0959  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x09b8  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0a4c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0a09 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0980 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0d85  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double m68002f(double[] r102, double[] r103) {
        /*
            Method dump skipped, instructions count: 4103
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.direct.BOBYQAOptimizer.m68002f(double[], double[]):double");
    }

    /* renamed from: h */
    public final void m68003h(double[] dArr, double[] dArr2) {
        double d;
        int i;
        int i2;
        double d2;
        double d3;
        double d4;
        int i3;
        long j;
        double d5;
        int i4;
        char c;
        int i5;
        double d6;
        m67998i();
        int dimension = this.f109360k.getDimension();
        int i6 = this.f109356g;
        int rowDimension = this.f109363n.getRowDimension();
        double d7 = this.f109357h;
        double d8 = d7 * d7;
        double d9 = 1.0d / d8;
        int i7 = dimension + 1;
        for (int i8 = 0; i8 < dimension; i8++) {
            this.f109366q.setEntry(i8, this.f109360k.getEntry(i8));
            for (int i9 = 0; i9 < i6; i9++) {
                this.f109365p.setEntry(i9, i8, 0.0d);
            }
            for (int i10 = 0; i10 < rowDimension; i10++) {
                this.f109363n.setEntry(i10, i8, 0.0d);
            }
        }
        int i11 = (dimension * i7) / 2;
        for (int i12 = 0; i12 < i11; i12++) {
            this.f109355B.setEntry(i12, 0.0d);
        }
        for (int i13 = 0; i13 < i6; i13++) {
            this.f109372w.setEntry(i13, 0.0d);
            int i14 = i6 - i7;
            for (int i15 = 0; i15 < i14; i15++) {
                this.f109364o.setEntry(i13, i15, 0.0d);
            }
        }
        double d10 = Double.NaN;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            int evaluations = getEvaluations();
            int i18 = evaluations - dimension;
            int i19 = evaluations - 1;
            int i20 = i18 - 1;
            int i21 = dimension * 2;
            if (evaluations <= i21) {
                if (evaluations < 1 || evaluations > dimension) {
                    int i22 = i16;
                    i = i18;
                    if (evaluations > dimension) {
                        double entry = this.f109365p.getEntry(i, i20);
                        int i23 = i17;
                        d = d9;
                        double d11 = -this.f109357h;
                        if (this.f109370u.getEntry(i20) == 0.0d) {
                            i = i;
                            d11 = FastMath.min(this.f109357h * 2.0d, this.f109371v.getEntry(i20));
                        } else {
                            i = i;
                        }
                        if (this.f109371v.getEntry(i20) == 0.0d) {
                            d11 = FastMath.max(this.f109357h * (-2.0d), this.f109370u.getEntry(i20));
                        }
                        this.f109365p.setEntry(evaluations, i20, d11);
                        d4 = entry;
                        double d12 = d11;
                        i17 = i23;
                        i2 = i22;
                        d2 = d8;
                        d3 = d12;
                    } else {
                        d = d9;
                        i2 = i22;
                        d4 = 0.0d;
                    }
                } else {
                    i = i18;
                    d4 = this.f109357h;
                    int i24 = i16;
                    if (this.f109371v.getEntry(i19) == 0.0d) {
                        d4 = -d4;
                    }
                    this.f109365p.setEntry(evaluations, i19, d4);
                    d = d9;
                    i2 = i24;
                }
                d2 = d8;
                d3 = 0.0d;
            } else {
                d = d9;
                i = i18;
                int i25 = (evaluations - i7) / dimension;
                i17 = (evaluations - (i25 * dimension)) - dimension;
                i2 = i25 + i17;
                if (i2 > dimension) {
                    i17 = i2 - dimension;
                    i2 = i17;
                }
                int i26 = i2 - 1;
                int i27 = i17 - 1;
                Array2DRowRealMatrix array2DRowRealMatrix = this.f109365p;
                d2 = d8;
                array2DRowRealMatrix.setEntry(evaluations, i26, array2DRowRealMatrix.getEntry(i2, i26));
                Array2DRowRealMatrix array2DRowRealMatrix2 = this.f109365p;
                array2DRowRealMatrix2.setEntry(evaluations, i27, array2DRowRealMatrix2.getEntry(i17, i27));
                d3 = 0.0d;
                d4 = 0.0d;
            }
            int i28 = 0;
            while (i28 < dimension) {
                int i29 = i2;
                double d13 = d3;
                int i30 = dimension;
                int i31 = i6;
                this.f109360k.setEntry(i28, FastMath.min(FastMath.max(dArr[i28], this.f109366q.getEntry(i28) + this.f109365p.getEntry(evaluations, i28)), dArr2[i28]));
                if (this.f109365p.getEntry(evaluations, i28) == this.f109370u.getEntry(i28)) {
                    this.f109360k.setEntry(i28, dArr[i28]);
                }
                if (this.f109365p.getEntry(evaluations, i28) == this.f109371v.getEntry(i28)) {
                    this.f109360k.setEntry(i28, dArr2[i28]);
                }
                i28++;
                dimension = i30;
                i2 = i29;
                d3 = d13;
                i6 = i31;
            }
            int i32 = i6;
            int i33 = i2;
            double d14 = d3;
            int i34 = dimension;
            double computeObjectiveValue = computeObjectiveValue(this.f109360k.toArray());
            if (!this.f109359j) {
                computeObjectiveValue = -computeObjectiveValue;
            }
            int evaluations2 = getEvaluations();
            this.f109367r.setEntry(evaluations, computeObjectiveValue);
            if (evaluations2 == 1) {
                this.f109362m = 0;
                d10 = computeObjectiveValue;
            } else if (computeObjectiveValue < this.f109367r.getEntry(this.f109362m)) {
                this.f109362m = evaluations;
            }
            if (evaluations2 > i21 + 1) {
                i3 = i34;
                j = 0;
                d5 = d;
                this.f109364o.setEntry(0, i20, d5);
                this.f109364o.setEntry(evaluations, i20, d5);
                double d15 = -d5;
                i4 = i33;
                this.f109364o.setEntry(i4, i20, d15);
                this.f109364o.setEntry(i17, i20, d15);
                int i35 = i4 - 1;
                c = 2;
                this.f109355B.setEntry((((i4 * i35) / 2) + i17) - 1, (((d10 - this.f109367r.getEntry(i4)) - this.f109367r.getEntry(i17)) + computeObjectiveValue) / (this.f109365p.getEntry(evaluations, i35) * this.f109365p.getEntry(evaluations, i17 - 1)));
            } else if (evaluations2 < 2 || evaluations2 > i7) {
                if (evaluations2 >= i34 + 2) {
                    double d16 = (computeObjectiveValue - d10) / d14;
                    double d17 = d14 - d4;
                    this.f109355B.setEntry((((i + 1) * i) / 2) - 1, ((d16 - this.f109369t.getEntry(i20)) * 2.0d) / d17);
                    ArrayRealVector arrayRealVector = this.f109369t;
                    arrayRealVector.setEntry(i20, ((arrayRealVector.getEntry(i20) * d14) - (d16 * d4)) / d17);
                    double d18 = d4 * d14;
                    j = 0;
                    if (d18 < 0.0d) {
                        i5 = i;
                        if (computeObjectiveValue < this.f109367r.getEntry(i5)) {
                            ArrayRealVector arrayRealVector2 = this.f109367r;
                            i32 = i32;
                            i3 = i34;
                            arrayRealVector2.setEntry(evaluations, arrayRealVector2.getEntry(i5));
                            this.f109367r.setEntry(i5, computeObjectiveValue);
                            if (this.f109362m == evaluations) {
                                this.f109362m = i5;
                            }
                            d6 = d14;
                            this.f109365p.setEntry(i5, i20, d6);
                            this.f109365p.setEntry(evaluations, i20, d4);
                            this.f109363n.setEntry(0, i20, (-(d4 + d6)) / d18);
                            this.f109363n.setEntry(evaluations, i20, (-0.5d) / this.f109365p.getEntry(i5, i20));
                            Array2DRowRealMatrix array2DRowRealMatrix3 = this.f109363n;
                            array2DRowRealMatrix3.setEntry(i5, i20, (-array2DRowRealMatrix3.getEntry(0, i20)) - this.f109363n.getEntry(evaluations, i20));
                            this.f109364o.setEntry(0, i20, FastMath.sqrt(2.0d) / d18);
                            this.f109364o.setEntry(evaluations, i20, FastMath.sqrt(0.5d) / d2);
                            Array2DRowRealMatrix array2DRowRealMatrix4 = this.f109364o;
                            array2DRowRealMatrix4.setEntry(i5, i20, (-array2DRowRealMatrix4.getEntry(0, i20)) - this.f109364o.getEntry(evaluations, i20));
                        } else {
                            i32 = i32;
                            i3 = i34;
                        }
                    } else {
                        i32 = i32;
                        i3 = i34;
                        i5 = i;
                    }
                    d6 = d14;
                    this.f109363n.setEntry(0, i20, (-(d4 + d6)) / d18);
                    this.f109363n.setEntry(evaluations, i20, (-0.5d) / this.f109365p.getEntry(i5, i20));
                    Array2DRowRealMatrix array2DRowRealMatrix32 = this.f109363n;
                    array2DRowRealMatrix32.setEntry(i5, i20, (-array2DRowRealMatrix32.getEntry(0, i20)) - this.f109363n.getEntry(evaluations, i20));
                    this.f109364o.setEntry(0, i20, FastMath.sqrt(2.0d) / d18);
                    this.f109364o.setEntry(evaluations, i20, FastMath.sqrt(0.5d) / d2);
                    Array2DRowRealMatrix array2DRowRealMatrix42 = this.f109364o;
                    array2DRowRealMatrix42.setEntry(i5, i20, (-array2DRowRealMatrix42.getEntry(0, i20)) - this.f109364o.getEntry(evaluations, i20));
                } else {
                    i32 = i32;
                    i3 = i34;
                    j = 0;
                }
                i4 = i33;
                d5 = d;
                c = 2;
            } else {
                this.f109369t.setEntry(i19, (computeObjectiveValue - d10) / d4);
                if (i32 < evaluations2 + i34) {
                    double d19 = 1.0d / d4;
                    this.f109363n.setEntry(0, i19, -d19);
                    this.f109363n.setEntry(evaluations, i19, d19);
                    this.f109363n.setEntry(i32 + i19, i19, (-0.5d) * d2);
                }
                i32 = i32;
                i3 = i34;
                i4 = i33;
                d5 = d;
                c = 2;
                j = 0;
            }
            i6 = i32;
            if (getEvaluations() >= i6) {
                return;
            }
            dimension = i3;
            i16 = i4;
            d9 = d5;
            d8 = d2;
        }
    }

    /* renamed from: k */
    public final void m68004k(double[] dArr, double[] dArr2) {
        m67998i();
        int length = getStartPoint().length;
        if (length < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(length), 2, true);
        }
        int i = length + 2;
        int i2 = length + 1;
        int[] iArr = {i, (i * i2) / 2};
        int i3 = this.f109356g;
        if (i3 < iArr[0] || i3 > iArr[1]) {
            throw new OutOfRangeException(LocalizedFormats.NUMBER_OF_INTERPOLATION_POINTS, Integer.valueOf(this.f109356g), Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
        }
        this.f109361l = new double[length];
        double d = this.f109357h * 2.0d;
        double d2 = Double.POSITIVE_INFINITY;
        for (int i4 = 0; i4 < length; i4++) {
            double[] dArr3 = this.f109361l;
            double d3 = dArr2[i4] - dArr[i4];
            dArr3[i4] = d3;
            d2 = FastMath.min(d2, d3);
        }
        if (d2 < d) {
            this.f109357h = d2 / 3.0d;
        }
        this.f109363n = new Array2DRowRealMatrix(this.f109356g + length, length);
        int i5 = this.f109356g;
        this.f109364o = new Array2DRowRealMatrix(i5, (i5 - length) - 1);
        this.f109365p = new Array2DRowRealMatrix(this.f109356g, length);
        this.f109366q = new ArrayRealVector(length);
        this.f109367r = new ArrayRealVector(this.f109356g);
        this.f109368s = new ArrayRealVector(length);
        this.f109369t = new ArrayRealVector(length);
        this.f109370u = new ArrayRealVector(length);
        this.f109371v = new ArrayRealVector(length);
        this.f109372w = new ArrayRealVector(this.f109356g);
        this.f109373x = new ArrayRealVector(length);
        this.f109374y = new ArrayRealVector(length);
        this.f109375z = new ArrayRealVector(length);
        this.f109354A = new ArrayRealVector(this.f109356g + length);
        this.f109355B = new ArrayRealVector((length * i2) / 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:228:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x078e  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double[] m68005l(double r78, org.apache.commons.math3.linear.ArrayRealVector r80, org.apache.commons.math3.linear.ArrayRealVector r81, org.apache.commons.math3.linear.ArrayRealVector r82, org.apache.commons.math3.linear.ArrayRealVector r83, org.apache.commons.math3.linear.ArrayRealVector r84) {
        /*
            Method dump skipped, instructions count: 2227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.direct.BOBYQAOptimizer.m68005l(double, org.apache.commons.math3.linear.ArrayRealVector, org.apache.commons.math3.linear.ArrayRealVector, org.apache.commons.math3.linear.ArrayRealVector, org.apache.commons.math3.linear.ArrayRealVector, org.apache.commons.math3.linear.ArrayRealVector):double[]");
    }

    /* renamed from: m */
    public final void m68006m(double d, double d2, int i) {
        double d3;
        int i2 = i;
        m67998i();
        int dimension = this.f109360k.getDimension();
        int i3 = this.f109356g;
        int i4 = 1;
        int i5 = (i3 - dimension) - 1;
        ArrayRealVector arrayRealVector = new ArrayRealVector(i3 + dimension);
        int i6 = 0;
        double d4 = 0.0d;
        for (int i7 = 0; i7 < i3; i7++) {
            for (int i8 = 0; i8 < i5; i8++) {
                d4 = FastMath.max(d4, FastMath.abs(this.f109364o.getEntry(i7, i8)));
            }
        }
        double d5 = d4 * 1.0E-20d;
        while (i4 < i5) {
            if (FastMath.abs(this.f109364o.getEntry(i2, i4)) > d5) {
                double entry = this.f109364o.getEntry(i2, 0);
                double entry2 = this.f109364o.getEntry(i2, i4);
                double sqrt = FastMath.sqrt((entry * entry) + (entry2 * entry2));
                double entry3 = this.f109364o.getEntry(i2, 0) / sqrt;
                double entry4 = this.f109364o.getEntry(i2, i4) / sqrt;
                int i9 = 0;
                while (i9 < i3) {
                    double entry5 = (this.f109364o.getEntry(i9, 0) * entry3) + (this.f109364o.getEntry(i9, i4) * entry4);
                    Array2DRowRealMatrix array2DRowRealMatrix = this.f109364o;
                    array2DRowRealMatrix.setEntry(i9, i4, (array2DRowRealMatrix.getEntry(i9, i4) * entry3) - (this.f109364o.getEntry(i9, 0) * entry4));
                    this.f109364o.setEntry(i9, 0, entry5);
                    i9++;
                    d5 = d5;
                }
            }
            this.f109364o.setEntry(i2, i4, 0.0d);
            i4++;
            d5 = d5;
        }
        for (int i10 = 0; i10 < i3; i10++) {
            arrayRealVector.setEntry(i10, this.f109364o.getEntry(i2, 0) * this.f109364o.getEntry(i10, 0));
        }
        double entry6 = arrayRealVector.getEntry(i2);
        double entry7 = this.f109354A.getEntry(i2);
        ArrayRealVector arrayRealVector2 = this.f109354A;
        arrayRealVector2.setEntry(i2, arrayRealVector2.getEntry(i2) - 1.0d);
        double sqrt2 = FastMath.sqrt(d2);
        double d6 = entry7 / sqrt2;
        double entry8 = this.f109364o.getEntry(i2, 0) / sqrt2;
        int i11 = 0;
        while (i11 < i3) {
            Array2DRowRealMatrix array2DRowRealMatrix2 = this.f109364o;
            double d7 = d6;
            double entry9 = (array2DRowRealMatrix2.getEntry(i11, i6) * d6) - (this.f109354A.getEntry(i11) * entry8);
            i6 = 0;
            array2DRowRealMatrix2.setEntry(i11, 0, entry9);
            i11++;
            d6 = d7;
        }
        int i12 = i6;
        while (i12 < dimension) {
            int i13 = i3 + i12;
            arrayRealVector.setEntry(i13, this.f109363n.getEntry(i2, i12));
            double entry10 = ((this.f109354A.getEntry(i13) * entry6) - (arrayRealVector.getEntry(i13) * entry7)) / d2;
            int i14 = i12;
            double entry11 = (((-d) * arrayRealVector.getEntry(i13)) - (this.f109354A.getEntry(i13) * entry7)) / d2;
            int i15 = 0;
            while (i15 <= i13) {
                int i16 = dimension;
                Array2DRowRealMatrix array2DRowRealMatrix3 = this.f109363n;
                double d8 = entry6;
                int i17 = i14;
                ArrayRealVector arrayRealVector3 = arrayRealVector;
                array2DRowRealMatrix3.setEntry(i15, i17, array2DRowRealMatrix3.getEntry(i15, i17) + (this.f109354A.getEntry(i15) * entry10) + (arrayRealVector.getEntry(i15) * entry11));
                if (i15 >= i3) {
                    Array2DRowRealMatrix array2DRowRealMatrix4 = this.f109363n;
                    d3 = entry7;
                    array2DRowRealMatrix4.setEntry(i13, i15 - i3, array2DRowRealMatrix4.getEntry(i15, i17));
                } else {
                    d3 = entry7;
                }
                i15++;
                arrayRealVector = arrayRealVector3;
                dimension = i16;
                entry7 = d3;
                i14 = i17;
                entry6 = d8;
            }
            i12 = i14 + 1;
            i2 = i;
            entry6 = entry6;
        }
    }

    public BOBYQAOptimizer(int i, double d, double d2) {
        super(null);
        this.f109356g = i;
        this.f109357h = d;
        this.f109358i = d2;
    }
}
