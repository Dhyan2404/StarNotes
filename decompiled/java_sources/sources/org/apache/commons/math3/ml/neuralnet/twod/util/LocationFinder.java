package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;

/* loaded from: classes12.dex */
public class LocationFinder {

    /* renamed from: a */
    public final Map<Long, Location> f108705a = new HashMap();

    /* loaded from: classes12.dex */
    public static class Location {

        /* renamed from: a */
        public final int f108706a;

        /* renamed from: b */
        public final int f108707b;

        public Location(int i, int i2) {
            this.f108706a = i;
            this.f108707b = i2;
        }

        public int getColumn() {
            return this.f108707b;
        }

        public int getRow() {
            return this.f108706a;
        }
    }

    public LocationFinder(NeuronSquareMesh2D neuronSquareMesh2D) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        for (int i = 0; i < numberOfRows; i++) {
            for (int i2 = 0; i2 < numberOfColumns; i2++) {
                Long valueOf = Long.valueOf(neuronSquareMesh2D.getNeuron(i, i2).getIdentifier());
                if (this.f108705a.get(valueOf) != null) {
                    throw new MathIllegalStateException();
                }
                this.f108705a.put(valueOf, new Location(i, i2));
            }
        }
    }

    public Location getLocation(Neuron neuron) {
        return this.f108705a.get(Long.valueOf(neuron.getIdentifier()));
    }
}
