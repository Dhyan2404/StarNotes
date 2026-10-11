package org.apache.commons.math3.ml.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class DBSCANClusterer<T extends Clusterable> extends Clusterer<T> {

    /* renamed from: b */
    public final double f108643b;

    /* renamed from: c */
    public final int f108644c;

    /* loaded from: classes12.dex */
    public enum PointStatus {
        NOISE,
        PART_OF_CLUSTER
    }

    public DBSCANClusterer(double d, int i) throws NotPositiveException {
        this(d, i, new EuclideanDistance());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final Cluster<T> m67838a(Cluster<T> cluster, T t, List<T> list, Collection<T> collection, Map<Clusterable, PointStatus> map) {
        cluster.addPoint(t);
        map.put(t, PointStatus.PART_OF_CLUSTER);
        List arrayList = new ArrayList(list);
        for (int i = 0; i < arrayList.size(); i++) {
            Clusterable clusterable = (Clusterable) arrayList.get(i);
            PointStatus pointStatus = map.get(clusterable);
            if (pointStatus == null) {
                List m67839b = m67839b(clusterable, collection);
                if (m67839b.size() >= this.f108644c) {
                    arrayList = m67840c(arrayList, m67839b);
                }
            }
            PointStatus pointStatus2 = PointStatus.PART_OF_CLUSTER;
            if (pointStatus != pointStatus2) {
                map.put(clusterable, pointStatus2);
                cluster.addPoint(clusterable);
            }
        }
        return cluster;
    }

    /* renamed from: b */
    public final List<T> m67839b(T t, Collection<T> collection) {
        ArrayList arrayList = new ArrayList();
        for (T t2 : collection) {
            if (t != t2 && distance(t2, t) <= this.f108643b) {
                arrayList.add(t2);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final List<T> m67840c(List<T> list, List<T> list2) {
        HashSet hashSet = new HashSet(list);
        for (T t : list2) {
            if (!hashSet.contains(t)) {
                list.add(t);
            }
        }
        return list;
    }

    @Override // org.apache.commons.math3.ml.clustering.Clusterer
    public List<Cluster<T>> cluster(Collection<T> collection) throws NullArgumentException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (T t : collection) {
            if (hashMap.get(t) == null) {
                List<T> m67839b = m67839b(t, collection);
                if (m67839b.size() >= this.f108644c) {
                    arrayList.add(m67838a(new Cluster<>(), t, m67839b, collection, hashMap));
                } else {
                    hashMap.put(t, PointStatus.NOISE);
                }
            }
        }
        return arrayList;
    }

    public double getEps() {
        return this.f108643b;
    }

    public int getMinPts() {
        return this.f108644c;
    }

    public DBSCANClusterer(double d, int i, DistanceMeasure distanceMeasure) throws NotPositiveException {
        super(distanceMeasure);
        if (d < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d));
        }
        if (i >= 0) {
            this.f108643b = d;
            this.f108644c = i;
            return;
        }
        throw new NotPositiveException(Integer.valueOf(i));
    }
}
