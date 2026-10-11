package org.apache.commons.math3.analysis.interpolation;

import java.util.Arrays;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class PiecewiseBicubicSplineInterpolatingFunction implements BivariateFunction {

    /* renamed from: d */
    public static final int f107900d = 5;

    /* renamed from: a */
    public final double[] f107901a;

    /* renamed from: b */
    public final double[] f107902b;

    /* renamed from: c */
    public final double[][] f107903c;

    public PiecewiseBicubicSplineInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3) throws DimensionMismatchException, NullArgumentException, NoDataException, NonMonotonicSequenceException {
        double[] dArr4;
        if (dArr == null || dArr2 == null || dArr3 == null || (dArr4 = dArr3[0]) == null) {
            throw new NullArgumentException();
        }
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length == 0 || length2 == 0 || dArr3.length == 0 || dArr4.length == 0) {
            throw new NoDataException();
        }
        if (length < 5 || length2 < 5 || dArr3.length < 5 || dArr4.length < 5) {
            throw new InsufficientDataException();
        }
        if (length != dArr3.length) {
            throw new DimensionMismatchException(length, dArr3.length);
        }
        if (length2 != dArr4.length) {
            throw new DimensionMismatchException(length2, dArr3[0].length);
        }
        MathArrays.checkOrder(dArr);
        MathArrays.checkOrder(dArr2);
        this.f107901a = (double[]) dArr.clone();
        this.f107902b = (double[]) dArr2.clone();
        this.f107903c = (double[][]) dArr3.clone();
    }

    /* renamed from: a */
    public final int m67517a(double d, double[] dArr, int i, int i2) {
        int binarySearch = Arrays.binarySearch(dArr, d);
        if (binarySearch == -1 || binarySearch == (-dArr.length) - 1) {
            throw new OutOfRangeException(Double.valueOf(d), Double.valueOf(dArr[0]), Double.valueOf(dArr[dArr.length - 1]));
        }
        int i3 = binarySearch < 0 ? ((-binarySearch) - i) - 1 : binarySearch - i;
        int i4 = i3 >= 0 ? i3 : 0;
        return i4 + i2 >= dArr.length ? dArr.length - i2 : i4;
    }

    public boolean isValidPoint(double d, double d2) {
        double[] dArr = this.f107901a;
        if (d >= dArr[0] && d <= dArr[dArr.length - 1]) {
            double[] dArr2 = this.f107902b;
            if (d2 >= dArr2[0] && d2 <= dArr2[dArr2.length - 1]) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d, double d2) throws OutOfRangeException {
        AkimaSplineInterpolator akimaSplineInterpolator = new AkimaSplineInterpolator();
        int m67517a = m67517a(d, this.f107901a, 2, 5);
        int m67517a2 = m67517a(d2, this.f107902b, 2, 5);
        double[] dArr = new double[5];
        double[] dArr2 = new double[5];
        double[] dArr3 = new double[5];
        double[] dArr4 = new double[5];
        for (int i = 0; i < 5; i++) {
            dArr[i] = this.f107901a[m67517a + i];
            dArr2[i] = this.f107902b[m67517a2 + i];
        }
        for (int i2 = 0; i2 < 5; i2++) {
            for (int i3 = 0; i3 < 5; i3++) {
                dArr3[i3] = this.f107903c[m67517a + i3][m67517a2 + i2];
            }
            dArr4[i2] = akimaSplineInterpolator.interpolate(dArr, dArr3).value(d);
        }
        return akimaSplineInterpolator.interpolate(dArr2, dArr4).value(d2);
    }
}
