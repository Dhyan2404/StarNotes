package org.apache.commons.math3.ml.neuralnet.sofm;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.math3.analysis.function.Gaussian;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.UpdateAction;

/* loaded from: classes12.dex */
public class KohonenUpdateAction implements UpdateAction {

    /* renamed from: a */
    public final DistanceMeasure f108675a;

    /* renamed from: b */
    public final LearningFactorFunction f108676b;

    /* renamed from: c */
    public final NeighbourhoodSizeFunction f108677c;

    /* renamed from: d */
    public final AtomicLong f108678d = new AtomicLong(0);

    public KohonenUpdateAction(DistanceMeasure distanceMeasure, LearningFactorFunction learningFactorFunction, NeighbourhoodSizeFunction neighbourhoodSizeFunction) {
        this.f108675a = distanceMeasure;
        this.f108676b = learningFactorFunction;
        this.f108677c = neighbourhoodSizeFunction;
    }

    /* renamed from: a */
    public final boolean m67856a(Neuron neuron, double[] dArr, double d) {
        double[] features = neuron.getFeatures();
        return neuron.compareAndSetFeatures(features, m67857b(features, dArr, d));
    }

    /* renamed from: b */
    public final double[] m67857b(double[] dArr, double[] dArr2, double d) {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr, false);
        return new ArrayRealVector(dArr2, false).subtract((RealVector) arrayRealVector).mapMultiplyToSelf(d).add(arrayRealVector).toArray();
    }

    /* renamed from: c */
    public final Neuron m67858c(Network network, double[] dArr, double d) {
        Neuron findBest;
        do {
            findBest = MapUtils.findBest(dArr, network, this.f108675a);
        } while (!m67856a(findBest, dArr, d));
        return findBest;
    }

    /* renamed from: d */
    public final void m67859d(Neuron neuron, double[] dArr, double d) {
        do {
        } while (!m67856a(neuron, dArr, d));
    }

    public long getNumberOfCalls() {
        return this.f108678d.get();
    }

    @Override // org.apache.commons.math3.ml.neuralnet.UpdateAction
    public void update(Network network, double[] dArr) {
        long incrementAndGet = this.f108678d.incrementAndGet() - 1;
        double value = this.f108676b.value(incrementAndGet);
        Neuron m67858c = m67858c(network, dArr, value);
        int value2 = this.f108677c.value(incrementAndGet);
        Gaussian gaussian = new Gaussian(value, 0.0d, value2);
        if (value2 > 0) {
            Collection<Neuron> hashSet = new HashSet<>();
            hashSet.add(m67858c);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(m67858c);
            int i = 1;
            do {
                hashSet = network.getNeighbours(hashSet, hashSet2);
                Iterator<Neuron> it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    m67859d(it2.next(), dArr, gaussian.value(i));
                }
                hashSet2.addAll(hashSet);
                i++;
            } while (i <= value2);
        }
    }
}
