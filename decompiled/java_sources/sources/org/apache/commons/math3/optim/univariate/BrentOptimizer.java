package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class BrentOptimizer extends UnivariateOptimizer {

    /* renamed from: i */
    public static final double f109278i = (3.0d - FastMath.sqrt(5.0d)) * 0.5d;

    /* renamed from: j */
    public static final double f109279j = FastMath.ulp(1.0d) * 2.0d;

    /* renamed from: g */
    public final double f109280g;

    /* renamed from: h */
    public final double f109281h;

    public BrentOptimizer(double d, double d2, ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d3 = f109279j;
        if (d < d3) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(d3), true);
        }
        if (d2 > 0.0d) {
            this.f109280g = d;
            this.f109281h = d2;
            return;
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d2));
    }

    /* renamed from: a */
    public final UnivariatePointValuePair m67987a(UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2, boolean z) {
        return univariatePointValuePair == null ? univariatePointValuePair2 : univariatePointValuePair2 == null ? univariatePointValuePair : z ? univariatePointValuePair.getValue() <= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2 : univariatePointValuePair.getValue() >= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x011a  */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.optim.univariate.UnivariatePointValuePair doOptimize() {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optim.univariate.BrentOptimizer.doOptimize():org.apache.commons.math3.optim.univariate.UnivariatePointValuePair");
    }

    public BrentOptimizer(double d, double d2) {
        this(d, d2, null);
    }
}
