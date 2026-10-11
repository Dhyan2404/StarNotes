package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optim.PointValuePair;

/* loaded from: classes12.dex */
public class MultiDirectionalSimplex extends AbstractSimplex {

    /* renamed from: j */
    public static final double f109216j = 2.0d;

    /* renamed from: k */
    public static final double f109217k = 0.5d;

    /* renamed from: h */
    public final double f109218h;

    /* renamed from: i */
    public final double f109219i;

    public MultiDirectionalSimplex(int i) {
        this(i, 1.0d);
    }

    /* renamed from: b */
    public final PointValuePair m67969b(MultivariateFunction multivariateFunction, PointValuePair[] pointValuePairArr, double d, Comparator<PointValuePair> comparator) {
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

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.noderiv.AbstractSimplex
    public void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        PointValuePair[] points = getPoints();
        PointValuePair pointValuePair = points[0];
        PointValuePair m67969b = m67969b(multivariateFunction, points, 1.0d, comparator);
        if (comparator.compare(m67969b, pointValuePair) >= 0) {
            m67969b(multivariateFunction, points, this.f109219i, comparator);
            return;
        }
        PointValuePair[] points2 = getPoints();
        if (comparator.compare(m67969b, m67969b(multivariateFunction, points, this.f109218h, comparator)) <= 0) {
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
        this.f109218h = d2;
        this.f109219i = d3;
    }

    public MultiDirectionalSimplex(double[] dArr) {
        this(dArr, 2.0d, 0.5d);
    }

    public MultiDirectionalSimplex(double[] dArr, double d, double d2) {
        super(dArr);
        this.f109218h = d;
        this.f109219i = d2;
    }

    public MultiDirectionalSimplex(double[][] dArr) {
        this(dArr, 2.0d, 0.5d);
    }

    public MultiDirectionalSimplex(double[][] dArr, double d, double d2) {
        super(dArr);
        this.f109218h = d;
        this.f109219i = d2;
    }
}
