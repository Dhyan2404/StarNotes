package org.apache.commons.math3.ml.clustering;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class FuzzyKMeansClusterer<T extends Clusterable> extends Clusterer<T> {

    /* renamed from: j */
    public static final double f108645j = 0.001d;

    /* renamed from: b */
    public final int f108646b;

    /* renamed from: c */
    public final int f108647c;

    /* renamed from: d */
    public final double f108648d;

    /* renamed from: e */
    public final double f108649e;

    /* renamed from: f */
    public final RandomGenerator f108650f;

    /* renamed from: g */
    public double[][] f108651g;

    /* renamed from: h */
    public List<T> f108652h;

    /* renamed from: i */
    public List<CentroidCluster<T>> f108653i;

    public FuzzyKMeansClusterer(int i, double d) throws NumberIsTooSmallException {
        this(i, d, -1, new EuclideanDistance());
    }

    /* renamed from: a */
    public final double m67841a(double[][] dArr) {
        double d = 0.0d;
        for (int i = 0; i < this.f108652h.size(); i++) {
            for (int i2 = 0; i2 < this.f108653i.size(); i2++) {
                d = FastMath.max(FastMath.abs(this.f108651g[i][i2] - dArr[i][i2]), d);
            }
        }
        return d;
    }

    /* renamed from: b */
    public final void m67842b() {
        for (int i = 0; i < this.f108652h.size(); i++) {
            for (int i2 = 0; i2 < this.f108646b; i2++) {
                this.f108651g[i][i2] = this.f108650f.nextDouble();
            }
            double[][] dArr = this.f108651g;
            dArr[i] = MathArrays.normalizeArray(dArr[i], 1.0d);
        }
    }

    /* renamed from: c */
    public final void m67843c(double[][] dArr) {
        for (int i = 0; i < this.f108652h.size(); i++) {
            System.arraycopy(this.f108651g[i], 0, dArr[i], 0, this.f108653i.size());
        }
    }

    @Override // org.apache.commons.math3.ml.clustering.Clusterer
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException {
        MathUtils.checkNotNull(collection);
        int size = collection.size();
        int i = 0;
        if (size < this.f108646b) {
            throw new NumberIsTooSmallException(Integer.valueOf(size), Integer.valueOf(this.f108646b), false);
        }
        this.f108652h = Collections.unmodifiableList(new ArrayList(collection));
        this.f108653i = new ArrayList();
        this.f108651g = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, this.f108646b);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, this.f108646b);
        if (size == 0) {
            return this.f108653i;
        }
        m67842b();
        int length = this.f108652h.get(0).getPoint().length;
        for (int i2 = 0; i2 < this.f108646b; i2++) {
            this.f108653i.add(new CentroidCluster<>(new DoublePoint(new double[length])));
        }
        int i3 = this.f108647c;
        if (i3 < 0) {
            i3 = Integer.MAX_VALUE;
        }
        do {
            m67843c(dArr);
            m67844d();
            m67845e();
            if (m67841a(dArr) <= this.f108649e) {
                break;
            }
            i++;
        } while (i < i3);
        return this.f108653i;
    }

    /* renamed from: d */
    public final void m67844d() {
        ArrayList arrayList = new ArrayList(this.f108646b);
        Iterator<CentroidCluster<T>> it2 = this.f108653i.iterator();
        int i = 0;
        while (it2.hasNext()) {
            int length = it2.next().getCenter().getPoint().length;
            double[] dArr = new double[length];
            double d = 0.0d;
            int i2 = 0;
            for (T t : this.f108652h) {
                double pow = FastMath.pow(this.f108651g[i2][i], this.f108648d);
                double[] point = t.getPoint();
                for (int i3 = 0; i3 < length; i3++) {
                    dArr[i3] = dArr[i3] + (point[i3] * pow);
                }
                d += pow;
                i2++;
            }
            MathArrays.scaleInPlace(1.0d / d, dArr);
            arrayList.add(new CentroidCluster(new DoublePoint(dArr)));
            i++;
        }
        this.f108653i.clear();
        this.f108653i = arrayList;
    }

    /* renamed from: e */
    public final void m67845e() {
        double d;
        double d2;
        for (int i = 0; i < this.f108652h.size(); i++) {
            T t = this.f108652h.get(i);
            double d3 = Double.MIN_VALUE;
            int i2 = -1;
            for (int i3 = 0; i3 < this.f108653i.size(); i3++) {
                double abs = FastMath.abs(distance(t, this.f108653i.get(i3).getCenter()));
                double d4 = 0.0d;
                if (abs != 0.0d) {
                    Iterator<CentroidCluster<T>> it2 = this.f108653i.iterator();
                    d2 = 0.0d;
                    while (true) {
                        if (!it2.hasNext()) {
                            d = d4;
                            break;
                        }
                        double abs2 = FastMath.abs(distance(t, it2.next().getCenter()));
                        if (abs2 == d4) {
                            d = d4;
                            d2 = Double.POSITIVE_INFINITY;
                            break;
                        } else {
                            d2 += FastMath.pow(abs / abs2, 2.0d / (this.f108648d - 1.0d));
                            d4 = 0.0d;
                        }
                    }
                } else {
                    d = 0.0d;
                    d2 = 0.0d;
                }
                double d5 = d2 == d ? 1.0d : d2 == Double.POSITIVE_INFINITY ? d : 1.0d / d2;
                this.f108651g[i][i3] = d5;
                if (d5 > d3) {
                    i2 = i3;
                    d3 = d5;
                }
            }
            this.f108653i.get(i2).addPoint(t);
        }
    }

    public List<CentroidCluster<T>> getClusters() {
        return this.f108653i;
    }

    public List<T> getDataPoints() {
        return this.f108652h;
    }

    public double getEpsilon() {
        return this.f108649e;
    }

    public double getFuzziness() {
        return this.f108648d;
    }

    public int getK() {
        return this.f108646b;
    }

    public int getMaxIterations() {
        return this.f108647c;
    }

    public RealMatrix getMembershipMatrix() {
        double[][] dArr = this.f108651g;
        if (dArr != null) {
            return MatrixUtils.createRealMatrix(dArr);
        }
        throw new MathIllegalStateException();
    }

    public double getObjectiveFunctionValue() {
        List<T> list = this.f108652h;
        if (list == null || this.f108653i == null) {
            throw new MathIllegalStateException();
        }
        double d = 0.0d;
        int i = 0;
        for (T t : list) {
            Iterator<CentroidCluster<T>> it2 = this.f108653i.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                double distance = distance(t, it2.next().getCenter());
                d += distance * distance * FastMath.pow(this.f108651g[i][i2], this.f108648d);
                i2++;
            }
            i++;
        }
        return d;
    }

    public RandomGenerator getRandomGenerator() {
        return this.f108650f;
    }

    public FuzzyKMeansClusterer(int i, double d, int i2, DistanceMeasure distanceMeasure) throws NumberIsTooSmallException {
        this(i, d, i2, distanceMeasure, 0.001d, new JDKRandomGenerator());
    }

    public FuzzyKMeansClusterer(int i, double d, int i2, DistanceMeasure distanceMeasure, double d2, RandomGenerator randomGenerator) throws NumberIsTooSmallException {
        super(distanceMeasure);
        if (d > 1.0d) {
            this.f108646b = i;
            this.f108648d = d;
            this.f108647c = i2;
            this.f108649e = d2;
            this.f108650f = randomGenerator;
            this.f108651g = null;
            this.f108652h = null;
            this.f108653i = null;
            return;
        }
        throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(1.0d), false);
    }
}
