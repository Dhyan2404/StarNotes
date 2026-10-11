package com.graphbuilder.curve;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes4.dex */
public class NURBSpline extends BSpline {

    /* renamed from: m */
    public static final ThreadLocal<C6929b> f38839m = new C6928a();

    /* renamed from: j */
    public final C6929b f38840j;

    /* renamed from: k */
    public ValueVector f38841k;

    /* renamed from: l */
    public boolean f38842l;

    /* renamed from: com.graphbuilder.curve.NURBSpline$a */
    /* loaded from: classes4.dex */
    public static class C6928a extends ThreadLocal<C6929b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6929b initialValue() {
            return new C6929b(null);
        }
    }

    public NURBSpline(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38840j = f38839m.get();
        this.f38841k = new ValueVector(new double[]{1.0d, 1.0d, 1.0d, 1.0d}, 4);
        this.f38842l = true;
    }

    @Override // com.graphbuilder.curve.BSpline, com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        int i = 0;
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("Group iterator not in range");
        }
        int groupSize = this.f38825gi.getGroupSize();
        if (this.f38840j.f38843a.length < groupSize) {
            int i2 = groupSize * 2;
            this.f38840j.f38843a = new double[i2];
            this.f38840j.f38844b = new double[i2];
        }
        if (!this.f38842l) {
            while (i < groupSize) {
                this.f38840j.f38844b[i] = 1.0d;
                i++;
            }
        } else {
            if (this.f38841k.size() != groupSize) {
                throw new IllegalArgumentException("weightVector.size(" + this.f38841k.size() + ") != group iterator size(" + groupSize + MotionUtils.f31762d);
            }
            while (i < groupSize) {
                this.f38840j.f38844b[i] = this.f38841k.get(i);
                if (this.f38840j.f38844b[i] < 0.0d) {
                    throw new IllegalArgumentException("Negative weight not allowed");
                }
                i++;
            }
        }
        super.appendTo(multiPath);
    }

    @Override // com.graphbuilder.curve.BSpline, com.graphbuilder.curve.ParametricCurve
    public void eval(double[] dArr) {
        int length = dArr.length - 1;
        double d = dArr[length];
        int groupSize = this.f38825gi.getGroupSize();
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (int i = 0; i < groupSize; i++) {
            this.f38840j.f38843a[i] = m30807N(d, i) * this.f38840j.f38844b[i];
            d3 += this.f38840j.f38843a[i];
        }
        if (d3 == 0.0d) {
            d3 = 1.0d;
        }
        int i2 = 0;
        while (i2 < length) {
            this.f38825gi.set(0, 0);
            double d4 = d2;
            for (int i3 = 0; i3 < groupSize; i3++) {
                d4 += this.f38840j.f38843a[i3] * this.f38824cp.getPoint(this.f38825gi.next()).getLocation()[i2];
            }
            dArr[i2] = d4 / d3;
            i2++;
            d2 = 0.0d;
        }
    }

    public boolean getUseWeightVector() {
        return this.f38842l;
    }

    public ValueVector getWeightVector() {
        return this.f38841k;
    }

    @Override // com.graphbuilder.curve.BSpline, com.graphbuilder.curve.Curve
    public void resetMemory() {
        super.resetMemory();
        if (this.f38840j.f38843a.length > 0) {
            this.f38840j.f38843a = new double[0];
            this.f38840j.f38844b = new double[0];
        }
    }

    public void setUseWeightVector(boolean z) {
        this.f38842l = z;
    }

    public void setWeightVector(ValueVector valueVector) {
        if (valueVector == null) {
            throw new IllegalArgumentException("Weight-vector cannot be null.");
        }
        this.f38841k = valueVector;
    }

    /* renamed from: com.graphbuilder.curve.NURBSpline$b */
    /* loaded from: classes4.dex */
    public static class C6929b {

        /* renamed from: a */
        public double[] f38843a;

        /* renamed from: b */
        public double[] f38844b;

        public C6929b() {
            this.f38843a = new double[0];
            this.f38844b = new double[0];
        }

        public /* synthetic */ C6929b(C6928a c6928a) {
            this();
        }
    }
}
