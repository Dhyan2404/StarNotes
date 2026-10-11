package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public class BSpline extends ParametricCurve {
    public static final int NON_UNIFORM = 2;
    public static final int UNIFORM_CLAMPED = 0;
    public static final int UNIFORM_UNCLAMPED = 1;

    /* renamed from: i */
    public static final ThreadLocal<C6917b> f38789i = new C6916a();

    /* renamed from: a */
    public final C6917b f38790a;

    /* renamed from: b */
    public ValueVector f38791b;

    /* renamed from: c */
    public double f38792c;

    /* renamed from: d */
    public double f38793d;

    /* renamed from: e */
    public int f38794e;

    /* renamed from: f */
    public int f38795f;

    /* renamed from: g */
    public int f38796g;

    /* renamed from: h */
    public boolean f38797h;

    /* renamed from: com.graphbuilder.curve.BSpline$a */
    /* loaded from: classes4.dex */
    public static class C6916a extends ThreadLocal<C6917b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6917b initialValue() {
            return new C6917b(null);
        }
    }

    public BSpline(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38790a = f38789i.get();
        this.f38791b = new ValueVector(new double[]{0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 1.0d, 1.0d}, 8);
        this.f38792c = 0.0d;
        this.f38793d = 1.0d;
        this.f38794e = 1;
        this.f38795f = 4;
        this.f38796g = 0;
        this.f38797h = true;
    }

    /* renamed from: N */
    public double m30807N(double d, int i) {
        double d2;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            d2 = 0.0d;
            if (i3 >= this.f38795f) {
                break;
            }
            int i4 = i + i3;
            double d3 = this.f38790a.f38800c[i4];
            double d4 = this.f38790a.f38800c[i4 + 1];
            if (d < d3 || d > d4 || d3 == d4) {
                i3++;
                i2 = 0;
            } else {
                int i5 = this.f38795f;
                int i6 = i5 - 2;
                for (int i7 = (i5 - i3) - 1; i7 >= 0; i7--) {
                    this.f38790a.f38798a[i7] = i2;
                }
                if (i3 > 0) {
                    for (int i8 = i2; i8 < i3; i8++) {
                        this.f38790a.f38799b[i8] = i8;
                    }
                    this.f38790a.f38799b[i3] = Integer.MAX_VALUE;
                } else {
                    this.f38790a.f38799b[i2] = i6;
                    this.f38790a.f38799b[1] = this.f38795f;
                }
                int i9 = i2;
                while (true) {
                    int i10 = i9 + 1;
                    if (this.f38790a.f38799b[i9] < this.f38790a.f38799b[i10] - 1) {
                        int i11 = i6 - i3;
                        int i12 = i3 - 1;
                        int i13 = this.f38795f;
                        double d5 = 1.0d;
                        int i14 = i2;
                        int i15 = i6;
                        while (i15 >= 0) {
                            if (i12 < 0 || this.f38790a.f38799b[i12] != i15) {
                                int i16 = i + this.f38790a.f38798a[i11];
                                double d6 = this.f38790a.f38800c[i16];
                                d5 *= (d - d6) / (this.f38790a.f38800c[(i16 + i13) - 1] - d6);
                                i11--;
                            } else {
                                int i17 = i + i14;
                                double d7 = this.f38790a.f38800c[i17 + i13];
                                d5 *= (d7 - d) / (d7 - this.f38790a.f38800c[i17 + 1]);
                                i14++;
                                i12--;
                            }
                            i15--;
                            i13--;
                        }
                        if (i3 > 0) {
                            int i18 = 0;
                            boolean z = false;
                            while (true) {
                                int[] iArr = this.f38790a.f38798a;
                                iArr[i18] = iArr[i18] + 1;
                                if (this.f38790a.f38798a[i18] <= i3) {
                                    break;
                                }
                                i18++;
                                z = true;
                            }
                            if (z) {
                                for (int i19 = i18 - 1; i19 >= 0; i19--) {
                                    this.f38790a.f38798a[i19] = this.f38790a.f38798a[i18];
                                }
                            }
                        }
                        d2 += d5;
                        int[] iArr2 = this.f38790a.f38799b;
                        iArr2[i9] = iArr2[i9] + 1;
                        if (this.f38790a.f38799b[i9] > i6) {
                            break;
                        }
                        for (int i20 = 0; i20 < i9; i20++) {
                            this.f38790a.f38799b[i20] = i20;
                        }
                        i2 = 0;
                        i9 = 0;
                    } else {
                        i9 = i10;
                    }
                }
            }
        }
        return d2;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0173  */
    @Override // com.graphbuilder.curve.Curve
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void appendTo(com.graphbuilder.curve.MultiPath r17) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.graphbuilder.curve.BSpline.appendTo(com.graphbuilder.curve.MultiPath):void");
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public void eval(double[] dArr) {
        int length = dArr.length - 1;
        double d = dArr[length];
        int groupSize = this.f38825gi.getGroupSize();
        this.f38825gi.set(0, 0);
        for (int i = 0; i < groupSize; i++) {
            double m30807N = m30807N(d, i);
            double[] location = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
            for (int i2 = 0; i2 < length; i2++) {
                dArr[i2] = dArr[i2] + (location[i2] * m30807N);
            }
        }
    }

    public int getDegree() {
        return this.f38795f - 1;
    }

    public ValueVector getKnotVector() {
        return this.f38791b;
    }

    public int getKnotVectorType() {
        return this.f38796g;
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public int getSampleLimit() {
        return this.f38794e;
    }

    public boolean getUseDefaultInterval() {
        return this.f38797h;
    }

    @Override // com.graphbuilder.curve.Curve
    public void resetMemory() {
        if (this.f38790a.f38798a.length > 0) {
            this.f38790a.f38798a = new int[0];
            this.f38790a.f38799b = new int[0];
        }
        if (this.f38790a.f38800c.length > 0) {
            this.f38790a.f38800c = new double[0];
        }
    }

    public void setDegree(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Degree > 0 required.");
        }
        this.f38795f = i + 1;
    }

    public void setInterval(double d, double d2) {
        if (d > d2) {
            throw new IllegalArgumentException("t_min <= t_max required.");
        }
        this.f38792c = d;
        this.f38793d = d2;
    }

    public void setKnotVector(ValueVector valueVector) {
        if (valueVector == null) {
            throw new IllegalArgumentException("Knot-vector cannot be null.");
        }
        this.f38791b = valueVector;
    }

    public void setKnotVectorType(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Unknown knot-vector type.");
        }
        this.f38796g = i;
    }

    public void setSampleLimit(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Sample-limit >= 0 required.");
        }
        this.f38794e = i;
    }

    public void setUseDefaultInterval(boolean z) {
        this.f38797h = z;
    }

    public double t_max() {
        return this.f38793d;
    }

    public double t_min() {
        return this.f38792c;
    }

    /* renamed from: com.graphbuilder.curve.BSpline$b */
    /* loaded from: classes4.dex */
    public static class C6917b {

        /* renamed from: a */
        public int[] f38798a;

        /* renamed from: b */
        public int[] f38799b;

        /* renamed from: c */
        public double[] f38800c;

        public C6917b() {
            this.f38798a = new int[0];
            this.f38799b = new int[0];
            this.f38800c = new double[0];
        }

        public /* synthetic */ C6917b(C6916a c6916a) {
            this();
        }
    }
}
