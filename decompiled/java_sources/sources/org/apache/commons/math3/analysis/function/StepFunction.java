package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class StepFunction implements UnivariateFunction {

    /* renamed from: e */
    public final double[] f107812e;

    /* renamed from: f */
    public final double[] f107813f;

    public StepFunction(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException();
        }
        if (dArr2.length != dArr.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
        MathArrays.checkOrder(dArr);
        this.f107812e = MathArrays.copyOf(dArr);
        this.f107813f = MathArrays.copyOf(dArr2);
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        int binarySearch = Arrays.binarySearch(this.f107812e, d);
        return binarySearch < -1 ? this.f107813f[(-binarySearch) - 2] : binarySearch >= 0 ? this.f107813f[binarySearch] : this.f107813f[0];
    }
}
