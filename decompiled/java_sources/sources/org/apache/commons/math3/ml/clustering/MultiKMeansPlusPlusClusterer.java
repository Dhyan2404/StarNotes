package org.apache.commons.math3.ml.clustering;

import java.util.Collection;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.clustering.evaluation.ClusterEvaluator;
import org.apache.commons.math3.ml.clustering.evaluation.SumOfClusterVariances;

/* loaded from: classes12.dex */
public class MultiKMeansPlusPlusClusterer<T extends Clusterable> extends Clusterer<T> {

    /* renamed from: b */
    public final KMeansPlusPlusClusterer<T> f108659b;

    /* renamed from: c */
    public final int f108660c;

    /* renamed from: d */
    public final ClusterEvaluator<T> f108661d;

    public MultiKMeansPlusPlusClusterer(KMeansPlusPlusClusterer<T> kMeansPlusPlusClusterer, int i) {
        this(kMeansPlusPlusClusterer, i, new SumOfClusterVariances(kMeansPlusPlusClusterer.getDistanceMeasure()));
    }

    @Override // org.apache.commons.math3.ml.clustering.Clusterer
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException, ConvergenceException {
        List<CentroidCluster<T>> list = null;
        double d = Double.POSITIVE_INFINITY;
        for (int i = 0; i < this.f108660c; i++) {
            List<CentroidCluster<T>> cluster = this.f108659b.cluster(collection);
            double score = this.f108661d.score(cluster);
            if (this.f108661d.isBetterScore(score, d)) {
                list = cluster;
                d = score;
            }
        }
        return list;
    }

    public ClusterEvaluator<T> getClusterEvaluator() {
        return this.f108661d;
    }

    public KMeansPlusPlusClusterer<T> getClusterer() {
        return this.f108659b;
    }

    public int getNumTrials() {
        return this.f108660c;
    }

    public MultiKMeansPlusPlusClusterer(KMeansPlusPlusClusterer<T> kMeansPlusPlusClusterer, int i, ClusterEvaluator<T> clusterEvaluator) {
        super(kMeansPlusPlusClusterer.getDistanceMeasure());
        this.f108659b = kMeansPlusPlusClusterer;
        this.f108660c = i;
        this.f108661d = clusterEvaluator;
    }
}
