package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.IntegerSequence;

/* loaded from: classes12.dex */
public class FieldBracketingNthOrderBrentSolver<T extends RealFieldElement<T>> implements BracketedRealFieldUnivariateSolver<T> {

    /* renamed from: g */
    public static final int f107975g = 2;

    /* renamed from: a */
    public final Field<T> f107976a;

    /* renamed from: b */
    public final int f107977b;

    /* renamed from: c */
    public final T f107978c;

    /* renamed from: d */
    public final T f107979d;

    /* renamed from: e */
    public final T f107980e;

    /* renamed from: f */
    public IntegerSequence.Incrementor f107981f;

    /* renamed from: org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19069a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f107982a;

        static {
            int[] iArr = new int[AllowedSolution.values().length];
            f107982a = iArr;
            try {
                iArr[AllowedSolution.ANY_SIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f107982a[AllowedSolution.LEFT_SIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f107982a[AllowedSolution.RIGHT_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f107982a[AllowedSolution.BELOW_SIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f107982a[AllowedSolution.ABOVE_SIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public FieldBracketingNthOrderBrentSolver(T t, T t2, T t3, int i) throws NumberIsTooSmallException {
        if (i < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
        }
        this.f107976a = t.getField();
        this.f107977b = i;
        this.f107979d = t2;
        this.f107980e = t;
        this.f107978c = t3;
        this.f107981f = IntegerSequence.Incrementor.create();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final T m67531a(T t, T[] tArr, T[] tArr2, int i, int i2) {
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
                tArr[i3] = (RealFieldElement) ((RealFieldElement) tArr[i3].subtract((Decimal64) tArr[i3 - 1])).divide((RealFieldElement) tArr2[i3].subtract(tArr2[i3 - i6]));
                i3--;
            }
            i4 = i5;
        }
        T zero = this.f107976a.getZero();
        while (i3 >= i) {
            zero = (T) tArr[i3].add((Decimal64) zero.multiply(t.subtract(tArr2[i3])));
            i3--;
        }
        return zero;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T getAbsoluteAccuracy() {
        return this.f107979d;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public int getEvaluations() {
        return this.f107981f.getCount();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T getFunctionValueAccuracy() {
        return this.f107978c;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public int getMaxEvaluations() {
        return this.f107981f.getMaximalCount();
    }

    public int getMaximalOrder() {
        return this.f107977b;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T getRelativeAccuracy() {
        return this.f107980e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public T solve(int i, RealFieldUnivariateFunction<T> realFieldUnivariateFunction, T t, T t2, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        return (T) solve(i, realFieldUnivariateFunction, t, t2, (RealFieldElement) ((RealFieldElement) t.add(t2)).divide(2.0d), allowedSolution);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x032f, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0330, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0341, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r25.subtract(r19)).getReal() >= 0.0d) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0345, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02f4, code lost:
    
        r25 = r14;
        r5 = r0;
        r0 = org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver.C19069a.f107982a[r39.ordinal()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0305, code lost:
    
        if (r0 == 1) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0308, code lost:
    
        if (r0 == 2) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x030b, code lost:
    
        if (r0 == 3) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x030e, code lost:
    
        if (r0 == 4) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0311, code lost:
    
        if (r0 != 5) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0319, code lost:
    
        if (r5.getReal() >= 0.0d) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x031c, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0323, code lost:
    
        throw new org.apache.commons.math3.exception.MathInternalError(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x032a, code lost:
    
        if (r5.getReal() > 0.0d) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x032e, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02c5  */
    /* JADX WARN: Type inference failed for: r0v21, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r0v31, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r0v37, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v38, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [T extends org.apache.commons.math3.RealFieldElement<T>, java.lang.Object, org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Object, org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v24, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v44, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r33v0, types: [org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver] */
    /* JADX WARN: Type inference failed for: r5v3, types: [T extends org.apache.commons.math3.RealFieldElement<T>, org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.apache.commons.math3.analysis.RealFieldUnivariateFunction] */
    @Override // org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T solve(int r34, org.apache.commons.math3.analysis.RealFieldUnivariateFunction<T> r35, T r36, T r37, T r38, org.apache.commons.math3.analysis.solvers.AllowedSolution r39) throws org.apache.commons.math3.exception.NullArgumentException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 874
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver.solve(int, org.apache.commons.math3.analysis.RealFieldUnivariateFunction, org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.analysis.solvers.AllowedSolution):org.apache.commons.math3.RealFieldElement");
    }
}
