package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public class CubicBSpline extends ParametricCurve {

    /* renamed from: c */
    public static final ThreadLocal<C6925b> f38817c = new C6924a();

    /* renamed from: a */
    public final C6925b f38818a;

    /* renamed from: b */
    public boolean f38819b;

    /* renamed from: com.graphbuilder.curve.CubicBSpline$a */
    /* loaded from: classes4.dex */
    public static class C6924a extends ThreadLocal<C6925b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6925b initialValue() {
            return new C6925b(null);
        }
    }

    public CubicBSpline(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38818a = f38817c.get();
        this.f38819b = false;
    }

    @Override // com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("Group iterator not in range");
        }
        int groupSize = this.f38825gi.getGroupSize();
        if (groupSize < 4) {
            throw new IllegalArgumentException("Group iterator size < 4");
        }
        if (this.f38819b) {
            this.f38818a.f38821b = groupSize;
            this.f38818a.f38820a = 0;
        } else {
            this.f38818a.f38821b = -1;
            this.f38818a.f38820a = 2;
        }
        this.f38825gi.set(0, 0);
        for (int i = 0; i < 4; i++) {
            this.f38818a.f38822c[i] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
        }
        double[] dArr = new double[multiPath.getDimension() + 1];
        eval(dArr);
        if (this.connect) {
            multiPath.lineTo(dArr);
        } else {
            multiPath.moveTo(dArr);
        }
        int i2 = 3;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            BinaryCurveApproximationAlgorithm.genPts(this, 0.0d, 1.0d, multiPath);
            i2++;
            if (i2 == groupSize) {
                return;
            }
            this.f38825gi.set(i3, i4);
            this.f38825gi.next();
            i3 = this.f38825gi.index_i();
            i4 = this.f38825gi.count_j();
            for (int i5 = 0; i5 < 4; i5++) {
                this.f38818a.f38822c[i5] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
            }
            if (this.f38819b) {
                if (groupSize < 7) {
                    C6925b.m30829f(this.f38818a);
                } else {
                    if (this.f38818a.f38820a != 2) {
                        C6925b.m30829f(this.f38818a);
                    }
                    if (this.f38818a.f38820a == 2 && i2 == groupSize - 2) {
                        C6925b.m30829f(this.f38818a);
                    }
                }
            }
        }
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public void eval(double[] dArr) {
        double d = dArr[dArr.length - 1];
        double d2 = d * d;
        double d3 = d2 * d;
        double d4 = 1.0d - d;
        double d5 = d4 * d4;
        double d6 = d5 * d4;
        if (this.f38818a.f38821b == 4) {
            this.f38818a.f38823d[0] = d6;
            this.f38818a.f38823d[1] = d5 * 3.0d * d;
            this.f38818a.f38823d[2] = d4 * 3.0d * d2;
            this.f38818a.f38823d[3] = d3;
        } else if (this.f38818a.f38821b == 5) {
            if (this.f38818a.f38820a == 0) {
                this.f38818a.f38823d[0] = d6;
                this.f38818a.f38823d[1] = (((7.0d * d3) / 4.0d) - ((9.0d * d2) / 2.0d)) + (d * 3.0d);
                this.f38818a.f38823d[2] = (-d3) + ((d2 * 3.0d) / 2.0d);
                this.f38818a.f38823d[3] = d3 / 4.0d;
            } else {
                this.f38818a.f38823d[0] = d6 / 4.0d;
                this.f38818a.f38823d[1] = (-d6) + ((d5 * 3.0d) / 2.0d);
                this.f38818a.f38823d[2] = (((d6 * 7.0d) / 4.0d) - ((d5 * 9.0d) / 2.0d)) + (d4 * 3.0d);
                this.f38818a.f38823d[3] = d3;
            }
        } else if (this.f38818a.f38821b == 6) {
            if (this.f38818a.f38820a == 0) {
                this.f38818a.f38823d[0] = d6;
                this.f38818a.f38823d[1] = (((7.0d * d3) / 4.0d) - ((9.0d * d2) / 2.0d)) + (d * 3.0d);
                this.f38818a.f38823d[2] = (((-11.0d) * d3) / 12.0d) + ((d2 * 3.0d) / 2.0d);
                this.f38818a.f38823d[3] = d3 / 6.0d;
            } else if (this.f38818a.f38820a == 1) {
                this.f38818a.f38823d[0] = d6 / 4.0d;
                this.f38818a.f38823d[1] = (((7.0d * d3) / 12.0d) - ((5.0d * d2) / 4.0d)) + (d / 4.0d) + 0.5833333333333334d;
                this.f38818a.f38823d[2] = (((-7.0d) * d3) / 12.0d) + (d2 / 2.0d) + (d / 2.0d) + 0.16666666666666666d;
                this.f38818a.f38823d[3] = d3 / 4.0d;
            } else {
                this.f38818a.f38823d[0] = d6 / 6.0d;
                this.f38818a.f38823d[1] = (((-11.0d) * d6) / 12.0d) + ((d5 * 3.0d) / 2.0d);
                this.f38818a.f38823d[2] = (((d6 * 7.0d) / 4.0d) - ((d5 * 9.0d) / 2.0d)) + (d4 * 3.0d);
                this.f38818a.f38823d[3] = d3;
            }
        } else if (this.f38818a.f38820a == 0) {
            this.f38818a.f38823d[0] = d6;
            this.f38818a.f38823d[1] = (((7.0d * d3) / 4.0d) - ((9.0d * d2) / 2.0d)) + (d * 3.0d);
            this.f38818a.f38823d[2] = (((-11.0d) * d3) / 12.0d) + ((d2 * 3.0d) / 2.0d);
            this.f38818a.f38823d[3] = d3 / 6.0d;
        } else if (this.f38818a.f38820a == 1) {
            this.f38818a.f38823d[0] = d6 / 4.0d;
            this.f38818a.f38823d[1] = (((7.0d * d3) / 12.0d) - ((5.0d * d2) / 4.0d)) + (d / 4.0d) + 0.5833333333333334d;
            this.f38818a.f38823d[2] = ((-d3) / 2.0d) + (d2 / 2.0d) + (d / 2.0d) + 0.16666666666666666d;
            this.f38818a.f38823d[3] = d3 / 6.0d;
        } else if (this.f38818a.f38820a == 2) {
            this.f38818a.f38823d[0] = d6 / 6.0d;
            this.f38818a.f38823d[1] = ((d3 / 2.0d) - d2) + 0.6666666666666666d;
            this.f38818a.f38823d[2] = ((((-d3) + d2) + d) / 2.0d) + 0.16666666666666666d;
            this.f38818a.f38823d[3] = d3 / 6.0d;
        } else if (this.f38818a.f38820a == 3) {
            this.f38818a.f38823d[0] = d6 / 6.0d;
            this.f38818a.f38823d[1] = ((-d6) / 2.0d) + (d5 / 2.0d) + (d4 / 2.0d) + 0.16666666666666666d;
            this.f38818a.f38823d[2] = (((d6 * 7.0d) / 12.0d) - ((d5 * 5.0d) / 4.0d)) + (d4 / 4.0d) + 0.5833333333333334d;
            this.f38818a.f38823d[3] = d3 / 4.0d;
        } else {
            this.f38818a.f38823d[0] = d6 / 6.0d;
            this.f38818a.f38823d[1] = (((-11.0d) * d6) / 12.0d) + ((d5 * 3.0d) / 2.0d);
            this.f38818a.f38823d[2] = (((d6 * 7.0d) / 4.0d) - ((d5 * 9.0d) / 2.0d)) + (d4 * 3.0d);
            this.f38818a.f38823d[3] = d3;
        }
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < dArr.length - 1; i2++) {
                dArr[i2] = dArr[i2] + (this.f38818a.f38822c[i][i2] * this.f38818a.f38823d[i]);
            }
        }
    }

    public boolean getInterpolateEndpoints() {
        return this.f38819b;
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public int getSampleLimit() {
        return 1;
    }

    public void setInterpolateEndpoints(boolean z) {
        this.f38819b = z;
    }

    /* renamed from: com.graphbuilder.curve.CubicBSpline$b */
    /* loaded from: classes4.dex */
    public static class C6925b {

        /* renamed from: a */
        public int f38820a;

        /* renamed from: b */
        public int f38821b;

        /* renamed from: c */
        public double[][] f38822c;

        /* renamed from: d */
        public double[] f38823d;

        public C6925b() {
            this.f38820a = 0;
            this.f38821b = 0;
            this.f38822c = new double[4];
            this.f38823d = new double[4];
        }

        /* renamed from: f */
        public static /* synthetic */ int m30829f(C6925b c6925b) {
            int i = c6925b.f38820a;
            c6925b.f38820a = i + 1;
            return i;
        }

        public /* synthetic */ C6925b(C6924a c6924a) {
            this();
        }
    }
}
