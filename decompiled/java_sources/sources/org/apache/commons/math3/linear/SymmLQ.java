package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.ExceptionContext;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.IterationManager;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class SymmLQ extends PreconditionedIterativeLinearSolver {

    /* renamed from: d */
    public static final String f108602d = "operator";

    /* renamed from: e */
    public static final String f108603e = "threshold";

    /* renamed from: f */
    public static final String f108604f = "vector";

    /* renamed from: g */
    public static final String f108605g = "vector1";

    /* renamed from: h */
    public static final String f108606h = "vector2";

    /* renamed from: b */
    public final boolean f108607b;

    /* renamed from: c */
    public final double f108608c;

    /* renamed from: org.apache.commons.math3.linear.SymmLQ$a */
    /* loaded from: classes12.dex */
    public static class C19178a {

        /* renamed from: F */
        public static final double f108609F;

        /* renamed from: G */
        public static final double f108610G;

        /* renamed from: A */
        public RealVector f108611A;

        /* renamed from: B */
        public final RealVector f108612B;

        /* renamed from: C */
        public RealVector f108613C;

        /* renamed from: D */
        public double f108614D;

        /* renamed from: E */
        public boolean f108615E;

        /* renamed from: a */
        public final RealLinearOperator f108616a;

        /* renamed from: b */
        public final RealVector f108617b;

        /* renamed from: c */
        public final boolean f108618c;

        /* renamed from: d */
        public final double f108619d;

        /* renamed from: e */
        public double f108620e;

        /* renamed from: f */
        public double f108621f;

        /* renamed from: g */
        public double f108622g;

        /* renamed from: h */
        public double f108623h;

        /* renamed from: i */
        public double f108624i;

        /* renamed from: j */
        public double f108625j;

        /* renamed from: k */
        public double f108626k;

        /* renamed from: l */
        public double f108627l;

        /* renamed from: m */
        public double f108628m;

        /* renamed from: n */
        public final boolean f108629n;

        /* renamed from: o */
        public boolean f108630o;

        /* renamed from: p */
        public double f108631p;

        /* renamed from: q */
        public final RealLinearOperator f108632q;

        /* renamed from: r */
        public double f108633r;

        /* renamed from: s */
        public final RealVector f108634s;

        /* renamed from: t */
        public double f108635t;

        /* renamed from: u */
        public RealVector f108636u;

        /* renamed from: v */
        public RealVector f108637v;

        /* renamed from: w */
        public double f108638w;

        /* renamed from: x */
        public final double f108639x;

        /* renamed from: y */
        public double f108640y;

        /* renamed from: z */
        public double f108641z;

        static {
            double ulp = FastMath.ulp(1.0d);
            f108610G = ulp;
            f108609F = FastMath.cbrt(ulp);
        }

        public C19178a(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, boolean z, double d, double d2, boolean z2) {
            this.f108616a = realLinearOperator;
            this.f108632q = realLinearOperator2;
            this.f108617b = realVector;
            this.f108612B = new ArrayRealVector(realVector.getDimension());
            this.f108629n = z;
            this.f108639x = d;
            this.f108634s = realLinearOperator2 != null ? realLinearOperator2.operate(realVector) : realVector;
            this.f108630o = false;
            this.f108618c = z2;
            this.f108619d = d2;
        }

        /* renamed from: c */
        public static void m67826c(RealLinearOperator realLinearOperator, RealVector realVector, RealVector realVector2, RealVector realVector3) throws NonSelfAdjointOperatorException {
            double dotProduct = realVector2.dotProduct(realVector2);
            double dotProduct2 = realVector.dotProduct(realVector3);
            double d = (f108610G + dotProduct) * f108609F;
            if (FastMath.abs(dotProduct - dotProduct2) <= d) {
                return;
            }
            NonSelfAdjointOperatorException nonSelfAdjointOperatorException = new NonSelfAdjointOperatorException();
            ExceptionContext context = nonSelfAdjointOperatorException.getContext();
            context.setValue("operator", realLinearOperator);
            context.setValue(SymmLQ.f108605g, realVector);
            context.setValue(SymmLQ.f108606h, realVector2);
            context.setValue(SymmLQ.f108603e, Double.valueOf(d));
            throw nonSelfAdjointOperatorException;
        }

        /* renamed from: d */
        public static void m67827d(double d, RealVector realVector, double d2, RealVector realVector2, RealVector realVector3) {
            int dimension = realVector3.getDimension();
            for (int i = 0; i < dimension; i++) {
                realVector3.setEntry(i, (realVector.getEntry(i) * d) + (realVector2.getEntry(i) * d2) + realVector3.getEntry(i));
            }
        }

        /* renamed from: e */
        public static void m67828e(double d, RealVector realVector, RealVector realVector2) {
            int dimension = realVector.getDimension();
            for (int i = 0; i < dimension; i++) {
                realVector2.setEntry(i, (realVector.getEntry(i) * d) + realVector2.getEntry(i));
            }
        }

        /* renamed from: j */
        public static void m67829j(RealLinearOperator realLinearOperator, RealVector realVector) throws NonPositiveDefiniteOperatorException {
            NonPositiveDefiniteOperatorException nonPositiveDefiniteOperatorException = new NonPositiveDefiniteOperatorException();
            ExceptionContext context = nonPositiveDefiniteOperatorException.getContext();
            context.setValue("operator", realLinearOperator);
            context.setValue("vector", realVector);
            throw nonPositiveDefiniteOperatorException;
        }

        /* renamed from: a */
        public boolean m67830a() {
            return this.f108615E;
        }

        /* renamed from: b */
        public boolean m67831b() {
            return this.f108620e < f108610G;
        }

        /* renamed from: f */
        public double m67832f() {
            return this.f108638w;
        }

        /* renamed from: g */
        public boolean m67833g() {
            return this.f108630o;
        }

        /* renamed from: h */
        public void m67834h() {
            this.f108612B.set(0.0d);
            RealVector copy = this.f108617b.copy();
            this.f108636u = copy;
            RealLinearOperator realLinearOperator = this.f108632q;
            RealVector copy2 = realLinearOperator == null ? this.f108617b.copy() : realLinearOperator.operate(copy);
            this.f108613C = copy2;
            RealLinearOperator realLinearOperator2 = this.f108632q;
            if (realLinearOperator2 != null && this.f108618c) {
                m67826c(realLinearOperator2, this.f108636u, copy2, realLinearOperator2.operate(copy2));
            }
            double dotProduct = this.f108636u.dotProduct(this.f108613C);
            this.f108621f = dotProduct;
            if (dotProduct < 0.0d) {
                m67829j(this.f108632q, this.f108613C);
            }
            double d = this.f108621f;
            if (d == 0.0d) {
                this.f108615E = true;
                return;
            }
            this.f108615E = false;
            double sqrt = FastMath.sqrt(d);
            this.f108621f = sqrt;
            RealVector mapMultiply = this.f108613C.mapMultiply(1.0d / sqrt);
            RealVector operate = this.f108616a.operate(mapMultiply);
            this.f108613C = operate;
            if (this.f108618c) {
                RealLinearOperator realLinearOperator3 = this.f108616a;
                m67826c(realLinearOperator3, mapMultiply, operate, realLinearOperator3.operate(operate));
            }
            m67828e(-this.f108639x, mapMultiply, this.f108613C);
            double dotProduct2 = mapMultiply.dotProduct(this.f108613C);
            m67828e((-dotProduct2) / this.f108621f, this.f108636u, this.f108613C);
            m67828e((-mapMultiply.dotProduct(this.f108613C)) / mapMultiply.dotProduct(mapMultiply), mapMultiply, this.f108613C);
            RealVector copy3 = this.f108613C.copy();
            this.f108637v = copy3;
            RealLinearOperator realLinearOperator4 = this.f108632q;
            if (realLinearOperator4 != null) {
                this.f108613C = realLinearOperator4.operate(copy3);
            }
            this.f108635t = this.f108621f;
            double dotProduct3 = this.f108637v.dotProduct(this.f108613C);
            this.f108620e = dotProduct3;
            if (dotProduct3 < 0.0d) {
                m67829j(this.f108632q, this.f108613C);
            }
            double sqrt2 = FastMath.sqrt(this.f108620e);
            this.f108620e = sqrt2;
            double d2 = this.f108621f;
            this.f108623h = d2;
            this.f108626k = dotProduct2;
            this.f108624i = sqrt2;
            this.f108625j = d2;
            this.f108633r = 0.0d;
            this.f108622g = 0.0d;
            this.f108640y = 1.0d;
            this.f108641z = (dotProduct2 * dotProduct2) + (sqrt2 * sqrt2);
            this.f108614D = 0.0d;
            double abs = FastMath.abs(dotProduct2) + f108610G;
            this.f108627l = abs;
            this.f108628m = abs;
            if (this.f108629n) {
                ArrayRealVector arrayRealVector = new ArrayRealVector(this.f108616a.getRowDimension());
                this.f108611A = arrayRealVector;
                arrayRealVector.set(0.0d);
            } else {
                this.f108611A = mapMultiply;
            }
            m67837l();
        }

        /* renamed from: i */
        public void m67835i(RealVector realVector) {
            int dimension = this.f108612B.getDimension();
            int i = 0;
            if (this.f108631p < this.f108623h) {
                if (!this.f108629n) {
                    realVector.setSubVector(0, this.f108612B);
                    return;
                }
                double d = this.f108622g / this.f108621f;
                while (i < dimension) {
                    realVector.setEntry(i, this.f108612B.getEntry(i) + (this.f108634s.getEntry(i) * d));
                    i++;
                }
                return;
            }
            double sqrt = FastMath.sqrt(this.f108641z);
            double d2 = this.f108626k;
            if (d2 == 0.0d) {
                d2 = f108610G * sqrt;
            }
            double d3 = this.f108625j / d2;
            double d4 = (this.f108622g + (this.f108640y * d3)) / this.f108621f;
            if (!this.f108629n) {
                while (i < dimension) {
                    realVector.setEntry(i, this.f108612B.getEntry(i) + (this.f108611A.getEntry(i) * d3));
                    i++;
                }
            } else {
                while (i < dimension) {
                    realVector.setEntry(i, this.f108612B.getEntry(i) + (this.f108611A.getEntry(i) * d3) + (this.f108634s.getEntry(i) * d4));
                    i++;
                }
            }
        }

        /* renamed from: k */
        public void m67836k() {
            RealVector mapMultiply = this.f108613C.mapMultiply(1.0d / this.f108620e);
            RealVector operate = this.f108616a.operate(mapMultiply);
            this.f108613C = operate;
            m67827d(-this.f108639x, mapMultiply, (-this.f108620e) / this.f108635t, this.f108636u, operate);
            double dotProduct = mapMultiply.dotProduct(this.f108613C);
            m67828e((-dotProduct) / this.f108620e, this.f108637v, this.f108613C);
            this.f108636u = this.f108637v;
            RealVector realVector = this.f108613C;
            this.f108637v = realVector;
            RealLinearOperator realLinearOperator = this.f108632q;
            if (realLinearOperator != null) {
                this.f108613C = realLinearOperator.operate(realVector);
            }
            this.f108635t = this.f108620e;
            double dotProduct2 = this.f108637v.dotProduct(this.f108613C);
            this.f108620e = dotProduct2;
            if (dotProduct2 < 0.0d) {
                m67829j(this.f108632q, this.f108613C);
            }
            double sqrt = FastMath.sqrt(this.f108620e);
            this.f108620e = sqrt;
            double d = this.f108641z;
            double d2 = this.f108635t;
            this.f108641z = d + (dotProduct * dotProduct) + (d2 * d2) + (sqrt * sqrt);
            double d3 = this.f108626k;
            double sqrt2 = FastMath.sqrt((d3 * d3) + (d2 * d2));
            double d4 = this.f108626k / sqrt2;
            double d5 = this.f108635t / sqrt2;
            double d6 = this.f108624i;
            double d7 = (d4 * d6) + (d5 * dotProduct);
            this.f108626k = (d6 * d5) - (dotProduct * d4);
            double d8 = this.f108620e;
            double d9 = d5 * d8;
            this.f108624i = (-d4) * d8;
            double d10 = this.f108625j / sqrt2;
            double d11 = d10 * d4;
            double d12 = d10 * d5;
            int dimension = this.f108612B.getDimension();
            int i = 0;
            while (i < dimension) {
                double entry = this.f108612B.getEntry(i);
                double entry2 = mapMultiply.getEntry(i);
                double entry3 = this.f108611A.getEntry(i);
                this.f108612B.setEntry(i, entry + (entry3 * d11) + (entry2 * d12));
                this.f108611A.setEntry(i, (entry3 * d5) - (entry2 * d4));
                i++;
                dimension = dimension;
                d11 = d11;
            }
            double d13 = this.f108622g;
            double d14 = this.f108640y;
            this.f108622g = d13 + (d4 * d14 * d10);
            this.f108640y = d14 * d5;
            this.f108627l = FastMath.max(this.f108627l, sqrt2);
            this.f108628m = FastMath.min(this.f108628m, sqrt2);
            this.f108614D += d10 * d10;
            this.f108625j = this.f108633r - (d7 * d10);
            this.f108633r = (-d9) * d10;
            m67837l();
        }

        /* renamed from: l */
        public final void m67837l() {
            double sqrt = FastMath.sqrt(this.f108641z);
            double sqrt2 = FastMath.sqrt(this.f108614D);
            double d = f108610G;
            double d2 = sqrt * d;
            double d3 = sqrt * sqrt2;
            double d4 = d3 * d;
            double d5 = d3 * this.f108619d;
            double d6 = this.f108626k;
            if (d6 != 0.0d) {
                d2 = d6;
            }
            double d7 = this.f108625j;
            double d8 = this.f108633r;
            this.f108631p = FastMath.sqrt((d7 * d7) + (d8 * d8));
            double abs = ((this.f108640y * this.f108621f) * this.f108620e) / FastMath.abs(d2);
            this.f108623h = abs;
            double min = this.f108631p <= abs ? this.f108627l / this.f108628m : this.f108627l / FastMath.min(this.f108628m, FastMath.abs(d2));
            if (d * min >= 0.1d) {
                throw new IllConditionedOperatorException(min);
            }
            if (this.f108621f <= d4) {
                throw new SingularOperatorException();
            }
            this.f108638w = FastMath.min(this.f108623h, this.f108631p);
            double d9 = this.f108623h;
            this.f108630o = d9 <= d4 || d9 <= d5;
        }
    }

    public SymmLQ(int i, double d, boolean z) {
        super(i);
        this.f108608c = d;
        this.f108607b = z;
    }

    public final boolean getCheck() {
        return this.f108607b;
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver
    public RealVector solve(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, MaxCountExceededException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException {
        MathUtils.checkNotNull(realLinearOperator);
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, new ArrayRealVector(realLinearOperator.getColumnDimension()), false, 0.0d);
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver
    public RealVector solveInPlace(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, realVector2, false, 0.0d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0062, code lost:
    
        if (r0 == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
    
        r9.incrementIterationCount();
        r9.fireIterationStartedEvent(new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent(r20, r9.getIterations(), r24, r23, r5.m67832f()));
        r5.m67836k();
        r5.m67835i(r24);
        r9.fireIterationPerformedEvent(new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent(r20, r9.getIterations(), r24, r23, r5.m67832f()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0099, code lost:
    
        if (r5.m67833g() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x009b, code lost:
    
        r9.fireTerminationEvent(new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent(r20, r9.getIterations(), r24, r23, r5.m67832f()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b2, code lost:
    
        return r24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.linear.RealVector solveInPlace(org.apache.commons.math3.linear.RealLinearOperator r21, org.apache.commons.math3.linear.RealLinearOperator r22, org.apache.commons.math3.linear.RealVector r23, org.apache.commons.math3.linear.RealVector r24, boolean r25, double r26) throws org.apache.commons.math3.exception.NullArgumentException, org.apache.commons.math3.linear.NonSquareOperatorException, org.apache.commons.math3.exception.DimensionMismatchException, org.apache.commons.math3.linear.NonSelfAdjointOperatorException, org.apache.commons.math3.linear.NonPositiveDefiniteOperatorException, org.apache.commons.math3.linear.IllConditionedOperatorException, org.apache.commons.math3.exception.MaxCountExceededException {
        /*
            r20 = this;
            r7 = r20
            r8 = r24
            org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver.checkParameters(r21, r22, r23, r24)
            org.apache.commons.math3.util.IterationManager r9 = r20.getIterationManager()
            r9.resetIterationCount()
            r9.incrementIterationCount()
            org.apache.commons.math3.linear.SymmLQ$a r5 = new org.apache.commons.math3.linear.SymmLQ$a
            double r0 = r7.f108608c
            boolean r2 = r7.f108607b
            r10 = r5
            r11 = r21
            r12 = r22
            r13 = r23
            r14 = r25
            r15 = r26
            r17 = r0
            r19 = r2
            r10.<init>(r11, r12, r13, r14, r15, r17, r19)
            r5.m67834h()
            r5.m67835i(r8)
            org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent r10 = new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent
            int r2 = r9.getIterations()
            double r11 = r5.m67832f()
            r0 = r10
            r1 = r20
            r3 = r24
            r4 = r23
            r13 = r5
            r5 = r11
            r0.<init>(r1, r2, r3, r4, r5)
            boolean r0 = r13.m67830a()
            if (r0 == 0) goto L4f
            r9.fireTerminationEvent(r10)
            return r8
        L4f:
            boolean r0 = r13.m67831b()
            if (r0 != 0) goto L5e
            boolean r0 = r13.m67833g()
            if (r0 == 0) goto L5c
            goto L5e
        L5c:
            r0 = 0
            goto L5f
        L5e:
            r0 = 1
        L5f:
            r9.fireInitializationEvent(r10)
            if (r0 != 0) goto L9b
        L64:
            r9.incrementIterationCount()
            org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent r10 = new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent
            int r2 = r9.getIterations()
            double r5 = r13.m67832f()
            r0 = r10
            r1 = r20
            r3 = r24
            r4 = r23
            r0.<init>(r1, r2, r3, r4, r5)
            r9.fireIterationStartedEvent(r10)
            r13.m67836k()
            r13.m67835i(r8)
            org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent r10 = new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent
            int r2 = r9.getIterations()
            double r5 = r13.m67832f()
            r0 = r10
            r0.<init>(r1, r2, r3, r4, r5)
            r9.fireIterationPerformedEvent(r10)
            boolean r0 = r13.m67833g()
            if (r0 == 0) goto L64
        L9b:
            org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent r10 = new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent
            int r2 = r9.getIterations()
            double r5 = r13.m67832f()
            r0 = r10
            r1 = r20
            r3 = r24
            r4 = r23
            r0.<init>(r1, r2, r3, r4, r5)
            r9.fireTerminationEvent(r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.linear.SymmLQ.solveInPlace(org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.RealVector, org.apache.commons.math3.linear.RealVector, boolean, double):org.apache.commons.math3.linear.RealVector");
    }

    public SymmLQ(IterationManager iterationManager, double d, boolean z) {
        super(iterationManager);
        this.f108608c = d;
        this.f108607b = z;
    }

    public RealVector solve(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, boolean z, double d) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, MaxCountExceededException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException {
        MathUtils.checkNotNull(realLinearOperator);
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, new ArrayRealVector(realLinearOperator.getColumnDimension()), z, d);
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver
    public RealVector solve(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realVector2);
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, realVector2.copy(), false, 0.0d);
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver, org.apache.commons.math3.linear.IterativeLinearSolver
    public RealVector solve(RealLinearOperator realLinearOperator, RealVector realVector) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realLinearOperator);
        ArrayRealVector arrayRealVector = new ArrayRealVector(realLinearOperator.getColumnDimension());
        arrayRealVector.set(0.0d);
        return solveInPlace(realLinearOperator, null, realVector, arrayRealVector, false, 0.0d);
    }

    public RealVector solve(RealLinearOperator realLinearOperator, RealVector realVector, boolean z, double d) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realLinearOperator);
        return solveInPlace(realLinearOperator, null, realVector, new ArrayRealVector(realLinearOperator.getColumnDimension()), z, d);
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver, org.apache.commons.math3.linear.IterativeLinearSolver
    public RealVector solve(RealLinearOperator realLinearOperator, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realVector2);
        return solveInPlace(realLinearOperator, null, realVector, realVector2.copy(), false, 0.0d);
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver, org.apache.commons.math3.linear.IterativeLinearSolver
    public RealVector solveInPlace(RealLinearOperator realLinearOperator, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        return solveInPlace(realLinearOperator, null, realVector, realVector2, false, 0.0d);
    }
}
