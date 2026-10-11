package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.google.android.exoplayer2.extractor.mp4.a */
/* loaded from: classes5.dex */
public abstract class AbstractC4745a {

    /* renamed from: A */
    public static final int f24048A = 1211250227;

    /* renamed from: A0 */
    public static final int f24049A0 = 1935894633;

    /* renamed from: A1 */
    public static final int f24050A1 = 1668050025;

    /* renamed from: B */
    public static final int f24051B = 1681012275;

    /* renamed from: B0 */
    public static final int f24052B0 = 1952804451;

    /* renamed from: B1 */
    public static final int f24053B1 = 1835295606;

    /* renamed from: C */
    public static final int f24054C = 1835295092;

    /* renamed from: C0 */
    public static final int f24055C0 = 1701733238;

    /* renamed from: D */
    public static final int f24056D = 1836069985;

    /* renamed from: D0 */
    public static final int f24057D0 = 1701733217;

    /* renamed from: E */
    public static final int f24058E = 778924082;

    /* renamed from: E0 */
    public static final int f24059E0 = 1718775137;

    /* renamed from: F */
    public static final int f24060F = 778924083;

    /* renamed from: F0 */
    public static final int f24061F0 = 1935763834;

    /* renamed from: G */
    public static final int f24062G = 1835557169;

    /* renamed from: G0 */
    public static final int f24063G0 = 1935763823;

    /* renamed from: H */
    public static final int f24064H = 1835560241;

    /* renamed from: H0 */
    public static final int f24065H0 = 1935828848;

    /* renamed from: I */
    public static final int f24066I = 1835557187;

    /* renamed from: I0 */
    public static final int f24067I0 = 1936158820;

    /* renamed from: J */
    public static final int f24068J = 2002876005;

    /* renamed from: J0 */
    public static final int f24069J0 = 1970628964;

    /* renamed from: K */
    public static final int f24070K = 1819304813;

    /* renamed from: K0 */
    public static final int f24071K0 = 1936027235;

    /* renamed from: L */
    public static final int f24072L = 1936684916;

    /* renamed from: L0 */
    public static final int f24073L0 = 1885434736;

    /* renamed from: M */
    public static final int f24074M = 1633889587;

    /* renamed from: M0 */
    public static final int f24075M0 = 1414810956;

    /* renamed from: N */
    public static final int f24076N = 1684103987;

    /* renamed from: N0 */
    public static final int f24077N0 = 1831958048;

    /* renamed from: O */
    public static final int f24078O = 1700998451;

    /* renamed from: O0 */
    public static final int f24079O0 = 1836070006;

    /* renamed from: P */
    public static final int f24080P = 1684366131;

    /* renamed from: P0 */
    public static final int f24081P0 = 1937011827;

    /* renamed from: Q */
    public static final int f24082Q = 1633889588;

    /* renamed from: Q0 */
    public static final int f24083Q0 = 1937011571;

    /* renamed from: R */
    public static final int f24084R = 1684103988;

    /* renamed from: R0 */
    public static final int f24085R0 = 1668576371;

    /* renamed from: S */
    public static final int f24086S = 1835823201;

    /* renamed from: S0 */
    public static final int f24087S0 = 1937011555;

    /* renamed from: T */
    public static final int f24088T = 1684892784;

    /* renamed from: T0 */
    public static final int f24089T0 = 1937011578;

    /* renamed from: U */
    public static final int f24090U = 1685353315;

    /* renamed from: U0 */
    public static final int f24091U0 = 1937013298;

    /* renamed from: V */
    public static final int f24092V = 1685353320;

    /* renamed from: V0 */
    public static final int f24093V0 = 1937007471;

    /* renamed from: W */
    public static final int f24094W = 1685353324;

    /* renamed from: W0 */
    public static final int f24095W0 = 1668232756;

    /* renamed from: X */
    public static final int f24096X = 1685353317;

    /* renamed from: X0 */
    public static final int f24097X0 = 1954034535;

    /* renamed from: Y */
    public static final int f24098Y = 1685353336;

    /* renamed from: Y0 */
    public static final int f24099Y0 = 2004251764;

    /* renamed from: Z */
    public static final int f24100Z = 1684305011;

    /* renamed from: Z0 */
    public static final int f24101Z0 = 1937010800;

    /* renamed from: a0 */
    public static final int f24102a0 = 1952867444;

    /* renamed from: a1 */
    public static final int f24103a1 = 1664495672;

    /* renamed from: b */
    public static final int f24104b = 8;

    /* renamed from: b0 */
    public static final int f24105b0 = 1952868452;

    /* renamed from: b1 */
    public static final int f24106b1 = 1935764850;

    /* renamed from: c */
    public static final int f24107c = 12;

    /* renamed from: c0 */
    public static final int f24108c0 = 1953654136;

    /* renamed from: c1 */
    public static final int f24109c1 = 1935767394;

    /* renamed from: d */
    public static final int f24110d = 16;

    /* renamed from: d0 */
    public static final int f24111d0 = 1953658222;

    /* renamed from: d1 */
    public static final int f24112d1 = 1969517665;

    /* renamed from: e */
    public static final int f24113e = 1;

    /* renamed from: e0 */
    public static final int f24114e0 = 1936286840;

    /* renamed from: e1 */
    public static final int f24115e1 = 1835365473;

    /* renamed from: f */
    public static final int f24116f = 0;

    /* renamed from: f0 */
    public static final int f24117f0 = 1836019574;

    /* renamed from: f1 */
    public static final int f24118f1 = 1936553057;

    /* renamed from: g */
    public static final int f24119g = 1718909296;

    /* renamed from: g0 */
    public static final int f24120g0 = 1836086884;

    /* renamed from: g1 */
    public static final int f24121g1 = 1935766900;

    /* renamed from: h */
    public static final int f24122h = 1635148593;

    /* renamed from: h0 */
    public static final int f24123h0 = 1836476516;

    /* renamed from: h1 */
    public static final int f24124h1 = 1801812339;

    /* renamed from: i */
    public static final int f24125i = 1635148595;

    /* renamed from: i0 */
    public static final int f24126i0 = 1953653099;

    /* renamed from: i1 */
    public static final int f24127i1 = 1768715124;

    /* renamed from: j */
    public static final int f24128j = 1635148611;

    /* renamed from: j0 */
    public static final int f24129j0 = 1835297121;

    /* renamed from: j1 */
    public static final int f24130j1 = 1835360622;

    /* renamed from: k */
    public static final int f24131k = 1752589105;

    /* renamed from: k0 */
    public static final int f24132k0 = 1835626086;

    /* renamed from: k1 */
    public static final int f24133k1 = 1851878757;

    /* renamed from: l */
    public static final int f24134l = 1751479857;

    /* renamed from: l0 */
    public static final int f24135l0 = 1937007212;

    /* renamed from: l1 */
    public static final int f24136l1 = 1684108385;

    /* renamed from: m */
    public static final int f24137m = 1752589123;

    /* renamed from: m0 */
    public static final int f24138m0 = 1702061171;

    /* renamed from: m1 */
    public static final int f24139m1 = 1701671783;

    /* renamed from: n */
    public static final int f24140n = 1987063864;

    /* renamed from: n0 */
    public static final int f24141n0 = 1836019558;

    /* renamed from: n1 */
    public static final int f24142n1 = 1936995172;

    /* renamed from: o */
    public static final int f24143o = 1987063865;

    /* renamed from: o0 */
    public static final int f24144o0 = 1953653094;

    /* renamed from: o1 */
    public static final int f24145o1 = 1937126244;

    /* renamed from: p */
    public static final int f24146p = 1987076931;

    /* renamed from: p0 */
    public static final int f24147p0 = 1836475768;

    /* renamed from: p1 */
    public static final int f24148p1 = 1886547818;

    /* renamed from: q */
    public static final int f24149q = 1635135537;

    /* renamed from: q0 */
    public static final int f24150q0 = 1835362404;

    /* renamed from: q1 */
    public static final int f24151q1 = 1667329389;

    /* renamed from: r */
    public static final int f24152r = 1635135811;

    /* renamed from: r0 */
    public static final int f24153r0 = 1953196132;

    /* renamed from: r1 */
    public static final int f24154r1 = 1835365492;

    /* renamed from: s */
    public static final int f24155s = 1668246642;

    /* renamed from: s0 */
    public static final int f24156s0 = 1701082227;

    /* renamed from: s1 */
    public static final int f24157s1 = 1634492771;

    /* renamed from: t */
    public static final int f24158t = 1685479798;

    /* renamed from: t0 */
    public static final int f24159t0 = 1701606260;

    /* renamed from: t1 */
    public static final int f24160t1 = 1634492791;

    /* renamed from: u */
    public static final int f24161u = 1685479729;

    /* renamed from: u0 */
    public static final int f24162u0 = 1835296868;

    /* renamed from: u1 */
    public static final int f24163u1 = 1970037111;

    /* renamed from: v */
    public static final int f24164v = 1685481573;

    /* renamed from: v0 */
    public static final int f24165v0 = 1751411826;

    /* renamed from: v1 */
    public static final int f24166v1 = 1332770163;

    /* renamed from: w */
    public static final int f24167w = 1685481521;

    /* renamed from: w0 */
    public static final int f24168w0 = 1937011556;

    /* renamed from: w1 */
    public static final int f24169w1 = 1682927731;

    /* renamed from: x */
    public static final int f24170x = 1685480259;

    /* renamed from: x0 */
    public static final int f24171x0 = 1886614376;

    /* renamed from: x1 */
    public static final int f24172x1 = 1716281667;

    /* renamed from: y */
    public static final int f24173y = 1685485123;

    /* renamed from: y0 */
    public static final int f24174y0 = 1936289382;

    /* renamed from: y1 */
    public static final int f24175y1 = 1684425825;

    /* renamed from: z */
    public static final int f24176z = 1932670515;

    /* renamed from: z0 */
    public static final int f24177z0 = 1935894637;

    /* renamed from: z1 */
    public static final int f24178z1 = 1953984371;

    /* renamed from: a */
    public final int f24179a;

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.a$a */
    /* loaded from: classes5.dex */
    public static final class a extends AbstractC4745a {

        /* renamed from: C1 */
        public final long f24180C1;

        /* renamed from: D1 */
        public final List<b> f24181D1;

        /* renamed from: E1 */
        public final List<a> f24182E1;

        public a(int i, long j) {
            super(i);
            this.f24180C1 = j;
            this.f24181D1 = new ArrayList();
            this.f24182E1 = new ArrayList();
        }

        /* renamed from: d */
        public void m19008d(a aVar) {
            this.f24182E1.add(aVar);
        }

        /* renamed from: e */
        public void m19009e(b bVar) {
            this.f24181D1.add(bVar);
        }

        /* renamed from: f */
        public int m19010f(int i) {
            int size = this.f24181D1.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                if (this.f24181D1.get(i3).f24179a == i) {
                    i2++;
                }
            }
            int size2 = this.f24182E1.size();
            for (int i4 = 0; i4 < size2; i4++) {
                if (this.f24182E1.get(i4).f24179a == i) {
                    i2++;
                }
            }
            return i2;
        }

        @Nullable
        /* renamed from: g */
        public a m19011g(int i) {
            int size = this.f24182E1.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.f24182E1.get(i2);
                if (aVar.f24179a == i) {
                    return aVar;
                }
            }
            return null;
        }

        @Nullable
        /* renamed from: h */
        public b m19012h(int i) {
            int size = this.f24181D1.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.f24181D1.get(i2);
                if (bVar.f24179a == i) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AbstractC4745a
        public String toString() {
            String m19005a = AbstractC4745a.m19005a(this.f24179a);
            String arrays = Arrays.toString(this.f24181D1.toArray());
            String arrays2 = Arrays.toString(this.f24182E1.toArray());
            StringBuilder sb = new StringBuilder(String.valueOf(m19005a).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
            sb.append(m19005a);
            sb.append(" leaves: ");
            sb.append(arrays);
            sb.append(" containers: ");
            sb.append(arrays2);
            return sb.toString();
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.a$b */
    /* loaded from: classes5.dex */
    public static final class b extends AbstractC4745a {

        /* renamed from: C1 */
        public final ParsableByteArray f24183C1;

        public b(int i, ParsableByteArray parsableByteArray) {
            super(i);
            this.f24183C1 = parsableByteArray;
        }
    }

    public AbstractC4745a(int i) {
        this.f24179a = i;
    }

    /* renamed from: a */
    public static String m19005a(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    /* renamed from: b */
    public static int m19006b(int i) {
        return i & 16777215;
    }

    /* renamed from: c */
    public static int m19007c(int i) {
        return (i >> 24) & 255;
    }

    public String toString() {
        return m19005a(this.f24179a);
    }
}
