package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.optim.AbstractConvergenceChecker;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class SimpleUnivariateValueChecker extends AbstractConvergenceChecker<UnivariatePointValuePair> {

    /* renamed from: d */
    public static final int f109295d = -1;

    /* renamed from: c */
    public final int f109296c;

    public SimpleUnivariateValueChecker(double d, double d2) {
        super(d, d2);
        this.f109296c = -1;
    }

    @Override // org.apache.commons.math3.optim.AbstractConvergenceChecker, org.apache.commons.math3.optim.ConvergenceChecker
    public boolean converged(int i, UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2) {
        int i2 = this.f109296c;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double value = univariatePointValuePair.getValue();
        double value2 = univariatePointValuePair2.getValue();
        double abs = FastMath.abs(value - value2);
        return abs <= FastMath.max(FastMath.abs(value), FastMath.abs(value2)) * getRelativeThreshold() || abs <= getAbsoluteThreshold();
    }

    public SimpleUnivariateValueChecker(double d, double d2, int i) {
        super(d, d2);
        if (i > 0) {
            this.f109296c = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
