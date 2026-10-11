package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public class CardinalSpline extends ParametricCurve {

    /* renamed from: c */
    public static final ThreadLocal<C6921b> f38808c = new C6920a();

    /* renamed from: a */
    public final C6921b f38809a;

    /* renamed from: b */
    public double f38810b;

    /* renamed from: com.graphbuilder.curve.CardinalSpline$a */
    /* loaded from: classes4.dex */
    public static class C6920a extends ThreadLocal<C6921b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6921b initialValue() {
            return new C6921b(null);
        }
    }

    public CardinalSpline(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38809a = f38808c.get();
        this.f38810b = 0.5d;
    }

    @Override // com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("group iterator not in range");
        }
        if (this.f38825gi.getGroupSize() < 4) {
            throw new IllegalArgumentException("more than 4 groups required");
        }
        this.f38825gi.set(0, 0);
        for (int i = 0; i < 4; i++) {
            this.f38809a.f38811a[i] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
        }
        double[] dArr = new double[multiPath.getDimension() + 1];
        eval(dArr);
        if (this.connect) {
            multiPath.lineTo(dArr);
        } else {
            multiPath.moveTo(dArr);
        }
        this.f38825gi.set(0, 0);
        while (true) {
            int index_i = this.f38825gi.index_i();
            int count_j = this.f38825gi.count_j();
            for (int i2 = 0; i2 < 4; i2++) {
                if (!this.f38825gi.hasNext()) {
                    return;
                }
                this.f38809a.f38811a[i2] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
            }
            this.f38825gi.set(index_i, count_j);
            this.f38825gi.next();
            BinaryCurveApproximationAlgorithm.genPts(this, 0.0d, 1.0d, multiPath);
        }
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public void eval(double[] dArr) {
        double d = dArr[dArr.length - 1];
        double d2 = d * d;
        double d3 = d2 * d;
        double d4 = 3.0d * d2;
        double d5 = ((d3 * 2.0d) - d4) + 1.0d;
        double d6 = ((-2.0d) * d3) + d4;
        double d7 = this.f38810b;
        double d8 = ((d3 - (2.0d * d2)) + d) * d7;
        double d9 = d7 * (d3 - d2);
        for (int i = 0; i < dArr.length - 1; i++) {
            dArr[i] = (this.f38809a.f38811a[1][i] * d5) + (this.f38809a.f38811a[2][i] * d6) + ((this.f38809a.f38811a[2][i] - this.f38809a.f38811a[0][i]) * d8) + ((this.f38809a.f38811a[3][i] - this.f38809a.f38811a[1][i]) * d9);
        }
    }

    public double getAlpha() {
        return this.f38810b;
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public int getSampleLimit() {
        return 1;
    }

    public void setAlpha(double d) {
        this.f38810b = d;
    }

    /* renamed from: com.graphbuilder.curve.CardinalSpline$b */
    /* loaded from: classes4.dex */
    public static class C6921b {

        /* renamed from: a */
        public double[][] f38811a;

        public C6921b() {
            this.f38811a = new double[4];
        }

        public /* synthetic */ C6921b(C6920a c6920a) {
            this();
        }
    }
}
