package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.complex.ComplexUtils;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class LaguerreSolver extends AbstractPolynomialSolver {

    /* renamed from: m */
    public static final double f107983m = 1.0E-6d;

    /* renamed from: l */
    public final C19071b f107984l;

    /* renamed from: org.apache.commons.math3.analysis.solvers.LaguerreSolver$b */
    /* loaded from: classes12.dex */
    public class C19071b {
        public C19071b() {
        }

        /* renamed from: a */
        public boolean m67532a(double d, double d2, Complex complex) {
            if (LaguerreSolver.this.isSequence(d, complex.getReal(), d2)) {
                return FastMath.abs(complex.getImaginary()) <= FastMath.max(LaguerreSolver.this.getRelativeAccuracy() * complex.abs(), LaguerreSolver.this.getAbsoluteAccuracy()) || complex.abs() <= LaguerreSolver.this.getFunctionValueAccuracy();
            }
            return false;
        }

        /* renamed from: b */
        public Complex m67533b(Complex[] complexArr, Complex complex) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
            Complex[] complexArr2 = complexArr;
            if (complexArr2 == null) {
                throw new NullArgumentException();
            }
            int length = complexArr2.length - 1;
            if (length == 0) {
                throw new NoDataException(LocalizedFormats.POLYNOMIAL);
            }
            double absoluteAccuracy = LaguerreSolver.this.getAbsoluteAccuracy();
            double relativeAccuracy = LaguerreSolver.this.getRelativeAccuracy();
            double functionValueAccuracy = LaguerreSolver.this.getFunctionValueAccuracy();
            Complex complex2 = new Complex(length, 0.0d);
            int i = length - 1;
            Complex complex3 = new Complex(i, 0.0d);
            Complex complex4 = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
            Complex complex5 = complex;
            while (true) {
                Complex complex6 = complexArr2[length];
                Complex complex7 = Complex.ZERO;
                int i2 = length;
                Complex complex8 = complex7;
                int i3 = i;
                while (i3 >= 0) {
                    complex7 = complex8.add(complex5.multiply(complex7));
                    Complex add = complex6.add(complex5.multiply(complex8));
                    complex6 = complexArr2[i3].add(complex5.multiply(complex6));
                    i3--;
                    complex8 = add;
                }
                Complex complex9 = complex3;
                int i4 = i;
                double d = functionValueAccuracy;
                Complex multiply = complex7.multiply(new Complex(2.0d, 0.0d));
                if (complex5.subtract(complex4).abs() <= FastMath.max(complex5.abs() * relativeAccuracy, absoluteAccuracy) || complex6.abs() <= d) {
                    return complex5;
                }
                Complex divide = complex8.divide(complex6);
                Complex multiply2 = divide.multiply(divide);
                Complex subtract = complex2.multiply(multiply2.subtract(multiply.divide(complex6))).subtract(multiply2);
                complex3 = complex9;
                Complex sqrt = complex3.multiply(subtract).sqrt();
                Complex add2 = divide.add(sqrt);
                Complex subtract2 = divide.subtract(sqrt);
                if (add2.abs() <= subtract2.abs()) {
                    add2 = subtract2;
                }
                if (add2.equals(new Complex(0.0d, 0.0d))) {
                    complex5 = complex5.add(new Complex(absoluteAccuracy, absoluteAccuracy));
                    complex4 = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
                } else {
                    complex4 = complex5;
                    complex5 = complex5.subtract(complex2.divide(add2));
                }
                LaguerreSolver.this.incrementEvaluationCount();
                complexArr2 = complexArr;
                length = i2;
                i = i4;
                functionValueAccuracy = d;
            }
        }

        /* renamed from: c */
        public Complex[] m67534c(Complex[] complexArr, Complex complex) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
            if (complexArr == null) {
                throw new NullArgumentException();
            }
            int length = complexArr.length - 1;
            if (length == 0) {
                throw new NoDataException(LocalizedFormats.POLYNOMIAL);
            }
            Complex[] complexArr2 = new Complex[length + 1];
            for (int i = 0; i <= length; i++) {
                complexArr2[i] = complexArr[i];
            }
            Complex[] complexArr3 = new Complex[length];
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = length - i2;
                int i4 = i3 + 1;
                Complex[] complexArr4 = new Complex[i4];
                System.arraycopy(complexArr2, 0, complexArr4, 0, i4);
                complexArr3[i2] = m67533b(complexArr4, complex);
                Complex complex2 = complexArr2[i3];
                for (int i5 = i3 - 1; i5 >= 0; i5--) {
                    Complex complex3 = complexArr2[i5];
                    complexArr2[i5] = complex2;
                    complex2 = complex3.add(complex2.multiply(complexArr3[i2]));
                }
            }
            return complexArr3;
        }
    }

    public LaguerreSolver() {
        this(1.0E-6d);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double computeObjectiveValue = computeObjectiveValue(startValue);
        if (FastMath.abs(computeObjectiveValue) <= functionValueAccuracy) {
            return startValue;
        }
        double computeObjectiveValue2 = computeObjectiveValue(min);
        if (FastMath.abs(computeObjectiveValue2) <= functionValueAccuracy) {
            return min;
        }
        if (computeObjectiveValue * computeObjectiveValue2 < 0.0d) {
            return laguerre(min, startValue, computeObjectiveValue2, computeObjectiveValue);
        }
        double computeObjectiveValue3 = computeObjectiveValue(max);
        if (FastMath.abs(computeObjectiveValue3) <= functionValueAccuracy) {
            return max;
        }
        if (computeObjectiveValue * computeObjectiveValue3 < 0.0d) {
            return laguerre(startValue, max, computeObjectiveValue, computeObjectiveValue3);
        }
        throw new NoBracketingException(min, max, computeObjectiveValue2, computeObjectiveValue3);
    }

    @Deprecated
    public double laguerre(double d, double d2, double d3, double d4) {
        Complex[] convertToComplex = ComplexUtils.convertToComplex(getCoefficients());
        Complex complex = new Complex((d + d2) * 0.5d, 0.0d);
        Complex m67533b = this.f107984l.m67533b(convertToComplex, complex);
        if (this.f107984l.m67532a(d, d2, m67533b)) {
            return m67533b.getReal();
        }
        Complex[] m67534c = this.f107984l.m67534c(convertToComplex, complex);
        for (int i = 0; i < m67534c.length; i++) {
            if (this.f107984l.m67532a(d, d2, m67534c[i])) {
                return m67534c[i].getReal();
            }
        }
        return Double.NaN;
    }

    public Complex[] solveAllComplex(double[] dArr, double d) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        return solveAllComplex(dArr, d, Integer.MAX_VALUE);
    }

    public Complex solveComplex(double[] dArr, double d) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        return solveComplex(dArr, d, Integer.MAX_VALUE);
    }

    public LaguerreSolver(double d) {
        super(d);
        this.f107984l = new C19071b();
    }

    public Complex[] solveAllComplex(double[] dArr, double d, int i) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        setup(i, new PolynomialFunction(dArr), Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY, d);
        return this.f107984l.m67534c(ComplexUtils.convertToComplex(dArr), new Complex(d, 0.0d));
    }

    public Complex solveComplex(double[] dArr, double d, int i) throws NullArgumentException, NoDataException, TooManyEvaluationsException {
        setup(i, new PolynomialFunction(dArr), Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY, d);
        return this.f107984l.m67533b(ComplexUtils.convertToComplex(dArr), new Complex(d, 0.0d));
    }

    public LaguerreSolver(double d, double d2) {
        super(d, d2);
        this.f107984l = new C19071b();
    }

    public LaguerreSolver(double d, double d2, double d3) {
        super(d, d2, d3);
        this.f107984l = new C19071b();
    }
}
