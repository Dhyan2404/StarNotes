package org.apache.commons.math3.optimization.direct;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractSimplex implements OptimizationData {

    /* renamed from: a */
    public PointValuePair[] f109339a;

    /* renamed from: b */
    public double[][] f109340b;

    /* renamed from: c */
    public final int f109341c;

    public AbstractSimplex(int i) {
        this(i, 1.0d);
    }

    /* renamed from: a */
    public static double[] m67995a(int i, double d) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = d;
        }
        return dArr;
    }

    public void build(double[] dArr) {
        int i = this.f109341c;
        if (i != dArr.length) {
            throw new DimensionMismatchException(this.f109341c, dArr.length);
        }
        PointValuePair[] pointValuePairArr = new PointValuePair[i + 1];
        this.f109339a = pointValuePairArr;
        pointValuePairArr[0] = new PointValuePair(dArr, Double.NaN);
        int i2 = 0;
        while (true) {
            int i3 = this.f109341c;
            if (i2 >= i3) {
                return;
            }
            double[] dArr2 = this.f109340b[i2];
            double[] dArr3 = new double[i3];
            for (int i4 = 0; i4 < this.f109341c; i4++) {
                dArr3[i4] = dArr[i4] + dArr2[i4];
            }
            i2++;
            this.f109339a[i2] = new PointValuePair(dArr3, Double.NaN);
        }
    }

    public void evaluate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        int i = 0;
        while (true) {
            PointValuePair[] pointValuePairArr = this.f109339a;
            if (i >= pointValuePairArr.length) {
                Arrays.sort(pointValuePairArr, comparator);
                return;
            }
            PointValuePair pointValuePair = pointValuePairArr[i];
            double[] pointRef = pointValuePair.getPointRef();
            if (Double.isNaN(pointValuePair.getValue().doubleValue())) {
                this.f109339a[i] = new PointValuePair(pointRef, multivariateFunction.value(pointRef), false);
            }
            i++;
        }
    }

    public int getDimension() {
        return this.f109341c;
    }

    public PointValuePair getPoint(int i) {
        if (i >= 0) {
            PointValuePair[] pointValuePairArr = this.f109339a;
            if (i < pointValuePairArr.length) {
                return pointValuePairArr[i];
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(this.f109339a.length - 1));
    }

    public PointValuePair[] getPoints() {
        PointValuePair[] pointValuePairArr = this.f109339a;
        PointValuePair[] pointValuePairArr2 = new PointValuePair[pointValuePairArr.length];
        System.arraycopy(pointValuePairArr, 0, pointValuePairArr2, 0, pointValuePairArr.length);
        return pointValuePairArr2;
    }

    public int getSize() {
        return this.f109339a.length;
    }

    public abstract void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator);

    public void replaceWorstPoint(PointValuePair pointValuePair, Comparator<PointValuePair> comparator) {
        int i = 0;
        while (true) {
            int i2 = this.f109341c;
            if (i >= i2) {
                this.f109339a[i2] = pointValuePair;
                return;
            }
            if (comparator.compare(this.f109339a[i], pointValuePair) > 0) {
                PointValuePair[] pointValuePairArr = this.f109339a;
                PointValuePair pointValuePair2 = pointValuePairArr[i];
                pointValuePairArr[i] = pointValuePair;
                pointValuePair = pointValuePair2;
            }
            i++;
        }
    }

    public void setPoint(int i, PointValuePair pointValuePair) {
        if (i >= 0) {
            PointValuePair[] pointValuePairArr = this.f109339a;
            if (i < pointValuePairArr.length) {
                pointValuePairArr[i] = pointValuePair;
                return;
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(this.f109339a.length - 1));
    }

    public void setPoints(PointValuePair[] pointValuePairArr) {
        if (pointValuePairArr.length != this.f109339a.length) {
            throw new DimensionMismatchException(pointValuePairArr.length, this.f109339a.length);
        }
        this.f109339a = pointValuePairArr;
    }

    public AbstractSimplex(int i, double d) {
        this(m67995a(i, d));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        r1 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractSimplex(double[] r9) {
        /*
            r8 = this;
            r8.<init>()
            if (r9 == 0) goto L49
            int r0 = r9.length
            if (r0 == 0) goto L43
            int r0 = r9.length
            r8.f109341c = r0
            int[] r0 = new int[]{r0, r0}
            java.lang.Class r1 = java.lang.Double.TYPE
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r1, r0)
            double[][] r0 = (double[][]) r0
            r8.f109340b = r0
            r0 = 0
            r1 = r0
        L1b:
            int r2 = r8.f109341c
            if (r1 >= r2) goto L42
            double[][] r2 = r8.f109340b
            r2 = r2[r1]
            r3 = r0
        L24:
            int r4 = r1 + 1
            if (r3 >= r4) goto L40
            r4 = r9[r3]
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L36
            int r3 = r3 + 1
            java.lang.System.arraycopy(r9, r0, r2, r0, r3)
            goto L24
        L36:
            org.apache.commons.math3.exception.ZeroException r8 = new org.apache.commons.math3.exception.ZeroException
            org.apache.commons.math3.exception.util.LocalizedFormats r9 = org.apache.commons.math3.exception.util.LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r8.<init>(r9, r0)
            throw r8
        L40:
            r1 = r4
            goto L1b
        L42:
            return
        L43:
            org.apache.commons.math3.exception.ZeroException r8 = new org.apache.commons.math3.exception.ZeroException
            r8.<init>()
            throw r8
        L49:
            org.apache.commons.math3.exception.NullArgumentException r8 = new org.apache.commons.math3.exception.NullArgumentException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.direct.AbstractSimplex.<init>(double[]):void");
    }

    public AbstractSimplex(double[][] dArr) {
        boolean z;
        if (dArr.length > 0) {
            int length = dArr.length - 1;
            this.f109341c = length;
            this.f109340b = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
            double[] dArr2 = dArr[0];
            for (int i = 0; i < dArr.length; i++) {
                double[] dArr3 = dArr[i];
                if (dArr3.length != this.f109341c) {
                    throw new DimensionMismatchException(dArr3.length, this.f109341c);
                }
                for (int i2 = 0; i2 < i; i2++) {
                    double[] dArr4 = dArr[i2];
                    int i3 = 0;
                    while (true) {
                        if (i3 >= this.f109341c) {
                            z = true;
                            break;
                        } else {
                            if (dArr3[i3] != dArr4[i3]) {
                                z = false;
                                break;
                            }
                            i3++;
                        }
                    }
                    if (z) {
                        throw new MathIllegalArgumentException(LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX, Integer.valueOf(i), Integer.valueOf(i2));
                    }
                }
                if (i > 0) {
                    double[] dArr5 = this.f109340b[i - 1];
                    for (int i4 = 0; i4 < this.f109341c; i4++) {
                        dArr5[i4] = dArr3[i4] - dArr2[i4];
                    }
                }
            }
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SIMPLEX_NEED_ONE_POINT, Integer.valueOf(dArr.length));
    }
}
