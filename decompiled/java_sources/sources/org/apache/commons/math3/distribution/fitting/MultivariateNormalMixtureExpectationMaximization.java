package org.apache.commons.math3.distribution.fitting;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.distribution.MixtureMultivariateNormalDistribution;
import org.apache.commons.math3.distribution.MultivariateNormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.stat.correlation.Covariance;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class MultivariateNormalMixtureExpectationMaximization {

    /* renamed from: d */
    public static final int f108079d = 1000;

    /* renamed from: e */
    public static final double f108080e = 1.0E-5d;

    /* renamed from: a */
    public final double[][] f108081a;

    /* renamed from: b */
    public MixtureMultivariateNormalDistribution f108082b;

    /* renamed from: c */
    public double f108083c = 0.0d;

    /* renamed from: org.apache.commons.math3.distribution.fitting.MultivariateNormalMixtureExpectationMaximization$a */
    /* loaded from: classes12.dex */
    public static class C19080a implements Comparable<C19080a> {

        /* renamed from: e */
        public final double[] f108084e;

        /* renamed from: f */
        public Double f108085f;

        public C19080a(double[] dArr) {
            this.f108084e = dArr;
            this.f108085f = Double.valueOf(0.0d);
            for (double d : dArr) {
                this.f108085f = Double.valueOf(this.f108085f.doubleValue() + d);
            }
            this.f108085f = Double.valueOf(this.f108085f.doubleValue() / dArr.length);
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C19080a c19080a) {
            return this.f108085f.compareTo(c19080a.f108085f);
        }

        /* renamed from: b */
        public double[] m67556b() {
            return this.f108084e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C19080a) {
                return MathArrays.equals(this.f108084e, ((C19080a) obj).f108084e);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f108084e);
        }
    }

    public MultivariateNormalMixtureExpectationMaximization(double[][] dArr) throws NotStrictlyPositiveException, DimensionMismatchException, NumberIsTooSmallException {
        if (dArr.length < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(dArr.length));
        }
        this.f108081a = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length, dArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            double[] dArr2 = dArr[i];
            if (dArr2.length != dArr[0].length) {
                throw new DimensionMismatchException(dArr[i].length, dArr[0].length);
            }
            if (dArr2.length < 2) {
                throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(dArr[i].length), 2, true);
            }
            this.f108081a[i] = MathArrays.copyOf(dArr2, dArr2.length);
        }
    }

    public static MixtureMultivariateNormalDistribution estimate(double[][] dArr, int i) throws NotStrictlyPositiveException, DimensionMismatchException {
        if (dArr.length < 2) {
            throw new NotStrictlyPositiveException(Integer.valueOf(dArr.length));
        }
        if (i < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), 2, true);
        }
        if (i > dArr.length) {
            throw new NumberIsTooLargeException(Integer.valueOf(i), Integer.valueOf(dArr.length), true);
        }
        int length = dArr.length;
        int i2 = 0;
        int length2 = dArr[0].length;
        C19080a[] c19080aArr = new C19080a[length];
        for (int i3 = 0; i3 < length; i3++) {
            c19080aArr[i3] = new C19080a(dArr[i3]);
        }
        Arrays.sort(c19080aArr);
        double d = 1.0d / i;
        ArrayList arrayList = new ArrayList(i);
        int i4 = 0;
        while (i4 < i) {
            int i5 = (i4 * length) / i;
            i4++;
            int i6 = (i4 * length) / i;
            int i7 = i6 - i5;
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i7, length2);
            double[] dArr3 = new double[length2];
            int i8 = i2;
            while (i5 < i6) {
                while (i2 < length2) {
                    double d2 = c19080aArr[i5].m67556b()[i2];
                    dArr3[i2] = dArr3[i2] + d2;
                    dArr2[i8][i2] = d2;
                    i2++;
                }
                i5++;
                i8++;
                i2 = 0;
            }
            MathArrays.scaleInPlace(1.0d / i7, dArr3);
            arrayList.add(new Pair(Double.valueOf(d), new MultivariateNormalDistribution(dArr3, new Covariance(dArr2).getCovarianceMatrix().getData())));
            i2 = 0;
        }
        return new MixtureMultivariateNormalDistribution(arrayList);
    }

    public void fit(MixtureMultivariateNormalDistribution mixtureMultivariateNormalDistribution, int i, double d) throws SingularMatrixException, NotStrictlyPositiveException, DimensionMismatchException {
        int i2 = i;
        if (i2 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (d >= Double.MIN_VALUE) {
            double[][] dArr = this.f108081a;
            int length = dArr.length;
            int i3 = 0;
            int length2 = dArr[0].length;
            int size = mixtureMultivariateNormalDistribution.getComponents().size();
            int length3 = mixtureMultivariateNormalDistribution.getComponents().get(0).getSecond().getMeans().length;
            if (length3 == length2) {
                this.f108083c = Double.NEGATIVE_INFINITY;
                this.f108082b = new MixtureMultivariateNormalDistribution(mixtureMultivariateNormalDistribution.getComponents());
                int i4 = 0;
                double d2 = 0.0d;
                while (true) {
                    int i5 = i4 + 1;
                    if (i4 > i2 || FastMath.abs(d2 - this.f108083c) <= d) {
                        break;
                    }
                    double d3 = this.f108083c;
                    List<Pair<Double, MultivariateNormalDistribution>> components = this.f108082b.getComponents();
                    double[] dArr2 = new double[size];
                    MultivariateNormalDistribution[] multivariateNormalDistributionArr = new MultivariateNormalDistribution[size];
                    for (int i6 = i3; i6 < size; i6++) {
                        dArr2[i6] = components.get(i6).getFirst().doubleValue();
                        multivariateNormalDistributionArr[i6] = components.get(i6).getSecond();
                    }
                    double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, size);
                    double[] dArr4 = new double[size];
                    double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, length2);
                    double d4 = 0.0d;
                    for (int i7 = 0; i7 < length; i7++) {
                        double density = this.f108082b.density(this.f108081a[i7]);
                        d4 += FastMath.log(density);
                        int i8 = 0;
                        while (i8 < size) {
                            double d5 = d3;
                            dArr3[i7][i8] = (dArr2[i8] * multivariateNormalDistributionArr[i8].density(this.f108081a[i7])) / density;
                            dArr4[i8] = dArr4[i8] + dArr3[i7][i8];
                            int i9 = 0;
                            while (i9 < length2) {
                                double[] dArr6 = dArr5[i8];
                                dArr6[i9] = dArr6[i9] + (dArr3[i7][i8] * this.f108081a[i7][i9]);
                                i9++;
                                density = density;
                            }
                            i8++;
                            d3 = d5;
                        }
                    }
                    double d6 = d3;
                    double d7 = length;
                    this.f108083c = d4 / d7;
                    double[] dArr7 = new double[size];
                    double[][] dArr8 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, length2);
                    for (int i10 = 0; i10 < size; i10++) {
                        dArr7[i10] = dArr4[i10] / d7;
                        for (int i11 = 0; i11 < length2; i11++) {
                            dArr8[i10][i11] = dArr5[i10][i11] / dArr4[i10];
                        }
                    }
                    RealMatrix[] realMatrixArr = new RealMatrix[size];
                    for (int i12 = 0; i12 < size; i12++) {
                        realMatrixArr[i12] = new Array2DRowRealMatrix(length2, length2);
                    }
                    for (int i13 = 0; i13 < length; i13++) {
                        for (int i14 = 0; i14 < size; i14++) {
                            Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(MathArrays.ebeSubtract(this.f108081a[i13], dArr8[i14]));
                            realMatrixArr[i14] = realMatrixArr[i14].add(array2DRowRealMatrix.multiply(array2DRowRealMatrix.transpose()).scalarMultiply(dArr3[i13][i14]));
                        }
                    }
                    double[][][] dArr9 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, size, length2, length2);
                    for (int i15 = 0; i15 < size; i15++) {
                        RealMatrix scalarMultiply = realMatrixArr[i15].scalarMultiply(1.0d / dArr4[i15]);
                        realMatrixArr[i15] = scalarMultiply;
                        dArr9[i15] = scalarMultiply.getData();
                    }
                    this.f108082b = new MixtureMultivariateNormalDistribution(dArr7, dArr8, dArr9);
                    i2 = i;
                    i4 = i5;
                    d2 = d6;
                    i3 = 0;
                }
                if (FastMath.abs(d2 - this.f108083c) > d) {
                    throw new ConvergenceException();
                }
                return;
            }
            throw new DimensionMismatchException(length3, length2);
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d));
    }

    public MixtureMultivariateNormalDistribution getFittedModel() {
        return new MixtureMultivariateNormalDistribution(this.f108082b.getComponents());
    }

    public double getLogLikelihood() {
        return this.f108083c;
    }

    public void fit(MixtureMultivariateNormalDistribution mixtureMultivariateNormalDistribution) throws SingularMatrixException, NotStrictlyPositiveException {
        fit(mixtureMultivariateNormalDistribution, 1000, 1.0E-5d);
    }
}
