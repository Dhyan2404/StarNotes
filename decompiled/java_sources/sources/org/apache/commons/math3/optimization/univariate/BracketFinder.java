package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
/* loaded from: classes12.dex */
public class BracketFinder {

    /* renamed from: i */
    public static final double f109547i = 1.0E-21d;

    /* renamed from: j */
    public static final double f109548j = 1.618034d;

    /* renamed from: a */
    public final double f109549a;

    /* renamed from: b */
    public final Incrementor f109550b;

    /* renamed from: c */
    public double f109551c;

    /* renamed from: d */
    public double f109552d;

    /* renamed from: e */
    public double f109553e;

    /* renamed from: f */
    public double f109554f;

    /* renamed from: g */
    public double f109555g;

    /* renamed from: h */
    public double f109556h;

    public BracketFinder() {
        this(100.0d, 50);
    }

    /* renamed from: a */
    public final double m68080a(UnivariateFunction univariateFunction, double d) {
        try {
            this.f109550b.incrementCount();
            return univariateFunction.value(d);
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }

    public int getEvaluations() {
        return this.f109550b.getCount();
    }

    public double getFHi() {
        return this.f109555g;
    }

    public double getFLo() {
        return this.f109554f;
    }

    public double getFMid() {
        return this.f109556h;
    }

    public double getHi() {
        return this.f109552d;
    }

    public double getLo() {
        return this.f109551c;
    }

    public int getMaxEvaluations() {
        return this.f109550b.getMaximalCount();
    }

    public double getMid() {
        return this.f109553e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x009f, code lost:
    
        r1 = r15;
        r5 = r9;
        r9 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x012e, code lost:
    
        r5 = r5;
        r13 = r3;
        r3 = r7;
        r1 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void search(org.apache.commons.math3.analysis.UnivariateFunction r34, org.apache.commons.math3.optimization.GoalType r35, double r36, double r38) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.univariate.BracketFinder.search(org.apache.commons.math3.analysis.UnivariateFunction, org.apache.commons.math3.optimization.GoalType, double, double):void");
    }

    public BracketFinder(double d, int i) {
        Incrementor incrementor = new Incrementor();
        this.f109550b = incrementor;
        if (d <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d));
        }
        if (i > 0) {
            this.f109549a = d;
            incrementor.setMaximalCount(i);
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
