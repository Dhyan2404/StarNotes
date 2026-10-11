package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public class LagrangeCurve extends ParametricCurve {

    /* renamed from: g */
    public static final ThreadLocal<C6927b> f38826g = new C6926a();

    /* renamed from: a */
    public ValueVector f38827a;

    /* renamed from: b */
    public int f38828b;

    /* renamed from: c */
    public int f38829c;

    /* renamed from: d */
    public boolean f38830d;

    /* renamed from: e */
    public boolean f38831e;

    /* renamed from: f */
    public final C6927b f38832f;

    /* renamed from: com.graphbuilder.curve.LagrangeCurve$a */
    /* loaded from: classes4.dex */
    public static class C6926a extends ThreadLocal<C6927b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6927b initialValue() {
            return new C6927b(null);
        }
    }

    public LagrangeCurve(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38827a = new ValueVector(new double[]{0.0d, 0.3333333333333333d, 0.6666666666666666d, 1.0d}, 4);
        this.f38828b = 1;
        this.f38829c = 1;
        this.f38830d = false;
        this.f38831e = false;
        this.f38832f = f38826g.get();
    }

    /* renamed from: a */
    public final double m30832a(double d, int i) {
        int size = this.f38827a.size();
        double d2 = 1.0d;
        for (int i2 = 0; i2 < size; i2++) {
            double d3 = this.f38827a.get(i) - this.f38827a.get(i2);
            if (d3 != 0.0d) {
                d2 *= (d - this.f38827a.get(i2)) / d3;
            }
        }
        return d2;
    }

    @Override // com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("Group iterator not in range");
        }
        if (this.f38828b + this.f38829c >= this.f38827a.size()) {
            throw new IllegalArgumentException("baseIndex + baseLength >= knotVector.size");
        }
        if (this.f38832f.f38833a.length < this.f38827a.size()) {
            this.f38832f.f38833a = new double[this.f38827a.size() * 2];
        }
        this.f38825gi.set(0, 0);
        boolean z = false;
        if (this.f38828b != 0 && this.f38830d) {
            for (int i = 0; i < this.f38827a.size(); i++) {
                if (!this.f38825gi.hasNext()) {
                    throw new IllegalArgumentException("Group iterator ended early");
                }
                this.f38832f.f38833a[i] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
            }
            z = m30833b(multiPath, this.f38827a.get(0), this.f38827a.get(this.f38828b), false);
        }
        this.f38825gi.set(0, 0);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int index_i = this.f38825gi.index_i();
            int count_j = this.f38825gi.count_j();
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i4 < this.f38827a.size()) {
                if (i5 == this.f38829c) {
                    i6 = this.f38825gi.index_i();
                    i7 = this.f38825gi.count_j();
                }
                if (!this.f38825gi.hasNext()) {
                    break;
                }
                this.f38832f.f38833a[i4] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
                i5++;
                i4++;
            }
            if (i4 < this.f38827a.size()) {
                break;
            }
            this.f38825gi.set(i6, i7);
            z = m30833b(multiPath, this.f38827a.get(this.f38828b), this.f38827a.get(this.f38828b + this.f38829c), z);
            i2 = index_i;
            i3 = count_j;
        }
        if (this.f38828b + this.f38829c >= this.f38827a.size() - 1 || !this.f38831e) {
            return;
        }
        this.f38825gi.set(i2, i3);
        for (int i8 = 0; i8 < this.f38827a.size(); i8++) {
            if (!this.f38825gi.hasNext()) {
                System.out.println("not enough points to interpolate last");
                return;
            }
            this.f38832f.f38833a[i8] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
        }
        m30833b(multiPath, this.f38827a.get(this.f38828b + this.f38829c), this.f38827a.get(r0.size() - 1), z);
    }

    /* renamed from: b */
    public final boolean m30833b(MultiPath multiPath, double d, double d2, boolean z) {
        double d3;
        double d4;
        if (d2 < d) {
            d4 = d;
            d3 = d2;
        } else {
            d3 = d;
            d4 = d2;
        }
        if (!z) {
            z = true;
            double[] dArr = new double[multiPath.getDimension() + 1];
            dArr[multiPath.getDimension()] = d3;
            eval(dArr);
            if (this.connect) {
                multiPath.lineTo(dArr);
            } else {
                multiPath.moveTo(dArr);
            }
        }
        BinaryCurveApproximationAlgorithm.genPts(this, d3, d4, multiPath);
        return z;
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public void eval(double[] dArr) {
        double d = dArr[dArr.length - 1];
        int size = this.f38827a.size();
        for (int i = 0; i < size; i++) {
            double[] dArr2 = this.f38832f.f38833a[i];
            double m30832a = m30832a(d, i);
            for (int i2 = 0; i2 < dArr.length - 1; i2++) {
                dArr[i2] = dArr[i2] + (dArr2[i2] * m30832a);
            }
        }
    }

    public int getBaseIndex() {
        return this.f38828b;
    }

    public int getBaseLength() {
        return this.f38829c;
    }

    public boolean getInterpolateFirst() {
        return this.f38830d;
    }

    public boolean getInterpolateLast() {
        return this.f38831e;
    }

    public ValueVector getKnotVector() {
        return this.f38827a;
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public int getSampleLimit() {
        return 1;
    }

    @Override // com.graphbuilder.curve.Curve
    public void resetMemory() {
        if (this.f38832f.f38833a.length > 0) {
            this.f38832f.f38833a = new double[0];
        }
    }

    public void setBaseIndex(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("base index >= 0 required.");
        }
        this.f38828b = i;
    }

    public void setBaseLength(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("base length > 0 required.");
        }
        this.f38829c = i;
    }

    public void setInterpolateFirst(boolean z) {
        this.f38830d = z;
    }

    public void setInterpolateLast(boolean z) {
        this.f38831e = z;
    }

    public void setKnotVector(ValueVector valueVector) {
        if (valueVector == null) {
            throw new IllegalArgumentException("Knot-vector cannot be null.");
        }
        this.f38827a = valueVector;
    }

    /* renamed from: com.graphbuilder.curve.LagrangeCurve$b */
    /* loaded from: classes4.dex */
    public static class C6927b {

        /* renamed from: a */
        public double[][] f38833a;

        public C6927b() {
            this.f38833a = new double[0];
        }

        public /* synthetic */ C6927b(C6926a c6926a) {
            this();
        }
    }
}
