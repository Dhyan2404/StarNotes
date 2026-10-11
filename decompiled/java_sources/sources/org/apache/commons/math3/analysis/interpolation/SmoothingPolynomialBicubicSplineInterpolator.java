package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.fitting.PolynomialFitter;
import org.apache.commons.math3.optim.SimpleVectorValueChecker;
import org.apache.commons.math3.optim.nonlinear.vector.jacobian.GaussNewtonOptimizer;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Precision;

@Deprecated
/* loaded from: classes12.dex */
public class SmoothingPolynomialBicubicSplineInterpolator extends BicubicSplineInterpolator {

    /* renamed from: b */
    public final PolynomialFitter f107904b;

    /* renamed from: c */
    public final int f107905c;

    /* renamed from: d */
    public final PolynomialFitter f107906d;

    /* renamed from: e */
    public final int f107907e;

    public SmoothingPolynomialBicubicSplineInterpolator() {
        this(3);
    }

    public SmoothingPolynomialBicubicSplineInterpolator(int i) throws NotPositiveException {
        this(i, i);
    }

    @Override // org.apache.commons.math3.analysis.interpolation.BicubicSplineInterpolator, org.apache.commons.math3.analysis.interpolation.BivariateGridInterpolator
    public BicubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[][] dArr3) throws NoDataException, NullArgumentException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr.length != 0 && dArr2.length != 0 && dArr3.length != 0) {
            if (dArr.length == dArr3.length) {
                int length = dArr.length;
                int length2 = dArr2.length;
                for (int i = 0; i < length; i++) {
                    if (dArr3[i].length != length2) {
                        throw new DimensionMismatchException(dArr3[i].length, length2);
                    }
                }
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[length2];
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f107904b.clearObservations();
                    for (int i3 = 0; i3 < length; i3++) {
                        this.f107904b.addObservedPoint(1.0d, dArr[i3], dArr3[i3][i2]);
                    }
                    polynomialFunctionArr[i2] = new PolynomialFunction(this.f107904b.fit(new double[this.f107905c + 1]));
                }
                double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                for (int i4 = 0; i4 < length2; i4++) {
                    PolynomialFunction polynomialFunction = polynomialFunctionArr[i4];
                    for (int i5 = 0; i5 < length; i5++) {
                        dArr4[i5][i4] = polynomialFunction.value(dArr[i5]);
                    }
                }
                PolynomialFunction[] polynomialFunctionArr2 = new PolynomialFunction[length];
                for (int i6 = 0; i6 < length; i6++) {
                    this.f107906d.clearObservations();
                    for (int i7 = 0; i7 < length2; i7++) {
                        this.f107906d.addObservedPoint(1.0d, dArr2[i7], dArr4[i6][i7]);
                    }
                    polynomialFunctionArr2[i6] = new PolynomialFunction(this.f107906d.fit(new double[this.f107907e + 1]));
                }
                double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                for (int i8 = 0; i8 < length; i8++) {
                    PolynomialFunction polynomialFunction2 = polynomialFunctionArr2[i8];
                    for (int i9 = 0; i9 < length2; i9++) {
                        dArr5[i8][i9] = polynomialFunction2.value(dArr2[i9]);
                    }
                }
                return super.interpolate(dArr, dArr2, dArr5);
            }
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        throw new NoDataException();
    }

    public SmoothingPolynomialBicubicSplineInterpolator(int i, int i2) throws NotPositiveException {
        if (i < 0) {
            throw new NotPositiveException(Integer.valueOf(i));
        }
        if (i2 >= 0) {
            this.f107905c = i;
            this.f107907e = i2;
            SimpleVectorValueChecker simpleVectorValueChecker = new SimpleVectorValueChecker(Precision.EPSILON * 100.0d, Precision.SAFE_MIN * 100.0d);
            this.f107904b = new PolynomialFitter(new GaussNewtonOptimizer(false, simpleVectorValueChecker));
            this.f107906d = new PolynomialFitter(new GaussNewtonOptimizer(false, simpleVectorValueChecker));
            return;
        }
        throw new NotPositiveException(Integer.valueOf(i2));
    }
}
