package org.apache.commons.math3.optimization;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class SimpleValueChecker extends AbstractConvergenceChecker<PointValuePair> {

    /* renamed from: f */
    public static final int f109333f = -1;

    /* renamed from: e */
    public final int f109334e;

    @Deprecated
    public SimpleValueChecker() {
        this.f109334e = -1;
    }

    @Override // org.apache.commons.math3.optimization.AbstractConvergenceChecker, org.apache.commons.math3.optimization.ConvergenceChecker
    public boolean converged(int i, PointValuePair pointValuePair, PointValuePair pointValuePair2) {
        int i2 = this.f109334e;
        if (i2 != -1 && i >= i2) {
            return true;
        }
        double doubleValue = pointValuePair.getValue().doubleValue();
        double doubleValue2 = pointValuePair2.getValue().doubleValue();
        double abs = FastMath.abs(doubleValue - doubleValue2);
        return abs <= FastMath.max(FastMath.abs(doubleValue), FastMath.abs(doubleValue2)) * getRelativeThreshold() || abs <= getAbsoluteThreshold();
    }

    public SimpleValueChecker(double d, double d2) {
        super(d, d2);
        this.f109334e = -1;
    }

    public SimpleValueChecker(double d, double d2, int i) {
        super(d, d2);
        if (i > 0) {
            this.f109334e = i;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }
}
