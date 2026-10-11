package org.apache.commons.math3.ml.clustering;

import java.util.Collection;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;

/* loaded from: classes12.dex */
public abstract class Clusterer<T extends Clusterable> {

    /* renamed from: a */
    public DistanceMeasure f108642a;

    public Clusterer(DistanceMeasure distanceMeasure) {
        this.f108642a = distanceMeasure;
    }

    public abstract List<? extends Cluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException, ConvergenceException;

    public double distance(Clusterable clusterable, Clusterable clusterable2) {
        return this.f108642a.compute(clusterable.getPoint(), clusterable2.getPoint());
    }

    public DistanceMeasure getDistanceMeasure() {
        return this.f108642a;
    }
}
