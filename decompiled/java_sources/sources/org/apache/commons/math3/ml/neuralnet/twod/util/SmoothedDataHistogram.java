package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import java.util.Iterator;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;
import org.apache.commons.math3.ml.neuralnet.twod.util.LocationFinder;

/* loaded from: classes12.dex */
public class SmoothedDataHistogram implements MapDataVisualization {

    /* renamed from: a */
    public final int f108709a;

    /* renamed from: b */
    public final DistanceMeasure f108710b;

    /* renamed from: c */
    public final double f108711c;

    public SmoothedDataHistogram(int i, DistanceMeasure distanceMeasure) {
        this.f108709a = i;
        this.f108710b = distanceMeasure;
        double d = 0.0d;
        for (int i2 = 0; i2 < i; i2++) {
            d += i - i2;
        }
        this.f108711c = 1.0d / d;
    }

    @Override // org.apache.commons.math3.ml.neuralnet.twod.util.MapDataVisualization
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D, Iterable<double[]> iterable) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        int i = numberOfRows * numberOfColumns;
        if (i < this.f108709a) {
            throw new NumberIsTooSmallException(Integer.valueOf(i), Integer.valueOf(this.f108709a), true);
        }
        LocationFinder locationFinder = new LocationFinder(neuronSquareMesh2D);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, numberOfRows, numberOfColumns);
        Iterator<double[]> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Neuron[] sort = MapUtils.sort(it2.next(), neuronSquareMesh2D.getNetwork(), this.f108710b);
            for (int i2 = 0; i2 < this.f108709a; i2++) {
                LocationFinder.Location location = locationFinder.getLocation(sort[i2]);
                int row = location.getRow();
                int column = location.getColumn();
                double[] dArr2 = dArr[row];
                dArr2[column] = dArr2[column] + ((this.f108709a - i2) * this.f108711c);
            }
        }
        return dArr;
    }
}
