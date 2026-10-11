package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.optimization.AbstractConvergenceChecker;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class SimpleUnivariateValueChecker extends AbstractConvergenceChecker<UnivariatePointValuePair> {

    /* renamed from: f */
    public static final int f109561f = -1;

    /* renamed from: e */
    public final int f109562e;

    @Deprecated
    public SimpleUnivariateValueChecker() {
        this.f109562e = -1;
    }

    @Override // org.apache.commons.math3.optimization.AbstractConvergenceChecker, org.apache.commons.math3.optimization.ConvergenceChecker
    public boolean converged(int i, UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2) {
        int i2 = this.f109562e;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double value = univariatePointValuePair.getValue();
        double value2 = univariatePointValuePair2.getValue();
        double abs = FastMath.abs(value - value2);
        return abs <= FastMath.max(FastMath.abs(value), FastMath.abs(value2)) * getRelativeThreshold() || abs <= getAbsoluteThreshold();
    }

    public SimpleUnivariateValueChecker(double d, double d2) {
        super(d, d2);
        this.f109562e = -1;
    }

    public SimpleUnivariateValueChecker(double d, double d2, int i) {
        super(d, d2);
        if (i > 0) {
            this.f109562e = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
