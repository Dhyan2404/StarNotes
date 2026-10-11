package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.IntegerSequence;

/* loaded from: classes12.dex */
public class BracketFinder {

    /* renamed from: i */
    public static final double f109268i = 1.0E-21d;

    /* renamed from: j */
    public static final double f109269j = 1.618034d;

    /* renamed from: a */
    public final double f109270a;

    /* renamed from: b */
    public IntegerSequence.Incrementor f109271b;

    /* renamed from: c */
    public double f109272c;

    /* renamed from: d */
    public double f109273d;

    /* renamed from: e */
    public double f109274e;

    /* renamed from: f */
    public double f109275f;

    /* renamed from: g */
    public double f109276g;

    /* renamed from: h */
    public double f109277h;

    public BracketFinder() {
        this(100.0d, 500);
    }

    /* renamed from: a */
    public final double m67986a(UnivariateFunction univariateFunction, double d) {
        try {
            this.f109271b.increment();
            return univariateFunction.value(d);
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }

    public int getEvaluations() {
        return this.f109271b.getCount();
    }

    public double getFHi() {
        return this.f109276g;
    }

    public double getFLo() {
        return this.f109275f;
    }

    public double getFMid() {
        return this.f109277h;
    }

    public double getHi() {
        return this.f109273d;
    }

    public double getLo() {
        return this.f109272c;
    }

    public int getMaxEvaluations() {
        return this.f109271b.getMaximalCount();
    }

    public double getMid() {
        return this.f109274e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a1, code lost:
    
        r1 = r16;
        r6 = r10;
        r10 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0137, code lost:
    
        r6 = r6;
        r14 = r4;
        r4 = r8;
        r1 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void search(org.apache.commons.math3.analysis.UnivariateFunction r35, org.apache.commons.math3.optim.nonlinear.scalar.GoalType r36, double r37, double r39) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optim.univariate.BracketFinder.search(org.apache.commons.math3.analysis.UnivariateFunction, org.apache.commons.math3.optim.nonlinear.scalar.GoalType, double, double):void");
    }

    public BracketFinder(double d, int i) {
        if (d <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d));
        }
        if (i > 0) {
            this.f109270a = d;
            this.f109271b = IntegerSequence.Incrementor.create().withMaximalCount(i);
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
