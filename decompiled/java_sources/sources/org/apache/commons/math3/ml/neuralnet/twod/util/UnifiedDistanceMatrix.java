package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;

/* loaded from: classes12.dex */
public class UnifiedDistanceMatrix implements MapVisualization {

    /* renamed from: a */
    public final boolean f108714a;

    /* renamed from: b */
    public final DistanceMeasure f108715b;

    public UnifiedDistanceMatrix(boolean z, DistanceMeasure distanceMeasure) {
        this.f108714a = z;
        this.f108715b = distanceMeasure;
    }

    /* renamed from: a */
    public final double[][] m67860a(NeuronSquareMesh2D neuronSquareMesh2D) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, numberOfRows, numberOfColumns);
        Network network = neuronSquareMesh2D.getNetwork();
        for (int i = 0; i < numberOfRows; i++) {
            for (int i2 = 0; i2 < numberOfColumns; i2++) {
                Neuron neuron = neuronSquareMesh2D.getNeuron(i, i2);
                Collection<Neuron> neighbours = network.getNeighbours(neuron);
                double[] features = neuron.getFeatures();
                Iterator<Neuron> it2 = neighbours.iterator();
                double d = 0.0d;
                int i3 = 0;
                while (it2.hasNext()) {
                    i3++;
                    d += this.f108715b.compute(features, it2.next().getFeatures());
                }
                dArr[i][i2] = d / i3;
            }
        }
        return dArr;
    }

    /* renamed from: b */
    public final double[][] m67861b(NeuronSquareMesh2D neuronSquareMesh2D) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, (numberOfRows * 2) + 1, (numberOfColumns * 2) + 1);
        for (int i = 0; i < numberOfRows; i++) {
            int i2 = (i * 2) + 1;
            for (int i3 = 0; i3 < numberOfColumns; i3++) {
                int i4 = (i3 * 2) + 1;
                double[] features = neuronSquareMesh2D.getNeuron(i, i3).getFeatures();
                Neuron neuron = neuronSquareMesh2D.getNeuron(i, i3, NeuronSquareMesh2D.HorizontalDirection.RIGHT, NeuronSquareMesh2D.VerticalDirection.CENTER);
                if (neuron != null) {
                    dArr[i2][i4 + 1] = this.f108715b.compute(features, neuron.getFeatures());
                }
                Neuron neuron2 = neuronSquareMesh2D.getNeuron(i, i3, NeuronSquareMesh2D.HorizontalDirection.CENTER, NeuronSquareMesh2D.VerticalDirection.DOWN);
                if (neuron2 != null) {
                    dArr[i2 + 1][i4] = this.f108715b.compute(features, neuron2.getFeatures());
                }
            }
        }
        for (int i5 = 0; i5 < numberOfRows; i5++) {
            int i6 = (i5 * 2) + 1;
            for (int i7 = 0; i7 < numberOfColumns; i7++) {
                int i8 = (i7 * 2) + 1;
                Neuron neuron3 = neuronSquareMesh2D.getNeuron(i5, i7);
                NeuronSquareMesh2D.HorizontalDirection horizontalDirection = NeuronSquareMesh2D.HorizontalDirection.RIGHT;
                Neuron neuron4 = neuronSquareMesh2D.getNeuron(i5, i7, horizontalDirection, NeuronSquareMesh2D.VerticalDirection.CENTER);
                NeuronSquareMesh2D.HorizontalDirection horizontalDirection2 = NeuronSquareMesh2D.HorizontalDirection.CENTER;
                NeuronSquareMesh2D.VerticalDirection verticalDirection = NeuronSquareMesh2D.VerticalDirection.DOWN;
                Neuron neuron5 = neuronSquareMesh2D.getNeuron(i5, i7, horizontalDirection2, verticalDirection);
                Neuron neuron6 = neuronSquareMesh2D.getNeuron(i5, i7, horizontalDirection, verticalDirection);
                dArr[i6 + 1][i8 + 1] = ((neuron6 == null ? 0.0d : this.f108715b.compute(neuron3.getFeatures(), neuron6.getFeatures())) + ((neuron4 == null || neuron5 == null) ? 0.0d : this.f108715b.compute(neuron4.getFeatures(), neuron5.getFeatures()))) * 0.5d;
            }
        }
        int length = dArr.length - 1;
        double[] dArr2 = dArr[length];
        dArr[0] = dArr2;
        int length2 = dArr2.length - 1;
        for (int i9 = 0; i9 < length; i9++) {
            double[] dArr3 = dArr[i9];
            dArr3[0] = dArr3[length2];
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.ml.neuralnet.twod.util.MapVisualization
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D) {
        return this.f108714a ? m67861b(neuronSquareMesh2D) : m67860a(neuronSquareMesh2D);
    }
}
