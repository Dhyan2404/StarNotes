package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RectangularCholeskyDecomposition;

/* loaded from: classes12.dex */
public class CorrelatedRandomVectorGenerator implements RandomVectorGenerator {

    /* renamed from: a */
    public final double[] f109576a;

    /* renamed from: b */
    public final NormalizedRandomGenerator f109577b;

    /* renamed from: c */
    public final double[] f109578c;

    /* renamed from: d */
    public final RealMatrix f109579d;

    public CorrelatedRandomVectorGenerator(double[] dArr, RealMatrix realMatrix, double d, NormalizedRandomGenerator normalizedRandomGenerator) {
        int rowDimension = realMatrix.getRowDimension();
        if (dArr.length == rowDimension) {
            this.f109576a = (double[]) dArr.clone();
            RectangularCholeskyDecomposition rectangularCholeskyDecomposition = new RectangularCholeskyDecomposition(realMatrix, d);
            this.f109579d = rectangularCholeskyDecomposition.getRootMatrix();
            this.f109577b = normalizedRandomGenerator;
            this.f109578c = new double[rectangularCholeskyDecomposition.getRank()];
            return;
        }
        throw new DimensionMismatchException(dArr.length, rowDimension);
    }

    public NormalizedRandomGenerator getGenerator() {
        return this.f109577b;
    }

    public int getRank() {
        return this.f109578c.length;
    }

    public RealMatrix getRootMatrix() {
        return this.f109579d;
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        int i = 0;
        while (true) {
            double[] dArr = this.f109578c;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = this.f109577b.nextNormalizedDouble();
            i++;
        }
        int length = this.f109576a.length;
        double[] dArr2 = new double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr2[i2] = this.f109576a[i2];
            for (int i3 = 0; i3 < this.f109579d.getColumnDimension(); i3++) {
                dArr2[i2] = dArr2[i2] + (this.f109579d.getEntry(i2, i3) * this.f109578c[i3]);
            }
        }
        return dArr2;
    }

    public CorrelatedRandomVectorGenerator(RealMatrix realMatrix, double d, NormalizedRandomGenerator normalizedRandomGenerator) {
        int rowDimension = realMatrix.getRowDimension();
        this.f109576a = new double[rowDimension];
        for (int i = 0; i < rowDimension; i++) {
            this.f109576a[i] = 0.0d;
        }
        RectangularCholeskyDecomposition rectangularCholeskyDecomposition = new RectangularCholeskyDecomposition(realMatrix, d);
        this.f109579d = rectangularCholeskyDecomposition.getRootMatrix();
        this.f109577b = normalizedRandomGenerator;
        this.f109578c = new double[rectangularCholeskyDecomposition.getRank()];
    }
}
