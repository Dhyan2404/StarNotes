package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class SimpleValueChecker extends AbstractConvergenceChecker<PointValuePair> {

    /* renamed from: d */
    public static final int f109067d = -1;

    /* renamed from: c */
    public final int f109068c;

    public SimpleValueChecker(double d, double d2) {
        super(d, d2);
        this.f109068c = -1;
    }

    @Override // org.apache.commons.math3.optim.AbstractConvergenceChecker, org.apache.commons.math3.optim.ConvergenceChecker
    public boolean converged(int i, PointValuePair pointValuePair, PointValuePair pointValuePair2) {
        int i2 = this.f109068c;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double doubleValue = pointValuePair.getValue().doubleValue();
        double doubleValue2 = pointValuePair2.getValue().doubleValue();
        double abs = FastMath.abs(doubleValue - doubleValue2);
        return abs <= FastMath.max(FastMath.abs(doubleValue), FastMath.abs(doubleValue2)) * getRelativeThreshold() || abs <= getAbsoluteThreshold();
    }

    public SimpleValueChecker(double d, double d2, int i) {
        super(d, d2);
        if (i > 0) {
            this.f109068c = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
