package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public class NaturalCubicSpline extends ParametricCurve {

    /* renamed from: c */
    public static final ThreadLocal<C6931b> f38845c = new C6930a();

    /* renamed from: a */
    public final C6931b f38846a;

    /* renamed from: b */
    public boolean f38847b;

    /* renamed from: com.graphbuilder.curve.NaturalCubicSpline$a */
    /* loaded from: classes4.dex */
    public static class C6930a extends ThreadLocal<C6931b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6931b initialValue() {
            return new C6931b(null);
        }
    }

    public NaturalCubicSpline(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
        this.f38846a = f38845c.get();
        this.f38847b = false;
    }

    /* renamed from: a */
    public final void m30843a(int i, int i2, boolean z) {
        int i3 = i2;
        int i4 = i - 1;
        int i5 = i3 * 4;
        double[] dArr = this.f38846a.f38849b[i5];
        double[] dArr2 = this.f38846a.f38849b[i5 + 1];
        double[] dArr3 = this.f38846a.f38849b[i5 + 2];
        double d = 4.0d;
        double d2 = 3.0d;
        char c = 1;
        if (!z) {
            int i6 = 0;
            int i7 = 0;
            while (i6 < i2) {
                dArr[0] = 0.5d;
                for (int i8 = 1; i8 < i4; i8++) {
                    dArr[i8] = 1.0d / (4.0d - dArr[i8 - 1]);
                }
                int i9 = i4 - 1;
                dArr[i4] = 1.0d / (2.0d - dArr[i9]);
                dArr2[0] = dArr[0] * (this.f38846a.f38848a[1][i6] - this.f38846a.f38848a[0][i6]) * 3.0d;
                int i10 = 1;
                while (i10 < i4) {
                    int i11 = i10 + 1;
                    int i12 = i10 - 1;
                    dArr2[i10] = dArr[i10] * (((this.f38846a.f38848a[i11][i6] - this.f38846a.f38848a[i12][i6]) * 3.0d) - dArr2[i12]);
                    i10 = i11;
                }
                double d3 = dArr[i4] * (((this.f38846a.f38848a[i4][i6] - this.f38846a.f38848a[i9][i6]) * 3.0d) - dArr2[i9]);
                dArr2[i4] = d3;
                dArr3[i4] = d3;
                while (i9 >= 0) {
                    dArr3[i9] = dArr2[i9] - (dArr[i9] * dArr3[i9 + 1]);
                    i9--;
                }
                int i13 = i7 + 1;
                double[] dArr4 = this.f38846a.f38849b[i7];
                int i14 = i13 + 1;
                double[] dArr5 = this.f38846a.f38849b[i13];
                int i15 = i14 + 1;
                double[] dArr6 = this.f38846a.f38849b[i14];
                int i16 = i15 + 1;
                double[] dArr7 = this.f38846a.f38849b[i15];
                int i17 = 0;
                while (i17 < i4) {
                    dArr4[i17] = this.f38846a.f38848a[i17][i6];
                    dArr5[i17] = dArr3[i17];
                    int i18 = i17 + 1;
                    dArr6[i17] = (((this.f38846a.f38848a[i18][i6] - this.f38846a.f38848a[i17][i6]) * 3.0d) - (dArr3[i17] * 2.0d)) - dArr3[i18];
                    dArr7[i17] = ((this.f38846a.f38848a[i17][i6] - this.f38846a.f38848a[i18][i6]) * 2.0d) + dArr3[i17] + dArr3[i18];
                    i17 = i18;
                }
                dArr4[i4] = this.f38846a.f38848a[i4][i6];
                dArr5[i4] = 0.0d;
                dArr6[i4] = 0.0d;
                dArr7[i4] = 0.0d;
                i6++;
                i7 = i16;
            }
            return;
        }
        double[] dArr8 = this.f38846a.f38849b[i5 + 3];
        int i19 = 0;
        int i20 = 0;
        while (i19 < i3) {
            dArr[c] = 0.25d;
            dArr8[c] = 0.25d;
            dArr2[0] = 0.75d * (this.f38846a.f38848a[c][i19] - this.f38846a.f38848a[i4][i19]);
            int i21 = i4 - 1;
            double d4 = (this.f38846a.f38848a[0][i19] - this.f38846a.f38848a[i21][i19]) * d2;
            double d5 = d;
            int i22 = 1;
            double d6 = 1.0d;
            while (i22 < i4) {
                int i23 = i22 + 1;
                double d7 = 1.0d / (d - dArr[i22]);
                dArr[i23] = d7;
                dArr8[i23] = (-d7) * dArr8[i22];
                int i24 = i22 - 1;
                dArr2[i22] = d7 * (((this.f38846a.f38848a[i23][i19] - this.f38846a.f38848a[i24][i19]) * 3.0d) - dArr2[i24]);
                d5 -= dArr8[i22] * d6;
                d4 -= dArr2[i24] * d6;
                d6 *= -dArr[i22];
                i22 = i23;
                d = 4.0d;
            }
            double d8 = d6 + 1.0d;
            double d9 = d5 - ((dArr[i4] + dArr8[i4]) * d8);
            double d10 = d4 - (d8 * dArr2[i21]);
            dArr2[i4] = d10;
            double d11 = d10 / d9;
            dArr3[i4] = d11;
            dArr3[i21] = dArr2[i21] - ((dArr[i4] + dArr8[i4]) * d11);
            for (int i25 = i4 - 2; i25 >= 0; i25--) {
                int i26 = i25 + 1;
                dArr3[i25] = (dArr2[i25] - (dArr[i26] * dArr3[i26])) - (dArr8[i26] * dArr3[i4]);
            }
            int i27 = i20 + 1;
            double[] dArr9 = this.f38846a.f38849b[i20];
            int i28 = i27 + 1;
            double[] dArr10 = this.f38846a.f38849b[i27];
            int i29 = i28 + 1;
            double[] dArr11 = this.f38846a.f38849b[i28];
            i20 = i29 + 1;
            double[] dArr12 = this.f38846a.f38849b[i29];
            int i30 = 0;
            while (i30 < i4) {
                dArr9[i30] = this.f38846a.f38848a[i30][i19];
                dArr10[i30] = dArr3[i30];
                int i31 = i30 + 1;
                dArr11[i30] = (((this.f38846a.f38848a[i31][i19] - this.f38846a.f38848a[i30][i19]) * 3.0d) - (dArr3[i30] * 2.0d)) - dArr3[i31];
                dArr12[i30] = ((this.f38846a.f38848a[i30][i19] - this.f38846a.f38848a[i31][i19]) * 2.0d) + dArr3[i30] + dArr3[i31];
                i30 = i31;
            }
            dArr9[i4] = this.f38846a.f38848a[i4][i19];
            dArr10[i4] = dArr3[i4];
            dArr11[i4] = (((this.f38846a.f38848a[0][i19] - this.f38846a.f38848a[i4][i19]) * 3.0d) - (dArr3[i4] * 2.0d)) - dArr3[0];
            dArr12[i4] = ((this.f38846a.f38848a[i4][i19] - this.f38846a.f38848a[0][i19]) * 2.0d) + dArr3[i4] + dArr3[0];
            i19++;
            i3 = i2;
            d = 4.0d;
            d2 = 3.0d;
            c = 1;
        }
    }

    @Override // com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("Group iterator not in range");
        }
        int groupSize = this.f38825gi.getGroupSize();
        if (groupSize < 2) {
            throw new IllegalArgumentException("Group iterator size < 2");
        }
        int dimension = multiPath.getDimension();
        int i = (dimension * 4) + 3 + 1;
        if (this.f38846a.f38849b.length < i) {
            double[][] dArr = new double[i];
            for (int i2 = 0; i2 < this.f38846a.f38849b.length; i2++) {
                dArr[i2] = this.f38846a.f38849b[i2];
            }
            this.f38846a.f38849b = dArr;
        }
        if (this.f38846a.f38848a.length < groupSize) {
            int i3 = groupSize * 2;
            this.f38846a.f38848a = new double[i3];
            for (int i4 = 0; i4 < this.f38846a.f38849b.length; i4++) {
                this.f38846a.f38849b[i4] = new double[i3];
            }
        }
        this.f38825gi.set(0, 0);
        for (int i5 = 0; i5 < groupSize; i5++) {
            this.f38846a.f38848a[i5] = this.f38824cp.getPoint(this.f38825gi.next()).getLocation();
        }
        m30843a(groupSize, dimension, this.f38847b);
        this.f38846a.f38850c = 0;
        double[] dArr2 = new double[dimension + 1];
        eval(dArr2);
        if (this.connect) {
            multiPath.lineTo(dArr2);
        } else {
            multiPath.moveTo(dArr2);
        }
        for (int i6 = 0; i6 < groupSize; i6++) {
            this.f38846a.f38850c = i6;
            BinaryCurveApproximationAlgorithm.genPts(this, 0.0d, 1.0d, multiPath);
        }
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public void eval(double[] dArr) {
        int length = dArr.length - 1;
        double d = dArr[length];
        double d2 = d * d;
        double d3 = d2 * d;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i2 + 1;
            int i4 = i3 + 1;
            int i5 = i4 + 1;
            dArr[i] = this.f38846a.f38849b[i2][this.f38846a.f38850c] + (this.f38846a.f38849b[i3][this.f38846a.f38850c] * d) + (this.f38846a.f38849b[i4][this.f38846a.f38850c] * d2) + (this.f38846a.f38849b[i5][this.f38846a.f38850c] * d3);
            i++;
            i2 = i5 + 1;
        }
    }

    public boolean getClosed() {
        return this.f38847b;
    }

    @Override // com.graphbuilder.curve.ParametricCurve
    public int getSampleLimit() {
        return 1;
    }

    @Override // com.graphbuilder.curve.Curve
    public void resetMemory() {
        if (this.f38846a.f38848a.length > 0) {
            this.f38846a.f38848a = new double[0];
        }
        if (this.f38846a.f38849b.length > 0) {
            this.f38846a.f38849b = new double[0];
        }
    }

    public void setClosed(boolean z) {
        this.f38847b = z;
    }

    /* renamed from: com.graphbuilder.curve.NaturalCubicSpline$b */
    /* loaded from: classes4.dex */
    public static class C6931b {

        /* renamed from: a */
        public double[][] f38848a;

        /* renamed from: b */
        public double[][] f38849b;

        /* renamed from: c */
        public int f38850c;

        public C6931b() {
            this.f38848a = new double[0];
            this.f38849b = new double[0];
            this.f38850c = 0;
        }

        public /* synthetic */ C6931b(C6930a c6930a) {
            this();
        }
    }
}
