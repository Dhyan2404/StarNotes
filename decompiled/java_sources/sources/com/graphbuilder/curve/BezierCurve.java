package com.graphbuilder.curve;

import com.graphbuilder.math.PascalsTriangle;

/* loaded from: classes4.dex */
public class BezierCurve extends ParametricCurve {

    /* renamed from: f */
    public static final ThreadLocal<C6919b> f38801f = new C6918a();

    /* renamed from: a */
    public final C6919b f38802a;

    /* renamed from: b */
    public final PascalsTriangle f38803b;

    /* renamed from: c */
    public double f38804c;

    /* renamed from: d */
    public double f38805d;

    /* renamed from: e */
    public int f38806e;

    /* renamed from: com.graphbuilder.curve.BezierCurve$a */
    /* loaded from: classes4.dex */
    public static class C6918a extends ThreadLocal<C6919b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6919b initialValue() {
            return new C6919b(null);
        }
    }

    public BezierCurve(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38802a = f38801f.get();
        this.f38803b = new PascalsTriangle();
        this.f38804c = 0.0d;
        this.f38805d = 1.0d;
        this.f38806e = 1;
    }

    @Override // com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("group iterator not in range");
        }
        int dimension = multiPath.getDimension();
        double[] dArr = new double[dimension + 1];
        dArr[dimension] = this.f38804c;
        eval(dArr);
        if (this.connect) {
            multiPath.lineTo(dArr);
        } else {
            multiPath.moveTo(dArr);
        }
        BinaryCurveApproximationAlgorithm.genPts(this, this.f38804c, this.f38805d, multiPath);
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public void eval(double[] dArr) {
        double d = dArr[dArr.length - 1];
        int groupSize = this.f38825gi.getGroupSize();
        if (groupSize > this.f38802a.f38807a.length) {
            this.f38802a.f38807a = new double[groupSize * 2];
        }
        int i = groupSize - 1;
        double d2 = 1.0d;
        this.f38802a.f38807a[i] = 1.0d;
        double d3 = 1.0d - d;
        for (int i2 = groupSize - 2; i2 >= 0; i2--) {
            this.f38802a.f38807a[i2] = this.f38802a.f38807a[i2 + 1] * d3;
        }
        this.f38825gi.set(0, 0);
        for (int i3 = 0; i3 < groupSize; i3++) {
            double nCr = this.f38803b.nCr(i, i3);
            if (!Double.isInfinite(nCr) && !Double.isNaN(nCr)) {
                double d4 = this.f38802a.f38807a[i3] * d2 * nCr;
                double[] location = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
                for (int i4 = 0; i4 < dArr.length - 1; i4++) {
                    dArr[i4] = dArr[i4] + (location[i4] * d4);
                }
            }
            d2 *= d;
        }
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public int getSampleLimit() {
        return this.f38806e;
    }

    @Override // com.graphbuilder.curve.Curve
    public void resetMemory() {
        if (this.f38802a.f38807a.length > 0) {
            this.f38802a.f38807a = new double[0];
        }
    }

    public void setInterval(double d, double d2) {
        if (d > d2) {
            throw new IllegalArgumentException("t_min <= t_max required.");
        }
        this.f38804c = d;
        this.f38805d = d2;
    }

    public void setSampleLimit(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Sample-limit >= 0 required.");
        }
        this.f38806e = i;
    }

    public double t_max() {
        return this.f38805d;
    }

    public double t_min() {
        return this.f38804c;
    }

    /* renamed from: com.graphbuilder.curve.BezierCurve$b */
    /* loaded from: classes4.dex */
    public static class C6919b {

        /* renamed from: a */
        public double[] f38807a;

        public C6919b() {
            this.f38807a = new double[0];
        }

        public /* synthetic */ C6919b(C6918a c6918a) {
            this();
        }
    }
}
