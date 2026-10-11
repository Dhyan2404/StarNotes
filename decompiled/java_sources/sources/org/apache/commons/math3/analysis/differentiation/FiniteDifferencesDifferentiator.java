package org.apache.commons.math3.analysis.differentiation;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateMatrixFunction;
import org.apache.commons.math3.analysis.UnivariateVectorFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class FiniteDifferencesDifferentiator implements UnivariateFunctionDifferentiator, UnivariateVectorFunctionDifferentiator, UnivariateMatrixFunctionDifferentiator, Serializable {
    private static final long serialVersionUID = 20120917;
    private final double halfSampleSpan;
    private final int nbPoints;
    private final double stepSize;
    private final double tMax;
    private final double tMin;

    /* renamed from: org.apache.commons.math3.analysis.differentiation.FiniteDifferencesDifferentiator$a */
    /* loaded from: classes12.dex */
    public class C19048a implements UnivariateDifferentiableFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateFunction f107782e;

        public C19048a(UnivariateFunction univariateFunction) {
            this.f107782e = univariateFunction;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) throws MathIllegalArgumentException {
            return this.f107782e.value(d);
        }

        @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
        public DerivativeStructure value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
            if (derivativeStructure.getOrder() < FiniteDifferencesDifferentiator.this.nbPoints) {
                double max = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                double[] dArr = new double[FiniteDifferencesDifferentiator.this.nbPoints];
                for (int i = 0; i < FiniteDifferencesDifferentiator.this.nbPoints; i++) {
                    dArr[i] = this.f107782e.value((i * FiniteDifferencesDifferentiator.this.stepSize) + max);
                }
                return FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, max, dArr);
            }
            throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.differentiation.FiniteDifferencesDifferentiator$b */
    /* loaded from: classes12.dex */
    public class C19049b implements UnivariateDifferentiableVectorFunction {

        /* renamed from: a */
        public final /* synthetic */ UnivariateVectorFunction f107784a;

        public C19049b(UnivariateVectorFunction univariateVectorFunction) {
            this.f107784a = univariateVectorFunction;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateVectorFunction
        public double[] value(double d) throws MathIllegalArgumentException {
            return this.f107784a.value(d);
        }

        @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableVectorFunction
        public DerivativeStructure[] value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
            if (derivativeStructure.getOrder() < FiniteDifferencesDifferentiator.this.nbPoints) {
                double max = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                double[][] dArr = null;
                for (int i = 0; i < FiniteDifferencesDifferentiator.this.nbPoints; i++) {
                    double[] value = this.f107784a.value((i * FiniteDifferencesDifferentiator.this.stepSize) + max);
                    if (i == 0) {
                        dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, value.length, FiniteDifferencesDifferentiator.this.nbPoints);
                    }
                    for (int i2 = 0; i2 < value.length; i2++) {
                        dArr[i2][i] = value[i2];
                    }
                }
                int length = dArr.length;
                DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                for (int i3 = 0; i3 < length; i3++) {
                    derivativeStructureArr[i3] = FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, max, dArr[i3]);
                }
                return derivativeStructureArr;
            }
            throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.differentiation.FiniteDifferencesDifferentiator$c */
    /* loaded from: classes12.dex */
    public class C19050c implements UnivariateDifferentiableMatrixFunction {

        /* renamed from: a */
        public final /* synthetic */ UnivariateMatrixFunction f107786a;

        public C19050c(UnivariateMatrixFunction univariateMatrixFunction) {
            this.f107786a = univariateMatrixFunction;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateMatrixFunction
        public double[][] value(double d) throws MathIllegalArgumentException {
            return this.f107786a.value(d);
        }

        @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableMatrixFunction
        public DerivativeStructure[][] value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
            if (derivativeStructure.getOrder() < FiniteDifferencesDifferentiator.this.nbPoints) {
                double max = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                double[][][] dArr = null;
                for (int i = 0; i < FiniteDifferencesDifferentiator.this.nbPoints; i++) {
                    double[][] value = this.f107786a.value((i * FiniteDifferencesDifferentiator.this.stepSize) + max);
                    if (i == 0) {
                        dArr = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, value.length, value[0].length, FiniteDifferencesDifferentiator.this.nbPoints);
                    }
                    for (int i2 = 0; i2 < value.length; i2++) {
                        int i3 = 0;
                        while (true) {
                            double[] dArr2 = value[i2];
                            if (i3 < dArr2.length) {
                                dArr[i2][i3][i] = dArr2[i3];
                                i3++;
                            }
                        }
                    }
                }
                DerivativeStructure[][] derivativeStructureArr = (DerivativeStructure[][]) Array.newInstance((Class<?>) DerivativeStructure.class, dArr.length, dArr[0].length);
                for (int i4 = 0; i4 < derivativeStructureArr.length; i4++) {
                    int i5 = 0;
                    while (true) {
                        double[][] dArr3 = dArr[i4];
                        if (i5 < dArr3.length) {
                            derivativeStructureArr[i4][i5] = FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, max, dArr3[i5]);
                            i5++;
                        }
                    }
                }
                return derivativeStructureArr;
            }
            throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
        }
    }

    public FiniteDifferencesDifferentiator(int i, double d) throws NotPositiveException, NumberIsTooSmallException {
        this(i, d, Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DerivativeStructure evaluate(DerivativeStructure derivativeStructure, double d, double[] dArr) throws NumberIsTooLargeException {
        int i = this.nbPoints;
        double[] dArr2 = new double[i];
        double[] dArr3 = new double[i];
        for (int i2 = 0; i2 < this.nbPoints; i2++) {
            dArr3[i2] = dArr[i2];
            for (int i3 = 1; i3 <= i2; i3++) {
                int i4 = i2 - i3;
                dArr3[i4] = (dArr3[i4 + 1] - dArr3[i4]) / (i3 * this.stepSize);
            }
            dArr2[i2] = dArr3[0];
        }
        int order = derivativeStructure.getOrder();
        int freeParameters = derivativeStructure.getFreeParameters();
        double[] allDerivatives = derivativeStructure.getAllDerivatives();
        double value = derivativeStructure.getValue() - d;
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(freeParameters, order, 0.0d);
        DerivativeStructure derivativeStructure3 = null;
        for (int i5 = 0; i5 < this.nbPoints; i5++) {
            if (i5 == 0) {
                derivativeStructure3 = new DerivativeStructure(freeParameters, order, 1.0d);
            } else {
                allDerivatives[0] = value - ((i5 - 1) * this.stepSize);
                derivativeStructure3 = derivativeStructure3.multiply(new DerivativeStructure(freeParameters, order, allDerivatives));
            }
            derivativeStructure2 = derivativeStructure2.add(derivativeStructure3.multiply(dArr2[i5]));
        }
        return derivativeStructure2;
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateFunctionDifferentiator
    public UnivariateDifferentiableFunction differentiate(UnivariateFunction univariateFunction) {
        return new C19048a(univariateFunction);
    }

    public int getNbPoints() {
        return this.nbPoints;
    }

    public double getStepSize() {
        return this.stepSize;
    }

    public FiniteDifferencesDifferentiator(int i, double d, double d2, double d3) throws NotPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        if (i > 1) {
            this.nbPoints = i;
            if (d > 0.0d) {
                this.stepSize = d;
                double d4 = d * 0.5d * (i - 1);
                this.halfSampleSpan = d4;
                double d5 = d3 - d2;
                if (d4 * 2.0d < d5) {
                    double ulp = FastMath.ulp(d4);
                    this.tMin = d2 + d4 + ulp;
                    this.tMax = (d3 - d4) - ulp;
                    return;
                }
                throw new NumberIsTooLargeException(Double.valueOf(d4 * 2.0d), Double.valueOf(d5), false);
            }
            throw new NotPositiveException(Double.valueOf(d));
        }
        throw new NumberIsTooSmallException(Double.valueOf(d), 1, false);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateVectorFunctionDifferentiator
    public UnivariateDifferentiableVectorFunction differentiate(UnivariateVectorFunction univariateVectorFunction) {
        return new C19049b(univariateVectorFunction);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateMatrixFunctionDifferentiator
    public UnivariateDifferentiableMatrixFunction differentiate(UnivariateMatrixFunction univariateMatrixFunction) {
        return new C19050c(univariateMatrixFunction);
    }
}
