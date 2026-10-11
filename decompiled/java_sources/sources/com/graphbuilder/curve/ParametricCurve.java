package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public abstract class ParametricCurve extends Curve {
    public ParametricCurve(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
    }

    public abstract void eval(double[] dArr);

    public abstract int getSampleLimit();
}
