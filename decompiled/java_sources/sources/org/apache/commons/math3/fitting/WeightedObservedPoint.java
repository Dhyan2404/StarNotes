package org.apache.commons.math3.fitting;

import java.io.Serializable;

/* loaded from: classes12.dex */
public class WeightedObservedPoint implements Serializable {
    private static final long serialVersionUID = 5306874947404636157L;
    private final double weight;

    /* renamed from: x */
    private final double f108143x;

    /* renamed from: y */
    private final double f108144y;

    public WeightedObservedPoint(double d, double d2, double d3) {
        this.weight = d;
        this.f108143x = d2;
        this.f108144y = d3;
    }

    public double getWeight() {
        return this.weight;
    }

    public double getX() {
        return this.f108143x;
    }

    public double getY() {
        return this.f108144y;
    }
}
