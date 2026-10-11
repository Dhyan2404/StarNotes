package com.graphbuilder.math;

/* loaded from: classes4.dex */
public final class PascalsTriangle {

    /* renamed from: b */
    public static final ThreadLocal<C6934b> f38861b = new C6933a();

    /* renamed from: a */
    public final C6934b f38862a = f38861b.get();

    /* renamed from: com.graphbuilder.math.PascalsTriangle$a */
    /* loaded from: classes4.dex */
    public static class C6933a extends ThreadLocal<C6934b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C6934b initialValue() {
            return new C6934b(null);
        }
    }

    public double nCr(int i, int i2) {
        if (i < 0 || i2 < 0 || i2 > i) {
            return 0.0d;
        }
        if (i >= this.f38862a.f38863a.length) {
            int length = this.f38862a.f38863a.length * 2;
            double[][] dArr = i > length ? new double[i + 1] : new double[length + 1];
            for (int i3 = 0; i3 < this.f38862a.f38863a.length; i3++) {
                dArr[i3] = this.f38862a.f38863a[i3];
            }
            for (int length2 = this.f38862a.f38863a.length; length2 < dArr.length; length2++) {
                double[] dArr2 = new double[(length2 / 2) + 1];
                dArr[length2] = dArr2;
                dArr2[0] = 1.0d;
                int i4 = 1;
                while (true) {
                    double[] dArr3 = dArr[length2];
                    if (i4 < dArr3.length) {
                        double[] dArr4 = dArr[length2 - 1];
                        double d = dArr4[i4 - 1];
                        dArr3[i4] = i4 < dArr4.length ? d + dArr4[i4] : d * 2.0d;
                        i4++;
                    }
                }
            }
            this.f38862a.f38863a = dArr;
        }
        if (i2 * 2 > i) {
            i2 = i - i2;
        }
        return this.f38862a.f38863a[i][i2];
    }

    public void reset() {
        this.f38862a.f38863a = new double[][]{new double[]{1.0d}};
    }

    /* renamed from: com.graphbuilder.math.PascalsTriangle$b */
    /* loaded from: classes4.dex */
    public static class C6934b {

        /* renamed from: a */
        public double[][] f38863a;

        public C6934b() {
            this.f38863a = new double[][]{new double[]{1.0d}};
        }

        public /* synthetic */ C6934b(C6933a c6933a) {
            this();
        }
    }
}
