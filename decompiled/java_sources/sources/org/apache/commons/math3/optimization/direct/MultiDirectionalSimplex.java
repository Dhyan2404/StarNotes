package org.apache.commons.math3.optimization.direct;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optimization.PointValuePair;

@Deprecated
/* loaded from: classes12.dex */
public class MultiDirectionalSimplex extends AbstractSimplex {

    /* renamed from: f */
    public static final double f109440f = 2.0d;

    /* renamed from: g */
    public static final double f109441g = 0.5d;

    /* renamed from: d */
    public final double f109442d;

    /* renamed from: e */
    public final double f109443e;

    public MultiDirectionalSimplex(int i) {
        this(i, 1.0d);
    }

    /* renamed from: b */
    public final PointValuePair m68052b(MultivariateFunction multivariateFunction, PointValuePair[] pointValuePairArr, double d, Comparator<PointValuePair> comparator) {
        double[] pointRef = pointValuePairArr[0].getPointRef();
        setPoint(0, pointValuePairArr[0]);
        int dimension = getDimension();
        for (int i = 1; i < getSize(); i++) {
            double[] pointRef2 = pointValuePairArr[i].getPointRef();
            double[] dArr = new double[dimension];
            for (int i2 = 0; i2 < dimension; i2++) {
                double d2 = pointRef[i2];
                dArr[i2] = d2 + ((d2 - pointRef2[i2]) * d);
            }
            setPoint(i, new PointValuePair(dArr, Double.NaN, false));
        }
        evaluate(multivariateFunction, comparator);
        return getPoint(0);
    }

    @Override // org.apache.commons.math3.optimization.direct.AbstractSimplex
    public void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        PointValuePair[] points = getPoints();
        PointValuePair pointValuePair = points[0];
        PointValuePair m68052b = m68052b(multivariateFunction, points, 1.0d, comparator);
        if (comparator.compare(m68052b, pointValuePair) >= 0) {
            m68052b(multivariateFunction, points, this.f109443e, comparator);
            return;
        }
        PointValuePair[] points2 = getPoints();
        if (comparator.compare(m68052b, m68052b(multivariateFunction, points, this.f109442d, comparator)) <= 0) {
            setPoints(points2);
        }
    }

    public MultiDirectionalSimplex(int i, double d) {
        this(i, d, 2.0d, 0.5d);
    }

    public MultiDirectionalSimplex(int i, double d, double d2) {
        this(i, 1.0d, d, d2);
    }

    public MultiDirectionalSimplex(int i, double d, double d2, double d3) {
        super(i, d);
        this.f109442d = d2;
        this.f109443e = d3;
    }

    public MultiDirectionalSimplex(double[] dArr) {
        this(dArr, 2.0d, 0.5d);
    }

    public MultiDirectionalSimplex(double[] dArr, double d, double d2) {
        super(dArr);
        this.f109442d = d;
        this.f109443e = d2;
    }

    public MultiDirectionalSimplex(double[][] dArr) {
        this(dArr, 2.0d, 0.5d);
    }

    public MultiDirectionalSimplex(double[][] dArr, double d, double d2) {
        super(dArr);
        this.f109442d = d;
        this.f109443e = d2;
    }
}
