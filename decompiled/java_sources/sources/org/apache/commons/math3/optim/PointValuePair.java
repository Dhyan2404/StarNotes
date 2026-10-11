package org.apache.commons.math3.optim;

import java.io.Serializable;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class PointValuePair extends Pair<double[], Double> implements Serializable {
    private static final long serialVersionUID = 20120513;

    /* loaded from: classes12.dex */
    public static class DataTransferObject implements Serializable {
        private static final long serialVersionUID = 20120513;
        private final double[] point;
        private final double value;

        public DataTransferObject(double[] dArr, double d) {
            this.point = (double[]) dArr.clone();
            this.value = d;
        }

        private Object readResolve() {
            return new PointValuePair(this.point, this.value, false);
        }
    }

    public PointValuePair(double[] dArr, double d) {
        this(dArr, d, true);
    }

    private Object writeReplace() {
        return new DataTransferObject(getKey(), getValue().doubleValue());
    }

    public double[] getPoint() {
        double[] key = getKey();
        if (key == null) {
            return null;
        }
        return (double[]) key.clone();
    }

    public double[] getPointRef() {
        return getKey();
    }

    public PointValuePair(double[] dArr, double d, boolean z) {
        super(z ? dArr == null ? null : (double[]) dArr.clone() : dArr, Double.valueOf(d));
    }
}
