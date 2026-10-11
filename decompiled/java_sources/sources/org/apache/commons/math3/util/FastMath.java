package org.apache.commons.math3.util;

import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.core.base.ParserBase;
import com.sunia.HTREnginev2.b9g;
import com.sunia.HTREnginev2.c9g;
import com.sunia.HTREnginev2.sff;
import java.io.PrintStream;
import net.p110sf.saxon.value.FloatingPointConverter;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class FastMath {

    /* renamed from: A */
    public static final long f109830A = 4503599627370495L;

    /* renamed from: B */
    public static final long f109831B = 4503599627370496L;

    /* renamed from: C */
    public static final double f109832C = 4.503599627370496E15d;

    /* renamed from: D */
    public static final double f109833D = 0.3333333333333333d;

    /* renamed from: E */
    public static final double f109834E = 2.718281828459045d;

    /* renamed from: F */
    public static final double f109835F = 0.2d;

    /* renamed from: G */
    public static final double f109836G = 0.14285714285714285d;

    /* renamed from: H */
    public static final double f109837H = 0.1111111111111111d;

    /* renamed from: I */
    public static final double f109838I = 0.09090909090909091d;

    /* renamed from: J */
    public static final double f109839J = 0.07692307692307693d;

    /* renamed from: K */
    public static final double f109840K = 0.06666666666666667d;

    /* renamed from: L */
    public static final double f109841L = 0.058823529411764705d;

    /* renamed from: M */
    public static final double f109842M = 0.75d;

    /* renamed from: N */
    public static final double f109843N = 0.9375d;

    /* renamed from: O */
    public static final double f109844O = 0.9285714285714286d;

    /* renamed from: P */
    public static final double f109845P = 0.9166666666666666d;

    /* renamed from: PI */
    public static final double f109846PI = 3.141592653589793d;

    /* renamed from: Q */
    public static final double f109847Q = 0.9d;

    /* renamed from: R */
    public static final double f109848R = 0.875d;

    /* renamed from: S */
    public static final double f109849S = 0.8333333333333334d;

    /* renamed from: T */
    public static final double f109850T = 0.5d;

    /* renamed from: U */
    public static final double f109851U = 0.25d;

    /* renamed from: a */
    public static final int f109852a = 750;

    /* renamed from: b */
    public static final int f109853b = 1500;

    /* renamed from: c */
    public static final int f109854c = 1024;

    /* renamed from: d */
    public static final int f109855d = 1025;

    /* renamed from: f */
    public static final boolean f109857f = false;

    /* renamed from: g */
    public static final double f109858g = 0.6931470632553101d;

    /* renamed from: h */
    public static final double f109859h = 1.1730463525082348E-7d;

    /* renamed from: k */
    public static final int f109862k = 14;

    /* renamed from: v */
    public static final long f109873v = 1073741824;

    /* renamed from: w */
    public static final long f109874w = -1073741824;

    /* renamed from: x */
    public static final int f109875x = Integer.MAX_VALUE;

    /* renamed from: y */
    public static final long f109876y = Long.MAX_VALUE;

    /* renamed from: z */
    public static final long f109877z = 9218868437227405312L;

    /* renamed from: e */
    public static final double f109856e = StrictMath.log(Double.MAX_VALUE);

    /* renamed from: i */
    public static final double[][] f109860i = {new double[]{1.0d, 5.669184079525E-24d}, new double[]{-0.25d, -0.25d}, new double[]{0.3333333134651184d, 1.986821492305628E-8d}, new double[]{-0.25d, -6.663542893624021E-14d}, new double[]{0.19999998807907104d, 1.1921056801463227E-8d}, new double[]{-0.1666666567325592d, -7.800414592973399E-9d}, new double[]{0.1428571343421936d, 5.650007086920087E-9d}, new double[]{-0.12502530217170715d, -7.44321345601866E-11d}, new double[]{0.11113807559013367d, 9.219544613762692E-9d}};

    /* renamed from: j */
    public static final double[][] f109861j = {new double[]{1.0d, -6.032174644509064E-23d}, new double[]{-0.25d, -0.25d}, new double[]{0.3333333134651184d, 1.9868161777724352E-8d}, new double[]{-0.2499999701976776d, -2.957007209750105E-8d}, new double[]{0.19999954104423523d, 1.5830993332061267E-10d}, new double[]{-0.16624879837036133d, -2.6033824355191673E-8d}};

    /* renamed from: l */
    public static final double[] f109863l = {0.0d, 0.1246747374534607d, 0.24740394949913025d, 0.366272509098053d, 0.4794255495071411d, 0.5850973129272461d, 0.6816387176513672d, 0.7675435543060303d, 0.8414709568023682d, 0.902267575263977d, 0.9489846229553223d, 0.9808930158615112d, 0.9974949359893799d, 0.9985313415527344d};

    /* renamed from: m */
    public static final double[] f109864m = {0.0d, -4.068233003401932E-9d, 9.755392680573412E-9d, 1.9987994582857286E-8d, -1.0902938113007961E-8d, -3.9986783938944604E-8d, 4.23719669792332E-8d, -5.207000323380292E-8d, 2.800552834259E-8d, 1.883511811213715E-8d, -3.5997360512765566E-9d, 4.116164446561962E-8d, 5.0614674548127384E-8d, -1.0129027912496858E-9d};

    /* renamed from: n */
    public static final double[] f109865n = {1.0d, 0.9921976327896118d, 0.9689123630523682d, 0.9305076599121094d, 0.8775825500488281d, 0.8109631538391113d, 0.7316888570785522d, 0.6409968137741089d, 0.5403022766113281d, 0.4311765432357788d, 0.3153223395347595d, 0.19454771280288696d, 0.07073719799518585d, -0.05417713522911072d};

    /* renamed from: o */
    public static final double[] f109866o = {0.0d, 3.4439717236742845E-8d, 5.865827662008209E-8d, -3.7999795083850525E-8d, 1.184154459111628E-8d, -3.43338934259355E-8d, 1.1795268640216787E-8d, 4.438921624363781E-8d, 2.925681159240093E-8d, -2.6437112632041807E-8d, 2.2860509143963117E-8d, -4.813899778443457E-9d, 3.6725170580355583E-9d, 2.0217439756338078E-10d};

    /* renamed from: p */
    public static final double[] f109867p = {0.0d, 0.1256551444530487d, 0.25534194707870483d, 0.3936265707015991d, 0.5463024377822876d, 0.7214844226837158d, 0.9315965175628662d, 1.1974215507507324d, 1.5574076175689697d, 2.092571258544922d, 3.0095696449279785d, 5.041914939880371d, 14.101419448852539d, -18.430862426757812d};

    /* renamed from: q */
    public static final double[] f109868q = {0.0d, -7.877917738262007E-9d, -2.5857668567479893E-8d, 5.2240336371356666E-9d, 5.206150291559893E-8d, 1.8307188599677033E-8d, -5.7618793749770706E-8d, 7.848361555046424E-8d, 1.0708593250394448E-7d, 1.7827257129423813E-8d, 2.893485277253286E-8d, 3.1660099222737955E-7d, 4.983191803254889E-7d, -3.356118100840571E-7d};

    /* renamed from: r */
    public static final long[] f109869r = {2935890503282001226L, 9154082963658192752L, 3952090531849364496L, 9193070505571053912L, 7910884519577875640L, 113236205062349959L, 4577762542105553359L, -5034868814120038111L, 4208363204685324176L, 5648769086999809661L, 2819561105158720014L, -4035746434778044925L, -302932621132653753L, -2644281811660520851L, -3183605296591799669L, 6722166367014452318L, -3512299194304650054L, -7278142539171889152L};

    /* renamed from: s */
    public static final long[] f109870s = {-3958705157555305932L, -4267615245585081135L};

    /* renamed from: t */
    public static final double[] f109871t = {0.0d, 0.125d, 0.25d, 0.375d, 0.5d, 0.625d, 0.75d, 0.875d, 1.0d, 1.125d, 1.25d, 1.375d, 1.5d, 1.625d};

    /* renamed from: u */
    public static final double[] f109872u = {0.6299605249474366d, 0.7937005259840998d, 1.0d, 1.2599210498948732d, 1.5874010519681994d};

    /* renamed from: org.apache.commons.math3.util.FastMath$a */
    /* loaded from: classes12.dex */
    public static class C19288a {

        /* renamed from: a */
        public final int f109878a;

        /* renamed from: b */
        public final double f109879b;

        /* renamed from: c */
        public final double f109880c;

        public C19288a(double d) {
            int i = (int) (0.6366197723675814d * d);
            while (true) {
                double d2 = -i;
                double d3 = 1.570796251296997d * d2;
                double d4 = d + d3;
                double d5 = 7.549789948768648E-8d * d2;
                double d6 = d5 + d4;
                double d7 = (-((d4 - d) - d3)) + (-((d6 - d4) - d5));
                double d8 = d2 * 6.123233995736766E-17d;
                double d9 = d8 + d6;
                double d10 = d7 + (-((d9 - d6) - d8));
                if (d9 > 0.0d) {
                    this.f109878a = i;
                    this.f109879b = d9;
                    this.f109880c = d10;
                    return;
                }
                i--;
            }
        }

        /* renamed from: a */
        public int m68213a() {
            return this.f109878a;
        }

        /* renamed from: b */
        public double m68214b() {
            return this.f109879b;
        }

        /* renamed from: c */
        public double m68215c() {
            return this.f109880c;
        }
    }

    /* renamed from: org.apache.commons.math3.util.FastMath$b */
    /* loaded from: classes12.dex */
    public static class C19289b {

        /* renamed from: a */
        public static final double[] f109881a = c9g.m53413a();

        /* renamed from: b */
        public static final double[] f109882b = c9g.m53414b();
    }

    /* renamed from: org.apache.commons.math3.util.FastMath$c */
    /* loaded from: classes12.dex */
    public static class C19290c {

        /* renamed from: a */
        public static final double[] f109883a = c9g.m53415c();

        /* renamed from: b */
        public static final double[] f109884b = c9g.m53416d();
    }

    /* renamed from: org.apache.commons.math3.util.FastMath$e */
    /* loaded from: classes12.dex */
    public static class C19292e {

        /* renamed from: a */
        public static final double[][] f109891a = c9g.m53417e();
    }

    public static double IEEEremainder(double d, double d2) {
        return StrictMath.IEEEremainder(d, d2);
    }

    /* renamed from: a */
    public static double m68202a(double d, double d2, boolean z) {
        double d3;
        boolean z2;
        int i;
        double d4;
        double d5;
        double d6 = d;
        if (d6 == 0.0d) {
            return z ? copySign(3.141592653589793d, d6) : d6;
        }
        if (d6 < 0.0d) {
            d6 = -d6;
            d3 = -d2;
            z2 = true;
        } else {
            d3 = d2;
            z2 = false;
        }
        if (d6 > 1.633123935319537E16d) {
            return z2 ^ z ? -1.5707963267948966d : 1.5707963267948966d;
        }
        if (d6 < 1.0d) {
            i = (int) (((((-1.7168146928204135d) * d6 * d6) + 8.0d) * d6) + 0.5d);
        } else {
            double d7 = 1.0d / d6;
            i = (int) ((-((((-1.7168146928204135d) * d7 * d7) + 8.0d) * d7)) + 13.07d);
        }
        double d8 = f109867p[i];
        double d9 = f109868q[i];
        double d10 = d6 - d8;
        double d11 = (-((d10 - d6) + d8)) + (d3 - d9);
        double d12 = d10 + d11;
        double d13 = -((d12 - d10) - d11);
        double d14 = d6 * 1.073741824E9d;
        double d15 = (d6 + d14) - d14;
        double d16 = d3 + ((d6 + d3) - d15);
        if (i == 0) {
            double d17 = 1.0d / (((d15 + d16) * (d8 + d9)) + 1.0d);
            d5 = d12 * d17;
            d4 = d13 * d17;
        } else {
            double d18 = d15 * d8;
            double d19 = d18 + 1.0d;
            double d20 = -((d19 - 1.0d) - d18);
            double d21 = (d8 * d16) + (d15 * d9);
            double d22 = d19 + d21;
            double d23 = d20 + (-((d22 - d19) - d21)) + (d16 * d9);
            double d24 = d12 / d22;
            double d25 = d24 * 1.073741824E9d;
            double d26 = (d24 + d25) - d25;
            double d27 = d24 - d26;
            double d28 = 1.073741824E9d * d22;
            double d29 = (d22 + d28) - d28;
            double d30 = d22 - d29;
            d4 = (((((d12 - (d26 * d29)) - (d26 * d30)) - (d29 * d27)) - (d27 * d30)) / d22) + ((((-d12) * d23) / d22) / d22) + (d13 / d22);
            d5 = d24;
        }
        double d31 = d5 * d5;
        double d32 = ((((((((((0.07490822288864472d * d31) - 0.09088450866185192d) * d31) + 0.11111095942313305d) * d31) - 0.1428571423679182d) * d31) + 0.19999999999923582d) * d31) - 0.33333333333333287d) * d31 * d5;
        double d33 = d5 + d32;
        double d34 = (-((d33 - d5) - d32)) + (d4 / (d31 + 1.0d));
        double d35 = f109871t[i];
        double d36 = d35 + d33;
        double d37 = d36 + d34;
        double d38 = (-((d36 - d35) - d33)) + (-((d37 - d36) - d34));
        double d39 = d37 + d38;
        if (z) {
            double d40 = -((d39 - d37) - d38);
            double d41 = 3.141592653589793d - d39;
            d39 = (-((d41 - 3.141592653589793d) + d39)) + (1.2246467991473532E-16d - d40) + d41;
        }
        return z2 ^ z ? -d39 : d39;
    }

    public static int abs(int i) {
        int i2 = i >>> 31;
        return (i ^ ((~i2) + 1)) + i2;
    }

    public static double acos(double d) {
        if (d != d || d > 1.0d || d < -1.0d) {
            return Double.NaN;
        }
        if (d == -1.0d) {
            return 3.141592653589793d;
        }
        if (d == 1.0d) {
            return 0.0d;
        }
        if (d == 0.0d) {
            return 1.5707963267948966d;
        }
        double d2 = d * 1.073741824E9d;
        double d3 = (d + d2) - d2;
        double d4 = d - d3;
        double d5 = -(d3 * d3);
        double d6 = -((d3 * d4 * 2.0d) + (d4 * d4));
        double d7 = d5 + 1.0d;
        double d8 = -((d7 - 1.0d) - d5);
        double d9 = d7 + d6;
        double d10 = d8 + (-((d9 - d7) - d6));
        double sqrt = sqrt(d9);
        double d11 = 1.073741824E9d * sqrt;
        double d12 = (sqrt + d11) - d11;
        double d13 = sqrt - d12;
        double d14 = sqrt * 2.0d;
        double d15 = d13 + ((((d9 - (d12 * d12)) - ((d12 * 2.0d) * d13)) - (d13 * d13)) / d14) + (d10 / d14);
        double d16 = d12 + d15;
        double d17 = -((d16 - d12) - d15);
        double d18 = d16 / d;
        if (Double.isInfinite(d18)) {
            return 1.5707963267948966d;
        }
        double m68204c = m68204c(d18);
        double d19 = d18 - m68204c;
        double d20 = d19 + (((((d16 - (m68204c * d3)) - (m68204c * d4)) - (d3 * d19)) - (d4 * d19)) / d) + (d17 / d);
        double d21 = m68204c + d20;
        return m68202a(d21, -((d21 - m68204c) - d20), d < 0.0d);
    }

    public static double acosh(double d) {
        return log(d + sqrt((d * d) - 1.0d));
    }

    public static int addExact(int i, int i2) throws MathArithmeticException {
        int i3 = i + i2;
        if ((i ^ i2) < 0 || (i3 ^ i2) >= 0) {
            return i3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static double asin(double d) {
        if (d != d || d > 1.0d || d < -1.0d) {
            return Double.NaN;
        }
        if (d == 1.0d) {
            return 1.5707963267948966d;
        }
        if (d == -1.0d) {
            return -1.5707963267948966d;
        }
        if (d == 0.0d) {
            return d;
        }
        double d2 = d * 1.073741824E9d;
        double d3 = (d + d2) - d2;
        double d4 = d - d3;
        double d5 = d3 * d3;
        double d6 = (d3 * d4 * 2.0d) + (d4 * d4);
        double d7 = -d5;
        double d8 = -d6;
        double d9 = d7 + 1.0d;
        double d10 = d9 + d8;
        double d11 = (-((d9 - 1.0d) - d7)) + (-((d10 - d9) - d8));
        double sqrt = sqrt(d10);
        double d12 = sqrt * 1.073741824E9d;
        double d13 = (sqrt + d12) - d12;
        double d14 = sqrt - d13;
        double d15 = 2.0d * sqrt;
        double d16 = d14 + ((((d10 - (d13 * d13)) - ((d13 * 2.0d) * d14)) - (d14 * d14)) / d15);
        double d17 = d / sqrt;
        double d18 = 1.073741824E9d * d17;
        double d19 = (d17 + d18) - d18;
        double d20 = d17 - d19;
        double d21 = d20 + (((((d - (d19 * d13)) - (d19 * d16)) - (d13 * d20)) - (d16 * d20)) / sqrt) + ((((-d) * (d11 / d15)) / sqrt) / sqrt);
        double d22 = d19 + d21;
        return m68202a(d22, -((d22 - d19) - d21), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b1, code lost:
    
        if (r0 > 0.0036d) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double asinh(double r36) {
        /*
            r0 = r36
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 >= 0) goto Lb
            double r0 = -r0
            r2 = 1
            goto Lc
        Lb:
            r2 = 0
        Lc:
            r3 = 4595184829392702407(0x3fc5604189374bc7, double:0.167)
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            if (r3 <= 0) goto L25
            double r6 = r0 * r0
            double r6 = r6 + r4
            double r3 = sqrt(r6)
            double r3 = r3 + r0
            double r0 = log(r3)
            goto Lb4
        L25:
            double r6 = r0 * r0
            r8 = 4591654007284843938(0x3fb8d4fdf3b645a2, double:0.097)
            int r3 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            r8 = 4606281698874543309(0x3feccccccccccccd, double:0.9)
            r10 = 4606431818862122325(0x3fed555555555555, double:0.9166666666666666)
            r12 = 4590207312512236308(0x3fb3b13b13b13b14, double:0.07692307692307693)
            r14 = 4591215111030249286(0x3fb745d1745d1746, double:0.09090909090909091)
            r16 = 4605681218924227243(0x3feaaaaaaaaaaaab, double:0.8333333333333334)
            r18 = 4606056518893174784(0x3fec000000000000, double:0.875)
            r20 = 4592670820000712476(0x3fbc71c71c71c71c, double:0.1111111111111111)
            r22 = 4594314991293244562(0x3fc2492492492492, double:0.14285714285714285)
            r24 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            r26 = 4604930618986332160(0x3fe8000000000000, double:0.75)
            r28 = 4596373779694328218(0x3fc999999999999a, double:0.2)
            r30 = 4599676419421066581(0x3fd5555555555555, double:0.3333333333333333)
            if (r3 <= 0) goto La0
            r32 = 4588638185040256542(0x3fae1e1e1e1e1e1e, double:0.058823529411764705)
            double r32 = r32 * r6
            r34 = 4606619468846596096(0x3fee000000000000, double:0.9375)
            double r32 = r32 * r34
            r34 = 4589468260265693457(0x3fb1111111111111, double:0.06666666666666667)
            double r34 = r34 - r32
            double r34 = r34 * r6
            r32 = 4606539047424678766(0x3fedb6db6db6db6e, double:0.9285714285714286)
            double r34 = r34 * r32
            double r12 = r12 - r34
        L80:
            double r12 = r12 * r6
            double r12 = r12 * r10
            double r14 = r14 - r12
            double r14 = r14 * r6
            double r14 = r14 * r8
            double r20 = r20 - r14
        L87:
            double r20 = r20 * r6
            double r20 = r20 * r18
            double r22 = r22 - r20
            double r22 = r22 * r6
            double r22 = r22 * r16
            double r28 = r28 - r22
        L93:
            double r28 = r28 * r6
            double r28 = r28 * r26
            double r30 = r30 - r28
            double r6 = r6 * r30
            double r6 = r6 * r24
            double r4 = r4 - r6
            double r0 = r0 * r4
            goto Lb4
        La0:
            r32 = 4585348967806525243(0x3fa26e978d4fdf3b, double:0.036)
            int r3 = (r0 > r32 ? 1 : (r0 == r32 ? 0 : -1))
            if (r3 <= 0) goto Laa
            goto L80
        Laa:
            r8 = 4570447457359481746(0x3f6d7dbf487fcb92, double:0.0036)
            int r3 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r3 <= 0) goto L93
            goto L87
        Lb4:
            if (r2 == 0) goto Lb7
            double r0 = -r0
        Lb7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.FastMath.asinh(double):double");
    }

    public static double atan(double d) {
        return m68202a(d, 0.0d, false);
    }

    public static double atan2(double d, double d2) {
        if (d2 != d2 || d != d) {
            return Double.NaN;
        }
        if (d == 0.0d) {
            double d3 = 1.0d / d2;
            return d3 == 0.0d ? d2 > 0.0d ? d : copySign(3.141592653589793d, d) : (d2 < 0.0d || d3 < 0.0d) ? (d < 0.0d || 1.0d / d < 0.0d) ? -3.141592653589793d : 3.141592653589793d : d2 * d;
        }
        if (d == Double.POSITIVE_INFINITY) {
            if (d2 == Double.POSITIVE_INFINITY) {
                return 0.7853981633974483d;
            }
            return d2 == Double.NEGATIVE_INFINITY ? 2.356194490192345d : 1.5707963267948966d;
        }
        if (d == Double.NEGATIVE_INFINITY) {
            if (d2 == Double.POSITIVE_INFINITY) {
                return -0.7853981633974483d;
            }
            return d2 == Double.NEGATIVE_INFINITY ? -2.356194490192345d : -1.5707963267948966d;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            if (d <= 0.0d) {
                double d4 = 1.0d / d;
                if (d4 <= 0.0d) {
                    if (d < 0.0d || d4 < 0.0d) {
                        return -0.0d;
                    }
                }
            }
            return 0.0d;
        }
        if (d2 == Double.NEGATIVE_INFINITY) {
            if (d <= 0.0d) {
                double d5 = 1.0d / d;
                if (d5 <= 0.0d) {
                    if (d < 0.0d || d5 < 0.0d) {
                        return -3.141592653589793d;
                    }
                }
            }
            return 3.141592653589793d;
        }
        if (d2 == 0.0d) {
            if (d <= 0.0d) {
                double d6 = 1.0d / d;
                if (d6 <= 0.0d) {
                    if (d < 0.0d || d6 < 0.0d) {
                        return -1.5707963267948966d;
                    }
                }
            }
            return 1.5707963267948966d;
        }
        double d7 = d / d2;
        if (Double.isInfinite(d7)) {
            return m68202a(d7, 0.0d, d2 < 0.0d);
        }
        double m68204c = m68204c(d7);
        double d8 = d7 - m68204c;
        double m68204c2 = m68204c(d2);
        double d9 = d2 - m68204c2;
        double d10 = d8 + (((((d - (m68204c * m68204c2)) - (m68204c * d9)) - (m68204c2 * d8)) - (d9 * d8)) / d2);
        double d11 = m68204c + d10;
        double d12 = -((d11 - m68204c) - d10);
        if (d11 == 0.0d) {
            d11 = copySign(0.0d, d);
        }
        return m68202a(d11, d12, d2 < 0.0d);
    }

    public static double atanh(double d) {
        boolean z;
        double d2;
        double d3 = d;
        if (d3 < 0.0d) {
            d3 = -d3;
            z = true;
        } else {
            z = false;
        }
        if (d3 > 0.15d) {
            d2 = log((d3 + 1.0d) / (1.0d - d3)) * 0.5d;
        } else {
            double d4 = d3 * d3;
            d2 = d3 * ((d3 > 0.087d ? d4 * ((((((((((((((0.058823529411764705d * d4) + 0.06666666666666667d) * d4) + 0.07692307692307693d) * d4) + 0.09090909090909091d) * d4) + 0.1111111111111111d) * d4) + 0.14285714285714285d) * d4) + 0.2d) * d4) + 0.3333333333333333d) : d3 > 0.031d ? d4 * ((((((((((0.07692307692307693d * d4) + 0.09090909090909091d) * d4) + 0.1111111111111111d) * d4) + 0.14285714285714285d) * d4) + 0.2d) * d4) + 0.3333333333333333d) : d3 > 0.003d ? d4 * ((((((0.1111111111111111d * d4) + 0.14285714285714285d) * d4) + 0.2d) * d4) + 0.3333333333333333d) : d4 * ((0.2d * d4) + 0.3333333333333333d)) + 1.0d);
        }
        return z ? -d2 : d2;
    }

    /* renamed from: b */
    public static double m68203b(double d, double d2) {
        double d3 = 1.5707963267948966d - d;
        return m68211j(d3, (-((d3 - 1.5707963267948966d) + d)) + (6.123233995736766E-17d - d2));
    }

    /* renamed from: c */
    public static double m68204c(double d) {
        double d2 = Precision.SAFE_MIN;
        return (d <= (-d2) || d >= d2) ? Double.longBitsToDouble(Double.doubleToRawLongBits(d) & f109874w) : d;
    }

    public static double cbrt(double d) {
        boolean z;
        int i;
        long j;
        double d2;
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        int i2 = ((int) ((doubleToRawLongBits >> 52) & 2047)) - 1023;
        if (i2 != -1023) {
            z = false;
            i = i2;
            j = doubleToRawLongBits;
            d2 = d;
        } else {
            if (d == 0.0d) {
                return d;
            }
            d2 = 1.8014398509481984E16d * d;
            j = Double.doubleToRawLongBits(d2);
            i = ((int) (2047 & (j >> 52))) - 1023;
            z = true;
        }
        if (i == 1024) {
            return d2;
        }
        double longBitsToDouble = Double.longBitsToDouble((Long.MIN_VALUE & j) | ((((i / 3) + 1023) & 2047) << 52));
        double longBitsToDouble2 = Double.longBitsToDouble((j & 4503599627370495L) | sff.f84098g);
        double d3 = (((((((((-0.010714690733195933d) * longBitsToDouble2) + 0.0875862700108075d) * longBitsToDouble2) - 0.3058015757857271d) * longBitsToDouble2) + 0.7249995199969751d) * longBitsToDouble2) + 0.5039018405998233d) * f109872u[(i % 3) + 2];
        double d4 = d2 / ((longBitsToDouble * longBitsToDouble) * longBitsToDouble);
        double d5 = d3 + ((d4 - ((d3 * d3) * d3)) / ((d3 * 3.0d) * d3));
        double d6 = d5 + ((d4 - ((d5 * d5) * d5)) / ((d5 * 3.0d) * d5));
        double d7 = d6 * 1.073741824E9d;
        double d8 = (d6 + d7) - d7;
        double d9 = d6 - d8;
        double d10 = d8 * d8;
        double d11 = 1.073741824E9d * d10;
        double d12 = (d10 + d11) - d11;
        double d13 = (d8 * d9 * 2.0d) + (d9 * d9) + (d10 - d12);
        double d14 = (d12 * d9) + (d8 * d13) + (d13 * d9);
        double d15 = d12 * d8;
        double d16 = d4 - d15;
        double d17 = (d6 + ((d16 + ((-((d16 - d4) + d15)) - d14)) / ((3.0d * d6) * d6))) * longBitsToDouble;
        return z ? d17 * 3.814697265625E-6d : d17;
    }

    public static double ceil(double d) {
        if (d != d) {
            return d;
        }
        double floor = floor(d);
        if (floor == d) {
            return floor;
        }
        double d2 = floor + 1.0d;
        return d2 == 0.0d ? d * d2 : d2;
    }

    public static double copySign(double d, double d2) {
        return (Double.doubleToRawLongBits(d2) ^ Double.doubleToRawLongBits(d)) >= 0 ? d : -d;
    }

    public static double cos(double d) {
        double m68211j;
        double d2 = 0.0d;
        if (d < 0.0d) {
            d = -d;
        }
        if (d != d || d == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        int i = 0;
        if (d > 3294198.0d) {
            double[] dArr = new double[3];
            m68210i(d, dArr);
            i = ((int) dArr[0]) & 3;
            d = dArr[1];
            d2 = dArr[2];
        } else if (d > 1.5707963267948966d) {
            C19288a c19288a = new C19288a(d);
            i = c19288a.m68213a() & 3;
            d = c19288a.m68214b();
            d2 = c19288a.m68215c();
        }
        if (i == 0) {
            return m68203b(d, d2);
        }
        if (i == 1) {
            m68211j = m68211j(d, d2);
        } else {
            if (i != 2) {
                if (i != 3) {
                    return Double.NaN;
                }
                return m68211j(d, d2);
            }
            m68211j = m68203b(d, d2);
        }
        return -m68211j;
    }

    public static double cosh(double d) {
        double exp;
        double exp2;
        double d2 = d;
        if (d2 != d2) {
            return d2;
        }
        if (d2 > 20.0d) {
            if (d2 >= f109856e) {
                exp2 = exp(d2 * 0.5d);
                return 0.5d * exp2 * exp2;
            }
            exp = exp(d);
            return exp * 0.5d;
        }
        if (d2 < -20.0d) {
            if (d2 <= (-f109856e)) {
                exp2 = exp(d2 * (-0.5d));
                return 0.5d * exp2 * exp2;
            }
            exp = exp(-d2);
            return exp * 0.5d;
        }
        double[] dArr = new double[2];
        if (d2 < 0.0d) {
            d2 = -d2;
        }
        m68205d(d2, 0.0d, dArr);
        double d3 = dArr[0];
        double d4 = dArr[1];
        double d5 = d3 + d4;
        double d6 = -((d5 - d3) - d4);
        double d7 = d5 * 1.073741824E9d;
        double d8 = (d5 + d7) - d7;
        double d9 = d5 - d8;
        double d10 = 1.0d / d5;
        double d11 = 1.073741824E9d * d10;
        double d12 = (d10 + d11) - d11;
        double d13 = d10 - d12;
        double d14 = d13 + (((((1.0d - (d8 * d12)) - (d8 * d13)) - (d9 * d12)) - (d9 * d13)) * d10) + ((-d6) * d10 * d10);
        double d15 = d5 + d12;
        double d16 = d6 + (-((d15 - d5) - d12));
        double d17 = d15 + d14;
        return (d17 + d16 + (-((d17 - d15) - d14))) * 0.5d;
    }

    /* renamed from: d */
    public static double m68205d(double d, double d2, double[] dArr) {
        double d3;
        int i = (int) d;
        if (d < 0.0d) {
            if (d < -746.0d) {
                if (dArr != null) {
                    dArr[0] = 0.0d;
                    dArr[1] = 0.0d;
                }
                return 0.0d;
            }
            if (i < -709) {
                double m68205d = m68205d(d + 40.19140625d, d2, dArr) / 2.85040095144011776E17d;
                if (dArr != null) {
                    dArr[0] = dArr[0] / 2.85040095144011776E17d;
                    dArr[1] = dArr[1] / 2.85040095144011776E17d;
                }
                return m68205d;
            }
            if (i == -709) {
                double m68205d2 = m68205d(d + 1.494140625d, d2, dArr) / 4.455505956692757d;
                if (dArr != null) {
                    dArr[0] = dArr[0] / 4.455505956692757d;
                    dArr[1] = dArr[1] / 4.455505956692757d;
                }
                return m68205d2;
            }
            i--;
        } else if (i > 709) {
            if (dArr != null) {
                dArr[0] = Double.POSITIVE_INFINITY;
                dArr[1] = 0.0d;
            }
            return Double.POSITIVE_INFINITY;
        }
        double[] dArr2 = C19290c.f109883a;
        int i2 = i + f109852a;
        double d4 = dArr2[i2];
        double d5 = C19290c.f109884b[i2];
        double d6 = i;
        int i3 = (int) ((d - d6) * 1024.0d);
        double d7 = C19289b.f109881a[i3];
        double d8 = C19289b.f109882b[i3];
        double d9 = d - (d6 + (i3 / 1024.0d));
        double d10 = (((((((0.04168701738764507d * d9) + 0.1666666505023083d) * d9) + 0.5000000000042687d) * d9) + 1.0d) * d9) - 3.940510424527919E-20d;
        double d11 = d4 * d7;
        double d12 = (d4 * d8) + (d7 * d5) + (d5 * d8);
        double d13 = d12 + d11;
        if (d13 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        if (d2 != 0.0d) {
            double d14 = d13 * d2;
            d3 = (d14 * d10) + d14 + (d13 * d10) + d12 + d11;
        } else {
            d3 = (d13 * d10) + d12 + d11;
        }
        if (dArr != null) {
            dArr[0] = d11;
            double d15 = d13 * d2;
            dArr[1] = (d15 * d10) + d15 + (d13 * d10) + d12;
        }
        return d3;
    }

    public static int decrementExact(int i) throws MathArithmeticException {
        if (i != Integer.MIN_VALUE) {
            return i - 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i), 1);
    }

    /* renamed from: e */
    public static double m68206e(double d, double[] dArr) {
        boolean z;
        double d2 = d;
        if (d2 != d2 || d2 == 0.0d) {
            return d2;
        }
        if (d2 <= -1.0d || d2 >= 1.0d) {
            double[] dArr2 = new double[2];
            m68205d(d2, 0.0d, dArr2);
            if (d2 > 0.0d) {
                return (dArr2[0] - 1.0d) + dArr2[1];
            }
            double d3 = dArr2[0];
            double d4 = (-1.0d) + d3;
            return d4 + (-((1.0d + d4) - d3)) + dArr2[1];
        }
        if (d2 < 0.0d) {
            d2 = -d2;
            z = true;
        } else {
            z = false;
        }
        int i = (int) (d2 * 1024.0d);
        double d5 = C19289b.f109881a[i] - 1.0d;
        double d6 = C19289b.f109882b[i];
        double d7 = d5 + d6;
        double d8 = d7 * 1.073741824E9d;
        double d9 = (d7 + d8) - d8;
        double d10 = (-((d7 - d5) - d6)) + (d7 - d9);
        double d11 = d2 - (i / 1024.0d);
        double d12 = ((((((0.008336750013465571d * d11) + 0.041666663879186654d) * d11) + 0.16666666666745392d) * d11) + 0.49999999999999994d) * d11 * d11;
        double d13 = d11 + d12;
        double d14 = -((d13 - d11) - d12);
        double d15 = d13 * 1.073741824E9d;
        double d16 = (d13 + d15) - d15;
        double d17 = d14 + (d13 - d16);
        double d18 = d16 * d9;
        double d19 = d16 * d10;
        double d20 = d18 + d19;
        double d21 = -((d20 - d18) - d19);
        double d22 = d17 * d9;
        double d23 = d20 + d22;
        double d24 = d21 + (-((d23 - d20) - d22));
        double d25 = d17 * d10;
        double d26 = d23 + d25;
        double d27 = d24 + (-((d26 - d23) - d25));
        double d28 = d26 + d9;
        double d29 = d28 + d16;
        double d30 = d27 + (-((d28 - d9) - d26)) + (-((d29 - d28) - d16));
        double d31 = d29 + d10;
        double d32 = d31 + d17;
        double d33 = d30 + (-((d31 - d29) - d10)) + (-((d32 - d31) - d17));
        if (z) {
            double d34 = d32 + 1.0d;
            double d35 = 1.0d / d34;
            double d36 = (-((d34 - 1.0d) - d32)) + d33;
            double d37 = d32 * d35;
            double d38 = d37 * 1.073741824E9d;
            double d39 = (d37 + d38) - d38;
            double d40 = d37 - d39;
            double d41 = 1.073741824E9d * d34;
            double d42 = (d34 + d41) - d41;
            double d43 = d34 - d42;
            double d44 = d40 + (((((d32 - (d42 * d39)) - (d42 * d40)) - (d43 * d39)) - (d43 * d40)) * d35) + (d33 * d35) + ((-d32) * d36 * d35 * d35);
            d32 = -d39;
            d33 = -d44;
        }
        if (dArr != null) {
            dArr[0] = d32;
            dArr[1] = d33;
        }
        return d32 + d33;
    }

    public static double exp(double d) {
        return m68205d(d, 0.0d, null);
    }

    public static double expm1(double d) {
        return m68206e(d, null);
    }

    /* renamed from: f */
    public static double m68207f(double d, double[] dArr) {
        double d2;
        double d3;
        if (d == 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        if (((Long.MIN_VALUE & doubleToRawLongBits) != 0 || d != d) && d != 0.0d) {
            if (dArr != null) {
                dArr[0] = Double.NaN;
            }
            return Double.NaN;
        }
        if (d == Double.POSITIVE_INFINITY) {
            if (dArr != null) {
                dArr[0] = Double.POSITIVE_INFINITY;
            }
            return Double.POSITIVE_INFINITY;
        }
        int i = ((int) (doubleToRawLongBits >> 52)) - 1023;
        if ((9218868437227405312L & doubleToRawLongBits) == 0) {
            if (d == 0.0d) {
                if (dArr != null) {
                    dArr[0] = Double.NEGATIVE_INFINITY;
                }
                return Double.NEGATIVE_INFINITY;
            }
            doubleToRawLongBits <<= 1;
            while ((4503599627370496L & doubleToRawLongBits) == 0) {
                i--;
                doubleToRawLongBits <<= 1;
            }
        }
        if ((i == -1 || i == 0) && d < 1.01d && d > 0.99d && dArr == null) {
            double d4 = d - 1.0d;
            double d5 = d4 * 1.073741824E9d;
            double d6 = (d4 + d5) - d5;
            double d7 = d4 - d6;
            double[][] dArr2 = f109860i;
            double[] dArr3 = dArr2[dArr2.length - 1];
            double d8 = dArr3[0];
            double d9 = dArr3[1];
            for (int length = dArr2.length - 2; length >= 0; length--) {
                double d10 = d8 * d6;
                double d11 = (d8 * d7) + (d9 * d6) + (d9 * d7);
                double d12 = d10 * 1.073741824E9d;
                double d13 = (d10 + d12) - d12;
                double d14 = (d10 - d13) + d11;
                double[] dArr4 = f109860i[length];
                double d15 = d13 + dArr4[0];
                double d16 = d15 * 1.073741824E9d;
                d8 = (d15 + d16) - d16;
                d9 = (d15 - d8) + d14 + dArr4[1];
            }
            double d17 = d8 * d6;
            double d18 = (d8 * d7) + (d6 * d9) + (d9 * d7);
            double d19 = 1.073741824E9d * d17;
            double d20 = (d17 + d19) - d19;
            return d20 + (d17 - d20) + d18;
        }
        long j = 4499201580859392L & doubleToRawLongBits;
        double[] dArr5 = C19292e.f109891a[(int) (j >> 42)];
        double d21 = doubleToRawLongBits & 4398046511103L;
        double d22 = j + 4.503599627370496E15d;
        double d23 = d21 / d22;
        if (dArr != null) {
            double d24 = d23 * 1.073741824E9d;
            double d25 = (d23 + d24) - d24;
            double d26 = d23 - d25;
            double d27 = d26 + (((d21 - (d25 * d22)) - (d26 * d22)) / d22);
            double[][] dArr6 = f109861j;
            double[] dArr7 = dArr6[dArr6.length - 1];
            double d28 = dArr7[0];
            double d29 = dArr7[1];
            for (int length2 = dArr6.length - 2; length2 >= 0; length2--) {
                double d30 = d28 * d25;
                double d31 = (d28 * d27) + (d29 * d25) + (d29 * d27);
                double d32 = d30 * 1.073741824E9d;
                double d33 = (d30 + d32) - d32;
                double d34 = (d30 - d33) + d31;
                double[] dArr8 = f109861j[length2];
                double d35 = d33 + dArr8[0];
                double d36 = d34 + dArr8[1];
                double d37 = d35 * 1.073741824E9d;
                d28 = (d35 + d37) - d37;
                d29 = (d35 - d28) + d36;
            }
            double d38 = d28 * d25;
            double d39 = (d28 * d27) + (d25 * d29) + (d29 * d27);
            d2 = d38 + d39;
            d3 = -((d2 - d38) - d39);
        } else {
            d2 = (((((((((((-0.16624882440418567d) * d23) + 0.19999954120254515d) * d23) - 0.2499999997677497d) * d23) + 0.3333333333332802d) * d23) - 0.5d) * d23) + 1.0d) * d23;
            d3 = 0.0d;
        }
        double d40 = i;
        double d41 = 0.6931470632553101d * d40;
        double d42 = dArr5[0];
        double d43 = d41 + d42;
        double d44 = (-((d43 - d41) - d42)) + 0.0d;
        double d45 = d43 + d2;
        double d46 = d44 + (-((d45 - d43) - d2));
        double d47 = d40 * 1.1730463525082348E-7d;
        double d48 = d45 + d47;
        double d49 = d46 + (-((d48 - d45) - d47));
        double d50 = dArr5[1];
        double d51 = d48 + d50;
        double d52 = d49 + (-((d51 - d48) - d50));
        double d53 = d51 + d3;
        double d54 = d52 + (-((d53 - d51) - d3));
        if (dArr != null) {
            dArr[0] = d53;
            dArr[1] = d54;
        }
        return d53 + d54;
    }

    public static double floor(double d) {
        if (d != d || d >= 4.503599627370496E15d || d <= -4.503599627370496E15d) {
            return d;
        }
        long j = (long) d;
        if (d < 0.0d && j != d) {
            j--;
        }
        return j == 0 ? d * j : j;
    }

    public static int floorDiv(int i, int i2) throws MathArithmeticException {
        if (i2 != 0) {
            int i3 = i % i2;
            if ((i ^ i2) < 0 && i3 != 0) {
                return (i / i2) - 1;
            }
            return i / i2;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static int floorMod(int i, int i2) throws MathArithmeticException {
        if (i2 != 0) {
            int i3 = i % i2;
            return ((i ^ i2) >= 0 || i3 == 0) ? i3 : i2 + i3;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    /* renamed from: g */
    public static double m68208g(double d) {
        return ((((((2.479773539153719E-5d * r4) - 0.0013888888689039883d) * r4) + 0.041666666666621166d) * r4) - 0.49999999999999994d) * d * d;
    }

    public static int getExponent(double d) {
        return ((int) ((Double.doubleToRawLongBits(d) >>> 52) & 2047)) - 1023;
    }

    /* renamed from: h */
    public static double m68209h(double d) {
        return ((((((2.7553817452272217E-6d * r0) - 1.9841269659586505E-4d) * r0) + 0.008333333333329196d) * r0) - 0.16666666666666666d) * d * d * d;
    }

    public static double hypot(double d, double d2) {
        if (Double.isInfinite(d) || Double.isInfinite(d2)) {
            return Double.POSITIVE_INFINITY;
        }
        if (Double.isNaN(d) || Double.isNaN(d2)) {
            return Double.NaN;
        }
        int exponent = getExponent(d);
        int exponent2 = getExponent(d2);
        if (exponent > exponent2 + 27) {
            return abs(d);
        }
        if (exponent2 > exponent + 27) {
            return abs(d2);
        }
        int i = (exponent + exponent2) / 2;
        int i2 = -i;
        double scalb = scalb(d, i2);
        double scalb2 = scalb(d2, i2);
        return scalb(sqrt((scalb * scalb) + (scalb2 * scalb2)), i);
    }

    /* renamed from: i */
    public static void m68210i(double d, double[] dArr) {
        long j;
        long j2;
        long j3;
        int i = (((int) ((r0 >> 52) & 2047)) - 1023) + 1;
        long doubleToRawLongBits = ((Double.doubleToRawLongBits(d) & 4503599627370495L) | 4503599627370496L) << 11;
        int i2 = i >> 6;
        int i3 = i - (i2 << 6);
        if (i3 != 0) {
            long j4 = i2 == 0 ? 0L : f109869r[i2 - 1] << i3;
            long[] jArr = f109869r;
            long j5 = jArr[i2];
            int i4 = 64 - i3;
            j = j4 | (j5 >>> i4);
            long j6 = jArr[i2 + 1];
            j2 = (j5 << i3) | (j6 >>> i4);
            j3 = (j6 << i3) | (jArr[i2 + 2] >>> i4);
        } else {
            j = i2 == 0 ? 0L : f109869r[i2 - 1];
            long[] jArr2 = f109869r;
            j2 = jArr2[i2];
            j3 = jArr2[i2 + 1];
        }
        long j7 = doubleToRawLongBits >>> 32;
        long j8 = doubleToRawLongBits & 4294967295L;
        long j9 = j2 >>> 32;
        long j10 = j2 & 4294967295L;
        long j11 = j7 * j9;
        long j12 = j8 * j10;
        long j13 = j9 * j8;
        long j14 = j10 * j7;
        long j15 = j12 + (j14 << 32);
        long j16 = j11 + (j14 >>> 32);
        boolean z = (j12 & Long.MIN_VALUE) != 0;
        boolean z2 = (j14 & SVG.f15810R) != 0;
        long j17 = j15 & Long.MIN_VALUE;
        boolean z3 = j17 != 0;
        if ((z && z2) || ((z || z2) && !z3)) {
            j16++;
        }
        boolean z4 = j17 != 0;
        boolean z5 = (j13 & SVG.f15810R) != 0;
        long j18 = j15 + (j13 << 32);
        long j19 = j16 + (j13 >>> 32);
        long j20 = j18 & Long.MIN_VALUE;
        boolean z6 = j20 != 0;
        if ((z4 && z5) || ((z4 || z5) && !z6)) {
            j19++;
        }
        long j21 = j3 >>> 32;
        long j22 = (j7 * j21) + (((j21 * j8) + ((j3 & 4294967295L) * j7)) >>> 32);
        boolean z7 = j20 != 0;
        boolean z8 = (j22 & Long.MIN_VALUE) != 0;
        long j23 = j18 + j22;
        boolean z9 = (j23 & Long.MIN_VALUE) != 0;
        if ((z7 && z8) || ((z7 || z8) && !z9)) {
            j19++;
        }
        long j24 = j >>> 32;
        long j25 = j & 4294967295L;
        long j26 = j19 + (j8 * j25) + (((j8 * j24) + (j7 * j25)) << 32);
        int i5 = (int) (j26 >>> 62);
        long j27 = (j26 << 2) | (j23 >>> 62);
        long j28 = j23 << 2;
        long j29 = j27 >>> 32;
        long j30 = j27 & 4294967295L;
        long[] jArr3 = f109870s;
        long j31 = jArr3[0];
        long j32 = j31 >>> 32;
        long j33 = j31 & 4294967295L;
        long j34 = j29 * j32;
        long j35 = j30 * j33;
        long j36 = j32 * j30;
        long j37 = j33 * j29;
        long j38 = j35 + (j37 << 32);
        long j39 = j34 + (j37 >>> 32);
        boolean z10 = (j35 & Long.MIN_VALUE) != 0;
        boolean z11 = (j37 & SVG.f15810R) != 0;
        long j40 = j38 & Long.MIN_VALUE;
        boolean z12 = j40 != 0;
        if ((z10 && z11) || ((z10 || z11) && !z12)) {
            j39++;
        }
        boolean z13 = j40 != 0;
        boolean z14 = (j36 & SVG.f15810R) != 0;
        long j41 = j38 + (j36 << 32);
        long j42 = j39 + (j36 >>> 32);
        long j43 = j41 & Long.MIN_VALUE;
        boolean z15 = j43 != 0;
        if ((z13 && z14) || ((z13 || z14) && !z15)) {
            j42++;
        }
        long j44 = jArr3[1];
        long j45 = j44 >>> 32;
        long j46 = (j29 * j45) + (((j30 * j45) + (j29 * (j44 & 4294967295L))) >>> 32);
        boolean z16 = j43 != 0;
        boolean z17 = (j46 & Long.MIN_VALUE) != 0;
        long j47 = j41 + j46;
        long j48 = j47 & Long.MIN_VALUE;
        boolean z18 = j48 != 0;
        if ((z16 && z17) || ((z16 || z17) && !z18)) {
            j42++;
        }
        long j49 = j28 >>> 32;
        long j50 = j31 >>> 32;
        long j51 = (j49 * j50) + ((((j28 & 4294967295L) * j50) + (j49 * (j31 & 4294967295L))) >>> 32);
        boolean z19 = j48 != 0;
        boolean z20 = (j51 & Long.MIN_VALUE) != 0;
        boolean z21 = ((j47 + j51) & Long.MIN_VALUE) != 0;
        if ((z19 && z20) || ((z19 || z20) && !z21)) {
            j42++;
        }
        double d2 = (j42 >>> 12) / 4.503599627370496E15d;
        double d3 = ((((j42 & 4095) << 40) + (r34 >>> 24)) / 4.503599627370496E15d) / 4.503599627370496E15d;
        double d4 = d2 + d3;
        dArr[0] = i5;
        dArr[1] = d4 * 2.0d;
        dArr[2] = (-((d4 - d2) - d3)) * 2.0d;
    }

    public static int incrementExact(int i) throws MathArithmeticException {
        if (i != Integer.MAX_VALUE) {
            return i + 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i), 1);
    }

    /* renamed from: j */
    public static double m68211j(double d, double d2) {
        int i = (int) ((8.0d * d) + 0.5d);
        double d3 = d - f109871t[i];
        double d4 = f109863l[i];
        double d5 = f109864m[i];
        double d6 = f109865n[i];
        double d7 = f109866o[i];
        double m68209h = m68209h(d3);
        double m68208g = m68208g(d3);
        double d8 = 1.073741824E9d * d3;
        double d9 = (d3 + d8) - d8;
        double d10 = m68209h + (d3 - d9);
        double d11 = d4 + 0.0d;
        double d12 = d6 * d9;
        double d13 = d11 + d12;
        double d14 = (-((d11 - 0.0d) - d4)) + 0.0d + (-((d13 - d11) - d12)) + (d4 * m68208g) + (d6 * d10) + d5 + (d7 * d9) + (d5 * m68208g) + (d7 * d10);
        if (d2 != 0.0d) {
            double d15 = (((d6 + d7) * (m68208g + 1.0d)) - ((d4 + d5) * (d9 + d10))) * d2;
            double d16 = d13 + d15;
            d14 += -((d16 - d13) - d15);
            d13 = d16;
        }
        return d13 + d14;
    }

    /* renamed from: k */
    public static double m68212k(double d, double d2, boolean z) {
        double d3;
        double d4;
        int i = (int) ((8.0d * d) + 0.5d);
        double d5 = d - f109871t[i];
        double d6 = f109863l[i];
        double d7 = f109864m[i];
        double d8 = f109865n[i];
        double d9 = f109866o[i];
        double m68209h = m68209h(d5);
        double m68208g = m68208g(d5);
        double d10 = d5 * 1.073741824E9d;
        double d11 = (d5 + d10) - d10;
        double d12 = m68209h + (d5 - d11);
        double d13 = d6 + 0.0d;
        double d14 = d8 * d11;
        double d15 = d13 + d14;
        double d16 = (-((d13 - 0.0d) - d6)) + 0.0d + (-((d15 - d13) - d14)) + (d6 * m68208g) + (d8 * d12) + d7 + (d9 * d11) + (d7 * m68208g) + (d9 * d12);
        double d17 = d15 + d16;
        double d18 = -((d17 - d15) - d16);
        double d19 = d8 * 1.0d;
        double d20 = d19 + 0.0d;
        double d21 = (-((d20 - 0.0d) - d19)) + 0.0d;
        double d22 = d18;
        double d23 = (-d6) * d11;
        double d24 = d20 + d23;
        double d25 = ((d21 + (-((d24 - d20) - d23))) + (((1.0d * d9) + (d8 * m68208g)) + (d9 * m68208g))) - (((d7 * d11) + (d6 * d12)) + (d7 * d12));
        double d26 = d24 + d25;
        double d27 = -((d26 - d24) - d25);
        if (z) {
            d3 = d27;
            d4 = d26;
            d26 = d17;
        } else {
            d3 = d22;
            d22 = d27;
            d4 = d17;
        }
        double d28 = d4 / d26;
        double d29 = d28 * 1.073741824E9d;
        double d30 = (d28 + d29) - d29;
        double d31 = d28 - d30;
        double d32 = 1.073741824E9d * d26;
        double d33 = (d26 + d32) - d32;
        double d34 = d26 - d33;
        double d35 = (((((d4 - (d30 * d33)) - (d30 * d34)) - (d33 * d31)) - (d31 * d34)) / d26) + (d3 / d26) + ((((-d4) * d22) / d26) / d26);
        if (d2 != 0.0d) {
            double d36 = d2 + (d28 * d28 * d2);
            if (z) {
                d36 = -d36;
            }
            d35 += d36;
        }
        return d28 + d35;
    }

    public static double log(double d) {
        return m68207f(d, null);
    }

    public static double log10(double d) {
        double[] dArr = new double[2];
        double m68207f = m68207f(d, dArr);
        if (Double.isInfinite(m68207f)) {
            return m68207f;
        }
        double d2 = dArr[0];
        double d3 = 1.073741824E9d * d2;
        double d4 = (d2 + d3) - d3;
        double d5 = (d2 - d4) + dArr[1];
        return (d5 * 1.9699272335463627E-8d) + (1.9699272335463627E-8d * d4) + (d5 * 0.4342944622039795d) + (d4 * 0.4342944622039795d);
    }

    public static double log1p(double d) {
        if (d == -1.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        if (d <= 1.0E-6d && d >= -1.0E-6d) {
            return ((((0.3333333333333333d * d) - 0.5d) * d) + 1.0d) * d;
        }
        double d2 = d + 1.0d;
        double d3 = -((d2 - 1.0d) - d);
        double[] dArr = new double[2];
        double m68207f = m68207f(d2, dArr);
        if (Double.isInfinite(m68207f)) {
            return m68207f;
        }
        double d4 = d3 / d2;
        return (((0.5d * d4) + 1.0d) * d4) + dArr[1] + dArr[0];
    }

    public static void main(String[] strArr) {
        PrintStream printStream = System.out;
        b9g.m53206e(printStream, "EXP_INT_TABLE_A", 1500, C19290c.f109883a);
        b9g.m53206e(printStream, "EXP_INT_TABLE_B", 1500, C19290c.f109884b);
        b9g.m53206e(printStream, "EXP_FRAC_TABLE_A", 1025, C19289b.f109881a);
        b9g.m53206e(printStream, "EXP_FRAC_TABLE_B", 1025, C19289b.f109882b);
        b9g.m53207f(printStream, "LN_MANT", 1024, C19292e.f109891a);
        b9g.m53206e(printStream, "SINE_TABLE_A", 14, f109863l);
        b9g.m53206e(printStream, "SINE_TABLE_B", 14, f109864m);
        b9g.m53206e(printStream, "COSINE_TABLE_A", 14, f109865n);
        b9g.m53206e(printStream, "COSINE_TABLE_B", 14, f109866o);
        b9g.m53206e(printStream, "TANGENT_TABLE_A", 14, f109867p);
        b9g.m53206e(printStream, "TANGENT_TABLE_B", 14, f109868q);
    }

    public static int max(int i, int i2) {
        return i <= i2 ? i2 : i;
    }

    public static int min(int i, int i2) {
        return i <= i2 ? i : i2;
    }

    public static int multiplyExact(int i, int i2) {
        if ((i2 <= 0 || (i <= Integer.MAX_VALUE / i2 && i >= Integer.MIN_VALUE / i2)) && ((i2 >= -1 || (i <= Integer.MIN_VALUE / i2 && i >= Integer.MAX_VALUE / i2)) && !(i2 == -1 && i == Integer.MIN_VALUE))) {
            return i * i2;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_MULTIPLICATION, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static double nextAfter(double d, double d2) {
        if (Double.isNaN(d) || Double.isNaN(d2)) {
            return Double.NaN;
        }
        if (d == d2) {
            return d2;
        }
        if (Double.isInfinite(d)) {
            return d < 0.0d ? -1.7976931348623157E308d : Double.MAX_VALUE;
        }
        if (d == 0.0d) {
            return d2 < 0.0d ? -4.9E-324d : Double.MIN_VALUE;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        long j = Long.MIN_VALUE & doubleToRawLongBits;
        if ((d2 < d) ^ (j == 0)) {
            return Double.longBitsToDouble(j | ((doubleToRawLongBits & Long.MAX_VALUE) + 1));
        }
        return Double.longBitsToDouble(j | ((doubleToRawLongBits & Long.MAX_VALUE) - 1));
    }

    public static double nextDown(double d) {
        return nextAfter(d, Double.NEGATIVE_INFINITY);
    }

    public static double nextUp(double d) {
        return nextAfter(d, Double.POSITIVE_INFINITY);
    }

    public static double pow(double d, double d2) {
        if (d2 == 0.0d) {
            return 1.0d;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d2);
        int i = (int) ((doubleToRawLongBits & 9218868437227405312L) >> 52);
        long j = doubleToRawLongBits & 4503599627370495L;
        long doubleToRawLongBits2 = Double.doubleToRawLongBits(d);
        int i2 = (int) ((doubleToRawLongBits2 & 9218868437227405312L) >> 52);
        long j2 = doubleToRawLongBits2 & 4503599627370495L;
        if (i > 1085) {
            if ((i == 2047 && j != 0) || (i2 == 2047 && j2 != 0)) {
                return Double.NaN;
            }
            if (i2 == 1023 && j2 == 0) {
                return i == 2047 ? Double.NaN : 1.0d;
            }
            return ((d2 > 0.0d ? 1 : (d2 == 0.0d ? 0 : -1)) > 0) ^ (i2 < 1023) ? Double.POSITIVE_INFINITY : 0.0d;
        }
        if (i >= 1023) {
            long j3 = j | 4503599627370496L;
            if (i >= 1075) {
                long j4 = j3 << (i - 1075);
                if (d2 < 0.0d) {
                    j4 = -j4;
                }
                return pow(d, j4);
            }
            int i3 = 1075 - i;
            if ((((-1) << i3) & j3) == j3) {
                long j5 = j3 >> i3;
                if (d2 < 0.0d) {
                    j5 = -j5;
                }
                return pow(d, j5);
            }
        }
        if (d == 0.0d) {
            return d2 < 0.0d ? Double.POSITIVE_INFINITY : 0.0d;
        }
        if (i2 == 2047) {
            if (j2 == 0) {
                return d2 < 0.0d ? 0.0d : Double.POSITIVE_INFINITY;
            }
            return Double.NaN;
        }
        if (d < 0.0d) {
            return Double.NaN;
        }
        double d3 = d2 * 1.073741824E9d;
        double d4 = (d2 + d3) - d3;
        double d5 = d2 - d4;
        double[] dArr = new double[2];
        double m68207f = m68207f(d, dArr);
        if (Double.isInfinite(m68207f)) {
            return m68207f;
        }
        double d6 = dArr[0];
        double d7 = 1.073741824E9d * d6;
        double d8 = (d6 + d7) - d7;
        double d9 = dArr[1] + (d6 - d8);
        double d10 = d8 * d4;
        double d11 = (d8 * d5) + (d4 * d9) + (d9 * d5);
        double d12 = d10 + d11;
        double d13 = -((d12 - d10) - d11);
        return m68205d(d12, ((((((((0.008333333333333333d * d13) + 0.041666666666666664d) * d13) + 0.16666666666666666d) * d13) + 0.5d) * d13) + 1.0d) * d13, null);
    }

    public static double random() {
        return Math.random();
    }

    public static double rint(double d) {
        double floor = floor(d);
        double d2 = d - floor;
        if (d2 <= 0.5d) {
            return (d2 >= 0.5d && (((long) floor) & 1) != 0) ? floor + 1.0d : floor;
        }
        if (floor == -1.0d) {
            return -0.0d;
        }
        return floor + 1.0d;
    }

    public static long round(double d) {
        return (long) floor(d + 0.5d);
    }

    public static double scalb(double d, int i) {
        if (i > -1023 && i < 1024) {
            return Double.longBitsToDouble((i + 1023) << 52) * d;
        }
        if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
            return d;
        }
        if (i < -2098) {
            return d > 0.0d ? 0.0d : -0.0d;
        }
        if (i > 2097) {
            return d > 0.0d ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        long j = Long.MIN_VALUE & doubleToRawLongBits;
        int i2 = ((int) (doubleToRawLongBits >>> 52)) & 2047;
        long j2 = doubleToRawLongBits & 4503599627370495L;
        int i3 = i2 + i;
        if (i < 0) {
            if (i3 > 0) {
                return Double.longBitsToDouble((i3 << 52) | j | j2);
            }
            if (i3 <= -53) {
                return j == 0 ? 0.0d : -0.0d;
            }
            long j3 = 4503599627370496L | j2;
            long j4 = (1 << (-i3)) & j3;
            long j5 = j3 >>> (1 - i3);
            if (j4 != 0) {
                j5++;
            }
            return Double.longBitsToDouble(j5 | j);
        }
        if (i2 != 0) {
            if (i3 < 2047) {
                return Double.longBitsToDouble((i3 << 52) | j | j2);
            }
            return j == 0 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
        }
        while ((j2 >>> 52) != 1) {
            j2 <<= 1;
            i3--;
        }
        int i4 = i3 + 1;
        long j6 = j2 & 4503599627370495L;
        if (i4 < 2047) {
            return Double.longBitsToDouble(j6 | (i4 << 52) | j);
        }
        return j == 0 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
    }

    public static double signum(double d) {
        if (d < 0.0d) {
            return -1.0d;
        }
        if (d > 0.0d) {
            return 1.0d;
        }
        return d;
    }

    public static double sin(double d) {
        double d2;
        boolean z;
        double m68211j;
        double d3 = 0.0d;
        int i = 0;
        if (d < 0.0d) {
            d2 = -d;
            z = true;
        } else {
            d2 = d;
            z = false;
        }
        if (d2 == 0.0d) {
            return Double.doubleToRawLongBits(d) < 0 ? -0.0d : 0.0d;
        }
        if (d2 != d2 || d2 == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        if (d2 > 3294198.0d) {
            double[] dArr = new double[3];
            m68210i(d2, dArr);
            i = ((int) dArr[0]) & 3;
            d2 = dArr[1];
            d3 = dArr[2];
        } else if (d2 > 1.5707963267948966d) {
            C19288a c19288a = new C19288a(d2);
            i = c19288a.m68213a() & 3;
            d2 = c19288a.m68214b();
            d3 = c19288a.m68215c();
        }
        if (z) {
            i ^= 2;
        }
        if (i == 0) {
            return m68211j(d2, d3);
        }
        if (i == 1) {
            return m68203b(d2, d3);
        }
        if (i == 2) {
            m68211j = m68211j(d2, d3);
        } else {
            if (i != 3) {
                return Double.NaN;
            }
            m68211j = m68203b(d2, d3);
        }
        return -m68211j;
    }

    public static double sinh(double d) {
        boolean z;
        double d2;
        double d3;
        double d4;
        double exp;
        double exp2;
        double d5 = d;
        if (d5 != d5) {
            return d5;
        }
        double d6 = 0.5d;
        if (d5 > 20.0d) {
            if (d5 >= f109856e) {
                exp2 = exp(d5 * 0.5d);
                return d6 * exp2 * exp2;
            }
            exp = exp(d);
            return exp * d6;
        }
        if (d5 < -20.0d) {
            d6 = -0.5d;
            if (d5 <= (-f109856e)) {
                exp2 = exp(d5 * (-0.5d));
                return d6 * exp2 * exp2;
            }
            exp = exp(-d5);
            return exp * d6;
        }
        if (d5 == 0.0d) {
            return d5;
        }
        if (d5 < 0.0d) {
            d5 = -d5;
            z = true;
        } else {
            z = false;
        }
        if (d5 > 0.25d) {
            double[] dArr = new double[2];
            m68205d(d5, 0.0d, dArr);
            double d7 = dArr[0];
            double d8 = dArr[1];
            double d9 = d7 + d8;
            double d10 = -((d9 - d7) - d8);
            double d11 = d9 * 1.073741824E9d;
            double d12 = (d9 + d11) - d11;
            double d13 = d9 - d12;
            double d14 = 1.0d / d9;
            double d15 = 1.073741824E9d * d14;
            double d16 = (d14 + d15) - d15;
            double d17 = d14 - d16;
            double d18 = d17 + (((((1.0d - (d12 * d16)) - (d12 * d17)) - (d13 * d16)) - (d13 * d17)) * d14) + ((-d10) * d14 * d14);
            double d19 = -d16;
            double d20 = -d18;
            double d21 = d9 + d19;
            d2 = d10 + (-((d21 - d9) - d19));
            d3 = d21 + d20;
            d4 = -((d3 - d21) - d20);
        } else {
            double[] dArr2 = new double[2];
            m68206e(d5, dArr2);
            double d22 = dArr2[0];
            double d23 = dArr2[1];
            double d24 = d22 + d23;
            double d25 = -((d24 - d22) - d23);
            double d26 = d24 + 1.0d;
            double d27 = 1.0d / d26;
            double d28 = (-((d26 - 1.0d) - d24)) + d25;
            double d29 = d24 * d27;
            double d30 = d29 * 1.073741824E9d;
            double d31 = (d29 + d30) - d30;
            double d32 = d29 - d31;
            double d33 = 1.073741824E9d * d26;
            double d34 = (d26 + d33) - d33;
            double d35 = d26 - d34;
            double d36 = d32 + (((((d24 - (d34 * d31)) - (d34 * d32)) - (d35 * d31)) - (d35 * d32)) * d27) + (d25 * d27) + ((-d24) * d28 * d27 * d27);
            double d37 = d24 + d31;
            d2 = d25 + (-((d37 - d24) - d31));
            d3 = d37 + d36;
            d4 = -((d3 - d37) - d36);
        }
        double d38 = (d3 + d2 + d4) * 0.5d;
        return z ? -d38 : d38;
    }

    public static double sqrt(double d) {
        return Math.sqrt(d);
    }

    public static int subtractExact(int i, int i2) {
        int i3 = i - i2;
        if ((i ^ i2) >= 0 || (i3 ^ i2) < 0) {
            return i3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static double tan(double d) {
        double d2;
        boolean z;
        int i;
        double d3 = 0.0d;
        if (d < 0.0d) {
            d2 = -d;
            z = true;
        } else {
            d2 = d;
            z = false;
        }
        if (d2 == 0.0d) {
            return Double.doubleToRawLongBits(d) < 0 ? -0.0d : 0.0d;
        }
        if (d2 != d2 || d2 == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        if (d2 > 3294198.0d) {
            double[] dArr = new double[3];
            m68210i(d2, dArr);
            i = 3 & ((int) dArr[0]);
            d2 = dArr[1];
            d3 = dArr[2];
        } else if (d2 > 1.5707963267948966d) {
            C19288a c19288a = new C19288a(d2);
            i = 3 & c19288a.m68213a();
            d2 = c19288a.m68214b();
            d3 = c19288a.m68215c();
        } else {
            i = 0;
        }
        if (d2 > 1.5d) {
            double d4 = 1.5707963267948966d - d2;
            double d5 = (-((d4 - 1.5707963267948966d) + d2)) + (6.123233995736766E-17d - d3);
            double d6 = d4 + d5;
            i ^= 1;
            z = !z;
            d3 = -((d6 - d4) - d5);
            d2 = d6;
        }
        double m68212k = (i & 1) == 0 ? m68212k(d2, d3, false) : -m68212k(d2, d3, true);
        return z ? -m68212k : m68212k;
    }

    public static double tanh(double d) {
        boolean z;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6 = d;
        if (d6 != d6) {
            return d6;
        }
        if (d6 > 20.0d) {
            return 1.0d;
        }
        if (d6 < -20.0d) {
            return -1.0d;
        }
        if (d6 == 0.0d) {
            return d6;
        }
        if (d6 < 0.0d) {
            d6 = -d6;
            z = true;
        } else {
            z = false;
        }
        if (d6 >= 0.5d) {
            double[] dArr = new double[2];
            m68205d(d6 * 2.0d, 0.0d, dArr);
            double d7 = dArr[0];
            double d8 = dArr[1];
            double d9 = d7 + d8;
            double d10 = -((d9 - d7) - d8);
            double d11 = (-1.0d) + d9;
            double d12 = d11 + d10;
            double d13 = (-((d11 + 1.0d) - d9)) + (-((d12 - d11) - d10));
            double d14 = d9 + 1.0d;
            double d15 = -((d14 - 1.0d) - d9);
            d2 = d14 + d10;
            double d16 = d15 + (-((d2 - d14) - d10));
            double d17 = d2 * 1.073741824E9d;
            double d18 = (d2 + d17) - d17;
            double d19 = d2 - d18;
            double d20 = d12 / d2;
            double d21 = 1.073741824E9d * d20;
            d3 = (d20 + d21) - d21;
            double d22 = d20 - d3;
            d4 = d22 + (((((d12 - (d18 * d3)) - (d18 * d22)) - (d19 * d3)) - (d19 * d22)) / d2) + (d13 / d2);
            d5 = (-d16) * d12;
        } else {
            double[] dArr2 = new double[2];
            m68206e(d6 * 2.0d, dArr2);
            double d23 = dArr2[0];
            double d24 = dArr2[1];
            double d25 = d23 + d24;
            double d26 = -((d25 - d23) - d24);
            double d27 = d25 + 2.0d;
            d2 = d27 + d26;
            double d28 = (-((d27 - 2.0d) - d25)) + (-((d2 - d27) - d26));
            double d29 = d2 * 1.073741824E9d;
            double d30 = (d2 + d29) - d29;
            double d31 = d2 - d30;
            double d32 = d25 / d2;
            double d33 = 1.073741824E9d * d32;
            d3 = (d32 + d33) - d33;
            double d34 = d32 - d3;
            d4 = d34 + (((((d25 - (d30 * d3)) - (d30 * d34)) - (d31 * d3)) - (d31 * d34)) / d2) + (d26 / d2);
            d5 = (-d28) * d25;
        }
        double d35 = d3 + d4 + ((d5 / d2) / d2);
        return z ? -d35 : d35;
    }

    public static double toDegrees(double d) {
        if (Double.isInfinite(d) || d == 0.0d) {
            return d;
        }
        double m68204c = m68204c(d);
        double d2 = d - m68204c;
        return (d2 * 3.145894820876798E-6d) + (d2 * 57.2957763671875d) + (3.145894820876798E-6d * m68204c) + (m68204c * 57.2957763671875d);
    }

    public static int toIntExact(long j) throws MathArithmeticException {
        if (j < ParserBase.f21225q || j > 2147483647L) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
        }
        return (int) j;
    }

    public static double toRadians(double d) {
        if (Double.isInfinite(d) || d == 0.0d) {
            return d;
        }
        double m68204c = m68204c(d);
        double d2 = d - m68204c;
        double d3 = (d2 * 1.997844754509471E-9d) + (d2 * 0.01745329052209854d) + (1.997844754509471E-9d * m68204c) + (m68204c * 0.01745329052209854d);
        return d3 == 0.0d ? d3 * d : d3;
    }

    public static double ulp(double d) {
        if (Double.isInfinite(d)) {
            return Double.POSITIVE_INFINITY;
        }
        return abs(d - Double.longBitsToDouble(Double.doubleToRawLongBits(d) ^ 1));
    }

    public static long abs(long j) {
        long j2 = j >>> 63;
        return (j ^ ((~j2) + 1)) + j2;
    }

    public static long addExact(long j, long j2) throws MathArithmeticException {
        long j3 = j + j2;
        if ((j ^ j2) < 0 || (j3 ^ j2) >= 0) {
            return j3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j), Long.valueOf(j2));
    }

    public static long decrementExact(long j) throws MathArithmeticException {
        if (j != Long.MIN_VALUE) {
            return j - 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Long.valueOf(j), 1);
    }

    public static int getExponent(float f) {
        return ((Float.floatToRawIntBits(f) >>> 23) & 255) - 127;
    }

    public static long incrementExact(long j) throws MathArithmeticException {
        if (j != Long.MAX_VALUE) {
            return j + 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j), 1);
    }

    public static double log(double d, double d2) {
        return log(d2) / log(d);
    }

    public static long max(long j, long j2) {
        return j <= j2 ? j2 : j;
    }

    public static long min(long j, long j2) {
        return j <= j2 ? j : j2;
    }

    public static float nextDown(float f) {
        return nextAfter(f, Double.NEGATIVE_INFINITY);
    }

    public static float nextUp(float f) {
        return nextAfter(f, Double.POSITIVE_INFINITY);
    }

    public static int round(float f) {
        return (int) floor(f + 0.5f);
    }

    public static float signum(float f) {
        if (f < 0.0f) {
            return -1.0f;
        }
        if (f > 0.0f) {
            return 1.0f;
        }
        return f;
    }

    public static long subtractExact(long j, long j2) {
        long j3 = j - j2;
        if ((j ^ j2) >= 0 || (j3 ^ j2) < 0) {
            return j3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Long.valueOf(j), Long.valueOf(j2));
    }

    public static float abs(float f) {
        return Float.intBitsToFloat(Float.floatToRawIntBits(f) & Integer.MAX_VALUE);
    }

    public static float copySign(float f, float f2) {
        return (Float.floatToRawIntBits(f2) ^ Float.floatToRawIntBits(f)) >= 0 ? f : -f;
    }

    public static long floorMod(long j, long j2) {
        if (j2 != 0) {
            long j3 = j % j2;
            return ((j ^ j2) >= 0 || j3 == 0) ? j3 : j2 + j3;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static float max(float f, float f2) {
        if (f > f2) {
            return f;
        }
        if (f < f2) {
            return f2;
        }
        if (f != f2) {
            return Float.NaN;
        }
        return Float.floatToRawIntBits(f) == Integer.MIN_VALUE ? f2 : f;
    }

    public static float min(float f, float f2) {
        if (f > f2) {
            return f2;
        }
        if (f < f2) {
            return f;
        }
        if (f != f2) {
            return Float.NaN;
        }
        return Float.floatToRawIntBits(f) == Integer.MIN_VALUE ? f : f2;
    }

    public static long multiplyExact(long j, long j2) {
        if ((j2 <= 0 || (j <= Long.MAX_VALUE / j2 && j >= Long.MIN_VALUE / j2)) && ((j2 >= -1 || (j <= Long.MIN_VALUE / j2 && j >= Long.MAX_VALUE / j2)) && !(j2 == -1 && j == Long.MIN_VALUE))) {
            return j * j2;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_MULTIPLICATION, Long.valueOf(j), Long.valueOf(j2));
    }

    public static float ulp(float f) {
        if (Float.isInfinite(f)) {
            return Float.POSITIVE_INFINITY;
        }
        return abs(f - Float.intBitsToFloat(Float.floatToIntBits(f) ^ 1));
    }

    /* renamed from: org.apache.commons.math3.util.FastMath$d */
    /* loaded from: classes12.dex */
    public static class C19291d {

        /* renamed from: d */
        public static final C19291d f109885d = new C19291d(Double.NaN, 0.0d);

        /* renamed from: e */
        public static final C19291d f109886e = new C19291d(Double.POSITIVE_INFINITY, 0.0d);

        /* renamed from: f */
        public static final C19291d f109887f = new C19291d(Double.NEGATIVE_INFINITY, 0.0d);

        /* renamed from: a */
        public final double f109888a;

        /* renamed from: b */
        public final double f109889b;

        /* renamed from: c */
        public final double f109890c;

        public C19291d(double d) {
            this.f109888a = d;
            double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d) & (-134217728));
            this.f109889b = longBitsToDouble;
            this.f109890c = d - longBitsToDouble;
        }

        /* renamed from: c */
        public C19291d m68222c(C19291d c19291d) {
            C19291d c19291d2 = new C19291d(this.f109888a * c19291d.f109888a);
            double d = this.f109890c;
            double d2 = c19291d.f109890c;
            double d3 = c19291d2.f109888a;
            double d4 = this.f109889b;
            double d5 = c19291d.f109889b;
            return new C19291d(c19291d2.f109889b, c19291d2.f109890c + ((d * d2) - (((d3 - (d4 * d5)) - (d * d5)) - (d4 * d2))));
        }

        /* renamed from: d */
        public final C19291d m68223d(long j) {
            C19291d c19291d = new C19291d(1.0d);
            C19291d c19291d2 = new C19291d(this.f109888a, this.f109889b, this.f109890c);
            for (long j2 = j; j2 != 0; j2 >>>= 1) {
                if ((j2 & 1) != 0) {
                    c19291d = c19291d.m68222c(c19291d2);
                }
                c19291d2 = c19291d2.m68222c(c19291d2);
            }
            return Double.isNaN(c19291d.f109888a) ? Double.isNaN(this.f109888a) ? f109885d : FastMath.abs(this.f109888a) < 1.0d ? new C19291d(FastMath.copySign(0.0d, this.f109888a), 0.0d) : (this.f109888a >= 0.0d || (j & 1) != 1) ? f109886e : f109887f : c19291d;
        }

        /* renamed from: e */
        public C19291d m68224e() {
            C19291d c19291d = new C19291d(1.0d / this.f109888a);
            C19291d m68222c = m68222c(c19291d);
            double d = (m68222c.f109889b - 1.0d) + m68222c.f109890c;
            return Double.isNaN(d) ? c19291d : new C19291d(c19291d.f109889b, c19291d.f109890c - (d / this.f109888a));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C19291d(double r10, double r12) {
            /*
                r9 = this;
                r0 = 0
                int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r2 != 0) goto L19
                int r0 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
                if (r0 != 0) goto L17
                long r0 = java.lang.Double.doubleToRawLongBits(r10)
                r2 = -9223372036854775808
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 != 0) goto L17
                r0 = -9223372036854775808
                goto L1b
            L17:
                r3 = r12
                goto L1c
            L19:
                double r0 = r10 + r12
            L1b:
                r3 = r0
            L1c:
                r2 = r9
                r5 = r10
                r7 = r12
                r2.<init>(r3, r5, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.FastMath.C19291d.<init>(double, double):void");
        }

        public C19291d(double d, double d2, double d3) {
            this.f109888a = d;
            this.f109889b = d2;
            this.f109890c = d3;
        }
    }

    public static double abs(double d) {
        return Double.longBitsToDouble(Double.doubleToRawLongBits(d) & Long.MAX_VALUE);
    }

    public static double max(double d, double d2) {
        if (d > d2) {
            return d;
        }
        if (d < d2) {
            return d2;
        }
        if (d != d2) {
            return Double.NaN;
        }
        return Double.doubleToRawLongBits(d) == Long.MIN_VALUE ? d2 : d;
    }

    public static double min(double d, double d2) {
        if (d > d2) {
            return d2;
        }
        if (d < d2) {
            return d;
        }
        if (d != d2) {
            return Double.NaN;
        }
        return Double.doubleToRawLongBits(d) == Long.MIN_VALUE ? d : d2;
    }

    public static long floorDiv(long j, long j2) throws MathArithmeticException {
        if (j2 != 0) {
            long j3 = j % j2;
            if ((j ^ j2) < 0 && j3 != 0) {
                return (j / j2) - 1;
            }
            return j / j2;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static float nextAfter(float f, double d) {
        double d2 = f;
        if (Double.isNaN(d2) || Double.isNaN(d)) {
            return Float.NaN;
        }
        if (d2 == d) {
            return (float) d;
        }
        if (Float.isInfinite(f)) {
            return f < 0.0f ? -3.4028235E38f : Float.MAX_VALUE;
        }
        if (f == 0.0f) {
            return d < 0.0d ? -1.4E-45f : Float.MIN_VALUE;
        }
        int floatToIntBits = Float.floatToIntBits(f);
        int i = Integer.MIN_VALUE & floatToIntBits;
        if ((d < d2) ^ (i == 0)) {
            return Float.intBitsToFloat(((floatToIntBits & Integer.MAX_VALUE) + 1) | i);
        }
        return Float.intBitsToFloat(((floatToIntBits & Integer.MAX_VALUE) - 1) | i);
    }

    public static double pow(double d, int i) {
        return pow(d, i);
    }

    public static float scalb(float f, int i) {
        if (i > -127 && i < 128) {
            return f * Float.intBitsToFloat((i + 127) << 23);
        }
        if (Float.isNaN(f) || Float.isInfinite(f) || f == 0.0f) {
            return f;
        }
        if (i < -277) {
            return f > 0.0f ? 0.0f : -0.0f;
        }
        if (i > 276) {
            return f > 0.0f ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }
        int floatToIntBits = Float.floatToIntBits(f);
        int i2 = Integer.MIN_VALUE & floatToIntBits;
        int i3 = (floatToIntBits >>> 23) & 255;
        int i4 = floatToIntBits & FloatingPointConverter.f102880l;
        int i5 = i3 + i;
        if (i < 0) {
            if (i5 > 0) {
                return Float.intBitsToFloat(i4 | (i5 << 23) | i2);
            }
            if (i5 <= -24) {
                return i2 == 0 ? 0.0f : -0.0f;
            }
            int i6 = i4 | 8388608;
            int i7 = (1 << (-i5)) & i6;
            int i8 = i6 >>> (1 - i5);
            if (i7 != 0) {
                i8++;
            }
            return Float.intBitsToFloat(i8 | i2);
        }
        if (i3 != 0) {
            if (i5 < 255) {
                return Float.intBitsToFloat(i4 | (i5 << 23) | i2);
            }
            return i2 == 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }
        while ((i4 >>> 23) != 1) {
            i4 <<= 1;
            i5--;
        }
        int i9 = i5 + 1;
        int i10 = i4 & FloatingPointConverter.f102880l;
        if (i9 < 255) {
            return Float.intBitsToFloat(i10 | (i9 << 23) | i2);
        }
        return i2 == 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
    }

    public static double pow(double d, long j) {
        if (j == 0) {
            return 1.0d;
        }
        if (j > 0) {
            return new C19291d(d).m68223d(j).f109888a;
        }
        return new C19291d(d).m68224e().m68223d(-j).f109888a;
    }
}
