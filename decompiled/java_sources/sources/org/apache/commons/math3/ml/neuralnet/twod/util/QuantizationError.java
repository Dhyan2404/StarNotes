package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;
import org.apache.commons.math3.ml.neuralnet.twod.util.LocationFinder;

/* loaded from: classes12.dex */
public class QuantizationError implements MapDataVisualization {

    /* renamed from: a */
    public final DistanceMeasure f108708a;

    public QuantizationError(DistanceMeasure distanceMeasure) {
        this.f108708a = distanceMeasure;
    }

    @Override // org.apache.commons.math3.ml.neuralnet.twod.util.MapDataVisualization
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D, Iterable<double[]> iterable) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        LocationFinder locationFinder = new LocationFinder(neuronSquareMesh2D);
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, numberOfRows, numberOfColumns);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, numberOfRows, numberOfColumns);
        for (double[] dArr2 : iterable) {
            Neuron findBest = MapUtils.findBest(dArr2, neuronSquareMesh2D, this.f108708a);
            LocationFinder.Location location = locationFinder.getLocation(findBest);
            int row = location.getRow();
            int column = location.getColumn();
            int[] iArr2 = iArr[row];
            iArr2[column] = iArr2[column] + 1;
            double[] dArr3 = dArr[row];
            dArr3[column] = dArr3[column] + this.f108708a.compute(dArr2, findBest.getFeatures());
        }
        for (int i = 0; i < numberOfRows; i++) {
            for (int i2 = 0; i2 < numberOfColumns; i2++) {
                int i3 = iArr[i][i2];
                if (i3 != 0) {
                    double[] dArr4 = dArr[i];
                    dArr4[i2] = dArr4[i2] / i3;
                }
            }
        }
        return dArr;
    }
}
