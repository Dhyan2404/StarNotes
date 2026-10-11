package org.apache.commons.math3.ml.neuralnet.sofm.util;

import org.apache.commons.math3.analysis.function.Logistic;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;

/* loaded from: classes12.dex */
public class QuasiSigmoidDecayFunction {

    /* renamed from: a */
    public final Logistic f108697a;

    /* renamed from: b */
    public final double f108698b;

    public QuasiSigmoidDecayFunction(double d, double d2, long j) {
        if (d <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d));
        }
        if (d2 >= 0.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d2), 0, false);
        }
        if (j <= 1) {
            throw new NotStrictlyPositiveException(Long.valueOf(j));
        }
        Logistic logistic = new Logistic(d, j, (4.0d * d2) / d, 1.0d, 0.0d, 1.0d);
        this.f108697a = logistic;
        this.f108698b = d / logistic.value(0.0d);
    }

    public double value(long j) {
        return this.f108698b * this.f108697a.value(j);
    }
}
