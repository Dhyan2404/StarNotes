package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;

/* loaded from: classes12.dex */
public class BracketingNthOrderBrentSolver extends AbstractUnivariateSolver implements BracketedUnivariateSolver<UnivariateFunction> {

    /* renamed from: m */
    public static final double f107967m = 1.0E-6d;

    /* renamed from: n */
    public static final int f107968n = 5;

    /* renamed from: o */
    public static final int f107969o = 2;

    /* renamed from: p */
    public static final double f107970p = 0.0625d;

    /* renamed from: k */
    public final int f107971k;

    /* renamed from: l */
    public AllowedSolution f107972l;

    /* renamed from: org.apache.commons.math3.analysis.solvers.BracketingNthOrderBrentSolver$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19068a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f107973a;

        static {
            int[] iArr = new int[AllowedSolution.values().length];
            f107973a = iArr;
            try {
                iArr[AllowedSolution.ANY_SIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f107973a[AllowedSolution.LEFT_SIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f107973a[AllowedSolution.RIGHT_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f107973a[AllowedSolution.BELOW_SIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f107973a[AllowedSolution.ABOVE_SIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public BracketingNthOrderBrentSolver() {
        this(1.0E-6d, 5);
    }

    /* renamed from: a */
    public final double m67529a(double d, double[] dArr, double[] dArr2, int i, int i2) {
        int i3;
        int i4 = i;
        while (true) {
            i3 = i2 - 1;
            if (i4 >= i3) {
                break;
            }
            int i5 = i4 + 1;
            int i6 = i5 - i;
            while (i3 > i4) {
                dArr[i3] = (dArr[i3] - dArr[i3 - 1]) / (dArr2[i3] - dArr2[i3 - i6]);
                i3--;
            }
            i4 = i5;
        }
        double d2 = 0.0d;
        while (i3 >= i) {
            d2 = (d2 * (d - dArr2[i3])) + dArr[i3];
            i3--;
        }
        return d2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01d8, code lost:
    
        r26 = r1;
        r33 = r14;
        r0 = org.apache.commons.math3.analysis.solvers.BracketingNthOrderBrentSolver.C19068a.f107973a[r38.f107972l.ordinal()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01e9, code lost:
    
        if (r0 == 1) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01ec, code lost:
    
        if (r0 == 2) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ef, code lost:
    
        if (r0 == 3) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01f2, code lost:
    
        if (r0 == 4) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01f5, code lost:
    
        if (r0 != 5) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01fb, code lost:
    
        if (r18 >= 0.0d) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ff, code lost:
    
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:?, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0205, code lost:
    
        throw new org.apache.commons.math3.exception.MathInternalError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x020a, code lost:
    
        if (r18 > 0.0d) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x020f, code lost:
    
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:?, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0210, code lost:
    
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0211, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0214, code lost:
    
        if (r26 >= r33) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0219, code lost:
    
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:?, code lost:
    
        return r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0169 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012f  */
    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double doSolve() throws org.apache.commons.math3.exception.TooManyEvaluationsException, org.apache.commons.math3.exception.NumberIsTooLargeException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.analysis.solvers.BracketingNthOrderBrentSolver.doSolve():double");
    }

    public int getMaximalOrder() {
        return this.f107971k;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, AllowedSolution allowedSolution) throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        this.f107972l = allowedSolution;
        return super.solve(i, univariateFunction, d, d2);
    }

    public BracketingNthOrderBrentSolver(double d, int i) throws NumberIsTooSmallException {
        super(d);
        if (i >= 2) {
            this.f107971k = i;
            this.f107972l = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, double d3, AllowedSolution allowedSolution) throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        this.f107972l = allowedSolution;
        return super.solve(i, (int) univariateFunction, d, d2, d3);
    }

    public BracketingNthOrderBrentSolver(double d, double d2, int i) throws NumberIsTooSmallException {
        super(d, d2);
        if (i >= 2) {
            this.f107971k = i;
            this.f107972l = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
    }

    public BracketingNthOrderBrentSolver(double d, double d2, double d3, int i) throws NumberIsTooSmallException {
        super(d, d2, d3);
        if (i >= 2) {
            this.f107971k = i;
            this.f107972l = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
    }
}
