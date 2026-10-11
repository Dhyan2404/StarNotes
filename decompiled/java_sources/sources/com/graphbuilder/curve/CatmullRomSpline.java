package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public class CatmullRomSpline extends ParametricCurve {

    /* renamed from: b */
    public static final ThreadLocal<C6923b> f38812b = new C6922a();

    /* renamed from: a */
    public final C6923b f38813a;

    /* renamed from: com.graphbuilder.curve.CatmullRomSpline$a */
    /* loaded from: classes4.dex */
    public static class C6922a extends ThreadLocal<C6923b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6923b initialValue() {
            return new C6923b(null);
        }
    }

    public CatmullRomSpline(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38813a = f38812b.get();
    }

    @Override // com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("Group iterator not in range");
        }
        if (this.f38825gi.getGroupSize() < 4) {
            throw new IllegalArgumentException("Group iterator size < 4");
        }
        this.f38825gi.set(0, 0);
        for (int i = 0; i < 4; i++) {
            this.f38813a.f38814a[i] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
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
                this.f38813a.f38814a[i2] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
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
        for (int i = 0; i < dArr.length - 1; i++) {
            dArr[i] = (((((this.f38813a.f38814a[3][i] - this.f38813a.f38814a[0][i]) + ((this.f38813a.f38814a[1][i] - this.f38813a.f38814a[2][i]) * 3.0d)) * d3) + (((((this.f38813a.f38814a[0][i] + (this.f38813a.f38814a[2][i] * 2.0d)) * 2.0d) - (this.f38813a.f38814a[1][i] * 5.0d)) - this.f38813a.f38814a[3][i]) * d2) + ((this.f38813a.f38814a[2][i] - this.f38813a.f38814a[0][i]) * d)) * 0.5d) + this.f38813a.f38814a[1][i];
        }
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public int getSampleLimit() {
        return 1;
    }

    /* renamed from: com.graphbuilder.curve.CatmullRomSpline$b */
    /* loaded from: classes4.dex */
    public static class C6923b {

        /* renamed from: a */
        public double[][] f38814a;

        public C6923b() {
            this.f38814a = new double[4];
        }

        public /* synthetic */ C6923b(C6922a c6922a) {
            this();
        }
    }
}
