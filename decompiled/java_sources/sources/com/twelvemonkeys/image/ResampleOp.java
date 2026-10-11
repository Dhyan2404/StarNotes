package com.twelvemonkeys.image;

import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class ResampleOp implements BufferedImageOp {
    public static final int FILTER_BLACKMAN = 7;
    public static final int FILTER_BLACKMAN_BESSEL = 14;
    public static final int FILTER_BLACKMAN_SINC = 15;
    public static final int FILTER_BOX = 2;
    public static final int FILTER_CATROM = 11;
    public static final int FILTER_CUBIC = 10;
    public static final int FILTER_GAUSSIAN = 8;
    public static final int FILTER_HAMMING = 6;
    public static final int FILTER_HANNING = 5;
    public static final int FILTER_HERMITE = 4;
    public static final int FILTER_LANCZOS = 13;
    public static final int FILTER_MITCHELL = 12;
    public static final int FILTER_POINT = 1;
    public static final int FILTER_QUADRATIC = 9;
    public static final int FILTER_TRIANGLE = 3;
    public static final int FILTER_UNDEFINED = 0;
    public static final RenderingHints.Key KEY_RESAMPLE_INTERPOLATION;
    public static final Object VALUE_INTERPOLATION_BLACKMAN;
    public static final Object VALUE_INTERPOLATION_BLACKMAN_BESSEL;
    public static final Object VALUE_INTERPOLATION_BLACKMAN_SINC;
    public static final Object VALUE_INTERPOLATION_BOX;
    public static final Object VALUE_INTERPOLATION_CATROM;
    public static final Object VALUE_INTERPOLATION_CUBIC;
    public static final Object VALUE_INTERPOLATION_GAUSSIAN;
    public static final Object VALUE_INTERPOLATION_HAMMING;
    public static final Object VALUE_INTERPOLATION_HANNING;
    public static final Object VALUE_INTERPOLATION_HERMITE;
    public static final Object VALUE_INTERPOLATION_LANCZOS;
    public static final Object VALUE_INTERPOLATION_MITCHELL;
    public static final Object VALUE_INTERPOLATION_POINT;
    public static final Object VALUE_INTERPOLATION_QUADRATIC;
    public static final Object VALUE_INTERPOLATION_TRIANGLE;

    /* renamed from: d */
    public static final double f93965d = 0.3333333333333333d;

    /* renamed from: e */
    public static final double f93966e = 0.3333333333333333d;

    /* renamed from: f */
    public static final double f93967f = 0.8888888888888888d;

    /* renamed from: g */
    public static final double f93968g = -2.0d;

    /* renamed from: h */
    public static final double f93969h = 1.1666666666666667d;

    /* renamed from: i */
    public static final double f93970i = 1.7777777777777777d;

    /* renamed from: j */
    public static final double f93971j = -3.3333333333333335d;

    /* renamed from: k */
    public static final double f93972k = 2.0d;

    /* renamed from: l */
    public static final double f93973l = -0.3888888888888889d;

    /* renamed from: a */
    public int f93974a;

    /* renamed from: b */
    public int f93975b;

    /* renamed from: c */
    public int f93976c;

    /* renamed from: com.twelvemonkeys.image.ResampleOp$a */
    /* loaded from: classes10.dex */
    public static class C16919a implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            return ResampleOp.m60390g(d / mo60403b()) * ResampleOp.m60388e(d);
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 3.2383d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$b */
    /* loaded from: classes10.dex */
    public static class C16920b implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            return ResampleOp.m60390g(d / mo60403b()) * ResampleOp.m60398q(d);
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 4.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$c */
    /* loaded from: classes10.dex */
    public static class C16921c implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            return ResampleOp.m60390g(d);
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 1.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$e */
    /* loaded from: classes10.dex */
    public static class C16923e implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            if (d < 0.0d) {
                d = -d;
            }
            if (d < 1.0d) {
                return ((d * d * ((d * 3.0d) - 5.0d)) + 2.0d) * 0.5d;
            }
            if (d < 2.0d) {
                return ((d * (((5.0d - d) * d) - 8.0d)) + 4.0d) * 0.5d;
            }
            return 0.0d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 2.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$f */
    /* loaded from: classes10.dex */
    public class C16924f {

        /* renamed from: a */
        public int f93978a;

        /* renamed from: b */
        public double f93979b;

        public C16924f() {
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$g */
    /* loaded from: classes10.dex */
    public class C16925g {

        /* renamed from: a */
        public int f93981a;

        /* renamed from: b */
        public C16924f[] f93982b;

        public C16925g() {
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$h */
    /* loaded from: classes10.dex */
    public static class C16926h implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            if (d < 0.0d) {
                d = -d;
            }
            if (d < 1.0d) {
                double d2 = d * d;
                return (((0.5d * d2) * d) - d2) + 0.6666666666666666d;
            }
            if (d >= 2.0d) {
                return 0.0d;
            }
            double d3 = 2.0d - d;
            return d3 * d3 * d3 * 0.16666666666666666d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 2.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$i */
    /* loaded from: classes10.dex */
    public static class C16927i implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            return Math.exp((-2.0d) * d * d) * Math.sqrt(0.6366197723675814d);
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 1.25d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$j */
    /* loaded from: classes10.dex */
    public static class C16928j implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            return (Math.cos(d * 3.141592653589793d) * 0.46d) + 0.54d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 1.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$k */
    /* loaded from: classes10.dex */
    public static class C16929k implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            return (Math.cos(d * 3.141592653589793d) * 0.5d) + 0.5d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 1.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$l */
    /* loaded from: classes10.dex */
    public static class C16930l implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            if (d < 0.0d) {
                d = -d;
            }
            if (d < 1.0d) {
                return (((2.0d * d) - 3.0d) * d * d) + 1.0d;
            }
            return 0.0d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 1.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$m */
    /* loaded from: classes10.dex */
    public interface InterfaceC16931m {
        /* renamed from: a */
        double mo60402a(double d);

        /* renamed from: b */
        double mo60403b();
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$n */
    /* loaded from: classes10.dex */
    public static class C16932n extends RenderingHints.Key {

        /* renamed from: b */
        public static int f93984b = 10000;

        /* renamed from: a */
        public final String f93985a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C16932n(java.lang.String r3) {
            /*
                r2 = this;
                int r0 = com.twelvemonkeys.image.ResampleOp.C16932n.f93984b
                int r1 = r0 + 1
                com.twelvemonkeys.image.ResampleOp.C16932n.f93984b = r1
                r2.<init>(r0)
                r2.f93985a = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.image.ResampleOp.C16932n.<init>(java.lang.String):void");
        }

        @Override // java.awt.RenderingHints.Key
        public boolean isCompatibleValue(Object obj) {
            return (obj instanceof C16938t) && ((C16938t) obj).m60405b(this);
        }

        public String toString() {
            return this.f93985a;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$o */
    /* loaded from: classes10.dex */
    public static class C16933o implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            if (d < 0.0d) {
                d = -d;
            }
            if (d < 3.0d) {
                return ResampleOp.m60398q(d) * ResampleOp.m60398q(d / 3.0d);
            }
            return 0.0d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 3.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$p */
    /* loaded from: classes10.dex */
    public static class C16934p implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            double d2;
            if (d < -2.0d) {
                return 0.0d;
            }
            if (d < -1.0d) {
                return 1.7777777777777777d - (d * ((-3.3333333333333335d) - (d * (2.0d - (d * (-0.3888888888888889d))))));
            }
            if (d < 0.0d) {
                d2 = d * d * ((-2.0d) - (d * 1.1666666666666667d));
            } else {
                if (d >= 1.0d) {
                    if (d < 2.0d) {
                        return (((((d * (-0.3888888888888889d)) + 2.0d) * d) - 3.3333333333333335d) * d) + 1.7777777777777777d;
                    }
                    return 0.0d;
                }
                d2 = d * d * ((d * 1.1666666666666667d) - 2.0d);
            }
            return d2 + 0.8888888888888888d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 2.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$q */
    /* loaded from: classes10.dex */
    public static class C16935q extends C16922d {
        public C16935q() {
            super(0.0d);
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$r */
    /* loaded from: classes10.dex */
    public static class C16936r implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            if (d < 0.0d) {
                d = -d;
            }
            if (d < 0.5d) {
                return 0.75d - (d * d);
            }
            if (d >= 1.5d) {
                return 0.0d;
            }
            double d2 = d - 1.5d;
            return d2 * d2 * 0.5d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 1.5d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$s */
    /* loaded from: classes10.dex */
    public static class C16937s implements InterfaceC16931m {
        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            if (d < 0.0d) {
                d = -d;
            }
            if (d < 1.0d) {
                return 1.0d - d;
            }
            return 0.0d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return 1.0d;
        }
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$t */
    /* loaded from: classes10.dex */
    public static final class C16938t {

        /* renamed from: a */
        public final RenderingHints.Key f93986a;

        /* renamed from: b */
        public final String f93987b;

        /* renamed from: c */
        public final int f93988c;

        public C16938t(RenderingHints.Key key, String str, int i) {
            this.f93986a = key;
            this.f93987b = str;
            this.f93988c = ResampleOp.m60399r(i);
        }

        /* renamed from: a */
        public int m60404a() {
            return this.f93988c;
        }

        /* renamed from: b */
        public boolean m60405b(C16932n c16932n) {
            return c16932n == this.f93986a;
        }

        public String toString() {
            return this.f93987b;
        }
    }

    static {
        C16932n c16932n = new C16932n("ResampleInterpolation");
        KEY_RESAMPLE_INTERPOLATION = c16932n;
        VALUE_INTERPOLATION_POINT = new C16938t(c16932n, "Point", 1);
        VALUE_INTERPOLATION_BOX = new C16938t(c16932n, "Box", 2);
        VALUE_INTERPOLATION_TRIANGLE = new C16938t(c16932n, "Triangle", 3);
        VALUE_INTERPOLATION_HERMITE = new C16938t(c16932n, "Hermite", 4);
        VALUE_INTERPOLATION_HANNING = new C16938t(c16932n, "Hanning", 5);
        VALUE_INTERPOLATION_HAMMING = new C16938t(c16932n, "Hamming", 6);
        VALUE_INTERPOLATION_BLACKMAN = new C16938t(c16932n, "Blackman", 7);
        VALUE_INTERPOLATION_GAUSSIAN = new C16938t(c16932n, "Gaussian", 8);
        VALUE_INTERPOLATION_QUADRATIC = new C16938t(c16932n, "Quadratic", 9);
        VALUE_INTERPOLATION_CUBIC = new C16938t(c16932n, "Cubic", 10);
        VALUE_INTERPOLATION_CATROM = new C16938t(c16932n, "Catrom", 11);
        VALUE_INTERPOLATION_MITCHELL = new C16938t(c16932n, "Mitchell", 12);
        VALUE_INTERPOLATION_LANCZOS = new C16938t(c16932n, "Lanczos", 13);
        VALUE_INTERPOLATION_BLACKMAN_BESSEL = new C16938t(c16932n, "Blackman-Bessel", 14);
        VALUE_INTERPOLATION_BLACKMAN_SINC = new C16938t(c16932n, "Blackman-Sinc", 15);
    }

    public ResampleOp(int i, int i2) {
        this(i, i2, 0);
    }

    /* renamed from: e */
    public static double m60388e(double d) {
        if (d == 0.0d) {
            return 0.7853981633974483d;
        }
        return m60389f(3.141592653589793d * d) / (d * 2.0d);
    }

    /* renamed from: f */
    public static double m60389f(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        double d2 = d < 0.0d ? -d : d;
        if (d2 < 8.0d) {
            return d * m60394l(d2);
        }
        double sqrt = Math.sqrt(2.0d / (3.141592653589793d * d2)) * ((m60395m(d2) * ((1.0d / Math.sqrt(2.0d)) * (Math.sin(d2) - Math.cos(d2)))) - (((8.0d / d2) * m60396n(d2)) * (((-1.0d) / Math.sqrt(2.0d)) * (Math.sin(d2) + Math.cos(d2)))));
        return d < 0.0d ? -sqrt : sqrt;
    }

    /* renamed from: g */
    public static double m60390g(double d) {
        return (Math.cos(3.141592653589793d * d) * 0.5d) + 0.42d + (Math.cos(d * 6.283185307179586d) * 0.08d);
    }

    /* renamed from: i */
    public static InterfaceC16931m m60391i(int i) {
        if (i == 0) {
            i = 13;
        }
        switch (i) {
            case 1:
                return new C16935q();
            case 2:
                return new C16922d();
            case 3:
                return new C16937s();
            case 4:
                return new C16930l();
            case 5:
                return new C16929k();
            case 6:
                return new C16928j();
            case 7:
                return new C16921c();
            case 8:
                return new C16927i();
            case 9:
                return new C16936r();
            case 10:
                return new C16926h();
            case 11:
                return new C16923e();
            case 12:
                return new C16934p();
            case 13:
                return new C16933o();
            case 14:
                return new C16919a();
            case 15:
                return new C16920b();
            default:
                throw new IllegalStateException("Unknown filter type: " + i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0099 A[SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.BufferedImage m60392j(java.awt.image.BufferedImage r16, java.awt.image.BufferedImage r17, int r18, int r19, int r20) {
        /*
            r0 = r18
            r1 = r19
            r2 = r20
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 <= r5) goto L4b
            int r6 = r16.getWidth()
            if (r0 < r6) goto L17
            int r6 = r16.getHeight()
            if (r1 >= r6) goto L4b
        L17:
            r6 = r0
        L18:
            int r7 = r16.getWidth()
            int r7 = r7 / r4
            if (r6 >= r7) goto L22
            int r6 = r6 * 2
            goto L18
        L22:
            r7 = r1
        L23:
            int r8 = r16.getHeight()
            int r8 = r8 / r4
            if (r7 >= r8) goto L2d
            int r7 = r7 * 2
            goto L23
        L2d:
            double r8 = (double) r6
            int r6 = r16.getWidth()
            double r10 = (double) r6
            double r8 = r8 / r10
            double r6 = (double) r7
            int r10 = r16.getHeight()
            double r10 = (double) r10
            double r6 = r6 / r10
            java.awt.geom.AffineTransform r6 = java.awt.geom.AffineTransform.getScaleInstance(r8, r6)
            com.twelvemonkeys.image.AffineTransformOp r7 = new com.twelvemonkeys.image.AffineTransformOp
            r7.<init>(r6, r4)
            r6 = r16
            java.awt.image.BufferedImage r6 = r7.filter(r6, r3)
            goto L4d
        L4b:
            r6 = r16
        L4d:
            double r7 = (double) r0
            int r0 = r6.getWidth()
            double r9 = (double) r0
            double r7 = r7 / r9
            double r0 = (double) r1
            int r9 = r6.getHeight()
            double r9 = (double) r9
            double r0 = r0 / r9
            if (r2 <= r5) goto L9e
            r5 = r3
        L5e:
            r9 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 < 0) goto L68
            int r11 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r11 >= 0) goto L9e
        L68:
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            r12 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r14 = 4611686018427387904(0x4000000000000000, double:2.0)
            if (r11 < 0) goto L7c
            java.awt.geom.AffineTransform r5 = java.awt.geom.AffineTransform.getScaleInstance(r12, r9)
            com.twelvemonkeys.image.AffineTransformOp r11 = new com.twelvemonkeys.image.AffineTransformOp
            r11.<init>(r5, r4)
            double r0 = r0 * r14
        L7a:
            r5 = r11
            goto L8d
        L7c:
            int r11 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r11 < 0) goto L8b
            java.awt.geom.AffineTransform r5 = java.awt.geom.AffineTransform.getScaleInstance(r9, r12)
            com.twelvemonkeys.image.AffineTransformOp r11 = new com.twelvemonkeys.image.AffineTransformOp
            r11.<init>(r5, r4)
            double r7 = r7 * r14
            goto L7a
        L8b:
            double r7 = r7 * r14
            double r0 = r0 * r14
        L8d:
            if (r5 != 0) goto L99
            java.awt.geom.AffineTransform r5 = java.awt.geom.AffineTransform.getScaleInstance(r9, r9)
            com.twelvemonkeys.image.AffineTransformOp r9 = new com.twelvemonkeys.image.AffineTransformOp
            r9.<init>(r5, r4)
            r5 = r9
        L99:
            java.awt.image.BufferedImage r6 = r5.filter(r6, r3)
            goto L5e
        L9e:
            java.awt.geom.AffineTransform r0 = java.awt.geom.AffineTransform.getScaleInstance(r7, r0)
            com.twelvemonkeys.image.AffineTransformOp r1 = new com.twelvemonkeys.image.AffineTransformOp
            r1.<init>(r0, r2)
            r0 = r17
            java.awt.image.BufferedImage r0 = r1.filter(r6, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.image.ResampleOp.m60392j(java.awt.image.BufferedImage, java.awt.image.BufferedImage, int, int, int):java.awt.image.BufferedImage");
    }

    /* renamed from: k */
    public static int m60393k(RenderingHints renderingHints) {
        if (renderingHints == null) {
            return 0;
        }
        RenderingHints.Key key = KEY_RESAMPLE_INTERPOLATION;
        if (renderingHints.containsKey(key)) {
            Object obj = renderingHints.get(key);
            if (key.isCompatibleValue(obj)) {
                if (obj != null) {
                    return ((C16938t) obj).m60404a();
                }
                return 0;
            }
            throw new IllegalArgumentException(obj + " incompatible with key " + key);
        }
        Object obj2 = RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR;
        Object obj3 = RenderingHints.KEY_INTERPOLATION;
        if (obj2.equals(renderingHints.get(obj3))) {
            return 1;
        }
        if (!renderingHints.containsKey(obj3) && (RenderingHints.VALUE_RENDER_SPEED.equals(renderingHints.get(RenderingHints.KEY_RENDERING)) || RenderingHints.VALUE_COLOR_RENDER_SPEED.equals(renderingHints.get(RenderingHints.KEY_COLOR_RENDERING)))) {
            return 1;
        }
        if (RenderingHints.VALUE_INTERPOLATION_BILINEAR.equals(renderingHints.get(obj3))) {
            return 3;
        }
        if (RenderingHints.VALUE_INTERPOLATION_BICUBIC.equals(renderingHints.get(obj3))) {
            return 9;
        }
        return (RenderingHints.VALUE_RENDER_QUALITY.equals(renderingHints.get(RenderingHints.KEY_RENDERING)) || RenderingHints.VALUE_COLOR_RENDER_QUALITY.equals(renderingHints.get(RenderingHints.KEY_COLOR_RENDERING))) ? 12 : 0;
    }

    /* renamed from: l */
    public static double m60394l(double d) {
        double[] dArr = {5.811993540016061E20d, -6.672106568924916E19d, 2.3164335806340024E18d, -3.588817569910106E16d, 2.9087952638347756E14d, -1.3229834803321265E12d, 3.4132341823017006E9d, -4695753.530642996d, 2701.1227108923235d};
        double[] dArr2 = {1.1623987080032122E21d, 1.185770712190321E19d, 6.0920613989175216E16d, 2.0816612213076075E14d, 5.2437102621676495E11d, 1.013863514358674E9d, 1501793.5949985855d, 1606.9315734814877d, 1.0d};
        double d2 = dArr[8];
        double d3 = dArr2[8];
        for (int i = 7; i >= 0; i--) {
            d2 = (d2 * d * d) + dArr[i];
            d3 = (d3 * d * d) + dArr2[i];
        }
        return d2 / d3;
    }

    /* renamed from: m */
    public static double m60395m(double d) {
        double[] dArr = {35224.66491336798d, 62758.84524716128d, 31353.963110915956d, 4985.4832060594335d, 211.15291828539623d, 1.2571716929145342d};
        double[] dArr2 = {35224.66491336798d, 62694.34695935605d, 31240.406381904104d, 4930.396490181089d, 203.07751891347593d, 1.0d};
        double d2 = dArr[5];
        double d3 = dArr2[5];
        for (int i = 4; i >= 0; i--) {
            double d4 = 8.0d / d;
            d2 = (d2 * d4 * d4) + dArr[i];
            d3 = (d3 * d4 * d4) + dArr2[i];
        }
        return d2 / d3;
    }

    /* renamed from: n */
    public static double m60396n(double d) {
        double[] dArr = {351.17519143035526d, 721.0391804904475d, 425.98730116544425d, 83.18989576738508d, 4.568171629551227d, 0.03532840052740124d};
        double[] dArr2 = {7491.737417180912d, 15414.177339265098d, 9152.231701516992d, 1811.1867005523513d, 103.81875854621337d, 1.0d};
        double d2 = dArr[5];
        double d3 = dArr2[5];
        for (int i = 4; i >= 0; i--) {
            double d4 = 8.0d / d;
            d2 = (d2 * d4 * d4) + dArr[i];
            d3 = (d3 * d4 * d4) + dArr2[i];
        }
        return d2 / d3;
    }

    /* renamed from: p */
    public static int m60397p(double d) {
        int i = (int) d;
        double d2 = d - i;
        if (d2 < 0.0d) {
            d2 = -d2;
        }
        return d2 >= 0.5d ? d < 0.0d ? i - 1 : i + 1 : i;
    }

    /* renamed from: q */
    public static double m60398q(double d) {
        double d2 = d * 3.141592653589793d;
        if (d2 != 0.0d) {
            return Math.sin(d2) / d2;
        }
        return 1.0d;
    }

    /* renamed from: r */
    public static int m60399r(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return i;
            default:
                throw new IllegalArgumentException("Unknown filter type: " + i);
        }
    }

    @Override // java.awt.image.BufferedImageOp
    public final BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        if (bufferedImage == null) {
            throw new NullPointerException("pInput == null");
        }
        if (colorModel == null) {
            colorModel = bufferedImage.getColorModel();
        }
        return new BufferedImage(colorModel, ImageUtil.m60359i(bufferedImage, colorModel, this.f93974a, this.f93975b), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        if (r0 != 9) goto L22;
     */
    @Override // java.awt.image.BufferedImageOp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.awt.image.BufferedImage filter(java.awt.image.BufferedImage r9, java.awt.image.BufferedImage r10) {
        /*
            r8 = this;
            if (r9 == 0) goto Lc2
            if (r9 == r10) goto Lba
            int r0 = r8.f93976c
            r1 = 3
            r2 = 2
            r3 = 1
            if (r0 == r3) goto L12
            if (r0 == r1) goto L21
            r4 = 9
            if (r0 == r4) goto L30
            goto L3f
        L12:
            int r0 = r9.getType()
            if (r0 == 0) goto L21
            int r0 = r8.f93974a
            int r8 = r8.f93975b
            java.awt.image.BufferedImage r8 = m60392j(r9, r10, r0, r8, r3)
            return r8
        L21:
            int r0 = r9.getType()
            if (r0 == 0) goto L30
            int r0 = r8.f93974a
            int r8 = r8.f93975b
            java.awt.image.BufferedImage r8 = m60392j(r9, r10, r0, r8, r2)
            return r8
        L30:
            int r0 = r9.getType()
            if (r0 == 0) goto L3f
            int r0 = r8.f93974a
            int r8 = r8.f93975b
            java.awt.image.BufferedImage r8 = m60392j(r9, r10, r0, r8, r1)
            return r8
        L3f:
            int r0 = r8.f93976c
            com.twelvemonkeys.image.ResampleOp$m r0 = m60391i(r0)
            int r1 = r9.getWidth()
            int r4 = r9.getHeight()
            int r1 = java.lang.Math.min(r1, r4)
            double r4 = (double) r1
            double r6 = r0.mo60403b()
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 <= 0) goto Lb1
            int r1 = r8.f93974a
            int r4 = r8.f93975b
            int r1 = java.lang.Math.min(r1, r4)
            double r4 = (double) r1
            double r6 = r0.mo60403b()
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 > 0) goto L6c
            goto Lb1
        L6c:
            java.awt.image.BufferedImage r1 = com.sunia.HTREnginev2.l6j.m55392a(r8, r9, r10)
            if (r1 == 0) goto L73
            return r1
        L73:
            int r1 = r8.f93976c
            if (r1 == r3) goto L8e
            if (r1 == r2) goto L8e
            java.awt.image.ColorModel r1 = r9.getColorModel()
            boolean r2 = r1 instanceof java.awt.image.IndexColorModel
            if (r2 == 0) goto L8e
            boolean r1 = r1.hasAlpha()
            if (r1 == 0) goto L89
            r1 = 6
            goto L8a
        L89:
            r1 = 5
        L8a:
            java.awt.image.BufferedImage r9 = com.twelvemonkeys.image.ImageUtil.toBuffered(r9, r1)
        L8e:
            if (r10 == 0) goto L9f
            int r1 = r9.getType()
            if (r1 == 0) goto L9f
            int r1 = r9.getType()
            java.awt.image.BufferedImage r1 = com.twelvemonkeys.image.ImageUtil.toBuffered(r10, r1)
            goto La4
        L9f:
            r1 = 0
            java.awt.image.BufferedImage r1 = r8.createCompatibleDestImage(r9, r1)
        La4:
            r8.m60401o(r9, r1, r0)
            if (r10 == 0) goto Laf
            if (r10 == r1) goto Laf
            com.twelvemonkeys.image.ImageUtil.m60362l(r10, r1)
            goto Lb0
        Laf:
            r10 = r1
        Lb0:
            return r10
        Lb1:
            int r0 = r8.f93974a
            int r8 = r8.f93975b
            java.awt.image.BufferedImage r8 = m60392j(r9, r10, r0, r8, r2)
            return r8
        Lba:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Output image cannot be the same as the input image"
            r8.<init>(r9)
            throw r8
        Lc2:
            java.lang.NullPointerException r8 = new java.lang.NullPointerException
            java.lang.String r9 = "Input == null"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.image.ResampleOp.filter(java.awt.image.BufferedImage, java.awt.image.BufferedImage):java.awt.image.BufferedImage");
    }

    @Override // java.awt.image.BufferedImageOp
    public Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return new Rectangle(this.f93974a, this.f93975b);
    }

    public int getFilterType() {
        return this.f93976c;
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        if (point2D2 != null) {
            return point2D2;
        }
        Point2D point2D3 = point2D instanceof Point2D.Double ? new Point2D.Double() : new Point2D.Float();
        point2D3.setLocation(point2D);
        return point2D3;
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public RenderingHints getRenderingHints() {
        Object obj;
        switch (this.f93976c) {
            case 0:
                return null;
            case 1:
                obj = VALUE_INTERPOLATION_POINT;
                break;
            case 2:
                obj = VALUE_INTERPOLATION_BOX;
                break;
            case 3:
                obj = VALUE_INTERPOLATION_TRIANGLE;
                break;
            case 4:
                obj = VALUE_INTERPOLATION_HERMITE;
                break;
            case 5:
                obj = VALUE_INTERPOLATION_HANNING;
                break;
            case 6:
                obj = VALUE_INTERPOLATION_HAMMING;
                break;
            case 7:
                obj = VALUE_INTERPOLATION_BLACKMAN;
                break;
            case 8:
                obj = VALUE_INTERPOLATION_GAUSSIAN;
                break;
            case 9:
                obj = VALUE_INTERPOLATION_QUADRATIC;
                break;
            case 10:
                obj = VALUE_INTERPOLATION_CUBIC;
                break;
            case 11:
                obj = VALUE_INTERPOLATION_CATROM;
                break;
            case 12:
                obj = VALUE_INTERPOLATION_MITCHELL;
                break;
            case 13:
                obj = VALUE_INTERPOLATION_LANCZOS;
                break;
            case 14:
                obj = VALUE_INTERPOLATION_BLACKMAN_BESSEL;
                break;
            case 15:
                obj = VALUE_INTERPOLATION_BLACKMAN_SINC;
                break;
            default:
                throw new IllegalStateException("Unknown filter type: " + this.f93976c);
        }
        return new RenderingHints(KEY_RESAMPLE_INTERPOLATION, obj);
    }

    /* renamed from: h */
    public final C16925g m60400h(double d, double d2, int i, InterfaceC16931m interfaceC16931m, int i2) {
        C16925g c16925g = new C16925g();
        if (d < 1.0d) {
            double d3 = d2 / d;
            double d4 = 1.0d / d;
            if (d3 <= 0.5d) {
                d3 = 0.500001d;
                d4 = 1.0d;
            }
            c16925g.f93982b = new C16924f[(int) ((2.0d * d3) + 1.0d + 0.5d)];
            double d5 = i2 / d;
            int ceil = (int) Math.ceil(d5 - d3);
            int floor = (int) Math.floor(d3 + d5);
            double d6 = 0.0d;
            while (ceil <= floor) {
                double mo60402a = interfaceC16931m.mo60402a((d5 - ceil) / d4) / d4;
                int i3 = ceil < 0 ? -ceil : ceil >= i ? ((i - ceil) + i) - 1 : ceil;
                if (i3 >= i) {
                    i3 %= i;
                } else if (i3 < 0) {
                    i3 = i - 1;
                }
                int i4 = c16925g.f93981a;
                double d7 = d5;
                c16925g.f93981a = i4 + 1;
                c16925g.f93982b[i4] = new C16924f();
                C16924f c16924f = c16925g.f93982b[i4];
                c16924f.f93978a = i3;
                c16924f.f93979b = mo60402a;
                d6 += mo60402a;
                ceil++;
                d5 = d7;
            }
            if (d6 != 0.0d && d6 != 1.0d) {
                double d8 = 1.0d / d6;
                for (int i5 = 0; i5 < c16925g.f93981a; i5++) {
                    c16925g.f93982b[i5].f93979b *= d8;
                }
            }
        } else {
            c16925g.f93982b = new C16924f[(int) ((d2 * 2.0d) + 1.0d + 0.5d)];
            double d9 = i2 / d;
            int ceil2 = (int) Math.ceil(d9 - d2);
            int floor2 = (int) Math.floor(d9 + d2);
            while (ceil2 <= floor2) {
                double mo60402a2 = interfaceC16931m.mo60402a(d9 - ceil2);
                int i6 = ceil2 < 0 ? -ceil2 : ceil2 >= i ? ((i - ceil2) + i) - 1 : ceil2;
                if (i6 >= i) {
                    i6 %= i;
                } else if (i6 < 0) {
                    i6 = i - 1;
                }
                int i7 = c16925g.f93981a;
                c16925g.f93981a = i7 + 1;
                c16925g.f93982b[i7] = new C16924f();
                C16924f c16924f2 = c16925g.f93982b[i7];
                c16924f2.f93978a = i6;
                c16924f2.f93979b = mo60402a2;
                ceil2++;
            }
        }
        return c16925g;
    }

    /* renamed from: o */
    public final BufferedImage m60401o(BufferedImage bufferedImage, BufferedImage bufferedImage2, InterfaceC16931m interfaceC16931m) {
        int i;
        WritableRaster writableRaster;
        int i2;
        double d;
        int i3;
        double sample;
        double d2;
        int width = bufferedImage2.getWidth();
        int height = bufferedImage2.getHeight();
        int width2 = bufferedImage.getWidth();
        int height2 = bufferedImage.getHeight();
        WritableRaster m60359i = ImageUtil.m60359i(bufferedImage, bufferedImage.getColorModel(), 1, height2);
        double d3 = width / width2;
        double d4 = height / height2;
        C16925g[] c16925gArr = new C16925g[height];
        for (int i4 = 0; i4 < height; i4++) {
            c16925gArr[i4] = new C16925g();
        }
        double mo60403b = interfaceC16931m.mo60403b();
        double d5 = 1.0d;
        if (d4 < 1.0d) {
            double d6 = mo60403b / d4;
            double d7 = 1.0d / d4;
            if (d6 <= 0.5d) {
                d6 = 0.500001d;
                d7 = 1.0d;
            }
            int i5 = 0;
            while (i5 < height) {
                c16925gArr[i5].f93982b = new C16924f[(int) ((d6 * 2.0d) + d5 + 0.5d)];
                double d8 = i5 / d4;
                WritableRaster writableRaster2 = m60359i;
                int ceil = (int) Math.ceil(d8 - d6);
                int floor = (int) Math.floor(d8 + d6);
                double d9 = 0.0d;
                while (ceil <= floor) {
                    int i6 = floor;
                    double mo60402a = interfaceC16931m.mo60402a((d8 - ceil) / d7) / d7;
                    int i7 = ceil < 0 ? -ceil : ceil >= height2 ? ((height2 - ceil) + height2) - 1 : ceil;
                    if (i7 >= height2) {
                        i7 %= height2;
                    } else if (i7 < 0) {
                        i7 = height2 - 1;
                    }
                    double d10 = d8;
                    C16925g c16925g = c16925gArr[i5];
                    int i8 = c16925g.f93981a;
                    c16925g.f93981a = i8 + 1;
                    c16925g.f93982b[i8] = new C16924f();
                    C16924f c16924f = c16925gArr[i5].f93982b[i8];
                    c16924f.f93978a = i7;
                    c16924f.f93979b = mo60402a;
                    d9 += mo60402a;
                    ceil++;
                    floor = i6;
                    d8 = d10;
                    width2 = width2;
                }
                int i9 = width2;
                if (d9 != 0.0d && d9 != 1.0d) {
                    double d11 = 1.0d / d9;
                    int i10 = 0;
                    while (true) {
                        C16925g c16925g2 = c16925gArr[i5];
                        if (i10 < c16925g2.f93981a) {
                            c16925g2.f93982b[i10].f93979b *= d11;
                            i10++;
                        }
                    }
                }
                i5++;
                m60359i = writableRaster2;
                width2 = i9;
                d5 = 1.0d;
            }
            i = width2;
            writableRaster = m60359i;
        } else {
            i = width2;
            writableRaster = m60359i;
            for (int i11 = 0; i11 < height; i11++) {
                c16925gArr[i11].f93982b = new C16924f[(int) ((mo60403b * 2.0d) + 1.0d + 0.5d)];
                double d12 = i11 / d4;
                double ceil2 = Math.ceil(d12 - mo60403b);
                double floor2 = Math.floor(d12 + mo60403b);
                int i12 = (int) ceil2;
                while (true) {
                    double d13 = i12;
                    if (d13 <= floor2) {
                        double mo60402a2 = interfaceC16931m.mo60402a(d12 - d13);
                        int i13 = i12 < 0 ? -i12 : i12 >= height2 ? ((height2 - i12) + height2) - 1 : i12;
                        if (i13 >= height2) {
                            i13 %= height2;
                        } else if (i13 < 0) {
                            i13 = height2 - 1;
                        }
                        C16925g c16925g3 = c16925gArr[i11];
                        double d14 = d4;
                        int i14 = c16925g3.f93981a;
                        c16925g3.f93981a = i14 + 1;
                        c16925g3.f93982b[i14] = new C16924f();
                        C16924f c16924f2 = c16925gArr[i11].f93982b[i14];
                        c16924f2.f93978a = i13;
                        c16924f2.f93979b = mo60402a2;
                        i12++;
                        d4 = d14;
                    }
                }
            }
        }
        WritableRaster raster = bufferedImage.getRaster();
        WritableRaster raster2 = bufferedImage2.getRaster();
        int numBands = raster.getNumBands();
        int[] iArr = new int[numBands];
        for (int i15 = 0; i15 < numBands; i15++) {
            iArr[i15] = (1 << bufferedImage.getColorModel().getComponentSize(i15)) - 1;
        }
        int i16 = 0;
        while (i16 < width) {
            int i17 = i16;
            int[] iArr2 = iArr;
            int i18 = 0;
            C16925g[] c16925gArr2 = c16925gArr;
            C16925g m60400h = m60400h(d3, mo60403b, i, interfaceC16931m, i17);
            int i19 = 0;
            while (i19 < height2) {
                int i20 = i18;
                while (i20 < numBands) {
                    double sample2 = raster.getSample(m60400h.f93982b[i18].f93978a, i19, i20);
                    int i21 = i18;
                    int i22 = i21;
                    double d15 = 0.0d;
                    while (i22 < m60400h.f93981a) {
                        double sample3 = i22 == 0 ? sample2 : raster.getSample(m60400h.f93982b[i22].f93978a, i19, i20);
                        if (sample3 != sample2) {
                            i21 = 1;
                        }
                        d15 += sample3 * m60400h.f93982b[i22].f93979b;
                        i22++;
                        m60400h = m60400h;
                        sample2 = sample2;
                    }
                    C16925g c16925g4 = m60400h;
                    double m60397p = i21 != 0 ? m60397p(d15) : sample2;
                    if (m60397p < 0.0d) {
                        d2 = 0.0d;
                    } else {
                        int i23 = iArr2[i20];
                        d2 = m60397p > ((double) i23) ? i23 : m60397p;
                    }
                    writableRaster.setSample(0, i19, i20, d2);
                    i20++;
                    m60400h = c16925g4;
                    i18 = 0;
                }
                i19++;
                i18 = 0;
            }
            for (int i24 = 0; i24 < height; i24++) {
                int i25 = 0;
                while (i25 < numBands) {
                    WritableRaster writableRaster3 = writableRaster;
                    double sample4 = writableRaster3.getSample(0, c16925gArr2[i24].f93982b[0].f93978a, i25);
                    int i26 = 0;
                    boolean z = false;
                    double d16 = 0.0d;
                    while (true) {
                        C16925g c16925g5 = c16925gArr2[i24];
                        i2 = width;
                        if (i26 >= c16925g5.f93981a) {
                            break;
                        }
                        if (i26 == 0) {
                            i3 = height;
                            sample = sample4;
                        } else {
                            i3 = height;
                            sample = writableRaster3.getSample(0, c16925g5.f93982b[i26].f93978a, i25);
                        }
                        if (sample != sample4) {
                            z = true;
                        }
                        d16 += sample * c16925gArr2[i24].f93982b[i26].f93979b;
                        i26++;
                        width = i2;
                        height = i3;
                        sample4 = sample4;
                    }
                    int i27 = height;
                    double m60397p2 = z ? m60397p(d16) : sample4;
                    if (m60397p2 < 0.0d) {
                        d = 0.0d;
                    } else {
                        int i28 = iArr2[i25];
                        if (m60397p2 > i28) {
                            m60397p2 = i28;
                        }
                        d = m60397p2;
                    }
                    raster2.setSample(i17, i24, i25, d);
                    i25++;
                    writableRaster = writableRaster3;
                    width = i2;
                    height = i27;
                }
            }
            i16 = i17 + 1;
            iArr = iArr2;
            c16925gArr = c16925gArr2;
        }
        return bufferedImage2;
    }

    /* renamed from: com.twelvemonkeys.image.ResampleOp$d */
    /* loaded from: classes10.dex */
    public static class C16922d implements InterfaceC16931m {

        /* renamed from: a */
        public final double f93977a;

        public C16922d() {
            this.f93977a = 0.5d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: a */
        public final double mo60402a(double d) {
            return (d < -0.5d || d >= 0.5d) ? 0.0d : 1.0d;
        }

        @Override // com.twelvemonkeys.image.ResampleOp.InterfaceC16931m
        /* renamed from: b */
        public final double mo60403b() {
            return this.f93977a;
        }

        public C16922d(double d) {
            this.f93977a = d;
        }
    }

    public ResampleOp(int i, int i2, RenderingHints renderingHints) {
        this(i, i2, m60393k(renderingHints));
    }

    public ResampleOp(int i, int i2, int i3) {
        if (i > 0 && i2 > 0) {
            this.f93974a = i;
            this.f93975b = i2;
            this.f93976c = m60399r(i3);
            return;
        }
        throw new IllegalArgumentException("width and height must be positive");
    }
}
