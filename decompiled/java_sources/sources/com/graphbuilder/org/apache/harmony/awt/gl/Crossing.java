package com.graphbuilder.org.apache.harmony.awt.gl;

import java.awt.Shape;
import java.awt.geom.PathIterator;

/* loaded from: classes4.dex */
public class Crossing {
    public static final int CROSSING = 255;

    /* renamed from: a */
    public static final double f38869a = 1.0E-5d;

    /* renamed from: b */
    public static final double f38870b = 1.0E-10d;

    /* renamed from: c */
    public static final int f38871c = 254;

    /* loaded from: classes4.dex */
    public static class CubicCurve {

        /* renamed from: a */
        public double f38872a;

        /* renamed from: b */
        public double f38873b;

        /* renamed from: c */
        public double f38874c;

        /* renamed from: d */
        public double f38875d;

        /* renamed from: e */
        public double f38876e;

        /* renamed from: f */
        public double f38877f;

        /* renamed from: g */
        public double f38878g;

        /* renamed from: h */
        public double f38879h;

        /* renamed from: i */
        public double f38880i;

        /* renamed from: j */
        public double f38881j;

        /* renamed from: k */
        public double f38882k;

        /* renamed from: l */
        public double f38883l;

        /* renamed from: m */
        public double f38884m;

        /* renamed from: n */
        public double f38885n;

        public CubicCurve(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
            double d9 = d7 - d;
            this.f38872a = d9;
            double d10 = d8 - d2;
            this.f38873b = d10;
            double d11 = d3 - d;
            this.f38874c = d11;
            double d12 = d4 - d2;
            this.f38875d = d12;
            double d13 = d5 - d;
            this.f38876e = d13;
            double d14 = d6 - d2;
            this.f38877f = d14;
            double d15 = d11 + d11 + d11;
            this.f38882k = d15;
            double d16 = (((d13 + d13) + d13) - d15) - d15;
            this.f38880i = d16;
            double d17 = (d9 - d16) - d15;
            this.f38878g = d17;
            double d18 = d12 + d12 + d12;
            this.f38883l = d18;
            double d19 = (((d14 + d14) + d14) - d18) - d18;
            this.f38881j = d19;
            this.f38879h = (d10 - d19) - d18;
            this.f38884m = d17 + d17 + d17;
            this.f38885n = d16 + d16;
        }

        /* renamed from: a */
        public int m30864a(double[] dArr, int i, double[] dArr2, int i2, double d, double d2, boolean z, int i3) {
            int i4 = i3;
            int i5 = i;
            for (int i6 = 0; i6 < i2; i6++) {
                double d3 = dArr2[i6];
                if (d3 > -1.0E-5d && d3 < 1.00001d) {
                    double d4 = ((((this.f38878g * d3) + this.f38880i) * d3) + this.f38882k) * d3;
                    if (d <= d4 && d4 <= d2) {
                        int i7 = i5 + 1;
                        dArr[i5] = d3;
                        int i8 = i7 + 1;
                        dArr[i7] = d4;
                        int i9 = i8 + 1;
                        dArr[i8] = d3 * ((((this.f38879h * d3) + this.f38881j) * d3) + this.f38883l);
                        i5 = i9 + 1;
                        dArr[i9] = i4;
                        if (z) {
                            i4++;
                        }
                    }
                }
            }
            return i5;
        }

        /* renamed from: b */
        public int m30865b(double[] dArr, int i, double d, double d2) {
            double d3;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                double d4 = dArr[i3];
                if (d4 >= -1.0E-5d && d4 <= 1.00001d) {
                    if (d4 < 1.0E-5d) {
                        if (d < 0.0d) {
                            double d5 = this.f38874c;
                            if (d5 == 0.0d) {
                                double d6 = this.f38876e;
                                d5 = d6 != d5 ? d6 - d5 : this.f38872a - d6;
                            }
                            if (d5 < 0.0d) {
                                i2--;
                            }
                        }
                    } else if (d4 > 0.99999d) {
                        if (d < this.f38873b) {
                            double d7 = this.f38872a;
                            double d8 = this.f38876e;
                            if (d7 != d8) {
                                d3 = d7 - d8;
                            } else {
                                d3 = this.f38874c;
                                if (d8 != d3) {
                                    d3 = d8 - d3;
                                }
                            }
                            if (d3 > 0.0d) {
                                i2++;
                            }
                        }
                    } else if (((((this.f38879h * d4) + this.f38881j) * d4) + this.f38883l) * d4 > d2) {
                        double d9 = this.f38884m;
                        double d10 = this.f38885n;
                        double d11 = (((d4 * d9) + d10) * d4) + this.f38882k;
                        if (d11 > -1.0E-5d && d11 < 1.0E-5d) {
                            double d12 = (d4 * (d9 + d9)) + d10;
                            if (d12 >= -1.0E-5d && d12 <= 1.0E-5d) {
                                d11 = this.f38872a;
                            }
                        }
                        i2 += d11 > 0.0d ? 1 : -1;
                    }
                }
            }
            return i2;
        }

        /* renamed from: c */
        public int m30866c(double[] dArr) {
            return Crossing.solveQuad(new double[]{this.f38882k, this.f38885n, this.f38884m}, dArr);
        }

        /* renamed from: d */
        public int m30867d(double[] dArr) {
            double d = this.f38881j;
            double d2 = this.f38879h;
            return Crossing.solveQuad(new double[]{this.f38883l, d + d, d2 + d2 + d2}, dArr);
        }

        /* renamed from: e */
        public int m30868e(double[] dArr, double d) {
            return Crossing.solveCubic(new double[]{-d, this.f38882k, this.f38880i, this.f38878g}, dArr);
        }
    }

    /* loaded from: classes4.dex */
    public static class QuadCurve {

        /* renamed from: a */
        public double f38886a;

        /* renamed from: b */
        public double f38887b;

        /* renamed from: c */
        public double f38888c;

        /* renamed from: d */
        public double f38889d;

        /* renamed from: e */
        public double f38890e;

        /* renamed from: f */
        public double f38891f;

        /* renamed from: g */
        public double f38892g;

        /* renamed from: h */
        public double f38893h;

        public QuadCurve(double d, double d2, double d3, double d4, double d5, double d6) {
            double d7 = d5 - d;
            this.f38886a = d7;
            double d8 = d6 - d2;
            this.f38887b = d8;
            double d9 = d3 - d;
            this.f38888c = d9;
            double d10 = d4 - d2;
            this.f38889d = d10;
            double d11 = d9 + d9;
            this.f38892g = d11;
            this.f38890e = d7 - d11;
            double d12 = d10 + d10;
            this.f38893h = d12;
            this.f38891f = d8 - d12;
        }

        /* renamed from: a */
        public int m30869a(double[] dArr, int i, double[] dArr2, int i2, double d, double d2, boolean z, int i3) {
            int i4 = i3;
            int i5 = i;
            for (int i6 = 0; i6 < i2; i6++) {
                double d3 = dArr2[i6];
                if (d3 > -1.0E-5d && d3 < 1.00001d) {
                    double d4 = ((this.f38890e * d3) + this.f38892g) * d3;
                    if (d <= d4 && d4 <= d2) {
                        int i7 = i5 + 1;
                        dArr[i5] = d3;
                        int i8 = i7 + 1;
                        dArr[i7] = d4;
                        int i9 = i8 + 1;
                        dArr[i8] = d3 * ((this.f38891f * d3) + this.f38893h);
                        i5 = i9 + 1;
                        dArr[i9] = i4;
                        if (z) {
                            i4++;
                        }
                    }
                }
            }
            return i5;
        }

        /* renamed from: b */
        public int m30870b(double[] dArr, int i, double d, double d2) {
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                double d3 = dArr[i3];
                if (d3 >= -1.0E-5d && d3 <= 1.00001d) {
                    if (d3 < 1.0E-5d) {
                        if (d < 0.0d) {
                            double d4 = this.f38888c;
                            if (d4 == 0.0d) {
                                d4 = this.f38886a - d4;
                            }
                            if (d4 < 0.0d) {
                                i2--;
                            }
                        }
                    } else if (d3 > 0.99999d) {
                        if (d < this.f38887b) {
                            double d5 = this.f38886a;
                            double d6 = this.f38888c;
                            if (d5 != d6) {
                                d6 = d5 - d6;
                            }
                            if (d6 > 0.0d) {
                                i2++;
                            }
                        }
                    } else if (((this.f38891f * d3) + this.f38893h) * d3 > d2) {
                        double d7 = (d3 * this.f38890e) + this.f38888c;
                        if (d7 <= -1.0E-5d || d7 >= 1.0E-5d) {
                            i2 += d7 > 0.0d ? 1 : -1;
                        }
                    }
                }
            }
            return i2;
        }

        /* renamed from: c */
        public int m30871c(double[] dArr) {
            double d = this.f38890e;
            int i = 0;
            if (d != 0.0d) {
                dArr[0] = (-this.f38892g) / (d + d);
                i = 1;
            }
            double d2 = this.f38891f;
            if (d2 == 0.0d) {
                return i;
            }
            int i2 = i + 1;
            dArr[i] = (-this.f38893h) / (d2 + d2);
            return i2;
        }

        /* renamed from: d */
        public int m30872d(double[] dArr, double d) {
            return Crossing.solveQuad(new double[]{-d, this.f38892g, this.f38890e}, dArr);
        }
    }

    /* renamed from: a */
    public static int m30861a(double[] dArr, int i, double d, double d2) {
        if (i == 0) {
            return 0;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 2; i4 < i; i4 += 4) {
            double d3 = dArr[i4];
            if (d3 < d) {
                i3++;
            } else {
                if (d3 <= d2) {
                    return 255;
                }
                i2++;
            }
        }
        if (i2 == 0) {
            return 0;
        }
        if (i3 == 0) {
            return 254;
        }
        m30863c(dArr, i);
        boolean z = dArr[2] > d2;
        int i5 = 6;
        while (i5 < i) {
            boolean z2 = dArr[i5] > d2;
            if (z != z2 && dArr[i5 + 1] != dArr[i5 - 3]) {
                return 255;
            }
            i5 += 4;
            z = z2;
        }
        return 254;
    }

    /* renamed from: b */
    public static int m30862b(double[] dArr, int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = i2 + 1;
            int i5 = i4;
            while (true) {
                if (i5 >= i) {
                    dArr[i3] = dArr[i2];
                    i3++;
                    break;
                }
                if (isZero(dArr[i2] - dArr[i5])) {
                    break;
                }
                i5++;
            }
            i2 = i4;
        }
        return i3;
    }

    /* renamed from: c */
    public static void m30863c(double[] dArr, int i) {
        int i2 = 0;
        while (i2 < i - 4) {
            int i3 = i2 + 4;
            int i4 = i2;
            for (int i5 = i3; i5 < i; i5 += 4) {
                if (dArr[i4] > dArr[i5]) {
                    i4 = i5;
                }
            }
            if (i4 != i2) {
                double d = dArr[i2];
                dArr[i2] = dArr[i4];
                dArr[i4] = d;
                int i6 = i2 + 1;
                double d2 = dArr[i6];
                int i7 = i4 + 1;
                dArr[i6] = dArr[i7];
                dArr[i7] = d2;
                int i8 = i2 + 2;
                double d3 = dArr[i8];
                int i9 = i4 + 2;
                dArr[i8] = dArr[i9];
                dArr[i9] = d3;
                int i10 = i2 + 3;
                double d4 = dArr[i10];
                int i11 = i4 + 3;
                dArr[i10] = dArr[i11];
                dArr[i11] = d4;
            }
            i2 = i3;
        }
    }

    public static int crossCubic(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        if ((d9 < d && d9 < d3 && d9 < d5 && d9 < d7) || ((d9 > d && d9 > d3 && d9 > d5 && d9 > d7) || ((d10 > d2 && d10 > d4 && d10 > d6 && d10 > d8) || (d == d3 && d3 == d5 && d5 == d7)))) {
            return 0;
        }
        if (d10 < d2 && d10 < d4 && d10 < d6 && d10 < d8 && d9 != d && d9 != d7) {
            return d < d7 ? (d >= d9 || d9 >= d7) ? 0 : 1 : (d7 >= d9 || d9 >= d) ? 0 : -1;
        }
        CubicCurve cubicCurve = new CubicCurve(d, d2, d3, d4, d5, d6, d7, d8);
        double d11 = d10 - d2;
        double[] dArr = new double[3];
        return cubicCurve.m30865b(dArr, cubicCurve.m30868e(dArr, d9 - d), d11, d11);
    }

    public static int crossLine(double d, double d2, double d3, double d4, double d5, double d6) {
        if ((d5 < d && d5 < d3) || ((d5 > d && d5 > d3) || ((d6 > d2 && d6 > d4) || d == d3))) {
            return 0;
        }
        if ((d6 >= d2 || d6 >= d4) && ((d4 - d2) * (d5 - d)) / (d3 - d) <= d6 - d2) {
            return 0;
        }
        return d5 == d ? d < d3 ? 0 : -1 : d5 == d3 ? d < d3 ? 1 : 0 : d < d3 ? 1 : -1;
    }

    public static int crossPath(PathIterator pathIterator, double d, double d2) {
        double d3;
        double d4;
        double d5;
        double d6;
        char c;
        double[] dArr = new double[6];
        int i = 0;
        double d7 = 0.0d;
        int i2 = 0;
        double d8 = 0.0d;
        double d9 = 0.0d;
        double d10 = 0.0d;
        while (true) {
            if (!pathIterator.isDone()) {
                int currentSegment = pathIterator.currentSegment(dArr);
                if (currentSegment == 0) {
                    if (d8 == d7 && d9 == d10) {
                        c = 1;
                    } else {
                        c = 1;
                        i2 += crossLine(d8, d9, d7, d10, d, d2);
                    }
                    double d11 = dArr[0];
                    d10 = dArr[c];
                    d9 = d10;
                    d8 = d11;
                    d7 = d8;
                } else if (currentSegment == 1) {
                    double d12 = dArr[0];
                    double d13 = dArr[1];
                    i2 += crossLine(d8, d9, d12, d13, d, d2);
                    d8 = d12;
                    d9 = d13;
                } else if (currentSegment == 2) {
                    double d14 = dArr[0];
                    double d15 = dArr[1];
                    double d16 = dArr[2];
                    double d17 = dArr[3];
                    i2 += crossQuad(d8, d9, d14, d15, d16, d17, d, d2);
                    d8 = d16;
                    d9 = d17;
                } else if (currentSegment == 3) {
                    double d18 = dArr[0];
                    double d19 = dArr[1];
                    double d20 = dArr[2];
                    double d21 = dArr[3];
                    double d22 = dArr[4];
                    double d23 = dArr[5];
                    i2 += crossCubic(d8, d9, d18, d19, d20, d21, d22, d23, d, d2);
                    d8 = d22;
                    d9 = d23;
                } else if (currentSegment == 4 && (d9 != d10 || d8 != d7)) {
                    i2 += crossLine(d8, d9, d7, d10, d, d2);
                    d8 = d7;
                    d9 = d10;
                }
                if (d == d8 && d2 == d9) {
                    d3 = d7;
                    d4 = d8;
                    d5 = d10;
                    d6 = d5;
                    break;
                }
                pathIterator.next();
            } else {
                d3 = d7;
                d4 = d8;
                d5 = d9;
                d6 = d10;
                i = i2;
                break;
            }
        }
        return d5 != d6 ? i + crossLine(d4, d5, d3, d6, d, d2) : i;
    }

    public static int crossQuad(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        if ((d7 < d && d7 < d3 && d7 < d5) || ((d7 > d && d7 > d3 && d7 > d5) || ((d8 > d2 && d8 > d4 && d8 > d6) || (d == d3 && d3 == d5)))) {
            return 0;
        }
        if (d8 < d2 && d8 < d4 && d8 < d6 && d7 != d && d7 != d5) {
            return d < d5 ? (d >= d7 || d7 >= d5) ? 0 : 1 : (d5 >= d7 || d7 >= d) ? 0 : -1;
        }
        QuadCurve quadCurve = new QuadCurve(d, d2, d3, d4, d5, d6);
        double d9 = d8 - d2;
        double[] dArr = new double[3];
        return quadCurve.m30870b(dArr, quadCurve.m30872d(dArr, d7 - d), d9, d9);
    }

    public static int crossShape(Shape shape, double d, double d2) {
        if (shape.getBounds2D().contains(d, d2)) {
            return crossPath(shape.getPathIterator(null), d, d2);
        }
        return 0;
    }

    public static int intersectCubic(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
        if ((d11 < d && d11 < d3 && d11 < d5 && d11 < d7) || ((d9 > d && d9 > d3 && d9 > d5 && d9 > d7) || (d10 > d2 && d10 > d4 && d10 > d6 && d10 > d8))) {
            return 0;
        }
        if (d12 < d2 && d12 < d4 && d12 < d6 && d12 < d8 && d9 != d && d9 != d7) {
            return d < d7 ? (d >= d9 || d9 >= d7) ? 0 : 1 : (d7 >= d9 || d9 >= d) ? 0 : -1;
        }
        CubicCurve cubicCurve = new CubicCurve(d, d2, d3, d4, d5, d6, d7, d8);
        double d13 = d9 - d;
        double d14 = d10 - d2;
        double d15 = d11 - d;
        double d16 = d12 - d2;
        double[] dArr = new double[3];
        double[] dArr2 = new double[3];
        int m30868e = cubicCurve.m30868e(dArr, d13);
        int m30868e2 = cubicCurve.m30868e(dArr2, d15);
        if (m30868e == 0 && m30868e2 == 0) {
            return 0;
        }
        double d17 = d13 - 1.0E-5d;
        double d18 = d15 + 1.0E-5d;
        double[] dArr3 = new double[40];
        int m30864a = cubicCurve.m30864a(dArr3, cubicCurve.m30864a(dArr3, cubicCurve.m30864a(dArr3, cubicCurve.m30864a(dArr3, 0, dArr, m30868e, d17, d18, false, 0), dArr2, m30868e2, d17, d18, false, 1), dArr2, cubicCurve.m30866c(dArr2), d17, d18, true, 2), dArr2, cubicCurve.m30867d(dArr2), d17, d18, true, 4);
        if (d9 < d && d < d11) {
            int i = m30864a + 1;
            dArr3[m30864a] = 0.0d;
            int i2 = i + 1;
            dArr3[i] = 0.0d;
            int i3 = i2 + 1;
            dArr3[i2] = 0.0d;
            m30864a = i3 + 1;
            dArr3[i3] = 6.0d;
        }
        if (d9 < d7 && d7 < d11) {
            int i4 = m30864a + 1;
            dArr3[m30864a] = 1.0d;
            int i5 = i4 + 1;
            dArr3[i4] = cubicCurve.f38872a;
            int i6 = i5 + 1;
            dArr3[i5] = cubicCurve.f38873b;
            m30864a = i6 + 1;
            dArr3[i6] = 7.0d;
        }
        int m30861a = m30861a(dArr3, m30864a, d14, d16);
        return m30861a != 254 ? m30861a : cubicCurve.m30865b(dArr, m30868e, d14, d16);
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int intersectLine(double r12, double r14, double r16, double r18, double r20, double r22, double r24, double r26) {
        /*
            int r0 = (r24 > r12 ? 1 : (r24 == r12 ? 0 : -1))
            r1 = 0
            if (r0 >= 0) goto L9
            int r0 = (r24 > r16 ? 1 : (r24 == r16 ? 0 : -1))
            if (r0 < 0) goto L19
        L9:
            int r0 = (r20 > r12 ? 1 : (r20 == r12 ? 0 : -1))
            if (r0 <= 0) goto L11
            int r2 = (r20 > r16 ? 1 : (r20 == r16 ? 0 : -1))
            if (r2 > 0) goto L19
        L11:
            int r2 = (r22 > r14 ? 1 : (r22 == r14 ? 0 : -1))
            if (r2 <= 0) goto L1a
            int r2 = (r22 > r18 ? 1 : (r22 == r18 ? 0 : -1))
            if (r2 <= 0) goto L1a
        L19:
            return r1
        L1a:
            int r2 = (r26 > r14 ? 1 : (r26 == r14 ? 0 : -1))
            if (r2 >= 0) goto L23
            int r2 = (r26 > r18 ? 1 : (r26 == r18 ? 0 : -1))
            if (r2 >= 0) goto L23
            goto L6a
        L23:
            int r2 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            r3 = 255(0xff, float:3.57E-43)
            if (r2 != 0) goto L2a
            return r3
        L2a:
            int r2 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r2 >= 0) goto L40
            int r2 = (r12 > r20 ? 1 : (r12 == r20 ? 0 : -1))
            if (r2 >= 0) goto L35
            r4 = r20
            goto L36
        L35:
            r4 = r12
        L36:
            int r2 = (r16 > r24 ? 1 : (r16 == r24 ? 0 : -1))
            if (r2 >= 0) goto L3d
            r6 = r16
            goto L4e
        L3d:
            r6 = r24
            goto L4e
        L40:
            int r2 = (r16 > r20 ? 1 : (r16 == r20 ? 0 : -1))
            if (r2 >= 0) goto L47
            r4 = r20
            goto L49
        L47:
            r4 = r16
        L49:
            int r2 = (r12 > r24 ? 1 : (r12 == r24 ? 0 : -1))
            if (r2 >= 0) goto L3d
            r6 = r12
        L4e:
            double r8 = r18 - r14
            double r10 = r16 - r12
            double r8 = r8 / r10
            double r4 = r4 - r12
            double r4 = r4 * r8
            double r4 = r4 + r14
            double r6 = r6 - r12
            double r8 = r8 * r6
            double r8 = r8 + r14
            int r2 = (r4 > r22 ? 1 : (r4 == r22 ? 0 : -1))
            if (r2 >= 0) goto L62
            int r2 = (r8 > r22 ? 1 : (r8 == r22 ? 0 : -1))
            if (r2 >= 0) goto L62
            return r1
        L62:
            int r2 = (r4 > r26 ? 1 : (r4 == r26 ? 0 : -1))
            if (r2 <= 0) goto L9c
            int r2 = (r8 > r26 ? 1 : (r8 == r26 ? 0 : -1))
            if (r2 <= 0) goto L9c
        L6a:
            int r2 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r2 != 0) goto L6f
            return r1
        L6f:
            r2 = -1
            if (r0 != 0) goto L79
            int r0 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r0 >= 0) goto L77
            goto L78
        L77:
            r1 = r2
        L78:
            return r1
        L79:
            int r0 = (r20 > r16 ? 1 : (r20 == r16 ? 0 : -1))
            r3 = 1
            if (r0 != 0) goto L84
            int r0 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r0 >= 0) goto L83
            r1 = r3
        L83:
            return r1
        L84:
            int r0 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r0 >= 0) goto L92
            int r0 = (r12 > r20 ? 1 : (r12 == r20 ? 0 : -1))
            if (r0 >= 0) goto L91
            int r0 = (r20 > r16 ? 1 : (r20 == r16 ? 0 : -1))
            if (r0 >= 0) goto L91
            r1 = r3
        L91:
            return r1
        L92:
            int r0 = (r16 > r20 ? 1 : (r16 == r20 ? 0 : -1))
            if (r0 >= 0) goto L9b
            int r0 = (r20 > r12 ? 1 : (r20 == r12 ? 0 : -1))
            if (r0 >= 0) goto L9b
            r1 = r2
        L9b:
            return r1
        L9c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.graphbuilder.org.apache.harmony.awt.gl.Crossing.intersectLine(double, double, double, double, double, double, double, double):int");
    }

    public static int intersectPath(PathIterator pathIterator, double d, double d2, double d3, double d4) {
        char c;
        int intersectLine;
        double d5;
        double[] dArr = new double[6];
        double d6 = d + d3;
        double d7 = d2 + d4;
        double d8 = 0.0d;
        double d9 = 0.0d;
        double d10 = 0.0d;
        double d11 = 0.0d;
        int i = 0;
        while (true) {
            int i2 = 255;
            if (pathIterator.isDone()) {
                if (d9 == d11) {
                    return i;
                }
                int intersectLine2 = intersectLine(d8, d9, d10, d11, d, d2, d6, d7);
                if (intersectLine2 == 255) {
                    return 255;
                }
                return i + intersectLine2;
            }
            int currentSegment = pathIterator.currentSegment(dArr);
            if (currentSegment == 0) {
                if (d8 == d10 && d9 == d11) {
                    c = 1;
                    intersectLine = 0;
                } else {
                    c = 1;
                    intersectLine = intersectLine(d8, d9, d10, d11, d, d2, d6, d7);
                }
                d10 = dArr[0];
                d11 = dArr[c];
                i2 = 255;
                d9 = d11;
                d5 = d10;
            } else if (currentSegment == 1) {
                double d12 = dArr[0];
                double d13 = dArr[1];
                intersectLine = intersectLine(d8, d9, d12, d13, d, d2, d6, d7);
                d9 = d13;
                d5 = d10;
                i2 = 255;
                d10 = d12;
            } else if (currentSegment != 2) {
                if (currentSegment == 3) {
                    double d14 = dArr[0];
                    double d15 = dArr[1];
                    double d16 = dArr[2];
                    double d17 = dArr[3];
                    double d18 = dArr[4];
                    double d19 = dArr[5];
                    intersectLine = intersectCubic(d8, d9, d14, d15, d16, d17, d18, d19, d, d2, d6, d7);
                    d5 = d10;
                    d10 = d18;
                    d9 = d19;
                } else if (currentSegment != 4) {
                    d5 = d10;
                    d10 = d8;
                    intersectLine = 0;
                } else {
                    intersectLine = (d9 == d11 && d8 == d10) ? 0 : intersectLine(d8, d9, d10, d11, d, d2, d6, d7);
                    d5 = d10;
                    d9 = d11;
                }
                i2 = 255;
            } else {
                double d20 = dArr[0];
                double d21 = dArr[1];
                double d22 = dArr[2];
                double d23 = dArr[3];
                intersectLine = intersectQuad(d8, d9, d20, d21, d22, d23, d, d2, d6, d7);
                d9 = d23;
                d5 = d10;
                i2 = 255;
                d10 = d22;
            }
            if (intersectLine == i2) {
                return i2;
            }
            i += intersectLine;
            pathIterator.next();
            d8 = d10;
            d10 = d5;
        }
    }

    public static int intersectQuad(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        if ((d9 < d && d9 < d3 && d9 < d5) || ((d7 > d && d7 > d3 && d7 > d5) || (d8 > d2 && d8 > d4 && d8 > d6))) {
            return 0;
        }
        if (d10 < d2 && d10 < d4 && d10 < d6 && d7 != d && d7 != d5) {
            return d < d5 ? (d >= d7 || d7 >= d5) ? 0 : 1 : (d5 >= d7 || d7 >= d) ? 0 : -1;
        }
        QuadCurve quadCurve = new QuadCurve(d, d2, d3, d4, d5, d6);
        double d11 = d7 - d;
        double d12 = d8 - d2;
        double d13 = d9 - d;
        double d14 = d10 - d2;
        double[] dArr = new double[3];
        double[] dArr2 = new double[3];
        int m30872d = quadCurve.m30872d(dArr, d11);
        int m30872d2 = quadCurve.m30872d(dArr2, d13);
        if (m30872d == 0 && m30872d2 == 0) {
            return 0;
        }
        double d15 = d11 - 1.0E-5d;
        double d16 = d13 + 1.0E-5d;
        double[] dArr3 = new double[28];
        int m30869a = quadCurve.m30869a(dArr3, quadCurve.m30869a(dArr3, quadCurve.m30869a(dArr3, 0, dArr, m30872d, d15, d16, false, 0), dArr2, m30872d2, d15, d16, false, 1), dArr2, quadCurve.m30871c(dArr2), d15, d16, true, 2);
        if (d7 < d && d < d9) {
            int i = m30869a + 1;
            dArr3[m30869a] = 0.0d;
            int i2 = i + 1;
            dArr3[i] = 0.0d;
            int i3 = i2 + 1;
            dArr3[i2] = 0.0d;
            m30869a = i3 + 1;
            dArr3[i3] = 4.0d;
        }
        if (d7 < d5 && d5 < d9) {
            int i4 = m30869a + 1;
            dArr3[m30869a] = 1.0d;
            int i5 = i4 + 1;
            dArr3[i4] = quadCurve.f38886a;
            int i6 = i5 + 1;
            dArr3[i5] = quadCurve.f38887b;
            m30869a = i6 + 1;
            dArr3[i6] = 5.0d;
        }
        int m30861a = m30861a(dArr3, m30869a, d12, d14);
        return m30861a != 254 ? m30861a : quadCurve.m30870b(dArr, m30872d, d12, d14);
    }

    public static int intersectShape(Shape shape, double d, double d2, double d3, double d4) {
        if (shape.getBounds2D().intersects(d, d2, d3, d4)) {
            return intersectPath(shape.getPathIterator(null), d, d2, d3, d4);
        }
        return 0;
    }

    public static boolean isInsideEvenOdd(int i) {
        return (i & 1) != 0;
    }

    public static boolean isInsideNonZero(int i) {
        return i != 0;
    }

    public static boolean isZero(double d) {
        return -1.0E-5d < d && d < 1.0E-5d;
    }

    public static int solveCubic(double[] dArr, double[] dArr2) {
        int i = 3;
        double d = dArr[3];
        if (d == 0.0d) {
            return solveQuad(dArr, dArr2);
        }
        double d2 = dArr[2] / d;
        double d3 = dArr[1] / d;
        double d4 = dArr[0] / d;
        double d5 = ((d2 * d2) - (d3 * 3.0d)) / 9.0d;
        double d6 = (((((d2 * 2.0d) * d2) * d2) - ((9.0d * d2) * d3)) + (d4 * 27.0d)) / 54.0d;
        double d7 = d5 * d5 * d5;
        double d8 = d6 * d6;
        double d9 = (-d2) / 3.0d;
        if (d8 < d7) {
            double acos = Math.acos(d6 / Math.sqrt(d7)) / 3.0d;
            double sqrt = Math.sqrt(d5) * (-2.0d);
            dArr2[0] = (Math.cos(acos) * sqrt) + d9;
            dArr2[1] = (Math.cos(acos + 2.0943951023931953d) * sqrt) + d9;
            dArr2[2] = (sqrt * Math.cos(acos - 2.0943951023931953d)) + d9;
        } else {
            double d10 = d8 - d7;
            double pow = Math.pow(Math.sqrt(d10) + Math.abs(d6), 0.3333333333333333d);
            if (d6 > 0.0d) {
                pow = -pow;
            }
            if (-1.0E-10d >= pow || pow >= 1.0E-10d) {
                double d11 = pow + (d5 / pow);
                dArr2[0] = d11 + d9;
                if (-1.0E-10d < d10 && d10 < 1.0E-10d) {
                    dArr2[1] = ((-d11) / 2.0d) + d9;
                    i = 2;
                }
            } else {
                dArr2[0] = d9;
            }
            i = 1;
        }
        return m30862b(dArr2, i);
    }

    public static int solveQuad(double[] dArr, double[] dArr2) {
        int i = 2;
        double d = dArr[2];
        double d2 = dArr[1];
        double d3 = dArr[0];
        if (d != 0.0d) {
            double d4 = (d2 * d2) - ((4.0d * d) * d3);
            if (d4 < 0.0d) {
                return 0;
            }
            double sqrt = Math.sqrt(d4);
            double d5 = -d2;
            double d6 = d * 2.0d;
            dArr2[0] = (d5 + sqrt) / d6;
            if (sqrt != 0.0d) {
                dArr2[1] = (d5 - sqrt) / d6;
                return m30862b(dArr2, i);
            }
        } else {
            if (d2 == 0.0d) {
                return -1;
            }
            dArr2[0] = (-d3) / d2;
        }
        i = 1;
        return m30862b(dArr2, i);
    }
}
