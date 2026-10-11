package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class BrentOptimizer extends BaseAbstractUnivariateOptimizer {

    /* renamed from: j */
    public static final double f109557j = (3.0d - FastMath.sqrt(5.0d)) * 0.5d;

    /* renamed from: k */
    public static final double f109558k = FastMath.ulp(1.0d) * 2.0d;

    /* renamed from: h */
    public final double f109559h;

    /* renamed from: i */
    public final double f109560i;

    public BrentOptimizer(double d, double d2, ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d3 = f109558k;
        if (d < d3) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(d3), true);
        }
        if (d2 > 0.0d) {
            this.f109559h = d;
            this.f109560i = d2;
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d2));
    }

    /* renamed from: a */
    public final UnivariatePointValuePair m68081a(UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2, boolean z) {
        return univariatePointValuePair == null ? univariatePointValuePair2 : univariatePointValuePair2 == null ? univariatePointValuePair : z ? univariatePointValuePair.getValue() <= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2 : univariatePointValuePair.getValue() >= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x011c  */
    @Override // org.apache.commons.math3.optimization.univariate.BaseAbstractUnivariateOptimizer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.optimization.univariate.UnivariatePointValuePair doOptimize() {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.univariate.BrentOptimizer.doOptimize():org.apache.commons.math3.optimization.univariate.UnivariatePointValuePair");
    }

    public BrentOptimizer(double d, double d2) {
        this(d, d2, null);
    }
}
