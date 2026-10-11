package com.sunia.HTREnginev2;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;

/* renamed from: com.sunia.HTREnginev2.pq */
/* loaded from: classes12.dex */
public class C14258pq implements BivariateFunction {

    /* renamed from: g */
    public static final short f81109g = 4;

    /* renamed from: a */
    public final double[][] f81110a;

    /* renamed from: b */
    public final BivariateFunction f81111b;

    /* renamed from: c */
    public final BivariateFunction f81112c;

    /* renamed from: d */
    public final BivariateFunction f81113d;

    /* renamed from: e */
    public final BivariateFunction f81114e;

    /* renamed from: f */
    public final BivariateFunction f81115f;

    /* renamed from: com.sunia.HTREnginev2.pq$a */
    /* loaded from: classes12.dex */
    public class a implements BivariateFunction {

        /* renamed from: a */
        public final /* synthetic */ double[][] f81116a;

        public a(double[][] dArr) {
            this.f81116a = dArr;
        }

        @Override // org.apache.commons.math3.analysis.BivariateFunction
        public double value(double d, double d2) {
            double d3 = d2 * d2;
            return C14258pq.this.m56359b(new double[]{0.0d, 1.0d, d, d * d}, new double[]{1.0d, d2, d3, d3 * d2}, this.f81116a);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.pq$b */
    /* loaded from: classes12.dex */
    public class b implements BivariateFunction {

        /* renamed from: a */
        public final /* synthetic */ double[][] f81118a;

        public b(double[][] dArr) {
            this.f81118a = dArr;
        }

        @Override // org.apache.commons.math3.analysis.BivariateFunction
        public double value(double d, double d2) {
            double d3 = d * d;
            return C14258pq.this.m56359b(new double[]{1.0d, d, d3, d3 * d}, new double[]{0.0d, 1.0d, d2, d2 * d2}, this.f81118a);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.pq$c */
    /* loaded from: classes12.dex */
    public class c implements BivariateFunction {

        /* renamed from: a */
        public final /* synthetic */ double[][] f81120a;

        public c(double[][] dArr) {
            this.f81120a = dArr;
        }

        @Override // org.apache.commons.math3.analysis.BivariateFunction
        public double value(double d, double d2) {
            double[] dArr = {0.0d, 0.0d, 1.0d, d};
            double d3 = d2 * d2;
            return C14258pq.this.m56359b(dArr, new double[]{1.0d, d2, d3, d3 * d2}, this.f81120a);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.pq$d */
    /* loaded from: classes12.dex */
    public class d implements BivariateFunction {

        /* renamed from: a */
        public final /* synthetic */ double[][] f81122a;

        public d(double[][] dArr) {
            this.f81122a = dArr;
        }

        @Override // org.apache.commons.math3.analysis.BivariateFunction
        public double value(double d, double d2) {
            double d3 = d * d;
            return C14258pq.this.m56359b(new double[]{1.0d, d, d3, d3 * d}, new double[]{0.0d, 0.0d, 1.0d, d2}, this.f81122a);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.pq$e */
    /* loaded from: classes12.dex */
    public class e implements BivariateFunction {

        /* renamed from: a */
        public final /* synthetic */ double[][] f81124a;

        public e(double[][] dArr) {
            this.f81124a = dArr;
        }

        @Override // org.apache.commons.math3.analysis.BivariateFunction
        public double value(double d, double d2) {
            return C14258pq.this.m56359b(new double[]{0.0d, 1.0d, d, d * d}, new double[]{0.0d, 1.0d, d2, d2 * d2}, this.f81124a);
        }
    }

    public C14258pq(double[] dArr) {
        this(dArr, false);
    }

    /* renamed from: b */
    public final double m56359b(double[] dArr, double[] dArr2, double[][] dArr3) {
        double d2 = 0.0d;
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                d2 += dArr3[i][i2] * dArr[i] * dArr2[i2];
            }
        }
        return d2;
    }

    /* renamed from: c */
    public BivariateFunction m56360c() {
        return this.f81111b;
    }

    /* renamed from: d */
    public BivariateFunction m56361d() {
        return this.f81113d;
    }

    /* renamed from: e */
    public BivariateFunction m56362e() {
        return this.f81115f;
    }

    /* renamed from: f */
    public BivariateFunction m56363f() {
        return this.f81112c;
    }

    /* renamed from: g */
    public BivariateFunction m56364g() {
        return this.f81114e;
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d2, double d3) {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (d3 < 0.0d || d3 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d3), 0, 1);
        }
        double d4 = d2 * d2;
        double[] dArr = {1.0d, d2, d4, d4 * d2};
        double d5 = d3 * d3;
        return m56359b(dArr, new double[]{1.0d, d3, d5, d5 * d3}, this.f81110a);
    }

    public C14258pq(double[] dArr, boolean z) {
        int i = 4;
        this.f81110a = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 4);
        for (int i2 = 0; i2 < 4; i2++) {
            for (int i3 = 0; i3 < 4; i3++) {
                this.f81110a[i2][i3] = dArr[(i2 * 4) + i3];
            }
        }
        if (z) {
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 4);
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 4);
            double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 4);
            double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 4);
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 4);
            int i4 = 0;
            while (i4 < i) {
                int i5 = 0;
                while (i5 < i) {
                    double d2 = this.f81110a[i4][i5];
                    double[] dArr7 = dArr2[i4];
                    dArr7[i5] = i4 * d2;
                    double[] dArr8 = dArr3[i4];
                    double d3 = i5;
                    dArr8[i5] = d2 * d3;
                    dArr4[i4][i5] = (i4 - 1) * dArr7[i5];
                    dArr5[i4][i5] = (i5 - 1) * dArr8[i5];
                    dArr6[i4][i5] = d3 * dArr7[i5];
                    i5++;
                    i = 4;
                }
                i4++;
                i = 4;
            }
            this.f81111b = new a(dArr2);
            this.f81112c = new b(dArr3);
            this.f81113d = new c(dArr4);
            this.f81114e = new d(dArr5);
            this.f81115f = new e(dArr6);
            return;
        }
        this.f81111b = null;
        this.f81112c = null;
        this.f81113d = null;
        this.f81114e = null;
        this.f81115f = null;
    }
}
