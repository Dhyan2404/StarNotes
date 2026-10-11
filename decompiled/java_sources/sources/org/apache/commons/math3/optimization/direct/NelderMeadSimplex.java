package org.apache.commons.math3.optimization.direct;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optimization.PointValuePair;

@Deprecated
/* loaded from: classes12.dex */
public class NelderMeadSimplex extends AbstractSimplex {

    /* renamed from: h */
    public static final double f109455h = 1.0d;

    /* renamed from: i */
    public static final double f109456i = 2.0d;

    /* renamed from: j */
    public static final double f109457j = 0.5d;

    /* renamed from: k */
    public static final double f109458k = 0.5d;

    /* renamed from: d */
    public final double f109459d;

    /* renamed from: e */
    public final double f109460e;

    /* renamed from: f */
    public final double f109461f;

    /* renamed from: g */
    public final double f109462g;

    public NelderMeadSimplex(int i) {
        this(i, 1.0d);
    }

    @Override // org.apache.commons.math3.optimization.direct.AbstractSimplex
    public void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        int dimension = getDimension();
        PointValuePair point = getPoint(0);
        PointValuePair point2 = getPoint(dimension - 1);
        PointValuePair point3 = getPoint(dimension);
        double[] pointRef = point3.getPointRef();
        double[] dArr = new double[dimension];
        for (int i = 0; i < dimension; i++) {
            double[] pointRef2 = getPoint(i).getPointRef();
            for (int i2 = 0; i2 < dimension; i2++) {
                dArr[i2] = dArr[i2] + pointRef2[i2];
            }
        }
        double d = 1.0d / dimension;
        for (int i3 = 0; i3 < dimension; i3++) {
            dArr[i3] = dArr[i3] * d;
        }
        double[] dArr2 = new double[dimension];
        for (int i4 = 0; i4 < dimension; i4++) {
            double d2 = dArr[i4];
            dArr2[i4] = d2 + (this.f109459d * (d2 - pointRef[i4]));
        }
        PointValuePair pointValuePair = new PointValuePair(dArr2, multivariateFunction.value(dArr2), false);
        if (comparator.compare(point, pointValuePair) <= 0 && comparator.compare(pointValuePair, point2) < 0) {
            replaceWorstPoint(pointValuePair, comparator);
            return;
        }
        if (comparator.compare(pointValuePair, point) < 0) {
            double[] dArr3 = new double[dimension];
            for (int i5 = 0; i5 < dimension; i5++) {
                double d3 = dArr[i5];
                dArr3[i5] = d3 + (this.f109460e * (dArr2[i5] - d3));
            }
            PointValuePair pointValuePair2 = new PointValuePair(dArr3, multivariateFunction.value(dArr3), false);
            if (comparator.compare(pointValuePair2, pointValuePair) < 0) {
                replaceWorstPoint(pointValuePair2, comparator);
                return;
            } else {
                replaceWorstPoint(pointValuePair, comparator);
                return;
            }
        }
        if (comparator.compare(pointValuePair, point3) < 0) {
            double[] dArr4 = new double[dimension];
            for (int i6 = 0; i6 < dimension; i6++) {
                double d4 = dArr[i6];
                dArr4[i6] = d4 + (this.f109461f * (dArr2[i6] - d4));
            }
            PointValuePair pointValuePair3 = new PointValuePair(dArr4, multivariateFunction.value(dArr4), false);
            if (comparator.compare(pointValuePair3, pointValuePair) <= 0) {
                replaceWorstPoint(pointValuePair3, comparator);
                return;
            }
        } else {
            double[] dArr5 = new double[dimension];
            for (int i7 = 0; i7 < dimension; i7++) {
                double d5 = dArr[i7];
                dArr5[i7] = d5 - (this.f109461f * (d5 - pointRef[i7]));
            }
            PointValuePair pointValuePair4 = new PointValuePair(dArr5, multivariateFunction.value(dArr5), false);
            if (comparator.compare(pointValuePair4, point3) < 0) {
                replaceWorstPoint(pointValuePair4, comparator);
                return;
            }
        }
        double[] pointRef3 = getPoint(0).getPointRef();
        for (int i8 = 1; i8 <= dimension; i8++) {
            double[] point4 = getPoint(i8).getPoint();
            for (int i9 = 0; i9 < dimension; i9++) {
                double d6 = pointRef3[i9];
                point4[i9] = d6 + (this.f109462g * (point4[i9] - d6));
            }
            setPoint(i8, new PointValuePair(point4, Double.NaN, false));
        }
        evaluate(multivariateFunction, comparator);
    }

    public NelderMeadSimplex(int i, double d) {
        this(i, d, 1.0d, 2.0d, 0.5d, 0.5d);
    }

    public NelderMeadSimplex(int i, double d, double d2, double d3, double d4, double d5) {
        super(i, d);
        this.f109459d = d2;
        this.f109460e = d3;
        this.f109461f = d4;
        this.f109462g = d5;
    }

    public NelderMeadSimplex(int i, double d, double d2, double d3, double d4) {
        this(i, 1.0d, d, d2, d3, d4);
    }

    public NelderMeadSimplex(double[] dArr) {
        this(dArr, 1.0d, 2.0d, 0.5d, 0.5d);
    }

    public NelderMeadSimplex(double[] dArr, double d, double d2, double d3, double d4) {
        super(dArr);
        this.f109459d = d;
        this.f109460e = d2;
        this.f109461f = d3;
        this.f109462g = d4;
    }

    public NelderMeadSimplex(double[][] dArr) {
        this(dArr, 1.0d, 2.0d, 0.5d, 0.5d);
    }

    public NelderMeadSimplex(double[][] dArr, double d, double d2, double d3, double d4) {
        super(dArr);
        this.f109459d = d;
        this.f109460e = d2;
        this.f109461f = d3;
        this.f109462g = d4;
    }
}
