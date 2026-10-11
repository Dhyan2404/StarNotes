package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.NonPositiveDefiniteMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class MultivariateNormalDistribution extends AbstractMultivariateRealDistribution {

    /* renamed from: b */
    public final double[] f108065b;

    /* renamed from: c */
    public final RealMatrix f108066c;

    /* renamed from: d */
    public final RealMatrix f108067d;

    /* renamed from: e */
    public final double f108068e;

    /* renamed from: f */
    public final RealMatrix f108069f;

    public MultivariateNormalDistribution(double[] dArr, double[][] dArr2) throws SingularMatrixException, DimensionMismatchException, NonPositiveDefiniteMatrixException {
        this(new Well19937c(), dArr, dArr2);
    }

    /* renamed from: a */
    public final double m67548a(double[] dArr) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i = 0; i < length; i++) {
            dArr2[i] = dArr[i] - getMeans()[i];
        }
        double[] preMultiply = this.f108067d.preMultiply(dArr2);
        double d = 0.0d;
        for (int i2 = 0; i2 < preMultiply.length; i2++) {
            d += preMultiply[i2] * dArr2[i2];
        }
        return FastMath.exp(d * (-0.5d));
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double density(double[] dArr) throws DimensionMismatchException {
        int dimension = getDimension();
        if (dArr.length == dimension) {
            return FastMath.pow(6.283185307179586d, dimension * (-0.5d)) * FastMath.pow(this.f108068e, -0.5d) * m67548a(dArr);
        }
        throw new DimensionMismatchException(dArr.length, dimension);
    }

    public RealMatrix getCovariances() {
        return this.f108066c.copy();
    }

    public double[] getMeans() {
        return MathArrays.copyOf(this.f108065b);
    }

    public double[] getStandardDeviations() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        double[][] data = this.f108066c.getData();
        for (int i = 0; i < dimension; i++) {
            dArr[i] = FastMath.sqrt(data[i][i]);
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.distribution.AbstractMultivariateRealDistribution, org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double[] sample() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        for (int i = 0; i < dimension; i++) {
            dArr[i] = this.random.nextGaussian();
        }
        double[] operate = this.f108069f.operate(dArr);
        for (int i2 = 0; i2 < dimension; i2++) {
            operate[i2] = operate[i2] + this.f108065b[i2];
        }
        return operate;
    }

    public MultivariateNormalDistribution(RandomGenerator randomGenerator, double[] dArr, double[][] dArr2) throws SingularMatrixException, DimensionMismatchException, NonPositiveDefiniteMatrixException {
        super(randomGenerator, dArr.length);
        int length = dArr.length;
        if (dArr2.length == length) {
            for (int i = 0; i < length; i++) {
                if (length != dArr2[i].length) {
                    throw new DimensionMismatchException(dArr2[i].length, length);
                }
            }
            this.f108065b = MathArrays.copyOf(dArr);
            Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr2);
            this.f108066c = array2DRowRealMatrix;
            EigenDecomposition eigenDecomposition = new EigenDecomposition(array2DRowRealMatrix);
            this.f108067d = eigenDecomposition.getSolver().getInverse();
            this.f108068e = eigenDecomposition.getDeterminant();
            double[] realEigenvalues = eigenDecomposition.getRealEigenvalues();
            for (int i2 = 0; i2 < realEigenvalues.length; i2++) {
                if (realEigenvalues[i2] < 0.0d) {
                    throw new NonPositiveDefiniteMatrixException(realEigenvalues[i2], i2, 0.0d);
                }
            }
            Array2DRowRealMatrix array2DRowRealMatrix2 = new Array2DRowRealMatrix(length, length);
            for (int i3 = 0; i3 < length; i3++) {
                array2DRowRealMatrix2.setColumn(i3, eigenDecomposition.getEigenvector(i3).toArray());
            }
            RealMatrix transpose = array2DRowRealMatrix2.transpose();
            for (int i4 = 0; i4 < length; i4++) {
                double sqrt = FastMath.sqrt(realEigenvalues[i4]);
                for (int i5 = 0; i5 < length; i5++) {
                    transpose.multiplyEntry(i4, i5, sqrt);
                }
            }
            this.f108069f = array2DRowRealMatrix2.multiply(transpose);
            return;
        }
        throw new DimensionMismatchException(dArr2.length, length);
    }
}
