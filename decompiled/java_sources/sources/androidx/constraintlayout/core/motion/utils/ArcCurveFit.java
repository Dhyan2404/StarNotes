package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes3.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;

    /* renamed from: d */
    public static final int f2871d = 1;

    /* renamed from: e */
    public static final int f2872e = 2;

    /* renamed from: f */
    public static final int f2873f = 3;

    /* renamed from: a */
    public final double[] f2874a;

    /* renamed from: b */
    public C0394a[] f2875b;

    /* renamed from: c */
    public boolean f2876c = true;

    /* renamed from: androidx.constraintlayout.core.motion.utils.ArcCurveFit$a */
    /* loaded from: classes3.dex */
    public static class C0394a {

        /* renamed from: s */
        public static final String f2877s = "Arc";

        /* renamed from: t */
        public static double[] f2878t = new double[91];

        /* renamed from: u */
        public static final double f2879u = 0.001d;

        /* renamed from: a */
        public double[] f2880a;

        /* renamed from: b */
        public double f2881b;

        /* renamed from: c */
        public double f2882c;

        /* renamed from: d */
        public double f2883d;

        /* renamed from: e */
        public double f2884e;

        /* renamed from: f */
        public double f2885f;

        /* renamed from: g */
        public double f2886g;

        /* renamed from: h */
        public double f2887h;

        /* renamed from: i */
        public double f2888i;

        /* renamed from: j */
        public double f2889j;

        /* renamed from: k */
        public double f2890k;

        /* renamed from: l */
        public double f2891l;

        /* renamed from: m */
        public double f2892m;

        /* renamed from: n */
        public double f2893n;

        /* renamed from: o */
        public double f2894o;

        /* renamed from: p */
        public double f2895p;

        /* renamed from: q */
        public boolean f2896q;

        /* renamed from: r */
        public boolean f2897r;

        public C0394a(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            this.f2897r = false;
            this.f2896q = i == 1;
            this.f2882c = d;
            this.f2883d = d2;
            this.f2888i = 1.0d / (d2 - d);
            if (3 == i) {
                this.f2897r = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (!this.f2897r && Math.abs(d7) >= 0.001d && Math.abs(d8) >= 0.001d) {
                this.f2880a = new double[101];
                boolean z = this.f2896q;
                this.f2889j = d7 * (z ? -1 : 1);
                this.f2890k = d8 * (z ? 1 : -1);
                this.f2891l = z ? d5 : d3;
                this.f2892m = z ? d4 : d6;
                m1474a(d3, d4, d5, d6);
                this.f2893n = this.f2881b * this.f2888i;
                return;
            }
            this.f2897r = true;
            this.f2884e = d3;
            this.f2885f = d5;
            this.f2886g = d4;
            this.f2887h = d6;
            double hypot = Math.hypot(d8, d7);
            this.f2881b = hypot;
            this.f2893n = hypot * this.f2888i;
            double d9 = this.f2883d;
            double d10 = this.f2882c;
            this.f2891l = d7 / (d9 - d10);
            this.f2892m = d8 / (d9 - d10);
        }

        /* renamed from: a */
        public final void m1474a(double d, double d2, double d3, double d4) {
            double d5;
            double d6 = d3 - d;
            double d7 = d2 - d4;
            int i = 0;
            double d8 = 0.0d;
            double d9 = 0.0d;
            double d10 = 0.0d;
            while (true) {
                if (i >= f2878t.length) {
                    break;
                }
                double d11 = d8;
                double radians = Math.toRadians((i * 90.0d) / (r15.length - 1));
                double sin = Math.sin(radians) * d6;
                double cos = Math.cos(radians) * d7;
                if (i > 0) {
                    d5 = Math.hypot(sin - d9, cos - d10) + d11;
                    f2878t[i] = d5;
                } else {
                    d5 = d11;
                }
                i++;
                d10 = cos;
                d8 = d5;
                d9 = sin;
            }
            double d12 = d8;
            this.f2881b = d12;
            int i2 = 0;
            while (true) {
                double[] dArr = f2878t;
                if (i2 >= dArr.length) {
                    break;
                }
                dArr[i2] = dArr[i2] / d12;
                i2++;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= this.f2880a.length) {
                    return;
                }
                double length = i3 / (r1.length - 1);
                int binarySearch = Arrays.binarySearch(f2878t, length);
                if (binarySearch >= 0) {
                    this.f2880a[i3] = binarySearch / (f2878t.length - 1);
                } else if (binarySearch == -1) {
                    this.f2880a[i3] = 0.0d;
                } else {
                    int i4 = -binarySearch;
                    int i5 = i4 - 2;
                    double[] dArr2 = f2878t;
                    double d13 = dArr2[i5];
                    this.f2880a[i3] = (i5 + ((length - d13) / (dArr2[i4 - 1] - d13))) / (dArr2.length - 1);
                }
                i3++;
            }
        }

        /* renamed from: b */
        public double m1475b() {
            double d = this.f2889j * this.f2895p;
            double hypot = this.f2893n / Math.hypot(d, (-this.f2890k) * this.f2894o);
            if (this.f2896q) {
                d = -d;
            }
            return d * hypot;
        }

        /* renamed from: c */
        public double m1476c() {
            double d = this.f2889j * this.f2895p;
            double d2 = (-this.f2890k) * this.f2894o;
            double hypot = this.f2893n / Math.hypot(d, d2);
            return this.f2896q ? (-d2) * hypot : d2 * hypot;
        }

        /* renamed from: d */
        public double m1477d(double d) {
            return this.f2891l;
        }

        /* renamed from: e */
        public double m1478e(double d) {
            return this.f2892m;
        }

        /* renamed from: f */
        public double m1479f(double d) {
            double d2 = (d - this.f2882c) * this.f2888i;
            double d3 = this.f2884e;
            return d3 + (d2 * (this.f2885f - d3));
        }

        /* renamed from: g */
        public double m1480g(double d) {
            double d2 = (d - this.f2882c) * this.f2888i;
            double d3 = this.f2886g;
            return d3 + (d2 * (this.f2887h - d3));
        }

        /* renamed from: h */
        public double m1481h() {
            return this.f2891l + (this.f2889j * this.f2894o);
        }

        /* renamed from: i */
        public double m1482i() {
            return this.f2892m + (this.f2890k * this.f2895p);
        }

        /* renamed from: j */
        public double m1483j(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f2880a;
            double length = d * (dArr.length - 1);
            int i = (int) length;
            double d2 = length - i;
            double d3 = dArr[i];
            return d3 + (d2 * (dArr[i + 1] - d3));
        }

        /* renamed from: k */
        public void m1484k(double d) {
            double m1483j = m1483j((this.f2896q ? this.f2883d - d : d - this.f2882c) * this.f2888i) * 1.5707963267948966d;
            this.f2894o = Math.sin(m1483j);
            this.f2895p = Math.cos(m1483j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0028, code lost:
    
        if (r5 == 1) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ArcCurveFit(int[] r25, double[] r26, double[][] r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = r26
            r24.<init>()
            r2 = 1
            r0.f2876c = r2
            r0.f2874a = r1
            int r3 = r1.length
            int r3 = r3 - r2
            androidx.constraintlayout.core.motion.utils.ArcCurveFit$a[] r3 = new androidx.constraintlayout.core.motion.utils.ArcCurveFit.C0394a[r3]
            r0.f2875b = r3
            r3 = 0
            r5 = r2
            r6 = r5
            r4 = r3
        L16:
            androidx.constraintlayout.core.motion.utils.ArcCurveFit$a[] r7 = r0.f2875b
            int r8 = r7.length
            if (r4 >= r8) goto L4f
            r8 = r25[r4]
            r9 = 3
            if (r8 == 0) goto L2f
            if (r8 == r2) goto L2c
            r10 = 2
            if (r8 == r10) goto L2a
            if (r8 == r9) goto L28
            goto L30
        L28:
            if (r5 != r2) goto L2c
        L2a:
            r5 = r10
            goto L2d
        L2c:
            r5 = r2
        L2d:
            r6 = r5
            goto L30
        L2f:
            r6 = r9
        L30:
            androidx.constraintlayout.core.motion.utils.ArcCurveFit$a r22 = new androidx.constraintlayout.core.motion.utils.ArcCurveFit$a
            r10 = r1[r4]
            int r23 = r4 + 1
            r12 = r1[r23]
            r8 = r27[r4]
            r14 = r8[r3]
            r16 = r8[r2]
            r8 = r27[r23]
            r18 = r8[r3]
            r20 = r8[r2]
            r8 = r22
            r9 = r6
            r8.<init>(r9, r10, r12, r14, r16, r18, r20)
            r7[r4] = r22
            r4 = r23
            goto L16
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.ArcCurveFit.<init>(int[], double[], double[][]):void");
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        if (this.f2876c) {
            C0394a[] c0394aArr = this.f2875b;
            C0394a c0394a = c0394aArr[0];
            double d2 = c0394a.f2882c;
            if (d < d2) {
                double d3 = d - d2;
                if (c0394a.f2897r) {
                    dArr[0] = c0394a.m1479f(d2) + (this.f2875b[0].m1477d(d2) * d3);
                    dArr[1] = this.f2875b[0].m1480g(d2) + (d3 * this.f2875b[0].m1478e(d2));
                    return;
                } else {
                    c0394a.m1484k(d2);
                    dArr[0] = this.f2875b[0].m1481h() + (this.f2875b[0].m1475b() * d3);
                    dArr[1] = this.f2875b[0].m1482i() + (d3 * this.f2875b[0].m1476c());
                    return;
                }
            }
            if (d > c0394aArr[c0394aArr.length - 1].f2883d) {
                double d4 = c0394aArr[c0394aArr.length - 1].f2883d;
                double d5 = d - d4;
                int length = c0394aArr.length - 1;
                C0394a c0394a2 = c0394aArr[length];
                if (c0394a2.f2897r) {
                    dArr[0] = c0394a2.m1479f(d4) + (this.f2875b[length].m1477d(d4) * d5);
                    dArr[1] = this.f2875b[length].m1480g(d4) + (d5 * this.f2875b[length].m1478e(d4));
                    return;
                } else {
                    c0394a2.m1484k(d);
                    dArr[0] = this.f2875b[length].m1481h() + (this.f2875b[length].m1475b() * d5);
                    dArr[1] = this.f2875b[length].m1482i() + (d5 * this.f2875b[length].m1476c());
                    return;
                }
            }
        } else {
            C0394a[] c0394aArr2 = this.f2875b;
            double d6 = c0394aArr2[0].f2882c;
            if (d < d6) {
                d = d6;
            }
            if (d > c0394aArr2[c0394aArr2.length - 1].f2883d) {
                d = c0394aArr2[c0394aArr2.length - 1].f2883d;
            }
        }
        int i = 0;
        while (true) {
            C0394a[] c0394aArr3 = this.f2875b;
            if (i >= c0394aArr3.length) {
                return;
            }
            C0394a c0394a3 = c0394aArr3[i];
            if (d <= c0394a3.f2883d) {
                if (c0394a3.f2897r) {
                    dArr[0] = c0394a3.m1479f(d);
                    dArr[1] = this.f2875b[i].m1480g(d);
                    return;
                } else {
                    c0394a3.m1484k(d);
                    dArr[0] = this.f2875b[i].m1481h();
                    dArr[1] = this.f2875b[i].m1482i();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        C0394a[] c0394aArr = this.f2875b;
        double d2 = c0394aArr[0].f2882c;
        if (d < d2) {
            d = d2;
        } else if (d > c0394aArr[c0394aArr.length - 1].f2883d) {
            d = c0394aArr[c0394aArr.length - 1].f2883d;
        }
        int i = 0;
        while (true) {
            C0394a[] c0394aArr2 = this.f2875b;
            if (i >= c0394aArr2.length) {
                return;
            }
            C0394a c0394a = c0394aArr2[i];
            if (d <= c0394a.f2883d) {
                if (c0394a.f2897r) {
                    dArr[0] = c0394a.m1477d(d);
                    dArr[1] = this.f2875b[i].m1478e(d);
                    return;
                } else {
                    c0394a.m1484k(d);
                    dArr[0] = this.f2875b[i].m1475b();
                    dArr[1] = this.f2875b[i].m1476c();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f2874a;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        C0394a[] c0394aArr = this.f2875b;
        int i2 = 0;
        double d2 = c0394aArr[0].f2882c;
        if (d < d2) {
            d = d2;
        }
        if (d > c0394aArr[c0394aArr.length - 1].f2883d) {
            d = c0394aArr[c0394aArr.length - 1].f2883d;
        }
        while (true) {
            C0394a[] c0394aArr2 = this.f2875b;
            if (i2 >= c0394aArr2.length) {
                return Double.NaN;
            }
            C0394a c0394a = c0394aArr2[i2];
            if (d <= c0394a.f2883d) {
                if (c0394a.f2897r) {
                    if (i == 0) {
                        return c0394a.m1477d(d);
                    }
                    return c0394a.m1478e(d);
                }
                c0394a.m1484k(d);
                if (i == 0) {
                    return this.f2875b[i2].m1475b();
                }
                return this.f2875b[i2].m1476c();
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        if (this.f2876c) {
            C0394a[] c0394aArr = this.f2875b;
            C0394a c0394a = c0394aArr[0];
            double d2 = c0394a.f2882c;
            if (d < d2) {
                double d3 = d - d2;
                if (c0394a.f2897r) {
                    fArr[0] = (float) (c0394a.m1479f(d2) + (this.f2875b[0].m1477d(d2) * d3));
                    fArr[1] = (float) (this.f2875b[0].m1480g(d2) + (d3 * this.f2875b[0].m1478e(d2)));
                    return;
                } else {
                    c0394a.m1484k(d2);
                    fArr[0] = (float) (this.f2875b[0].m1481h() + (this.f2875b[0].m1475b() * d3));
                    fArr[1] = (float) (this.f2875b[0].m1482i() + (d3 * this.f2875b[0].m1476c()));
                    return;
                }
            }
            if (d > c0394aArr[c0394aArr.length - 1].f2883d) {
                double d4 = c0394aArr[c0394aArr.length - 1].f2883d;
                double d5 = d - d4;
                int length = c0394aArr.length - 1;
                C0394a c0394a2 = c0394aArr[length];
                if (c0394a2.f2897r) {
                    fArr[0] = (float) (c0394a2.m1479f(d4) + (this.f2875b[length].m1477d(d4) * d5));
                    fArr[1] = (float) (this.f2875b[length].m1480g(d4) + (d5 * this.f2875b[length].m1478e(d4)));
                    return;
                } else {
                    c0394a2.m1484k(d);
                    fArr[0] = (float) this.f2875b[length].m1481h();
                    fArr[1] = (float) this.f2875b[length].m1482i();
                    return;
                }
            }
        } else {
            C0394a[] c0394aArr2 = this.f2875b;
            double d6 = c0394aArr2[0].f2882c;
            if (d < d6) {
                d = d6;
            } else if (d > c0394aArr2[c0394aArr2.length - 1].f2883d) {
                d = c0394aArr2[c0394aArr2.length - 1].f2883d;
            }
        }
        int i = 0;
        while (true) {
            C0394a[] c0394aArr3 = this.f2875b;
            if (i >= c0394aArr3.length) {
                return;
            }
            C0394a c0394a3 = c0394aArr3[i];
            if (d <= c0394a3.f2883d) {
                if (c0394a3.f2897r) {
                    fArr[0] = (float) c0394a3.m1479f(d);
                    fArr[1] = (float) this.f2875b[i].m1480g(d);
                    return;
                } else {
                    c0394a3.m1484k(d);
                    fArr[0] = (float) this.f2875b[i].m1481h();
                    fArr[1] = (float) this.f2875b[i].m1482i();
                    return;
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i) {
        double m1480g;
        double m1478e;
        double m1482i;
        double m1476c;
        double m1480g2;
        double m1478e2;
        int i2 = 0;
        if (this.f2876c) {
            C0394a[] c0394aArr = this.f2875b;
            C0394a c0394a = c0394aArr[0];
            double d2 = c0394a.f2882c;
            if (d < d2) {
                double d3 = d - d2;
                if (c0394a.f2897r) {
                    if (i == 0) {
                        m1480g2 = c0394a.m1479f(d2);
                        m1478e2 = this.f2875b[0].m1477d(d2);
                    } else {
                        m1480g2 = c0394a.m1480g(d2);
                        m1478e2 = this.f2875b[0].m1478e(d2);
                    }
                    return m1480g2 + (d3 * m1478e2);
                }
                c0394a.m1484k(d2);
                if (i == 0) {
                    m1482i = this.f2875b[0].m1481h();
                    m1476c = this.f2875b[0].m1475b();
                } else {
                    m1482i = this.f2875b[0].m1482i();
                    m1476c = this.f2875b[0].m1476c();
                }
                return m1482i + (d3 * m1476c);
            }
            if (d > c0394aArr[c0394aArr.length - 1].f2883d) {
                double d4 = c0394aArr[c0394aArr.length - 1].f2883d;
                double d5 = d - d4;
                int length = c0394aArr.length - 1;
                if (i == 0) {
                    m1480g = c0394aArr[length].m1479f(d4);
                    m1478e = this.f2875b[length].m1477d(d4);
                } else {
                    m1480g = c0394aArr[length].m1480g(d4);
                    m1478e = this.f2875b[length].m1478e(d4);
                }
                return m1480g + (d5 * m1478e);
            }
        } else {
            C0394a[] c0394aArr2 = this.f2875b;
            double d6 = c0394aArr2[0].f2882c;
            if (d < d6) {
                d = d6;
            } else if (d > c0394aArr2[c0394aArr2.length - 1].f2883d) {
                d = c0394aArr2[c0394aArr2.length - 1].f2883d;
            }
        }
        while (true) {
            C0394a[] c0394aArr3 = this.f2875b;
            if (i2 >= c0394aArr3.length) {
                return Double.NaN;
            }
            C0394a c0394a2 = c0394aArr3[i2];
            if (d <= c0394a2.f2883d) {
                if (c0394a2.f2897r) {
                    if (i == 0) {
                        return c0394a2.m1479f(d);
                    }
                    return c0394a2.m1480g(d);
                }
                c0394a2.m1484k(d);
                if (i == 0) {
                    return this.f2875b[i2].m1481h();
                }
                return this.f2875b[i2].m1482i();
            }
            i2++;
        }
    }
}
