package org.apache.commons.math3.ml.neuralnet.sofm.util;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class ExponentialDecayFunction {

    /* renamed from: a */
    public final double f108695a;

    /* renamed from: b */
    public final double f108696b;

    public ExponentialDecayFunction(double d, double d2, long j) {
        if (d <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d));
        }
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d2));
        }
        if (d2 >= d) {
            throw new NumberIsTooLargeException(Double.valueOf(d2), Double.valueOf(d), false);
        }
        if (j <= 0) {
            throw new NotStrictlyPositiveException(Long.valueOf(j));
        }
        this.f108695a = d;
        this.f108696b = (-FastMath.log(d2 / d)) / j;
    }

    public double value(long j) {
        return this.f108695a * FastMath.exp((-j) * this.f108696b);
    }
}
