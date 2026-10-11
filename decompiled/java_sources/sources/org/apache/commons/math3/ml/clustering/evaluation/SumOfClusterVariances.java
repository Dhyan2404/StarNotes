package org.apache.commons.math3.ml.clustering.evaluation;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.ml.clustering.Cluster;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.stat.descriptive.moment.Variance;

/* loaded from: classes12.dex */
public class SumOfClusterVariances<T extends Clusterable> extends ClusterEvaluator<T> {
    public SumOfClusterVariances(DistanceMeasure distanceMeasure) {
        super(distanceMeasure);
    }

    @Override // org.apache.commons.math3.ml.clustering.evaluation.ClusterEvaluator
    public double score(List<? extends Cluster<T>> list) {
        double d = 0.0d;
        for (Cluster<T> cluster : list) {
            if (!cluster.getPoints().isEmpty()) {
                Clusterable centroidOf = centroidOf(cluster);
                Variance variance = new Variance();
                Iterator<T> it2 = cluster.getPoints().iterator();
                while (it2.hasNext()) {
                    variance.increment(distance(it2.next(), centroidOf));
                }
                d += variance.getResult();
            }
        }
        return d;
    }
}
