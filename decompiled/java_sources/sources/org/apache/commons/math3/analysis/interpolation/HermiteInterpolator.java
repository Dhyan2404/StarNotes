package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableVectorFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.CombinatoricsUtils;

/* loaded from: classes12.dex */
public class HermiteInterpolator implements UnivariateDifferentiableVectorFunction {

    /* renamed from: a */
    public final List<Double> f107869a = new ArrayList();

    /* renamed from: b */
    public final List<double[]> f107870b = new ArrayList();

    /* renamed from: c */
    public final List<double[]> f107871c = new ArrayList();

    /* renamed from: a */
    public final void m67501a() throws NoDataException {
        if (this.f107869a.isEmpty()) {
            throw new NoDataException(LocalizedFormats.EMPTY_INTERPOLATION_SAMPLE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addSamplePoint(double d, double[]... dArr) throws ZeroException, MathArithmeticException {
        for (int i = 0; i < dArr.length; i++) {
            double[] dArr2 = (double[]) dArr[i].clone();
            if (i > 1) {
                double factorial = 1.0d / CombinatoricsUtils.factorial(i);
                for (int i2 = 0; i2 < dArr2.length; i2++) {
                    dArr2[i2] = dArr2[i2] * factorial;
                }
            }
            int size = this.f107869a.size();
            this.f107871c.add(size - i, dArr2);
            int i3 = i;
            double[] dArr3 = dArr2;
            while (i3 < size) {
                i3++;
                int i4 = size - i3;
                double[] dArr4 = this.f107871c.get(i4);
                double doubleValue = 1.0d / (d - this.f107869a.get(i4).doubleValue());
                if (Double.isInfinite(doubleValue)) {
                    throw new ZeroException(LocalizedFormats.DUPLICATED_ABSCISSA_DIVISION_BY_ZERO, Double.valueOf(d));
                }
                for (int i5 = 0; i5 < dArr2.length; i5++) {
                    dArr4[i5] = (dArr3[i5] - dArr4[i5]) * doubleValue;
                }
                dArr3 = dArr4;
            }
            this.f107870b.add(dArr3.clone());
            this.f107869a.add(Double.valueOf(d));
        }
    }

    /* renamed from: b */
    public final PolynomialFunction m67502b(double... dArr) {
        return new PolynomialFunction(dArr);
    }

    public PolynomialFunction[] getPolynomials() throws NoDataException {
        m67501a();
        PolynomialFunction m67502b = m67502b(0.0d);
        int length = this.f107870b.get(0).length;
        PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[length];
        for (int i = 0; i < length; i++) {
            polynomialFunctionArr[i] = m67502b;
        }
        PolynomialFunction m67502b2 = m67502b(1.0d);
        for (int i2 = 0; i2 < this.f107870b.size(); i2++) {
            double[] dArr = this.f107870b.get(i2);
            for (int i3 = 0; i3 < length; i3++) {
                polynomialFunctionArr[i3] = polynomialFunctionArr[i3].add(m67502b2.multiply(m67502b(dArr[i3])));
            }
            m67502b2 = m67502b2.multiply(m67502b(-this.f107869a.get(i2).doubleValue(), 1.0d));
        }
        return polynomialFunctionArr;
    }

    @Override // org.apache.commons.math3.analysis.UnivariateVectorFunction
    public double[] value(double d) throws NoDataException {
        m67501a();
        int length = this.f107870b.get(0).length;
        double[] dArr = new double[length];
        double d2 = 1.0d;
        for (int i = 0; i < this.f107870b.size(); i++) {
            double[] dArr2 = this.f107870b.get(i);
            for (int i2 = 0; i2 < length; i2++) {
                dArr[i2] = dArr[i2] + (dArr2[i2] * d2);
            }
            d2 *= d - this.f107869a.get(i).doubleValue();
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableVectorFunction
    public DerivativeStructure[] value(DerivativeStructure derivativeStructure) throws NoDataException {
        m67501a();
        int length = this.f107870b.get(0).length;
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
        Arrays.fill(derivativeStructureArr, derivativeStructure.getField().getZero());
        DerivativeStructure one = derivativeStructure.getField().getOne();
        for (int i = 0; i < this.f107870b.size(); i++) {
            double[] dArr = this.f107870b.get(i);
            for (int i2 = 0; i2 < length; i2++) {
                derivativeStructureArr[i2] = derivativeStructureArr[i2].add(one.multiply(dArr[i2]));
            }
            one = one.multiply(derivativeStructure.subtract(this.f107869a.get(i).doubleValue()));
        }
        return derivativeStructureArr;
    }
}
