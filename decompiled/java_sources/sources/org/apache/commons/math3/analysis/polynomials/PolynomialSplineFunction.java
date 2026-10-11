package org.apache.commons.math3.analysis.polynomials;

import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class PolynomialSplineFunction implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* renamed from: e */
    public final double[] f107936e;

    /* renamed from: f */
    public final PolynomialFunction[] f107937f;

    /* renamed from: g */
    public final int f107938g;

    public PolynomialSplineFunction(double[] dArr, PolynomialFunction[] polynomialFunctionArr) throws NullArgumentException, NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr == null || polynomialFunctionArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.NOT_ENOUGH_POINTS_IN_SPLINE_PARTITION, 2, Integer.valueOf(dArr.length), false);
        }
        if (dArr.length - 1 != polynomialFunctionArr.length) {
            throw new DimensionMismatchException(polynomialFunctionArr.length, dArr.length);
        }
        MathArrays.checkOrder(dArr);
        int length = dArr.length - 1;
        this.f107938g = length;
        double[] dArr2 = new double[length + 1];
        this.f107936e = dArr2;
        System.arraycopy(dArr, 0, dArr2, 0, length + 1);
        PolynomialFunction[] polynomialFunctionArr2 = new PolynomialFunction[length];
        this.f107937f = polynomialFunctionArr2;
        System.arraycopy(polynomialFunctionArr, 0, polynomialFunctionArr2, 0, length);
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    public UnivariateFunction derivative() {
        return polynomialSplineDerivative();
    }

    public double[] getKnots() {
        int i = this.f107938g;
        double[] dArr = new double[i + 1];
        System.arraycopy(this.f107936e, 0, dArr, 0, i + 1);
        return dArr;
    }

    public int getN() {
        return this.f107938g;
    }

    public PolynomialFunction[] getPolynomials() {
        int i = this.f107938g;
        PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[i];
        System.arraycopy(this.f107937f, 0, polynomialFunctionArr, 0, i);
        return polynomialFunctionArr;
    }

    public boolean isValidPoint(double d) {
        double[] dArr = this.f107936e;
        return d >= dArr[0] && d <= dArr[this.f107938g];
    }

    public PolynomialSplineFunction polynomialSplineDerivative() {
        PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[this.f107938g];
        for (int i = 0; i < this.f107938g; i++) {
            polynomialFunctionArr[i] = this.f107937f[i].polynomialDerivative();
        }
        return new PolynomialSplineFunction(this.f107936e, polynomialFunctionArr);
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        double[] dArr = this.f107936e;
        if (d >= dArr[0] && d <= dArr[this.f107938g]) {
            int binarySearch = Arrays.binarySearch(dArr, d);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            PolynomialFunction[] polynomialFunctionArr = this.f107937f;
            if (binarySearch >= polynomialFunctionArr.length) {
                binarySearch--;
            }
            return polynomialFunctionArr[binarySearch].value(d - this.f107936e[binarySearch]);
        }
        throw new OutOfRangeException(Double.valueOf(d), Double.valueOf(this.f107936e[0]), Double.valueOf(this.f107936e[this.f107938g]));
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        double value = derivativeStructure.getValue();
        double[] dArr = this.f107936e;
        if (value >= dArr[0] && value <= dArr[this.f107938g]) {
            int binarySearch = Arrays.binarySearch(dArr, value);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            PolynomialFunction[] polynomialFunctionArr = this.f107937f;
            if (binarySearch >= polynomialFunctionArr.length) {
                binarySearch--;
            }
            return polynomialFunctionArr[binarySearch].value(derivativeStructure.subtract(this.f107936e[binarySearch]));
        }
        throw new OutOfRangeException(Double.valueOf(value), Double.valueOf(this.f107936e[0]), Double.valueOf(this.f107936e[this.f107938g]));
    }
}
