package org.apache.commons.math3.stat.correlation;

import com.sunia.HTREnginev2.zzm;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;

/* loaded from: classes12.dex */
public class StorelessCovariance extends Covariance {

    /* renamed from: c */
    public zzm[] f109735c;

    /* renamed from: d */
    public int f109736d;

    public StorelessCovariance(int i) {
        this(i, true);
    }

    public void append(StorelessCovariance storelessCovariance) throws DimensionMismatchException {
        if (storelessCovariance.f109736d != this.f109736d) {
            throw new DimensionMismatchException(storelessCovariance.f109736d, this.f109736d);
        }
        for (int i = 0; i < this.f109736d; i++) {
            for (int i2 = i; i2 < this.f109736d; i2++) {
                m68119b(i, i2).m58769a(storelessCovariance.m68119b(i, i2));
            }
        }
    }

    /* renamed from: b */
    public final zzm m68119b(int i, int i2) {
        return this.f109735c[m68120c(i, i2)];
    }

    /* renamed from: c */
    public final int m68120c(int i, int i2) {
        return i2 < i ? ((i * (i + 1)) / 2) + i2 : i + ((i2 * (i2 + 1)) / 2);
    }

    /* renamed from: d */
    public final void m68121d(boolean z) {
        for (int i = 0; i < this.f109736d; i++) {
            for (int i2 = 0; i2 < this.f109736d; i2++) {
                m68122e(i, i2, new zzm(z));
            }
        }
    }

    /* renamed from: e */
    public final void m68122e(int i, int i2, zzm zzmVar) {
        this.f109735c[m68120c(i, i2)] = zzmVar;
    }

    public double getCovariance(int i, int i2) throws NumberIsTooSmallException {
        return m68119b(i, i2).m58771c();
    }

    @Override // org.apache.commons.math3.stat.correlation.Covariance
    public RealMatrix getCovarianceMatrix() throws NumberIsTooSmallException {
        return MatrixUtils.createRealMatrix(getData());
    }

    public double[][] getData() throws NumberIsTooSmallException {
        int i = this.f109736d;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i);
        for (int i2 = 0; i2 < this.f109736d; i2++) {
            for (int i3 = 0; i3 < this.f109736d; i3++) {
                dArr[i2][i3] = m68119b(i2, i3).m58771c();
            }
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.stat.correlation.Covariance
    public int getN() throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public void increment(double[] dArr) throws DimensionMismatchException {
        int length = dArr.length;
        if (length != this.f109736d) {
            throw new DimensionMismatchException(length, this.f109736d);
        }
        for (int i = 0; i < length; i++) {
            for (int i2 = i; i2 < length; i2++) {
                m68119b(i, i2).m58772d(dArr[i], dArr[i2]);
            }
        }
    }

    public StorelessCovariance(int i, boolean z) {
        this.f109736d = i;
        this.f109735c = new zzm[(i * (i + 1)) / 2];
        m68121d(z);
    }
}
