package org.apache.commons.math3.stat.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.clustering.Clusterable;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
/* loaded from: classes12.dex */
public class DBSCANClusterer<T extends Clusterable<T>> {

    /* renamed from: a */
    public final double f109721a;

    /* renamed from: b */
    public final int f109722b;

    /* loaded from: classes12.dex */
    public enum PointStatus {
        NOISE,
        PART_OF_CLUSTER
    }

    public DBSCANClusterer(double d, int i) throws NotPositiveException {
        if (d < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d));
        }
        if (i < 0) {
            throw new NotPositiveException(Integer.valueOf(i));
        }
        this.f109721a = d;
        this.f109722b = i;
    }

    /* renamed from: a */
    public final Cluster<T> m68103a(Cluster<T> cluster, T t, List<T> list, Collection<T> collection, Map<Clusterable<T>, PointStatus> map) {
        cluster.addPoint(t);
        map.put(t, PointStatus.PART_OF_CLUSTER);
        List<T> arrayList = new ArrayList<>(list);
        for (int i = 0; i < arrayList.size(); i++) {
            T t2 = arrayList.get(i);
            PointStatus pointStatus = map.get(t2);
            if (pointStatus == null) {
                List<T> m68104b = m68104b(t2, collection);
                if (m68104b.size() >= this.f109722b) {
                    arrayList = m68105c(arrayList, m68104b);
                }
            }
            PointStatus pointStatus2 = PointStatus.PART_OF_CLUSTER;
            if (pointStatus != pointStatus2) {
                map.put(t2, pointStatus2);
                cluster.addPoint(t2);
            }
        }
        return cluster;
    }

    /* renamed from: b */
    public final List<T> m68104b(T t, Collection<T> collection) {
        ArrayList arrayList = new ArrayList();
        for (T t2 : collection) {
            if (t != t2 && t2.distanceFrom(t) <= this.f109721a) {
                arrayList.add(t2);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final List<T> m68105c(List<T> list, List<T> list2) {
        HashSet hashSet = new HashSet(list);
        for (T t : list2) {
            if (!hashSet.contains(t)) {
                list.add(t);
            }
        }
        return list;
    }

    public List<Cluster<T>> cluster(Collection<T> collection) throws NullArgumentException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (T t : collection) {
            if (hashMap.get(t) == null) {
                List<T> m68104b = m68104b(t, collection);
                if (m68104b.size() >= this.f109722b) {
                    arrayList.add(m68103a(new Cluster<>(null), t, m68104b, collection, hashMap));
                } else {
                    hashMap.put(t, PointStatus.NOISE);
                }
            }
        }
        return arrayList;
    }

    public double getEps() {
        return this.f109721a;
    }

    public int getMinPts() {
        return this.f109722b;
    }
}
