package org.apache.commons.math3.stat.regression;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class AbstractMultipleLinearRegression implements MultipleLinearRegression {

    /* renamed from: a */
    public RealMatrix f109781a;

    /* renamed from: b */
    public RealVector f109782b;

    /* renamed from: c */
    public boolean f109783c = false;

    public abstract RealVector calculateBeta();

    public abstract RealMatrix calculateBetaVariance();

    public double calculateErrorVariance() {
        RealVector calculateResiduals = calculateResiduals();
        return calculateResiduals.dotProduct(calculateResiduals) / (this.f109781a.getRowDimension() - this.f109781a.getColumnDimension());
    }

    public RealVector calculateResiduals() {
        return this.f109782b.subtract(this.f109781a.operate(calculateBeta()));
    }

    public double calculateYVariance() {
        return new Variance().evaluate(this.f109782b.toArray());
    }

    public double estimateErrorVariance() {
        return calculateErrorVariance();
    }

    @Override // org.apache.commons.math3.stat.regression.MultipleLinearRegression
    public double estimateRegressandVariance() {
        return calculateYVariance();
    }

    @Override // org.apache.commons.math3.stat.regression.MultipleLinearRegression
    public double[] estimateRegressionParameters() {
        return calculateBeta().toArray();
    }

    @Override // org.apache.commons.math3.stat.regression.MultipleLinearRegression
    public double[] estimateRegressionParametersStandardErrors() {
        double[][] estimateRegressionParametersVariance = estimateRegressionParametersVariance();
        double calculateErrorVariance = calculateErrorVariance();
        int length = estimateRegressionParametersVariance[0].length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = FastMath.sqrt(estimateRegressionParametersVariance[i][i] * calculateErrorVariance);
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.stat.regression.MultipleLinearRegression
    public double[][] estimateRegressionParametersVariance() {
        return calculateBetaVariance().getData();
    }

    public double estimateRegressionStandardError() {
        return FastMath.sqrt(estimateErrorVariance());
    }

    @Override // org.apache.commons.math3.stat.regression.MultipleLinearRegression
    public double[] estimateResiduals() {
        return this.f109782b.subtract(this.f109781a.operate(calculateBeta())).toArray();
    }

    public RealMatrix getX() {
        return this.f109781a;
    }

    public RealVector getY() {
        return this.f109782b;
    }

    public boolean isNoIntercept() {
        return this.f109783c;
    }

    public void newSampleData(double[] dArr, int i, int i2) {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        int i3 = i2 + 1;
        int i4 = i * i3;
        if (dArr.length != i4) {
            throw new DimensionMismatchException(dArr.length, i4);
        }
        if (i <= i2) {
            throw new InsufficientDataException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(i), Integer.valueOf(i3));
        }
        double[] dArr2 = new double[i];
        if (!this.f109783c) {
            i2 = i3;
        }
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        int i5 = 0;
        int i6 = 0;
        while (i5 < i) {
            int i7 = i6 + 1;
            dArr2[i5] = dArr[i6];
            boolean z = this.f109783c;
            if (!z) {
                dArr3[i5][0] = 1.0d;
            }
            int i8 = !z ? 1 : 0;
            while (i8 < i2) {
                dArr3[i5][i8] = dArr[i7];
                i8++;
                i7++;
            }
            i5++;
            i6 = i7;
        }
        this.f109781a = new Array2DRowRealMatrix(dArr3);
        this.f109782b = new ArrayRealVector(dArr2);
    }

    public void newXSampleData(double[][] dArr) {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (this.f109783c) {
            this.f109781a = new Array2DRowRealMatrix(dArr, true);
            return;
        }
        int length = dArr[0].length;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, length + 1);
        for (int i = 0; i < dArr.length; i++) {
            double[] dArr3 = dArr[i];
            if (dArr3.length != length) {
                throw new DimensionMismatchException(dArr[i].length, length);
            }
            double[] dArr4 = dArr2[i];
            dArr4[0] = 1.0d;
            System.arraycopy(dArr3, 0, dArr4, 1, length);
        }
        this.f109781a = new Array2DRowRealMatrix(dArr2, false);
    }

    public void newYSampleData(double[] dArr) {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        this.f109782b = new ArrayRealVector(dArr);
    }

    public void setNoIntercept(boolean z) {
        this.f109783c = z;
    }

    public void validateCovarianceData(double[][] dArr, double[][] dArr2) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr2.length > 0 && dArr2.length != dArr2[0].length) {
            throw new NonSquareMatrixException(dArr2.length, dArr2[0].length);
        }
    }

    public void validateSampleData(double[][] dArr, double[] dArr2) throws MathIllegalArgumentException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr[0].length + 1 > dArr.length) {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
        }
    }
}
