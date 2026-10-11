package org.apache.commons.math3.optimization.fitting;

import java.io.Serializable;

@Deprecated
/* loaded from: classes12.dex */
public class WeightedObservedPoint implements Serializable {
    private static final long serialVersionUID = 5306874947404636157L;
    private final double weight;

    /* renamed from: x */
    private final double f109496x;

    /* renamed from: y */
    private final double f109497y;

    public WeightedObservedPoint(double d, double d2, double d3) {
        this.weight = d;
        this.f109496x = d2;
        this.f109497y = d3;
    }

    public double getWeight() {
        return this.weight;
    }

    public double getX() {
        return this.f109496x;
    }

    public double getY() {
        return this.f109497y;
    }
}
