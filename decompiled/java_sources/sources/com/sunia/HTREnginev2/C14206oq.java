package com.sunia.HTREnginev2;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

/* renamed from: com.sunia.HTREnginev2.oq */
/* loaded from: classes12.dex */
public class C14206oq implements BivariateFunction {

    /* renamed from: b */
    public static final short f80026b = 4;

    /* renamed from: a */
    public final double[][] f80027a = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 4);

    public C14206oq(double[] dArr) {
        for (int i = 0; i < 4; i++) {
            double[] dArr2 = this.f80027a[i];
            for (int i2 = 0; i2 < 4; i2++) {
                dArr2[i2] = dArr[(i2 * 4) + i];
            }
        }
    }

    /* renamed from: a */
    public final double m56140a(double[] dArr, double[] dArr2, double[][] dArr3) {
        double d = 0.0d;
        for (int i = 0; i < 4; i++) {
            d += MathArrays.linearCombination(dArr3[i], dArr2) * dArr[i];
        }
        return d;
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d, double d2) {
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        double d3 = d * d;
        double[] dArr = {1.0d, d, d3, d3 * d};
        double d4 = d2 * d2;
        return m56140a(dArr, new double[]{1.0d, d2, d4, d4 * d2}, this.f80027a);
    }
}
