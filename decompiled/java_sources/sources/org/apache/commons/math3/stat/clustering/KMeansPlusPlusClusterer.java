package org.apache.commons.math3.stat.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.clustering.Clusterable;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
/* loaded from: classes12.dex */
public class KMeansPlusPlusClusterer<T extends Clusterable<T>> {

    /* renamed from: a */
    public final Random f109723a;

    /* renamed from: b */
    public final EmptyClusterStrategy f109724b;

    /* loaded from: classes12.dex */
    public enum EmptyClusterStrategy {
        LARGEST_VARIANCE,
        LARGEST_POINTS_NUMBER,
        FARTHEST_POINT,
        ERROR
    }

    /* renamed from: org.apache.commons.math3.stat.clustering.KMeansPlusPlusClusterer$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19262a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109725a;

        static {
            int[] iArr = new int[EmptyClusterStrategy.values().length];
            f109725a = iArr;
            try {
                iArr[EmptyClusterStrategy.LARGEST_VARIANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f109725a[EmptyClusterStrategy.LARGEST_POINTS_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f109725a[EmptyClusterStrategy.FARTHEST_POINT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public KMeansPlusPlusClusterer(Random random) {
        this(random, EmptyClusterStrategy.LARGEST_VARIANCE);
    }

    /* renamed from: a */
    public static <T extends Clusterable<T>> int m68106a(List<Cluster<T>> list, Collection<T> collection, int[] iArr) {
        int i = 0;
        int i2 = 0;
        for (T t : collection) {
            int m68108d = m68108d(list, t);
            if (m68108d != iArr[i2]) {
                i++;
            }
            list.get(m68108d).addPoint(t);
            iArr[i2] = m68108d;
            i2++;
        }
        return i;
    }

    /* renamed from: b */
    public static <T extends Clusterable<T>> List<Cluster<T>> m68107b(Collection<T> collection, int i, Random random) {
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(collection));
        int size = unmodifiableList.size();
        boolean[] zArr = new boolean[size];
        ArrayList arrayList = new ArrayList();
        int nextInt = random.nextInt(size);
        Clusterable clusterable = (Clusterable) unmodifiableList.get(nextInt);
        arrayList.add(new Cluster(clusterable));
        zArr[nextInt] = true;
        double[] dArr = new double[size];
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 != nextInt) {
                double distanceFrom = clusterable.distanceFrom(unmodifiableList.get(i2));
                dArr[i2] = distanceFrom * distanceFrom;
            }
        }
        while (arrayList.size() < i) {
            double d = 0.0d;
            double d2 = 0.0d;
            for (int i3 = 0; i3 < size; i3++) {
                if (!zArr[i3]) {
                    d2 += dArr[i3];
                }
            }
            double nextDouble = random.nextDouble() * d2;
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    i4 = -1;
                    break;
                }
                if (!zArr[i4]) {
                    d += dArr[i4];
                    if (d >= nextDouble) {
                        break;
                    }
                }
                i4++;
            }
            if (i4 == -1) {
                int i5 = size - 1;
                while (true) {
                    if (i5 < 0) {
                        break;
                    }
                    if (!zArr[i5]) {
                        i4 = i5;
                        break;
                    }
                    i5--;
                }
            }
            if (i4 < 0) {
                break;
            }
            Clusterable clusterable2 = (Clusterable) unmodifiableList.get(i4);
            arrayList.add(new Cluster(clusterable2));
            zArr[i4] = true;
            if (arrayList.size() < i) {
                for (int i6 = 0; i6 < size; i6++) {
                    if (!zArr[i6]) {
                        double distanceFrom2 = clusterable2.distanceFrom(unmodifiableList.get(i6));
                        double d3 = distanceFrom2 * distanceFrom2;
                        if (d3 < dArr[i6]) {
                            dArr[i6] = d3;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public static <T extends Clusterable<T>> int m68108d(Collection<Cluster<T>> collection, T t) {
        Iterator<Cluster<T>> it2 = collection.iterator();
        double d = Double.MAX_VALUE;
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            double distanceFrom = t.distanceFrom(it2.next().getCenter());
            if (distanceFrom < d) {
                i = i2;
                d = distanceFrom;
            }
            i2++;
        }
        return i;
    }

    /* renamed from: c */
    public final T m68109c(Collection<Cluster<T>> collection) throws ConvergenceException {
        Iterator<Cluster<T>> it2 = collection.iterator();
        double d = Double.NEGATIVE_INFINITY;
        Cluster<T> cluster = null;
        int i = -1;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Cluster<T> next = it2.next();
            T center = next.getCenter();
            List<T> points = next.getPoints();
            for (int i2 = 0; i2 < points.size(); i2++) {
                double distanceFrom = points.get(i2).distanceFrom(center);
                if (distanceFrom > d) {
                    cluster = next;
                    i = i2;
                    d = distanceFrom;
                }
            }
        }
        if (cluster != null) {
            return cluster.getPoints().remove(i);
        }
        throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
    }

    public List<Cluster<T>> cluster(Collection<T> collection, int i, int i2, int i3) throws MathIllegalArgumentException, ConvergenceException {
        List<Cluster<T>> list = null;
        double d = Double.POSITIVE_INFINITY;
        for (int i4 = 0; i4 < i2; i4++) {
            List<Cluster<T>> cluster = cluster(collection, i, i3);
            double d2 = 0.0d;
            for (Cluster<T> cluster2 : cluster) {
                if (!cluster2.getPoints().isEmpty()) {
                    T center = cluster2.getCenter();
                    Variance variance = new Variance();
                    Iterator<T> it2 = cluster2.getPoints().iterator();
                    while (it2.hasNext()) {
                        variance.increment(it2.next().distanceFrom(center));
                    }
                    d2 += variance.getResult();
                }
            }
            if (d2 <= d) {
                list = cluster;
                d = d2;
            }
        }
        return list;
    }

    /* renamed from: e */
    public final T m68110e(Collection<Cluster<T>> collection) throws ConvergenceException {
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
        return points.remove(this.f109723a.nextInt(points.size()));
    }

    /* renamed from: f */
    public final T m68111f(Collection<Cluster<T>> collection) throws ConvergenceException {
        double d = Double.NEGATIVE_INFINITY;
        Cluster<T> cluster = null;
        for (Cluster<T> cluster2 : collection) {
            if (!cluster2.getPoints().isEmpty()) {
                T center = cluster2.getCenter();
                Variance variance = new Variance();
                Iterator<T> it2 = cluster2.getPoints().iterator();
                while (it2.hasNext()) {
                    variance.increment(it2.next().distanceFrom(center));
                }
                double result = variance.getResult();
                if (result > d) {
                    cluster = cluster2;
                    d = result;
                }
            }
        }
        if (cluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = cluster.getPoints();
        return points.remove(this.f109723a.nextInt(points.size()));
    }

    public KMeansPlusPlusClusterer(Random random, EmptyClusterStrategy emptyClusterStrategy) {
        this.f109723a = random;
        this.f109724b = emptyClusterStrategy;
    }

    public List<Cluster<T>> cluster(Collection<T> collection, int i, int i2) throws MathIllegalArgumentException, ConvergenceException {
        boolean z;
        Clusterable clusterable;
        MathUtils.checkNotNull(collection);
        if (collection.size() >= i) {
            List<Cluster<T>> m68107b = m68107b(collection, i, this.f109723a);
            int[] iArr = new int[collection.size()];
            m68106a(m68107b, collection, iArr);
            if (i2 < 0) {
                i2 = Integer.MAX_VALUE;
            }
            int i3 = 0;
            while (i3 < i2) {
                ArrayList arrayList = new ArrayList();
                boolean z2 = false;
                for (Cluster<T> cluster : m68107b) {
                    if (cluster.getPoints().isEmpty()) {
                        int i4 = C19262a.f109725a[this.f109724b.ordinal()];
                        z = true;
                        if (i4 == 1) {
                            clusterable = m68111f(m68107b);
                        } else if (i4 == 2) {
                            clusterable = m68110e(m68107b);
                        } else if (i4 == 3) {
                            clusterable = m68109c(m68107b);
                        } else {
                            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
                        }
                    } else {
                        Clusterable clusterable2 = (Clusterable) cluster.getCenter().centroidOf(cluster.getPoints());
                        z = z2;
                        clusterable = clusterable2;
                    }
                    arrayList.add(new Cluster<>(clusterable));
                    z2 = z;
                }
                if (m68106a(arrayList, collection, iArr) == 0 && !z2) {
                    return arrayList;
                }
                i3++;
                m68107b = arrayList;
            }
            return m68107b;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(collection.size()), Integer.valueOf(i), false);
    }
}
