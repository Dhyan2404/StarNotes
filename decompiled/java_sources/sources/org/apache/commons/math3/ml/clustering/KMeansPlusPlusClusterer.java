package org.apache.commons.math3.ml.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class KMeansPlusPlusClusterer<T extends Clusterable> extends Clusterer<T> {

    /* renamed from: b */
    public final int f108654b;

    /* renamed from: c */
    public final int f108655c;

    /* renamed from: d */
    public final RandomGenerator f108656d;

    /* renamed from: e */
    public final EmptyClusterStrategy f108657e;

    /* loaded from: classes12.dex */
    public enum EmptyClusterStrategy {
        LARGEST_VARIANCE,
        LARGEST_POINTS_NUMBER,
        FARTHEST_POINT,
        ERROR
    }

    /* renamed from: org.apache.commons.math3.ml.clustering.KMeansPlusPlusClusterer$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19179a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108658a;

        static {
            int[] iArr = new int[EmptyClusterStrategy.values().length];
            f108658a = iArr;
            try {
                iArr[EmptyClusterStrategy.LARGEST_VARIANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108658a[EmptyClusterStrategy.LARGEST_POINTS_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f108658a[EmptyClusterStrategy.FARTHEST_POINT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public KMeansPlusPlusClusterer(int i) {
        this(i, -1);
    }

    /* renamed from: a */
    public final int m67846a(List<CentroidCluster<T>> list, Collection<T> collection, int[] iArr) {
        int i = 0;
        int i2 = 0;
        for (T t : collection) {
            int m67850e = m67850e(list, t);
            if (m67850e != iArr[i2]) {
                i++;
            }
            list.get(m67850e).addPoint(t);
            iArr[i2] = m67850e;
            i2++;
        }
        return i;
    }

    /* renamed from: b */
    public final Clusterable m67847b(Collection<T> collection, int i) {
        int i2;
        double[] dArr = new double[i];
        Iterator<T> it2 = collection.iterator();
        while (true) {
            i2 = 0;
            if (!it2.hasNext()) {
                break;
            }
            double[] point = it2.next().getPoint();
            while (i2 < i) {
                dArr[i2] = dArr[i2] + point[i2];
                i2++;
            }
        }
        while (i2 < i) {
            dArr[i2] = dArr[i2] / collection.size();
            i2++;
        }
        return new DoublePoint(dArr);
    }

    /* renamed from: c */
    public final List<CentroidCluster<T>> m67848c(Collection<T> collection) {
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(collection));
        int size = unmodifiableList.size();
        boolean[] zArr = new boolean[size];
        ArrayList arrayList = new ArrayList();
        int nextInt = this.f108656d.nextInt(size);
        Clusterable clusterable = (Clusterable) unmodifiableList.get(nextInt);
        arrayList.add(new CentroidCluster(clusterable));
        zArr[nextInt] = true;
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            if (i != nextInt) {
                double distance = distance(clusterable, (Clusterable) unmodifiableList.get(i));
                dArr[i] = distance * distance;
            }
        }
        while (arrayList.size() < this.f108654b) {
            double d = 0.0d;
            double d2 = 0.0d;
            for (int i2 = 0; i2 < size; i2++) {
                if (!zArr[i2]) {
                    d2 += dArr[i2];
                }
            }
            double nextDouble = this.f108656d.nextDouble() * d2;
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    i3 = -1;
                    break;
                }
                if (!zArr[i3]) {
                    d += dArr[i3];
                    if (d >= nextDouble) {
                        break;
                    }
                }
                i3++;
            }
            if (i3 == -1) {
                int i4 = size - 1;
                while (true) {
                    if (i4 < 0) {
                        break;
                    }
                    if (!zArr[i4]) {
                        i3 = i4;
                        break;
                    }
                    i4--;
                }
            }
            if (i3 < 0) {
                break;
            }
            Clusterable clusterable2 = (Clusterable) unmodifiableList.get(i3);
            arrayList.add(new CentroidCluster(clusterable2));
            zArr[i3] = true;
            if (arrayList.size() < this.f108654b) {
                for (int i5 = 0; i5 < size; i5++) {
                    if (!zArr[i5]) {
                        double distance2 = distance(clusterable2, (Clusterable) unmodifiableList.get(i5));
                        double d3 = distance2 * distance2;
                        if (d3 < dArr[i5]) {
                            dArr[i5] = d3;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v6, types: [org.apache.commons.math3.ml.clustering.Clusterable] */
    @Override // org.apache.commons.math3.ml.clustering.Clusterer
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException, ConvergenceException {
        boolean z;
        T t;
        MathUtils.checkNotNull(collection);
        if (collection.size() < this.f108654b) {
            throw new NumberIsTooSmallException(Integer.valueOf(collection.size()), Integer.valueOf(this.f108654b), false);
        }
        List<CentroidCluster<T>> m67848c = m67848c(collection);
        int[] iArr = new int[collection.size()];
        m67846a(m67848c, collection, iArr);
        int i = this.f108655c;
        if (i < 0) {
            i = Integer.MAX_VALUE;
        }
        int i2 = 0;
        while (i2 < i) {
            ArrayList arrayList = new ArrayList();
            boolean z2 = false;
            for (CentroidCluster<T> centroidCluster : m67848c) {
                if (centroidCluster.getPoints().isEmpty()) {
                    int i3 = C19179a.f108658a[this.f108657e.ordinal()];
                    z = true;
                    if (i3 == 1) {
                        t = m67852g(m67848c);
                    } else if (i3 == 2) {
                        t = m67851f(m67848c);
                    } else {
                        if (i3 != 3) {
                            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
                        }
                        t = m67849d(m67848c);
                    }
                } else {
                    ?? m67847b = m67847b(centroidCluster.getPoints(), centroidCluster.getCenter().getPoint().length);
                    z = z2;
                    t = m67847b;
                }
                arrayList.add(new CentroidCluster<>(t));
                z2 = z;
            }
            if (m67846a(arrayList, collection, iArr) == 0 && !z2) {
                return arrayList;
            }
            i2++;
            m67848c = arrayList;
        }
        return m67848c;
    }

    /* renamed from: d */
    public final T m67849d(Collection<CentroidCluster<T>> collection) throws ConvergenceException {
        Iterator<CentroidCluster<T>> it2 = collection.iterator();
        double d = Double.NEGATIVE_INFINITY;
        CentroidCluster<T> centroidCluster = null;
        int i = -1;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            CentroidCluster<T> next = it2.next();
            Clusterable center = next.getCenter();
            List<T> points = next.getPoints();
            for (int i2 = 0; i2 < points.size(); i2++) {
                double distance = distance(points.get(i2), center);
                if (distance > d) {
                    centroidCluster = next;
                    i = i2;
                    d = distance;
                }
            }
        }
        if (centroidCluster != null) {
            return centroidCluster.getPoints().remove(i);
        }
        throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
    }

    /* renamed from: e */
    public final int m67850e(Collection<CentroidCluster<T>> collection, T t) {
        Iterator<CentroidCluster<T>> it2 = collection.iterator();
        double d = Double.MAX_VALUE;
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            double distance = distance(t, it2.next().getCenter());
            if (distance < d) {
                i = i2;
                d = distance;
            }
            i2++;
        }
        return i;
    }

    /* renamed from: f */
    public final T m67851f(Collection<? extends Cluster<T>> collection) throws ConvergenceException {
        Cluster<T> cluster = null;
        int i = 0;
        for (Cluster<T> cluster2 : collection) {
            int size = cluster2.getPoints().size();
            if (size > i) {
                cluster = cluster2;
                i = size;
            }
        }
        if (cluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = cluster.getPoints();
        return points.remove(this.f108656d.nextInt(points.size()));
    }

    /* renamed from: g */
    public final T m67852g(Collection<CentroidCluster<T>> collection) throws ConvergenceException {
        double d = Double.NEGATIVE_INFINITY;
        CentroidCluster<T> centroidCluster = null;
        for (CentroidCluster<T> centroidCluster2 : collection) {
            if (!centroidCluster2.getPoints().isEmpty()) {
                Clusterable center = centroidCluster2.getCenter();
                Variance variance = new Variance();
                Iterator<T> it2 = centroidCluster2.getPoints().iterator();
                while (it2.hasNext()) {
                    variance.increment(distance(it2.next(), center));
                }
                double result = variance.getResult();
                if (result > d) {
                    centroidCluster = centroidCluster2;
                    d = result;
                }
            }
        }
        if (centroidCluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = centroidCluster.getPoints();
        return points.remove(this.f108656d.nextInt(points.size()));
    }

    public EmptyClusterStrategy getEmptyClusterStrategy() {
        return this.f108657e;
    }

    public int getK() {
        return this.f108654b;
    }

    public int getMaxIterations() {
        return this.f108655c;
    }

    public RandomGenerator getRandomGenerator() {
        return this.f108656d;
    }

    public KMeansPlusPlusClusterer(int i, int i2) {
        this(i, i2, new EuclideanDistance());
    }

    public KMeansPlusPlusClusterer(int i, int i2, DistanceMeasure distanceMeasure) {
        this(i, i2, distanceMeasure, new JDKRandomGenerator());
    }

    public KMeansPlusPlusClusterer(int i, int i2, DistanceMeasure distanceMeasure, RandomGenerator randomGenerator) {
        this(i, i2, distanceMeasure, randomGenerator, EmptyClusterStrategy.LARGEST_VARIANCE);
    }

    public KMeansPlusPlusClusterer(int i, int i2, DistanceMeasure distanceMeasure, RandomGenerator randomGenerator, EmptyClusterStrategy emptyClusterStrategy) {
        super(distanceMeasure);
        this.f108654b = i;
        this.f108655c = i2;
        this.f108656d = randomGenerator;
        this.f108657e = emptyClusterStrategy;
    }
}
