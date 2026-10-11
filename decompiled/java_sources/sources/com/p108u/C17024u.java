package com.p108u;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.hssf.record.DVRecord;
import org.apache.poi.hssf.record.UserSViewEnd;
import org.apache.poi.hssf.record.WindowTwoRecord;

/* renamed from: com.u.u */
/* loaded from: classes17.dex */
public class C17024u {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f116557short = {2288, 2279, 2192, 2279, 2192, 2279, 2192, 2533, 2548, 2437, 2548, 2437, 2548, 2437, 2779, 2763, 2760, 2760, 2760, 2760, 2760, 2760, 2760, 1161, 1176, 1178, 1178, 1178, 1178, 1178, 1178, 1178, 2120, 2138, 2139, 2139, 2139, 2139, 2139, 2139, 2139, 1775, 1791, 1791, 1674, 1674, 1674, 1674, 1674, 1674, WindowTwoRecord.sid, 603, 603, 603, 603, 603, 603, 1718, 1744, 1709, 1744, 1745, 1747, 1703, 2839, 2822, 2817, 2933, 2823, 2934, 2821, 2935, 2818, 766, 748, 668, 749, 749, 749, 749, 749, 749, 961, 929, 929, 929, 929, 929, 929, 593, 583, 563, 580, 587, 581, 586, 2309, 2325, 2407, 2325, 2407, 2325, 2405, 1899, 1805, 1904, 1805, 1804, 1806, 1914, 1942, 1939, 1927, 1922, 1943, 1926, 1980, 1920, 1922, 1920, 1931, 1926, 1980, 1939, 1937, 1926, 1925, 1936, 2579, 2577, 2579, 2584, 2581, 2580, 2607, 2586, 2563, 2591, 2590, 2607, 2580, 2577, 2564, 2577, 488, 484, 485, 485, 494, 488, 511, 482, 509, 482, 511, 498, 2094, 2101, 2098, 2090, 2073, 2100, 2108, 2097, 2098, 2106, 401, 412, 393, 408, 398, 393, UserSViewEnd.sid, 408, 399, 398, 404, 402, 403, DVRecord.sid, 402, 409, 408, 2912, 2925, 2936, 2921, 2943, 2936, 2906, 2921, 2942, 2943, 2917, 2915, 2914, 2882, 2925, 2913, 2921, 3183, 3186, 3183, 3191, 3198, 1074, 1079, 1059, 1062, 1075, 1058, 1095, 1062, 1073, 1062, 1070, 1067, 1062, 1061, 1067, 1058, 2494, 2486, 2464, 2464, 2482, 2484, 2486, 1676, 1710, 1727, 1771, 1727, 1699, 1710, 1771, 1701, 1710, 1724, 1710, 1720, 1727, 1771, 1709, 1710, 1706, 1727, 1726, 1721, 1710, 1720, 1771, 1706, 1701, 1711, 1771, 1698, 1702, 1723, 1721, 1700, 1725, 1710, 1702, 1710, 1701, 1727, 1720, 1765, 1799, 1826, 1846, 1843, 1830, 1847, 1808, 1831, 1830, 1830, 1853, 1852, 1798, 1847, 1834, 1830, 1006, 965, 989, 964, 966, 965, 971, 974, 1994, 2031, 2043, 2046, 2027, 2042, 2013, 2026, 2027, 2027, 2032, 2033, 1994, 2029, 2035, 771, 774, 786, 791, 770, 787, 809, 789, 791, 789, 798, 787, 809, 774, 772, 787, 784, 773, 3168, 3170, 3168, 3179, 3174, 3175, 3164, 3177, 3184, 3180, 3181, 3164, 3175, 3170, 3191, 3170};

    /* renamed from: com.u.u$AnimatedDashedBorderLayout */
    /* loaded from: classes17.dex */
    public static class AnimatedDashedBorderLayout extends LinearLayout {

        /* renamed from: short, reason: not valid java name */
        private static final short[] f116559short = {2362, 2337, 2345, 2347, 2394, 2347, 2394, 2347, 2394, 3232, 3259, 3251, 3269, 3269, 3269, 3269, 3269, 3269, 452, 466, 471, 466, 471, 466, 471, 1716, 1748, 1750, 1747, 1699, 1746, 1702};
        private ValueAnimator animator;
        private Paint backgroundPaint;
        private Paint borderPaint;
        private float cornerRadius;
        private float dashGap;
        private float dashLength;
        private Path path;
        private float phase;
        private RectF rectF;

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0062 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0057 A[SYNTHETIC] */
        /* renamed from: -$$Nest$fputphase, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        static /* bridge */ /* synthetic */ void m72463$$Nest$fputphase(com.p108u.C17024u.AnimatedDashedBorderLayout r3, float r4) {
            /*
                r0 = 0
                java.lang.String r1 = "ۧۨۢ"
                int r1 = com.p108u.C20616.m72538(r1)
            L7:
                switch(r1) {
                    case 56541: goto Lb;
                    case 1746687: goto L3a;
                    case 1749824: goto L6c;
                    case 1752524: goto L97;
                    case 1752707: goto L8b;
                    case 1753575: goto L53;
                    case 1754657: goto L1b;
                    default: goto La;
                }
            La:
                goto L7
            Lb:
                java.io.PrintStream r1 = java.lang.System.out
                r1.println(r0)
                int r1 = com.p108u.C20618.f116563
                if (r1 < 0) goto L80
            L14:
                java.lang.String r1 = "ۧۤ"
                int r1 = com.p108u.C20618.m72551(r1)
                goto L7
            L1b:
                r3.phase = r4
                int r1 = com.p108u.C20619.f116564
                int r2 = com.p108u.C20617.f116562
                r2 = r2 ^ (-8446(0xffffffffffffdf02, float:NaN))
                int r1 = r1 + r2
                if (r1 > 0) goto L30
                com.p108u.C20618.m72571()
                java.lang.String r1 = "ۦۤۥ"
                int r1 = com.p108u.C20619.m72582(r1)
                goto L7
            L30:
                int r1 = com.p108u.C20619.f116564
                int r2 = com.p108u.C20619.f116564
                int r1 = r1 + r2
                r2 = -1749038(0xffffffffffe54fd2, float:NaN)
                r1 = r1 ^ r2
                goto L7
            L3a:
                int r1 = com.p108u.C20615.f116560
                if (r1 < 0) goto L49
                r1 = 88
                com.p108u.C20615.f116560 = r1
                java.lang.String r1 = "ۣۤۤ"
                int r1 = com.p108u.C20617.m72547(r1)
                goto L7
            L49:
                int r1 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20619.f116564
                int r1 = r1 * r2
                r2 = 1338924(0x146e2c, float:1.876232E-39)
                int r1 = r1 + r2
                goto L7
            L53:
                int r1 = com.p108u.C20619.f116564
                if (r1 < 0) goto L62
                r1 = 24
                com.p108u.C20617.f116562 = r1
                java.lang.String r1 = "ۣۣۧ"
                int r1 = com.p108u.C20616.m72538(r1)
                goto L7
            L62:
                int r1 = com.p108u.C20615.f116560
                int r2 = com.p108u.C20617.f116562
                r1 = r1 | r2
                r2 = 1752529(0x1abdd1, float:2.455816E-39)
                int r1 = r1 + r2
                goto L7
            L6c:
                int r1 = com.p108u.C20618.m72571()
                if (r1 > 0) goto L53
                int r1 = com.p108u.C20616.f116561
                if (r1 > 0) goto L79
                com.p108u.C20615.m72490()
            L79:
                java.lang.String r1 = "ۥۧۥ"
                int r1 = com.p108u.C20617.m72547(r1)
                goto L7
            L80:
                int r1 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20617.f116562
                int r1 = r1 + r2
                r2 = -1751414(0xffffffffffe5468a, float:NaN)
                r1 = r1 ^ r2
                goto L7
            L8b:
                java.lang.String r0 = "6y9"
                java.lang.String r0 = com.p108u.C20616.m72542(r0)
                java.lang.Float r0 = java.lang.Float.decode(r0)
                goto L14
            L97:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72463$$Nest$fputphase(com.u.u$AnimatedDashedBorderLayout, float):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000b. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:13:0x004c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0053 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnimatedDashedBorderLayout(android.content.Context r4) {
            /*
                r3 = this;
                r3.<init>(r4)
                r0 = 0
                java.lang.String r1 = "ۣۨۢ"
                int r2 = com.p108u.C20619.m72582(r1)
                r1 = r0
            Lb:
                switch(r2) {
                    case 1747807: goto Lf;
                    case 1747903: goto L28;
                    case 1748642: goto L46;
                    case 1749663: goto L7a;
                    case 1753481: goto L39;
                    case 1753538: goto L8f;
                    case 1754627: goto L5b;
                    case 1755463: goto L1d;
                    default: goto Le;
                }
            Le:
                goto Lb
            Lf:
                int r0 = com.p108u.C20617.m72545()
                if (r0 > 0) goto L46
                java.lang.String r0 = "۠ۧۦ"
                int r0 = com.p108u.C20618.m72551(r0)
                r2 = r0
                goto Lb
            L1d:
                r0 = 0
                r3.phase = r0
                java.lang.String r0 = "ۣۧۧ"
            L22:
                int r0 = com.p108u.C20617.m72547(r0)
                r2 = r0
                goto Lb
            L28:
                java.lang.String r0 = "EW"
                java.lang.String r0 = com.p108u.C20616.m72542(r0)
                int r1 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20617.f116562
                int r1 = r1 / r2
                r2 = 1753482(0x1ac18a, float:2.457152E-39)
                r2 = r2 ^ r1
                r1 = r0
                goto Lb
            L39:
                java.io.PrintStream r0 = java.lang.System.out
                r0.println(r1)
                java.lang.String r0 = "ۦۣ۟"
            L40:
                int r0 = com.p108u.C20616.m72538(r0)
                r2 = r0
                goto Lb
            L46:
                int r0 = com.p108u.C20616.m72524()
                if (r0 > 0) goto L53
                r0 = 66
                com.p108u.C20615.f116560 = r0
                java.lang.String r0 = "ۢ۟ۤ"
                goto L40
            L53:
                java.lang.String r0 = "ۦۣ۟"
                int r0 = com.p108u.C20616.m72538(r0)
                r2 = r0
                goto Lb
            L5b:
                m72468(r3, r4)
                int r0 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20618.f116563
                int r2 = r2 + 5248
                int r0 = r0 % r2
                if (r0 < 0) goto L6f
                java.lang.String r0 = "ۢۢ۟"
                int r0 = com.p108u.C20619.m72582(r0)
                r2 = r0
                goto Lb
            L6f:
                int r0 = com.p108u.C20617.f116562
                int r2 = com.p108u.C20616.f116561
                r0 = r0 ^ r2
                r2 = 1748178(0x1aacd2, float:2.449719E-39)
                int r0 = r0 + r2
                r2 = r0
                goto Lb
            L7a:
                int r0 = com.p108u.C20618.m72571()
                if (r0 > 0) goto L83
                java.lang.String r0 = "ۧ۠ۢ"
                goto L22
            L83:
                int r0 = com.p108u.C20616.f116561
                int r2 = com.p108u.C20615.f116560
                int r0 = r0 + r2
                r2 = 1755584(0x1ac9c0, float:2.460097E-39)
                int r0 = r0 + r2
                r2 = r0
                goto Lb
            L8f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.<init>(android.content.Context):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000b. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:17:0x002e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0026 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnimatedDashedBorderLayout(android.content.Context r4, android.util.AttributeSet r5) {
            /*
                r3 = this;
                r3.<init>(r4, r5)
                r0 = 0
                java.lang.String r1 = "ۡۦ"
                int r2 = com.p108u.C20619.m72582(r1)
                r1 = r0
            Lb:
                switch(r2) {
                    case 56357: goto Lf;
                    case 1746907: goto L8f;
                    case 1747748: goto L5f;
                    case 1748706: goto L4e;
                    case 1749698: goto L36;
                    case 1751717: goto La4;
                    case 1752615: goto L20;
                    case 1755559: goto L7e;
                    default: goto Le;
                }
            Le:
                goto Lb
            Lf:
                r0 = 0
                r3.phase = r0
                int r0 = com.p108u.C20615.m72490()
                if (r0 < 0) goto L4b
                java.lang.String r0 = "ۣۣۢ"
                int r0 = com.p108u.C20617.m72547(r0)
                r2 = r0
                goto Lb
            L20:
                int r0 = com.p108u.C20617.m72545()
                if (r0 > 0) goto L2e
                java.lang.String r0 = "ۨۥ"
            L28:
                int r0 = com.p108u.C20616.m72538(r0)
                r2 = r0
                goto Lb
            L2e:
                java.lang.String r0 = "ۤۦۧ"
                int r0 = com.p108u.C20617.m72547(r0)
                r2 = r0
                goto Lb
            L36:
                java.lang.String r0 = "8IHTzWB9CtJjts53"
                java.lang.String r0 = com.p108u.C20615.m72489(r0)
                java.lang.Float r0 = java.lang.Float.valueOf(r0)
                int r1 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20616.f116561
                int r1 = r1 * r2
                r2 = 1865411(0x1c76c3, float:2.613998E-39)
                int r2 = r2 + r1
                r1 = r0
                goto Lb
            L4b:
                java.lang.String r0 = "۟ۦۢ"
                goto L28
            L4e:
                int r0 = com.p108u.C20619.m72586()
                if (r0 > 0) goto L20
                int r0 = com.p108u.C20616.f116561
                int r2 = com.p108u.C20615.f116560
                int r0 = r0 * r2
                r2 = 1777190(0x1b1e26, float:2.490374E-39)
                int r0 = r0 + r2
                r2 = r0
                goto Lb
            L5f:
                int r0 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20617.f116562
                int r2 = r2 / (-3726)
                int r0 = r0 + r2
                if (r0 < 0) goto L73
                com.p108u.C20615.m72490()
                java.lang.String r0 = "ۨۧ۟"
                int r0 = com.p108u.C20617.m72547(r0)
                r2 = r0
                goto Lb
            L73:
                int r0 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20618.f116563
                int r0 = r0 - r2
                r2 = 56357(0xdc25, float:7.8973E-41)
                int r0 = r0 + r2
                r2 = r0
                goto Lb
            L7e:
                java.io.PrintStream r0 = java.lang.System.out
                r0.println(r1)
                int r0 = com.p108u.C20617.f116562
                int r2 = com.p108u.C20615.f116560
                int r0 = r0 % r2
                r2 = 1751743(0x1ababf, float:2.454715E-39)
                int r0 = r0 + r2
                r2 = r0
                goto Lb
            L8f:
                m72468(r3, r4)
                int r0 = com.p108u.C20619.m72586()
                if (r0 > 0) goto L9b
                com.p108u.C20618.m72571()
            L9b:
                java.lang.String r0 = "ۣۡۢ"
                int r0 = com.p108u.C20616.m72538(r0)
                r2 = r0
                goto Lb
            La4:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.<init>(android.content.Context, android.util.AttributeSet):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0030 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0026 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnimatedDashedBorderLayout(android.content.Context r4, android.util.AttributeSet r5, int r6) {
            /*
                r3 = this;
                r3.<init>(r4, r5, r6)
                r0 = 0
                java.lang.String r1 = "۠۟ۦ"
                int r1 = com.p108u.C20617.m72547(r1)
            La:
                switch(r1) {
                    case 1747655: goto Le;
                    case 1750569: goto L71;
                    case 1750788: goto L93;
                    case 1751624: goto Lb7;
                    case 1751651: goto L20;
                    case 1751680: goto L51;
                    case 1751743: goto L7e;
                    case 1755373: goto L3a;
                    default: goto Ld;
                }
            Ld:
                goto La
            Le:
                r1 = 0
                r3.phase = r1
                int r1 = com.p108u.C20616.f116561
                if (r1 > 0) goto L8b
                r1 = 80
                com.p108u.C20619.f116564 = r1
                java.lang.String r1 = "ۣۧۨ"
                int r1 = com.p108u.C20616.m72538(r1)
                goto La
            L20:
                int r1 = com.p108u.C20618.m72571()
                if (r1 > 0) goto L30
                com.p108u.C20618.m72571()
                java.lang.String r1 = "ۦ۟ۦ"
                int r1 = com.p108u.C20616.m72538(r1)
                goto La
            L30:
                int r1 = com.p108u.C20617.f116562
                int r2 = com.p108u.C20618.f116563
                int r1 = r1 * r2
                r2 = 1502563(0x16ed63, float:2.105539E-39)
                int r1 = r1 + r2
                goto La
            L3a:
                int r1 = com.p108u.C20615.f116560
                int r2 = com.p108u.C20617.f116562
                int r2 = r2 + (-9129)
                int r1 = r1 + r2
                if (r1 < 0) goto L4e
                r1 = 48
                com.p108u.C20615.f116560 = r1
                java.lang.String r1 = "ۡ۟ۦ"
            L49:
                int r1 = com.p108u.C20615.m72494(r1)
                goto La
            L4e:
                java.lang.String r1 = "۠۟ۦ"
                goto L49
            L51:
                int r1 = com.p108u.C20615.m72490()
                if (r1 < 0) goto L20
                int r1 = com.p108u.C20618.m72571()
                if (r1 > 0) goto L67
                com.p108u.C20618.m72571()
                java.lang.String r1 = "ۤۥۡ"
                int r1 = com.p108u.C20619.m72582(r1)
                goto La
            L67:
                int r1 = com.p108u.C20615.f116560
                int r2 = com.p108u.C20619.f116564
                int r1 = r1 + r2
                r2 = 1752419(0x1abd63, float:2.455662E-39)
                int r1 = r1 + r2
                goto La
            L71:
                m72468(r3, r4)
                int r1 = com.p108u.C20619.f116564
                int r2 = com.p108u.C20616.f116561
                int r1 = r1 * r2
                r2 = 1802604(0x1b816c, float:2.525986E-39)
                int r1 = r1 + r2
                goto La
            L7e:
                java.lang.String r0 = "VH0LHSb1nmp57OOY"
                java.lang.String r0 = com.p108u.C20615.m72489(r0)
                java.lang.Float r0 = java.lang.Float.decode(r0)
                java.lang.String r1 = "ۣۧۨ"
                goto L49
            L8b:
                java.lang.String r1 = "ۣ۠ۦ"
                int r1 = com.p108u.C20617.m72547(r1)
                goto La
            L93:
                java.io.PrintStream r1 = java.lang.System.out
                r1.println(r0)
                int r1 = com.p108u.C20619.f116564
                int r2 = com.p108u.C20619.f116564
                r2 = r2 ^ (-5910(0xffffffffffffe8ea, float:NaN))
                r1 = r1 | r2
                if (r1 < 0) goto Lac
                com.p108u.C20616.m72524()
                java.lang.String r1 = "ۣۤۤ"
                int r1 = com.p108u.C20617.m72547(r1)
                goto La
            Lac:
                int r1 = com.p108u.C20619.f116564
                int r2 = com.p108u.C20619.f116564
                r1 = r1 ^ r2
                r2 = 1751624(0x1aba48, float:2.454548E-39)
                int r1 = r1 + r2
                goto La
            Lb7:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0015. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:167:0x02ca A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:170:0x02c0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void init(android.content.Context r18) {
            /*
                Method dump skipped, instructions count: 1008
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.init(android.content.Context):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0091 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0084 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0160 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0159 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void startAnimation() {
            /*
                Method dump skipped, instructions count: 560
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.startAnimation():void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0086 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x007e A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void stopAnimation() {
            /*
                r4 = this;
                r2 = 0
                java.lang.String r0 = "ۤۡۤ"
                int r0 = com.p108u.C20615.m72494(r0)
                r1 = r2
                r3 = r0
            L9:
                switch(r3) {
                    case 1748770: goto Ld;
                    case 1751559: goto L40;
                    case 1751686: goto L1b;
                    case 1753514: goto L78;
                    case 1755369: goto L32;
                    case 1755562: goto L92;
                    case 1755593: goto L55;
                    default: goto Lc;
                }
            Lc:
                goto L9
            Ld:
                r4.animator = r2
                int r0 = com.p108u.C20618.f116563
                if (r0 < 0) goto L6d
                java.lang.String r0 = "ۤۡۤ"
                int r0 = com.p108u.C20618.m72551(r0)
                r3 = r0
                goto L9
            L1b:
                com.p108u.C20615.m72504(r1)
                int r0 = com.p108u.C20616.f116561
                int r3 = com.p108u.C20617.f116562
                int r3 = r3 % 6319
                int r0 = r0 + r3
                if (r0 < 0) goto L2f
                java.lang.String r0 = "ۦۢۦ"
            L29:
                int r0 = com.p108u.C20615.m72494(r0)
                r3 = r0
                goto L9
            L2f:
                java.lang.String r0 = "ۡۤۥ"
                goto L29
            L32:
                if (r1 == 0) goto L78
                int r0 = com.p108u.C20616.f116561
                if (r0 > 0) goto L38
            L38:
                java.lang.String r0 = "ۤۥۧ"
                int r0 = com.p108u.C20619.m72582(r0)
                r3 = r0
                goto L9
            L40:
                android.animation.ValueAnimator r0 = m72477(r4)
                int r1 = com.p108u.C20615.f116560
                int r3 = com.p108u.C20616.f116561
                int r3 = r3 / (-8230)
                r1 = r1 ^ r3
                if (r1 < 0) goto L4d
            L4d:
                java.lang.String r1 = "ۨ۠ۡ"
                int r3 = com.p108u.C20615.m72494(r1)
                r1 = r0
                goto L9
            L55:
                int r0 = com.p108u.C20615.f116560
                int r3 = com.p108u.C20616.f116561
                r3 = r3 ^ 8639(0x21bf, float:1.2106E-41)
                r0 = r0 | r3
                if (r0 < 0) goto L6a
                r0 = 67
                com.p108u.C20618.f116563 = r0
                java.lang.String r0 = "ۣۧۡ"
            L64:
                int r0 = com.p108u.C20616.m72538(r0)
                r3 = r0
                goto L9
            L6a:
                java.lang.String r0 = "ۤۡۤ"
                goto L64
            L6d:
                int r0 = com.p108u.C20618.f116563
                int r3 = com.p108u.C20618.f116563
                r0 = r0 | r3
                r3 = 1756509(0x1acd5d, float:2.461393E-39)
                int r0 = r0 + r3
                r3 = r0
                goto L9
            L78:
                int r0 = com.p108u.C20617.m72545()
                if (r0 > 0) goto L86
                java.lang.String r0 = "ۧۥ۠"
                int r0 = com.p108u.C20618.m72551(r0)
                r3 = r0
                goto L9
            L86:
                int r0 = com.p108u.C20618.f116563
                int r3 = com.p108u.C20618.f116563
                r0 = r0 | r3
                r3 = -1755673(0xffffffffffe535e7, float:NaN)
                r0 = r0 ^ r3
                r3 = r0
                goto L9
            L92:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.stopAnimation():void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* renamed from: ۟۟ۦ۠ۥ, reason: not valid java name and contains not printable characters */
        public static float m72464(Object obj) {
            String str;
            String str2;
            int m72582 = C20619.m72582("ۧۦۤ");
            float f = 0.0f;
            float f2 = 0.0f;
            while (true) {
                switch (m72582) {
                    case 1747713:
                        m72582 = C20615.f116560 >= 0 ? C20618.m72551("ۥۤۢ") : (C20615.f116560 - C20615.f116560) ^ 1749702;
                    case 1748829:
                        m72582 = (C20616.f116561 | C20615.f116560) + 1753769;
                    case 1749702:
                    case 1752677:
                        if (C20615.m72490() >= 0) {
                            C20618.m72571();
                            str = "ۣۤۥ";
                            m72582 = C20616.m72538(str);
                        } else {
                            str2 = "ۣۥۢ";
                            m72582 = C20615.m72494(str2);
                        }
                    case 1750717:
                        m72582 = (C20619.f116564 * C20618.f116563) + 1331980;
                        f2 = 0.0f;
                    case 1750720:
                        break;
                    case 1751556:
                        if (C20618.f116563 + (C20616.f116561 % 1639) >= 0) {
                            C20617.m72545();
                            m72582 = C20615.m72494("۠ۡۢ");
                            f2 = f;
                        } else {
                            m72582 = (C20616.f116561 * C20618.f116563) + 1860572;
                            f2 = f;
                        }
                    case 1752611:
                        if ((C20616.f116561 ^ (C20616.f116561 + 358)) <= 0) {
                            C20616.f116561 = 82;
                            str2 = "ۦۤۡ";
                            m72582 = C20615.m72494(str2);
                        } else {
                            m72582 = (C20619.f116564 / C20615.f116560) + 1754596;
                        }
                    case 1753511:
                        f = ((AnimatedDashedBorderLayout) obj).dashLength;
                        m72582 = (C20617.f116562 | (C20618.f116563 + (-5309))) >= 0 ? C20617.m72547("ۣۥۢ") : (C20615.f116560 * C20616.f116561) + 1779048;
                    case 1753632:
                        if ((C20617.f116562 ^ (C20616.f116561 - 2330)) <= 0) {
                            m72582 = C20617.m72547("ۧۦۤ");
                        } else {
                            str = "ۣۥ۟";
                            m72582 = C20616.m72538(str);
                        }
                    case 1754597:
                        if (C20618.m72571() >= 0) {
                            if ((C20619.f116564 ^ (C20615.f116560 / (-337))) >= 0) {
                            }
                            m72582 = C20616.m72538("ۦۣۢ");
                        } else {
                            m72582 = (C20616.f116561 | C20615.f116560) + 1753769;
                        }
                }
                return f2;
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x003b A[SYNTHETIC] */
        /* renamed from: ۣ۟۠ۨۡ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static float m72465(java.lang.Object r5, float r6) {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72465(java.lang.Object, float):float");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0017 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:6:0x004a A[SYNTHETIC] */
        /* renamed from: ۟ۡۡۡۨ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static android.graphics.RectF m72466(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 296
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72466(java.lang.Object):android.graphics.RectF");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:42:0x006e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0079 A[SYNTHETIC] */
        /* renamed from: ۟ۡۢۥۤ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static float m72467(java.lang.Object r6) {
            /*
                r1 = 0
                java.lang.String r0 = "ۡۨۧ"
                int r0 = com.p108u.C20617.m72547(r0)
                r4 = r1
                r2 = r1
            L9:
                switch(r0) {
                    case 56355: goto Ld;
                    case 56446: goto Lbe;
                    case 1748765: goto Lb3;
                    case 1748829: goto L7c;
                    case 1748896: goto L4d;
                    case 1749796: goto L2b;
                    case 1752736: goto L91;
                    case 1753508: goto Ld;
                    case 1754406: goto L68;
                    case 1754411: goto La8;
                    case 1755619: goto L20;
                    default: goto Lc;
                }
            Lc:
                goto L9
            Ld:
                int r0 = com.p108u.C20618.f116563
                int r3 = com.p108u.C20619.f116564
                int r3 = r3 / (-1968)
                r0 = r0 | r3
                if (r0 < 0) goto L45
                com.p108u.C20619.m72586()
                java.lang.String r0 = "ۦۥۡ"
            L1b:
                int r0 = com.p108u.C20615.m72494(r0)
                goto L9
            L20:
                int r0 = com.p108u.C20616.f116561
                int r2 = com.p108u.C20618.f116563
                r0 = r0 | r2
                r2 = 57345(0xe001, float:8.0357E-41)
                int r0 = r0 + r2
                r2 = r4
                goto L9
            L2b:
                int r0 = com.p108u.C20619.f116564
                if (r0 < 0) goto L3a
                r0 = r1
            L30:
                java.lang.String r2 = "ۡۤ۠"
                r3 = r2
                r5 = r0
            L34:
                int r0 = com.p108u.C20618.m72551(r3)
                r2 = r5
                goto L9
            L3a:
                int r0 = com.p108u.C20618.f116563
                int r2 = com.p108u.C20619.f116564
                int r0 = r0 + r2
                r2 = 1754122(0x1ac40a, float:2.458048E-39)
                int r0 = r0 + r2
                r2 = r1
                goto L9
            L45:
                int r0 = com.p108u.C20615.f116560
                int r3 = com.p108u.C20615.f116560
                int r0 = r0 * r3
                int r0 = r0 + 277
                goto L9
            L4d:
                int r0 = com.p108u.C20616.m72524()
                if (r0 < 0) goto L68
                int r0 = com.p108u.C20619.f116564
                int r3 = com.p108u.C20616.f116561
                int r3 = r3 + 3744
                r0 = r0 | r3
                if (r0 < 0) goto L66
                com.p108u.C20619.m72586()
                java.lang.String r0 = "ۦۢ۠"
                int r0 = com.p108u.C20619.m72582(r0)
                goto L9
            L66:
                r0 = r2
                goto L30
            L68:
                int r0 = com.p108u.C20618.m72571()
                if (r0 > 0) goto L79
                r0 = 9
                com.p108u.C20619.f116564 = r0
                java.lang.String r0 = "ۣ۠۟"
                int r0 = com.p108u.C20619.m72582(r0)
                goto L9
            L79:
                java.lang.String r0 = "ۧ۠ۤ"
                goto L1b
            L7c:
                int r0 = com.p108u.C20619.m72586()
                if (r0 > 0) goto L8e
                r0 = 86
                com.p108u.C20615.f116560 = r0
                java.lang.String r0 = "ۧۦۧ"
            L88:
                int r0 = com.p108u.C20616.m72538(r0)
                goto L9
            L8e:
                java.lang.String r0 = "ۡۨۧ"
                goto L88
            L91:
                int r0 = com.p108u.C20618.f116563
                int r3 = com.p108u.C20616.f116561
                r3 = r3 | 5590(0x15d6, float:7.833E-42)
                r0 = r0 ^ r3
                if (r0 < 0) goto La5
                com.p108u.C20616.m72524()
                java.lang.String r0 = "ۧ۠ۤ"
            L9f:
                int r0 = com.p108u.C20616.m72538(r0)
                goto L9
            La5:
                java.lang.String r0 = "ۡۤ"
                goto L9f
            La8:
                int r0 = com.p108u.C20617.f116562
                int r3 = com.p108u.C20615.f116560
                int r0 = r0 / r3
                r3 = 1749795(0x1ab323, float:2.451985E-39)
                int r0 = r0 + r3
                goto L9
            Lb3:
                r0 = r6
                com.u.u$AnimatedDashedBorderLayout r0 = (com.p108u.C17024u.AnimatedDashedBorderLayout) r0
                float r4 = r0.dashGap
                java.lang.String r0 = "ۣۨۨ"
                r3 = r0
                r5 = r2
                goto L34
            Lbe:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72467(java.lang.Object):float");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00b0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00b3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x009e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0095 A[SYNTHETIC] */
        /* renamed from: ۟ۢۡۡۡ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m72468(java.lang.Object r3, java.lang.Object r4) {
            /*
                Method dump skipped, instructions count: 330
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72468(java.lang.Object, java.lang.Object):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0048 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x003d A[SYNTHETIC] */
        /* renamed from: ۟ۢۨ۠ۨ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m72469(java.lang.Object r2) {
            /*
                java.lang.String r0 = "۟ۥۥ"
                int r0 = com.p108u.C20616.m72538(r0)
            L6:
                switch(r0) {
                    case 56389: goto La;
                    case 1746819: goto L39;
                    case 1746879: goto L1a;
                    case 1746904: goto L7c;
                    case 1750689: goto L9b;
                    case 1751493: goto L56;
                    case 1751501: goto L6a;
                    case 1754476: goto L56;
                    default: goto L9;
                }
            L9:
                goto L6
            La:
                int r0 = com.p108u.C20617.f116562
                int r1 = com.p108u.C20617.f116562
                int r1 = r1 * 9398
                int r0 = r0 / r1
                if (r0 == 0) goto L4f
                java.lang.String r0 = "ۤ۟ۨ"
                int r0 = com.p108u.C20615.m72494(r0)
                goto L6
            L1a:
                int r0 = com.p108u.C20618.m72571()
                if (r0 <= 0) goto L39
                int r0 = com.p108u.C20617.f116562
                if (r0 < 0) goto L2f
                r0 = 83
                com.p108u.C20618.f116563 = r0
                java.lang.String r0 = "ۢۧ"
                int r0 = com.p108u.C20616.m72538(r0)
                goto L6
            L2f:
                int r0 = com.p108u.C20615.f116560
                int r1 = com.p108u.C20616.f116561
                int r0 = r0 % r1
                r1 = 1746909(0x1aa7dd, float:2.447941E-39)
                int r0 = r0 + r1
                goto L6
            L39:
                int r0 = com.p108u.C20618.f116563
                if (r0 < 0) goto L48
                r0 = 14
                com.p108u.C20616.f116561 = r0
                java.lang.String r0 = "ۧۨۥ"
                int r0 = com.p108u.C20619.m72582(r0)
                goto L6
            L48:
                java.lang.String r0 = "ۢۧ"
            L4a:
                int r0 = com.p108u.C20618.m72551(r0)
                goto L6
            L4f:
                java.lang.String r0 = "ۧۢۧ"
                int r0 = com.p108u.C20619.m72582(r0)
                goto L6
            L56:
                int r0 = com.p108u.C20615.m72490()
                if (r0 < 0) goto L67
                r0 = 89
                com.p108u.C20619.f116564 = r0
                java.lang.String r0 = "ۢۡۦ"
                int r0 = com.p108u.C20618.m72551(r0)
                goto L6
            L67:
                java.lang.String r0 = "ۣۤۢ"
                goto L4a
            L6a:
                int r0 = com.p108u.C20616.f116561
                int r1 = com.p108u.C20617.f116562
                r1 = r1 ^ (-1774(0xfffffffffffff912, float:NaN))
                int r0 = r0 / r1
                if (r0 == 0) goto L79
                com.p108u.C20616.m72524()
                java.lang.String r0 = "ۦ۠ۨ"
                goto L4a
            L79:
                java.lang.String r0 = "۟ۥۥ"
                goto L4a
            L7c:
                r0 = r2
                com.u.u$AnimatedDashedBorderLayout r0 = (com.p108u.C17024u.AnimatedDashedBorderLayout) r0
                r0.stopAnimation()
                int r0 = com.p108u.C20615.m72490()
                if (r0 < 0) goto L93
                com.p108u.C20619.m72586()
                java.lang.String r0 = "۟ۥۥ"
                int r0 = com.p108u.C20619.m72582(r0)
                goto L6
            L93:
                java.lang.String r0 = "ۣۤۢ"
                int r0 = com.p108u.C20616.m72538(r0)
                goto L6
            L9b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72469(java.lang.Object):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:13:0x007b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0074 A[SYNTHETIC] */
        /* renamed from: ۟ۤۨۤۥ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m72470(java.lang.Object r2) {
            /*
                java.lang.String r0 = "۠ۤ۠"
                int r0 = com.p108u.C20615.m72494(r0)
            L6:
                switch(r0) {
                    case 56321: goto La;
                    case 56390: goto La3;
                    case 1747682: goto L37;
                    case 1747804: goto L14;
                    case 1748796: goto L55;
                    case 1749732: goto L6e;
                    case 1751498: goto L85;
                    case 1751562: goto L55;
                    default: goto L9;
                }
            L9:
                goto L6
            La:
                int r0 = com.p108u.C20618.f116563
                int r1 = com.p108u.C20619.f116564
                int r0 = r0 % r1
                r1 = -1747737(0xffffffffffe554e7, float:NaN)
                r0 = r0 ^ r1
                goto L6
            L14:
                int r0 = com.p108u.C20617.m72545()
                if (r0 <= 0) goto L6e
                int r0 = com.p108u.C20618.f116563
                int r1 = com.p108u.C20615.f116560
                int r1 = r1 * 814
                r0 = r0 | r1
                if (r0 < 0) goto L2d
                com.p108u.C20619.m72586()
                java.lang.String r0 = "ۡۥ۠"
            L28:
                int r0 = com.p108u.C20615.m72494(r0)
                goto L6
            L2d:
                int r0 = com.p108u.C20615.f116560
                int r1 = com.p108u.C20616.f116561
                int r0 = r0 / r1
                r1 = 1751500(0x1ab9cc, float:2.454374E-39)
                int r0 = r0 + r1
                goto L6
            L37:
                int r0 = com.p108u.C20618.f116563
                int r1 = com.p108u.C20616.f116561
                int r1 = r1 % 1254
                r0 = r0 | r1
                if (r0 < 0) goto L4b
                r0 = 15
                com.p108u.C20617.f116562 = r0
                java.lang.String r0 = "۠ۡ"
                int r0 = com.p108u.C20618.m72551(r0)
                goto L6
            L4b:
                int r0 = com.p108u.C20619.f116564
                int r1 = com.p108u.C20615.f116560
                int r0 = r0 - r1
                r1 = -1751748(0xffffffffffe5453c, float:NaN)
                r0 = r0 ^ r1
                goto L6
            L55:
                int r0 = com.p108u.C20615.f116560
                if (r0 < 0) goto L64
                r0 = 37
                com.p108u.C20615.f116560 = r0
                java.lang.String r0 = "۟ۢۡ"
                int r0 = com.p108u.C20615.m72494(r0)
                goto L6
            L64:
                int r0 = com.p108u.C20616.f116561
                int r1 = com.p108u.C20617.f116562
                int r0 = r0 - r1
                r1 = 56011(0xdacb, float:7.8488E-41)
                int r0 = r0 + r1
                goto L6
            L6e:
                int r0 = com.p108u.C20616.m72524()
                if (r0 > 0) goto L7b
                java.lang.String r0 = "۠ۡ۠"
                int r0 = com.p108u.C20616.m72538(r0)
                goto L6
            L7b:
                int r0 = com.p108u.C20618.f116563
                int r1 = com.p108u.C20615.f116560
                int r0 = r0 * r1
                r1 = 1689173(0x19c655, float:2.367036E-39)
                r0 = r0 ^ r1
                goto L6
            L85:
                r0 = r2
                com.u.u$AnimatedDashedBorderLayout r0 = (com.p108u.C17024u.AnimatedDashedBorderLayout) r0
                r0.startAnimation()
                int r0 = com.p108u.C20617.f116562
                int r1 = com.p108u.C20615.f116560
                int r1 = r1 % 3307
                int r0 = r0 * r1
                if (r0 > 0) goto La0
                r0 = 53
                com.p108u.C20619.f116564 = r0
                java.lang.String r0 = "ۢۤۦ"
                int r0 = com.p108u.C20619.m72582(r0)
                goto L6
            La0:
                java.lang.String r0 = "ۢۨ"
                goto L28
            La3:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72470(java.lang.Object):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00a0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0093 A[SYNTHETIC] */
        /* renamed from: ۟ۥۣۤ۟, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static float m72471(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72471(java.lang.Object):float");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:16:0x002c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0021 A[SYNTHETIC] */
        /* renamed from: ۠۠ۤۥ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static android.graphics.Paint m72472(java.lang.Object r5) {
            /*
                r2 = 0
                java.lang.String r0 = "ۥ۟۠"
                int r0 = com.p108u.C20615.m72494(r0)
                r1 = r2
                r3 = r2
            L9:
                switch(r0) {
                    case 56350: goto Ld;
                    case 1747777: goto L55;
                    case 1748795: goto L4e;
                    case 1749727: goto L55;
                    case 1749793: goto Lb2;
                    case 1750783: goto L9d;
                    case 1751497: goto L36;
                    case 1752454: goto L7d;
                    case 1753604: goto L1d;
                    case 1754507: goto L69;
                    case 1754600: goto La0;
                    default: goto Lc;
                }
            Lc:
                goto L9
            Ld:
                int r0 = com.p108u.C20618.f116563
                int r4 = com.p108u.C20619.f116564
                r4 = r4 | 5082(0x13da, float:7.121E-42)
                int r0 = r0 / r4
                if (r0 > 0) goto L5f
                java.lang.String r0 = "ۣۣۧ"
                int r0 = com.p108u.C20619.m72582(r0)
                goto L9
            L1d:
                int r0 = com.p108u.C20616.f116561
                if (r0 > 0) goto L2c
                r0 = 85
                com.p108u.C20617.f116562 = r0
                java.lang.String r0 = "ۣۧۨ"
                int r0 = com.p108u.C20618.m72551(r0)
                goto L9
            L2c:
                int r0 = com.p108u.C20618.f116563
                int r4 = com.p108u.C20617.f116562
                int r0 = r0 - r4
                r4 = 1751467(0x1ab9ab, float:2.454328E-39)
                int r0 = r0 + r4
                goto L9
            L36:
                r0 = r5
                com.u.u$AnimatedDashedBorderLayout r0 = (com.p108u.C17024u.AnimatedDashedBorderLayout) r0
                android.graphics.Paint r1 = r0.borderPaint
                int r0 = com.p108u.C20615.f116560
                int r4 = com.p108u.C20619.f116564
                int r4 = r4 % 5807
                int r0 = r0 - r4
                if (r0 > 0) goto L47
                com.p108u.C20617.m72545()
            L47:
                java.lang.String r0 = "ۧۦۧ"
            L49:
                int r0 = com.p108u.C20619.m72582(r0)
                goto L9
            L4e:
                java.lang.String r0 = "ۥ۟۠"
                int r0 = com.p108u.C20617.m72547(r0)
                goto L9
            L55:
                int r0 = com.p108u.C20616.f116561
                int r4 = com.p108u.C20617.f116562
                int r0 = r0 * r4
                r4 = 1780301(0x1b2a4d, float:2.494733E-39)
                int r0 = r0 + r4
                goto L9
            L5f:
                int r0 = com.p108u.C20616.f116561
                int r4 = com.p108u.C20615.f116560
                int r0 = r0 - r4
                r4 = 1747424(0x1aa9e0, float:2.448663E-39)
                int r0 = r0 + r4
                goto L9
            L69:
                int r0 = com.p108u.C20619.f116564
                int r3 = com.p108u.C20615.f116560
                int r3 = r3 * (-930)
                int r0 = r0 % r3
                if (r0 < 0) goto L75
                com.p108u.C20619.m72586()
            L75:
                java.lang.String r0 = "ۡ۟"
                int r0 = com.p108u.C20615.m72494(r0)
                r3 = r2
                goto L9
            L7d:
                int r0 = com.p108u.C20615.m72490()
                if (r0 >= 0) goto L1d
                int r0 = com.p108u.C20615.f116560
                if (r0 < 0) goto L92
                com.p108u.C20618.m72571()
                java.lang.String r0 = "ۣۧۧ"
                int r0 = com.p108u.C20617.m72547(r0)
                goto L9
            L92:
                int r0 = com.p108u.C20615.f116560
                int r4 = com.p108u.C20619.f116564
                int r0 = r0 - r4
                r4 = 1751295(0x1ab8ff, float:2.454087E-39)
                int r0 = r0 + r4
                goto L9
            L9d:
                java.lang.String r0 = "ۣۧۧ"
                goto L49
            La0:
                int r0 = com.p108u.C20617.m72545()
                if (r0 > 0) goto Laf
                java.lang.String r0 = "ۥ۟۠"
            La8:
                int r0 = com.p108u.C20618.m72551(r0)
                r3 = r1
                goto L9
            Laf:
                java.lang.String r0 = "ۢۦۥ"
                goto La8
            Lb2:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72472(java.lang.Object):android.graphics.Paint");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0085 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x007a A[SYNTHETIC] */
        /* renamed from: ۠ۥۥۣ, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static float m72473(java.lang.Object r5) {
            /*
                r2 = 0
                java.lang.String r0 = "ۤۥ۠"
                int r0 = com.p108u.C20615.m72494(r0)
                r3 = r2
                r1 = r2
            L9:
                switch(r0) {
                    case 56294: goto Ld;
                    case 1746780: goto L74;
                    case 1747812: goto L4d;
                    case 1747935: goto L98;
                    case 1748737: goto L46;
                    case 1749731: goto L1d;
                    case 1750627: goto L90;
                    case 1751679: goto L36;
                    case 1752456: goto Lb7;
                    case 1754407: goto L61;
                    case 1754414: goto L90;
                    default: goto Lc;
                }
            Lc:
                goto L9
            Ld:
                int r0 = com.p108u.C20615.f116560
                if (r0 < 0) goto Lb3
                r0 = 48
                com.p108u.C20619.f116564 = r0
                java.lang.String r0 = "۟ۥ"
                int r0 = com.p108u.C20619.m72582(r0)
                r1 = r2
                goto L9
            L1d:
                int r0 = com.p108u.C20615.m72490()
                if (r0 < 0) goto L2b
                java.lang.String r0 = "ۤۥ۠"
                int r0 = com.p108u.C20617.m72547(r0)
                r1 = r3
                goto L9
            L2b:
                int r0 = com.p108u.C20617.f116562
                int r1 = com.p108u.C20619.f116564
                int r0 = r0 * r1
                r1 = 1636999(0x18fa87, float:2.293924E-39)
                int r0 = r0 + r1
                r1 = r3
                goto L9
            L36:
                int r0 = com.p108u.C20617.m72545()
                if (r0 < 0) goto L74
                int r0 = com.p108u.C20616.f116561
                int r4 = com.p108u.C20617.f116562
                int r0 = r0 * r4
                r4 = 1784915(0x1b3c53, float:2.501199E-39)
                int r0 = r0 + r4
                goto L9
            L46:
                java.lang.String r0 = "۟ۥ"
            L48:
                int r0 = com.p108u.C20615.m72494(r0)
                goto L9
            L4d:
                int r0 = com.p108u.C20618.m72571()
                if (r0 > 0) goto L5a
                r0 = 84
                com.p108u.C20615.f116560 = r0
                java.lang.String r0 = "ۢۤۥ"
                goto L48
            L5a:
                java.lang.String r0 = "ۧ۠ۧ"
                int r0 = com.p108u.C20618.m72551(r0)
                goto L9
            L61:
                r0 = r5
                com.u.u$AnimatedDashedBorderLayout r0 = (com.p108u.C17024u.AnimatedDashedBorderLayout) r0
                float r3 = r0.phase
                int r0 = com.p108u.C20619.f116564
                if (r0 < 0) goto L71
                java.lang.String r0 = "۠ۤۨ"
            L6c:
                int r0 = com.p108u.C20619.m72582(r0)
                goto L9
            L71:
                java.lang.String r0 = "ۢۤۥ"
                goto L6c
            L74:
                int r0 = com.p108u.C20618.m72571()
                if (r0 > 0) goto L85
                r0 = 58
                com.p108u.C20617.f116562 = r0
                java.lang.String r0 = "ۦۥۡ"
            L80:
                int r0 = com.p108u.C20618.m72551(r0)
                goto L9
            L85:
                int r0 = com.p108u.C20618.f116563
                int r4 = com.p108u.C20616.f116561
                int r0 = r0 % r4
                r4 = -1748756(0xffffffffffe550ec, float:NaN)
                r0 = r0 ^ r4
                goto L9
            L90:
                java.lang.String r0 = "ۥ۟ۢ"
            L92:
                int r0 = com.p108u.C20618.m72551(r0)
                goto L9
            L98:
                int r0 = com.p108u.C20618.f116563
                int r4 = com.p108u.C20617.f116562
                int r4 = r4 / (-9624)
                int r0 = r0 - r4
                if (r0 < 0) goto La8
                r0 = 16
                com.p108u.C20619.f116564 = r0
                java.lang.String r0 = "ۨ۟ۧ"
                goto L92
            La8:
                int r0 = com.p108u.C20615.f116560
                int r4 = com.p108u.C20617.f116562
                r0 = r0 ^ r4
                r4 = 1751957(0x1abb95, float:2.455015E-39)
                r0 = r0 ^ r4
                goto L9
            Lb3:
                java.lang.String r0 = "۠ۤۨ"
                r1 = r2
                goto L80
            Lb7:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72473(java.lang.Object):float");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* renamed from: ۠ۧۡ, reason: not valid java name and contains not printable characters */
        public static short[] m72474() {
            String str;
            short[] sArr;
            String str2;
            int m72582 = C20619.m72582("۠ۡ۟");
            short[] sArr2 = null;
            short[] sArr3 = null;
            while (true) {
                switch (m72582) {
                    case 1747710:
                        if (C20618.m72571() <= 0) {
                            m72582 = C20617.m72547("ۤۨ۠");
                        } else if (C20619.f116564 + C20617.f116562 + 2715 <= 0) {
                            m72582 = C20619.m72582("ۣۢۡ");
                        } else {
                            str2 = "ۨ۟ۥ";
                            sArr = sArr2;
                            m72582 = C20615.m72494(str2);
                            sArr2 = sArr;
                        }
                    case 1747898:
                        if (C20616.f116561 / (C20616.f116561 * (-1407)) != 0) {
                            m72582 = C20616.m72538("ۤۨ۠");
                            sArr3 = null;
                        } else {
                            m72582 = 1749961 + (C20618.f116563 % C20615.f116560);
                            sArr3 = null;
                        }
                    case 1749579:
                    case 1752678:
                        if (C20619.m72586() <= 0) {
                            C20619.m72586();
                            str2 = "ۤۢ";
                            sArr = sArr2;
                            m72582 = C20615.m72494(str2);
                            sArr2 = sArr;
                        } else {
                            m72582 = (C20619.f116564 % C20616.f116561) + 1749787;
                        }
                    case 1749696:
                        break;
                    case 1749725:
                        if (C20615.m72490() >= 0) {
                            C20616.f116561 = 59;
                            str = "ۣۧۢ";
                        } else {
                            str = "ۢ۟ۨ";
                        }
                        m72582 = C20615.m72494(str);
                    case 1749731:
                        m72582 = C20617.m72547("ۤۨ۠");
                    case 1751559:
                        sArr3 = sArr2;
                        m72582 = C20619.m72582("ۣۢۡ");
                    case 1751772:
                        m72582 = (C20615.f116560 - C20619.f116564) + 1747696;
                    case 1754502:
                        m72582 = (C20619.f116564 * C20615.f116560) ^ 1784981;
                    case 1755342:
                        sArr = f116559short;
                        str2 = "ۤۡۤ";
                        m72582 = C20615.m72494(str2);
                        sArr2 = sArr;
                }
                return sArr3;
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00b2 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00ab A[SYNTHETIC] */
        /* renamed from: ۢ۠۠۠, reason: not valid java name and contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static android.graphics.Path m72475(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 296
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.m72475(java.lang.Object):android.graphics.Path");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
        /* renamed from: ۢۦۣۦ, reason: not valid java name and contains not printable characters */
        public static Paint m72476(Object obj) {
            String str;
            Paint paint = null;
            Paint paint2 = null;
            int m72551 = C20618.m72551("ۢۢۦ");
            while (true) {
                switch (m72551) {
                    case 1746941:
                        if (C20618.f116563 - (C20617.f116562 * 605) <= 0) {
                            C20615.m72490();
                            str = "۠۠ۧ";
                        } else {
                            str = "ۣۤ۟";
                        }
                        paint2 = paint;
                        m72551 = C20618.m72551(str);
                    case 1747687:
                    case 1752674:
                        m72551 = (C20617.f116562 - C20619.f116564) + 1751440;
                    case 1748802:
                        if ((C20618.f116563 | C20618.f116563 | 6564) >= 0) {
                            C20618.f116563 = 10;
                            m72551 = C20619.m72582("ۢ۠ۡ");
                        } else {
                            m72551 = (C20616.f116561 | C20615.f116560) + 1753741;
                        }
                    case 1749603:
                        m72551 = (C20619.f116564 / C20616.f116561) ^ (-1749669);
                    case 1749670:
                        if (C20615.m72490() > 0) {
                            m72551 = (C20616.f116561 ^ C20616.f116561) + 1748802;
                        } else if ((C20615.f116560 ^ (C20617.f116562 * (-2708))) >= 0) {
                            C20617.f116562 = 20;
                            m72551 = C20615.m72494("ۡۥۦ");
                        } else {
                            m72551 = C20615.f116560 + C20615.f116560 + 1750234;
                        }
                    case 1749760:
                        Paint paint3 = ((AnimatedDashedBorderLayout) obj).backgroundPaint;
                        if (C20615.f116560 >= 0) {
                            C20617.m72545();
                            m72551 = C20618.m72551("ۧۧۡ");
                            paint = paint3;
                        } else {
                            m72551 = C20615.m72494("۟ۧۥ");
                            paint = paint3;
                        }
                    case 1751616:
                        break;
                    case 1753604:
                        if (C20616.m72524() <= 0) {
                            C20618.f116563 = 56;
                            paint2 = null;
                            m72551 = C20618.m72551("ۥۦۣ");
                        } else {
                            paint2 = null;
                            m72551 = (C20615.f116560 * C20617.f116562) + 1692294;
                        }
                    case 1754625:
                        m72551 = (C20615.f116560 / C20617.f116562) + 1752674;
                    case 1755492:
                        m72551 = (C20616.f116561 ^ C20616.f116561) + 1748802;
                }
                return paint2;
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
        /* renamed from: ۦۣۧ۠, reason: contains not printable characters */
        public static ValueAnimator m72477(Object obj) {
            String str;
            int m72551 = C20618.m72551("۟ۨ");
            ValueAnimator valueAnimator = null;
            ValueAnimator valueAnimator2 = null;
            while (true) {
                switch (m72551) {
                    case 56297:
                        m72551 = C20618.m72571() >= 0 ? (C20617.f116562 * C20615.f116560) + 1689410 : C20619.m72582("ۡ۟ۨ");
                    case 56414:
                    case 56539:
                        m72551 = (C20618.f116563 % C20619.f116564) ^ (-1750532);
                    case 1748618:
                        if (C20617.f116562 >= 0) {
                            m72551 = C20617.m72547("ۣۡۥ");
                        } else {
                            str = "ۢۥۣ";
                            m72551 = C20617.m72547(str);
                        }
                    case 1749760:
                        m72551 = (C20615.f116560 * C20615.f116560) + 1693649;
                        valueAnimator2 = null;
                    case 1749761:
                        if (C20619.f116564 >= 0) {
                            C20618.f116563 = 52;
                            str = "ۣۣۡ";
                        } else {
                            str = "۟ۨ";
                        }
                        m72551 = C20617.m72547(str);
                    case 1749818:
                        m72551 = (C20616.f116561 - C20615.f116560) + 56186;
                    case 1750599:
                        break;
                    case 1750781:
                        if (C20615.m72490() >= 0) {
                            m72551 = C20615.m72494("ۣۧۡ");
                            valueAnimator2 = valueAnimator;
                        } else {
                            m72551 = (C20617.f116562 | C20615.f116560) + 1750604;
                            valueAnimator2 = valueAnimator;
                        }
                    case 1751741:
                        valueAnimator = ((AnimatedDashedBorderLayout) obj).animator;
                        str = "ۣۧۡ";
                        m72551 = C20617.m72547(str);
                    case 1754661:
                }
                return valueAnimator2;
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:40:0x008b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0085 A[SYNTHETIC] */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onAttachedToWindow() {
            /*
                r3 = this;
                r1 = 0
                java.lang.String r0 = "ۣۨۢ"
                int r0 = com.p108u.C20619.m72582(r0)
            L7:
                switch(r0) {
                    case 1747744: goto Lb;
                    case 1748804: goto L20;
                    case 1749729: goto Lc;
                    case 1749855: goto L42;
                    case 1751500: goto L16;
                    case 1752550: goto L7c;
                    case 1754381: goto L63;
                    case 1755463: goto L96;
                    default: goto La;
                }
            La:
                goto L7
            Lb:
                return
            Lc:
                int r0 = com.p108u.C20617.f116562
                int r2 = com.p108u.C20618.f116563
                r0 = r0 | r2
                r2 = -1755206(0xffffffffffe537ba, float:NaN)
                r0 = r0 ^ r2
                goto L7
            L16:
                m72470(r3)
                java.lang.String r0 = "ۢۨۥ"
            L1b:
                int r0 = com.p108u.C20618.m72551(r0)
                goto L7
            L20:
                java.lang.String r0 = "tsAkyZEZ2P9H4MCVlA"
                java.lang.String r0 = com.p108u.C20618.m72550(r0)
                float r1 = java.lang.Float.parseFloat(r0)
                int r0 = com.p108u.C20618.m72571()
                if (r0 > 0) goto L3b
                r0 = 95
                com.p108u.C20617.f116562 = r0
                java.lang.String r0 = "۠ۢۢ"
                int r0 = com.p108u.C20615.m72494(r0)
                goto L7
            L3b:
                java.lang.String r0 = "ۧ۟ۥ"
            L3d:
                int r0 = com.p108u.C20615.m72494(r0)
                goto L7
            L42:
                int r0 = com.p108u.C20616.m72524()
                if (r0 > 0) goto L7c
                int r0 = com.p108u.C20617.m72545()
                if (r0 > 0) goto L59
                r0 = 31
                com.p108u.C20618.f116563 = r0
            L52:
                java.lang.String r0 = "ۤ۟ۧ"
                int r0 = com.p108u.C20617.m72547(r0)
                goto L7
            L59:
                int r0 = com.p108u.C20617.f116562
                int r2 = com.p108u.C20619.f116564
                r0 = r0 | r2
                r2 = -1748547(0xffffffffffe551bd, float:NaN)
                r0 = r0 ^ r2
                goto L7
            L63:
                java.io.PrintStream r0 = java.lang.System.out
                r0.println(r1)
                int r0 = com.p108u.C20616.f116561
                if (r0 > 0) goto L72
                com.p108u.C20616.m72524()
                java.lang.String r0 = "ۧ۟ۥ"
                goto L1b
            L72:
                int r0 = com.p108u.C20615.f116560
                int r2 = com.p108u.C20618.f116563
                int r0 = r0 / r2
                r2 = 1747744(0x1aab20, float:2.449111E-39)
                int r0 = r0 + r2
                goto L7
            L7c:
                int r0 = com.p108u.C20619.f116564
                int r2 = com.p108u.C20615.f116560
                r2 = r2 ^ 6508(0x196c, float:9.12E-42)
                int r0 = r0 / r2
                if (r0 == 0) goto L8b
                com.p108u.C20617.m72545()
                java.lang.String r0 = "ۥ۟ۨ"
                goto L3d
            L8b:
                int r0 = com.p108u.C20617.f116562
                int r2 = com.p108u.C20615.f116560
                int r0 = r0 / r2
                r2 = 1747743(0x1aab1f, float:2.44911E-39)
                int r0 = r0 + r2
                goto L7
            L96:
                super.onAttachedToWindow()
                int r0 = com.p108u.C20615.f116560
                if (r0 < 0) goto L52
                java.lang.String r0 = "ۡۥۨ"
                int r0 = com.p108u.C20616.m72538(r0)
                goto L7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.onAttachedToWindow():void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            String str;
            int m72547 = C20617.m72547("ۣۡۦ");
            while (true) {
                switch (m72547) {
                    case 56328:
                        m72469(this);
                        str = "ۢۦ۟";
                        m72547 = C20615.m72494(str);
                    case 1749787:
                        break;
                    case 1750600:
                        super.onDetachedFromWindow();
                        if (C20617.f116562 >= 0) {
                            C20618.m72571();
                        }
                        m72547 = C20619.m72582("۠ۨ");
                    case 1751776:
                        if (C20618.f116563 - (C20618.f116563 + 8221) >= 0) {
                            C20617.m72545();
                            str = "۠ۨۧ";
                            m72547 = C20615.m72494(str);
                        } else {
                            m72547 = C20619.f116564 + C20619.f116564 + 1751478;
                        }
                }
                return;
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000f. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00b0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a4 A[SYNTHETIC] */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r11) {
            /*
                Method dump skipped, instructions count: 442
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.AnimatedDashedBorderLayout.onDraw(android.graphics.Canvas):void");
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000e. Please report as an issue. */
        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            float f;
            String str;
            int m72538 = C20616.m72538("ۢ۟۠");
            RectF rectF = null;
            Path path = null;
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (true) {
                switch (m72538) {
                    case 56449:
                        m72538 = C20619.m72582(C20615.f116560 >= 0 ? "ۣ۠ۢ" : "ۢ۟۠");
                    case 56544:
                        f3 = C20616.m72534(m72472(this));
                        m72538 = C20618.f116563 / (C20615.f116560 * (-7169)) != 0 ? C20615.m72494("ۧۧۦ") : C20618.m72551("ۣۢ۠");
                    case 1749571:
                        super.onSizeChanged(i, i2, i3, i4);
                        if (C20618.f116563 < 0) {
                            str = "ۧۧ";
                            m72538 = C20619.m72582(str);
                        }
                        str = "ۧۡۡ";
                        m72538 = C20619.m72582(str);
                    case 1749605:
                        C20618.m72570(m72466(this), f3 / 2.0f, f3 / 2.0f, i - (f3 / 2.0f), i2 - (f3 / 2.0f));
                        if ((C20617.f116562 | (C20617.f116562 ^ (-3871))) >= 0) {
                            C20616.f116561 = 1;
                            m72538 = C20616.m72538("ۤۥ۠");
                        }
                    case 1749638:
                        RectF m72466 = m72466(this);
                        if (C20616.m72524() <= 0) {
                            C20616.m72524();
                            m72538 = C20615.m72494("ۣۢ۠");
                            rectF = m72466;
                        } else {
                            m72538 = (-1750644) ^ (C20619.f116564 % C20617.f116562);
                            rectF = m72466;
                        }
                    case 1750748:
                        f = m72471(this);
                        if (C20617.f116562 * (C20619.f116564 / StandardNames.XS_LONG) != 0) {
                            m72538 = C20616.m72538("ۣۨ۠");
                            f2 = f;
                        } else {
                            m72538 = (-1756501) ^ (C20617.f116562 * C20616.f116561);
                            f2 = f;
                        }
                    case 1750811:
                        break;
                    case 1751679:
                        C20616.m72535(path, rectF, f2, f2, C20618.m72552());
                        f = f2;
                        m72538 = C20616.m72538("ۣۨ۠");
                        f2 = f;
                    case 1754439:
                        Path m72475 = m72475(this);
                        if (C20616.f116561 <= 0) {
                            m72538 = C20616.m72538("ۢ۟۠");
                            path = m72475;
                        } else {
                            m72538 = 1749669 + (C20617.f116562 % C20616.f116561);
                            path = m72475;
                        }
                    case 1754630:
                        C20619.m72589(m72475(this));
                        if (C20617.m72545() <= 0) {
                            C20619.f116564 = 53;
                            m72538 = C20615.m72494("ۧۧ");
                        } else {
                            str = "ۧۡۡ";
                            m72538 = C20619.m72582(str);
                        }
                }
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        return;
     */
    /* renamed from: -$$Nest$smdisplayUpdateDialog, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* bridge */ /* synthetic */ void m72438$$Nest$smdisplayUpdateDialog(android.app.Activity r1, java.lang.String r2, java.lang.String r3, java.lang.String r4, java.lang.String r5) {
        /*
            java.lang.String r0 = "۟۠ۧ"
            int r0 = com.p108u.C20619.m72582(r0)
        L6:
            switch(r0) {
                case 1746726: goto La;
                case 1753453: goto L1b;
                case 1754477: goto L2c;
                default: goto L9;
            }
        L9:
            goto L6
        La:
            m72445(r1, r2, r3, r4, r5)
            int r0 = com.p108u.C20617.f116562
            if (r0 < 0) goto L29
            com.p108u.C20618.m72571()
            java.lang.String r0 = "ۦ۠ۧ"
        L16:
            int r0 = com.p108u.C20615.m72494(r0)
            goto L6
        L1b:
            int r0 = com.p108u.C20616.f116561
            if (r0 > 0) goto L26
            java.lang.String r0 = "ۨۥۧ"
        L21:
            int r0 = com.p108u.C20616.m72538(r0)
            goto L6
        L26:
            java.lang.String r0 = "۟۠ۧ"
            goto L21
        L29:
            java.lang.String r0 = "ۧۢۨ"
            goto L16
        L2c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72438$$Nest$smdisplayUpdateDialog(android.app.Activity, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        return m72449(r1, r2);
     */
    /* renamed from: -$$Nest$smdpToPxFloat, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* bridge */ /* synthetic */ float m72439$$Nest$smdpToPxFloat(android.content.Context r1, float r2) {
        /*
            java.lang.String r0 = "ۨۤۥ"
            int r0 = com.p108u.C20615.m72494(r0)
        L6:
            switch(r0) {
                case 1753414: goto La;
                case 1755497: goto L1a;
                default: goto L9;
            }
        L9:
            goto L6
        La:
            int r0 = com.p108u.C20618.m72571()
            if (r0 > 0) goto L17
            java.lang.String r0 = "ۤ۟"
        L12:
            int r0 = com.p108u.C20615.m72494(r0)
            goto L6
        L17:
            java.lang.String r0 = "ۨۤۥ"
            goto L12
        L1a:
            float r0 = m72449(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72439$$Nest$smdpToPxFloat(android.content.Context, float):float");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002a A[SYNTHETIC] */
    /* renamed from: -$$Nest$smprocessJsonData, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* bridge */ /* synthetic */ void m72441$$Nest$smprocessJsonData(android.app.Activity r4, java.lang.String r5) {
        /*
            r0 = 0
            java.lang.String r2 = "ۦ۠ۤ"
            int r2 = com.p108u.C20617.m72547(r2)
        L8:
            switch(r2) {
                case 1748673: goto Lc;
                case 1750819: goto L73;
                case 1753450: goto L4d;
                case 1753454: goto L5d;
                case 1753570: goto L21;
                case 1754469: goto L99;
                case 1754500: goto L3e;
                default: goto Lb;
            }
        Lb:
            goto L8
        Lc:
            int r2 = com.p108u.C20618.f116563
            if (r2 < 0) goto L1a
            com.p108u.C20618.m72571()
            java.lang.String r2 = "ۡۦۢ"
            int r2 = com.p108u.C20616.m72538(r2)
            goto L8
        L1a:
            java.lang.String r2 = "ۦ۠ۤ"
            int r2 = com.p108u.C20619.m72582(r2)
            goto L8
        L21:
            int r2 = com.p108u.C20615.f116560
            int r3 = com.p108u.C20616.f116561
            r3 = r3 | 3502(0xdae, float:4.907E-42)
            int r2 = r2 * r3
            if (r2 < 0) goto L34
            com.p108u.C20618.m72571()
            java.lang.String r2 = "ۤۧۢ"
            int r2 = com.p108u.C20617.m72547(r2)
            goto L8
        L34:
            int r2 = com.p108u.C20618.f116563
            int r3 = com.p108u.C20619.f116564
            int r2 = r2 / r3
            r3 = 1754471(0x1ac567, float:2.458538E-39)
            r2 = r2 ^ r3
            goto L8
        L3e:
            java.io.PrintStream r2 = java.lang.System.out
            r2.println(r0)
            int r2 = com.p108u.C20619.f116564
            int r3 = com.p108u.C20619.f116564
            r2 = r2 | r3
            r3 = 1754908(0x1ac71c, float:2.45915E-39)
            int r2 = r2 + r3
            goto L8
        L4d:
            m72451(r4, r5)
            int r2 = com.p108u.C20618.m72571()
            if (r2 > 0) goto L6c
            java.lang.String r2 = "ۣۧ۠"
            int r2 = com.p108u.C20616.m72538(r2)
            goto L8
        L5d:
            int r2 = com.p108u.C20616.m72524()
            if (r2 > 0) goto L21
            int r2 = com.p108u.C20617.f116562
            int r3 = com.p108u.C20618.f116563
            int r3 = r3 * 8861
            int r2 = r2 + r3
            if (r2 < 0) goto L86
        L6c:
            java.lang.String r2 = "ۦ۠ۨ"
            int r2 = com.p108u.C20619.m72582(r2)
            goto L8
        L73:
            java.lang.String r0 = "6G"
            java.lang.String r0 = com.p108u.C20619.m72610(r0)
            double r0 = java.lang.Double.parseDouble(r0)
            int r2 = com.p108u.C20616.f116561
            int r3 = com.p108u.C20616.f116561
            int r3 = r3 * 5750
            r2 = r2 | r3
            if (r2 > 0) goto L8e
        L86:
            java.lang.String r2 = "ۣۨۨ"
            int r2 = com.p108u.C20615.m72494(r2)
            goto L8
        L8e:
            int r2 = com.p108u.C20617.f116562
            int r3 = com.p108u.C20615.f116560
            int r2 = r2 / r3
            r3 = 1754501(0x1ac585, float:2.45858E-39)
            r2 = r2 ^ r3
            goto L8
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72441$$Nest$smprocessJsonData(android.app.Activity, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        return;
     */
    /* renamed from: -$$Nest$smsaveJsonToCache, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* bridge */ /* synthetic */ void m72442$$Nest$smsaveJsonToCache(android.content.Context r2, java.lang.String r3) {
        /*
            java.lang.String r0 = "ۢ۟ۨ"
            int r0 = com.p108u.C20617.m72547(r0)
        L6:
            switch(r0) {
                case 56383: goto La;
                case 1748675: goto L28;
                case 1749579: goto Lb;
                default: goto L9;
            }
        L9:
            goto L6
        La:
            return
        Lb:
            m72453(r2, r3)
            int r0 = com.p108u.C20617.f116562
            int r1 = com.p108u.C20618.f116563
            int r1 = r1 % (-8141)
            int r0 = r0 / r1
            if (r0 == 0) goto L21
            r0 = 2
            com.p108u.C20617.f116562 = r0
            java.lang.String r0 = "ۣۡۡ"
            int r0 = com.p108u.C20616.m72538(r0)
            goto L6
        L21:
            java.lang.String r0 = "ۢۡ"
            int r0 = com.p108u.C20615.m72494(r0)
            goto L6
        L28:
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20617.f116562
            int r1 = r1 / 3925
            r0 = r0 ^ r1
            if (r0 > 0) goto L38
            java.lang.String r0 = "ۧ۠ۢ"
            int r0 = com.p108u.C20617.m72547(r0)
            goto L6
        L38:
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20618.f116563
            int r0 = r0 - r1
            r1 = 1748516(0x1aae24, float:2.450193E-39)
            int r0 = r0 + r1
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72442$$Nest$smsaveJsonToCache(android.content.Context, java.lang.String):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C17024u() {
        /*
            r3 = this;
            r3.<init>()
            r0 = 0
            java.lang.String r1 = "ۥۥۤ"
            int r1 = com.p108u.C20617.m72547(r1)
        La:
            switch(r1) {
                case 56320: goto Le;
                case 1746875: goto L1d;
                case 1750723: goto L48;
                case 1752644: goto L2e;
                case 1752646: goto L7d;
                case 1752703: goto L66;
                default: goto Ld;
            }
        Ld:
            goto La
        Le:
            java.io.PrintStream r1 = java.lang.System.out
            r1.println(r0)
            int r1 = com.p108u.C20616.f116561
            int r2 = com.p108u.C20617.f116562
            int r1 = r1 % r2
            r2 = 1752530(0x1abdd2, float:2.455818E-39)
            int r1 = r1 + r2
            goto La
        L1d:
            java.lang.String r0 = "Y2IyNhrhT1sKWHEwpJXjwIl"
            java.lang.String r0 = com.p108u.C20615.m72489(r0)
            java.lang.Long r0 = java.lang.Long.decode(r0)
        L27:
            java.lang.String r1 = "۠۠"
            int r1 = com.p108u.C20616.m72538(r1)
            goto La
        L2e:
            int r1 = com.p108u.C20616.m72524()
            if (r1 > 0) goto L48
            int r1 = com.p108u.C20618.m72571()
            if (r1 > 0) goto L3e
            com.p108u.C20617.m72545()
            goto L27
        L3e:
            int r1 = com.p108u.C20618.f116563
            int r2 = com.p108u.C20616.f116561
            r1 = r1 ^ r2
            r2 = 1747842(0x1aab82, float:2.449248E-39)
            int r1 = r1 + r2
            goto La
        L48:
            int r1 = com.p108u.C20619.f116564
            int r2 = com.p108u.C20618.f116563
            int r2 = r2 / 1879
            int r1 = r1 + r2
            if (r1 < 0) goto L5c
            r1 = 72
            com.p108u.C20616.f116561 = r1
            java.lang.String r1 = "۠ۥۢ"
            int r1 = com.p108u.C20616.m72538(r1)
            goto La
        L5c:
            int r1 = com.p108u.C20616.f116561
            int r2 = com.p108u.C20616.f116561
            int r1 = r1 + r2
            r2 = 1752414(0x1abd5e, float:2.455655E-39)
            int r1 = r1 + r2
            goto La
        L66:
            int r1 = com.p108u.C20616.f116561
            int r2 = com.p108u.C20618.f116563
            int r2 = r2 % 2654
            int r1 = r1 * r2
            if (r1 < 0) goto L76
            java.lang.String r1 = "ۧۨ۟"
            int r1 = com.p108u.C20618.m72551(r1)
            goto La
        L76:
            java.lang.String r1 = "ۥۥۤ"
            int r1 = com.p108u.C20618.m72551(r1)
            goto La
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.<init>():void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    private static void animateViewIn(View view, long j) {
        String str;
        Integer num;
        String str2;
        Integer num2 = null;
        int m72494 = C20615.m72494("ۣۦ۠");
        while (true) {
            switch (m72494) {
                case 56352:
                    num = Integer.decode(C20619.m72610("XBRF2VUcC8Kr9a"));
                    if (C20617.f116562 + (C20619.f116564 | (-2742)) >= 0) {
                        C20616.f116561 = 81;
                        m72494 = C20616.m72538("ۣۦ۠");
                        num2 = num;
                    } else {
                        str = "ۣۡۢ";
                        num2 = num;
                        m72494 = C20619.m72582(str);
                    }
                case 56357:
                    m72494 = (C20619.f116564 / C20616.f116561) ^ (-1750752);
                case 1746811:
                    C20615.m72493(C20619.m72591(C20618.m72564(C20615.m72506(C20619.m72583(C20616.m72544(C20618.m72555(view), 1.0f), 0.0f), j), (-671) ^ C20618.f116563), new DecelerateInterpolator()));
                    m72494 = (C20616.f116561 / C20617.f116562) + 1747902;
                case 1746880:
                    C20619.m72597(view, m72449(C20615.m72501(view), 20.0f));
                    if ((C20619.f116564 | (C20617.f116562 - 8608)) >= 0) {
                        C20619.f116564 = 89;
                        m72494 = C20616.m72538("ۡۡ");
                    } else {
                        str2 = "ۣ۟۟";
                        m72494 = C20619.m72582(str2);
                    }
                case 1747902:
                    if (C20618.m72571() > 0) {
                        m72494 = (C20615.f116560 * C20618.f116563) ^ 1695703;
                    } else if (C20616.m72524() <= 0) {
                        C20619.f116564 = 38;
                        str2 = "ۣ۟۟";
                        m72494 = C20619.m72582(str2);
                    } else {
                        m72494 = (C20617.f116562 ^ C20617.f116562) ^ 56352;
                    }
                case 1749856:
                    break;
                case 1750596:
                    System.out.println(num2);
                    if (C20617.f116562 >= 0) {
                        C20616.f116561 = 9;
                        num = num2;
                        str = "ۣۡۢ";
                        num2 = num;
                        m72494 = C20619.m72582(str);
                    } else {
                        str = "ۢۨۦ";
                        m72494 = C20619.m72582(str);
                    }
                case 1750749:
                    C20615.m72482(view, 0.0f);
                    str2 = "۟ۥۦ";
                    m72494 = C20619.m72582(str2);
                case 1753482:
                    m72494 = (C20615.f116560 * C20618.f116563) ^ 1695703;
            }
            return;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x01f7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0200 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.drawable.Drawable createButtonDrawable(android.content.Context r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.createButtonDrawable(android.content.Context, boolean):android.graphics.drawable.Drawable");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x002b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:175:0x079d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x078d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x03ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00de A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x011c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void displayUpdateDialog(android.app.Activity r34, java.lang.String r35, java.lang.String r36, java.lang.String r37, java.lang.String r38) {
        /*
            Method dump skipped, instructions count: 2326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.displayUpdateDialog(android.app.Activity, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
    
        return com.p108u.C20615.m72481(com.p108u.C20615.m72487(com.p108u.C20618.m72579(r2))) * r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static float dpToPxFloat(android.content.Context r2, float r3) {
        /*
            java.lang.String r0 = "ۧۢۨ"
            int r0 = com.p108u.C20618.m72551(r0)
        L6:
            switch(r0) {
                case 1753697: goto La;
                case 1754477: goto L14;
                default: goto L9;
            }
        L9:
            goto L6
        La:
            int r0 = com.p108u.C20615.f116560
            int r1 = com.p108u.C20616.f116561
            r0 = r0 ^ r1
            r1 = -1754614(0xffffffffffe53a0a, float:NaN)
            r0 = r0 ^ r1
            goto L6
        L14:
            android.content.res.Resources r0 = com.p108u.C20618.m72579(r2)
            android.util.DisplayMetrics r0 = com.p108u.C20615.m72487(r0)
            float r0 = com.p108u.C20615.m72481(r0)
            float r0 = r0 * r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.dpToPxFloat(android.content.Context, float):float");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        return (int) (com.p108u.C20615.m72481(com.p108u.C20615.m72487(com.p108u.C20618.m72579(r2))) * r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int dpToPxInt(android.content.Context r2, float r3) {
        /*
            java.lang.String r0 = "ۥۣ۟"
            int r0 = com.p108u.C20618.m72551(r0)
        L6:
            switch(r0) {
                case 1746970: goto La;
                case 1752457: goto L1e;
                default: goto L9;
            }
        L9:
            goto L6
        La:
            int r0 = com.p108u.C20617.f116562
            int r1 = com.p108u.C20615.f116560
            r1 = r1 ^ (-5669(0xffffffffffffe9db, float:NaN))
            int r0 = r0 + r1
            if (r0 > 0) goto L2d
            r0 = 70
            com.p108u.C20619.f116564 = r0
            java.lang.String r0 = "ۣۤۧ"
            int r0 = com.p108u.C20616.m72538(r0)
            goto L6
        L1e:
            android.content.res.Resources r0 = com.p108u.C20618.m72579(r2)
            android.util.DisplayMetrics r0 = com.p108u.C20615.m72487(r0)
            float r0 = com.p108u.C20615.m72481(r0)
            float r0 = r0 * r3
            int r0 = (int) r0
            return r0
        L2d:
            java.lang.String r0 = "ۥۣ۟"
            int r0 = com.p108u.C20617.m72547(r0)
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.dpToPxInt(android.content.Context, float):int");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00b7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void fetchOnlineData(android.app.Activity r4) {
        /*
            r2 = 0
            java.lang.String r0 = "ۤۤۢ"
            int r0 = com.p108u.C20618.m72551(r0)
        L8:
            switch(r0) {
                case 56540: goto Lc;
                case 1748864: goto L46;
                case 1749728: goto L59;
                case 1750725: goto Lc2;
                case 1751650: goto L1f;
                case 1754569: goto L7a;
                case 1755370: goto L9a;
                default: goto Lb;
            }
        Lb:
            goto L8
        Lc:
            int r0 = com.p108u.C20617.f116562
            int r1 = com.p108u.C20619.f116564
            int r1 = r1 / 1893
            int r0 = r0 + r1
            if (r0 < 0) goto Lb7
            com.p108u.C20617.m72545()
            java.lang.String r0 = "۠ۥۧ"
            int r0 = com.p108u.C20616.m72538(r0)
            goto L8
        L1f:
            java.lang.Thread r0 = new java.lang.Thread
            com.u.u$1 r1 = new com.u.u$1
            r1.<init>(r4)
            r0.<init>(r1)
            com.p108u.C20615.m72484(r0)
            int r0 = com.p108u.C20619.f116564
            int r1 = com.p108u.C20616.f116561
            r1 = r1 | 1680(0x690, float:2.354E-42)
            r0 = r0 ^ r1
            if (r0 < 0) goto L3f
            com.p108u.C20615.m72490()
            java.lang.String r0 = "ۨ۠ۢ"
            int r0 = com.p108u.C20615.m72494(r0)
            goto L8
        L3f:
            java.lang.String r0 = "ۨ۠ۢ"
        L41:
            int r0 = com.p108u.C20619.m72582(r0)
            goto L8
        L46:
            int r0 = com.p108u.C20617.f116562
            int r1 = com.p108u.C20616.f116561
            int r1 = r1 % 7575
            r0 = r0 | r1
            if (r0 < 0) goto L56
            java.lang.String r0 = "۟ۦۧ"
        L51:
            int r0 = com.p108u.C20617.m72547(r0)
            goto L8
        L56:
            java.lang.String r0 = "ۤۤۢ"
            goto L51
        L59:
            java.lang.String r0 = "u9JkM"
            java.lang.String r0 = com.p108u.C20618.m72550(r0)
            long r2 = java.lang.Long.parseLong(r0)
            int r0 = com.p108u.C20617.m72545()
            if (r0 > 0) goto L70
            r0 = 96
            com.p108u.C20619.f116564 = r0
            java.lang.String r0 = "ۣۧ"
            goto L41
        L70:
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20619.f116564
            int r0 = r0 * r1
            r1 = 1805493(0x1b8cb5, float:2.530035E-39)
            int r0 = r0 + r1
            goto L8
        L7a:
            java.io.PrintStream r0 = java.lang.System.out
            r0.println(r2)
            int r0 = com.p108u.C20615.f116560
            if (r0 < 0) goto L8f
            r0 = 8
            com.p108u.C20616.f116561 = r0
            java.lang.String r0 = "ۡۧۦ"
            int r0 = com.p108u.C20616.m72538(r0)
            goto L8
        L8f:
            int r0 = com.p108u.C20615.f116560
            int r1 = com.p108u.C20616.f116561
            int r0 = r0 - r1
            r1 = -1750950(0xffffffffffe5485a, float:NaN)
            r0 = r0 ^ r1
            goto L8
        L9a:
            int r0 = com.p108u.C20617.m72545()
            if (r0 > 0) goto Lc
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20618.f116563
            int r1 = r1 * 4776
            int r0 = r0 / r1
            if (r0 == 0) goto Lb4
            com.p108u.C20617.m72545()
            java.lang.String r0 = "ۢۤۢ"
            int r0 = com.p108u.C20615.m72494(r0)
            goto L8
        Lb4:
            java.lang.String r0 = "ۢۤۢ"
            goto L51
        Lb7:
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20615.f116560
            int r0 = r0 * r1
            r1 = -1760679(0xffffffffffe52259, float:NaN)
            r0 = r0 ^ r1
            goto L8
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.fetchOnlineData(android.app.Activity):void");
    }

    private static String getCachedJson(Context context) {
        return C20618.m72559(C20616.m72517(context, C20615.m72511(m72446(), 110, C20615.f116560 ^ (-255), 2019), 0), C20615.m72511(m72446(), 128, C20615.f116560 ^ (-253), 2672), null);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00f3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isOnline(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.isOnline(android.content.Context):boolean");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x002b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0314 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x030d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x03ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x053d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0533 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processJsonData(android.app.Activity r31, java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 1914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.processJsonData(android.app.Activity, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void saveJsonToCache(android.content.Context r5, java.lang.String r6) {
        /*
            java.lang.String r0 = "ۡۤۨ"
            int r0 = com.p108u.C20619.m72582(r0)
        L6:
            switch(r0) {
                case 1748773: goto La;
                case 1753423: goto L71;
                case 1754440: goto L4a;
                default: goto L9;
            }
        L9:
            goto L6
        La:
            short[] r0 = m72446()
            r1 = 308(0x134, float:4.32E-43)
            int r2 = com.p108u.C20618.f116563
            r2 = r2 ^ (-929(0xfffffffffffffc5f, float:NaN))
            r3 = 886(0x376, float:1.242E-42)
            java.lang.String r0 = com.p108u.C20616.m72528(r0, r1, r2, r3)
            r1 = 0
            android.content.SharedPreferences r0 = com.p108u.C20616.m72517(r5, r0, r1)
            android.content.SharedPreferences$Editor r0 = com.p108u.C20615.m72512(r0)
            short[] r1 = m72446()
            r2 = 326(0x146, float:4.57E-43)
            int r3 = com.p108u.C20618.f116563
            r3 = r3 ^ (-931(0xfffffffffffffc5d, float:NaN))
            r4 = 3075(0xc03, float:4.309E-42)
            java.lang.String r1 = com.p108u.C20619.m72595(r1, r2, r3, r4)
            android.content.SharedPreferences$Editor r0 = com.p108u.C20619.m72602(r0, r1, r6)
            com.p108u.C20615.m72503(r0)
            int r0 = com.p108u.C20616.m72524()
            if (r0 > 0) goto L67
            com.p108u.C20615.m72490()
            java.lang.String r0 = "ۡۤۨ"
            int r0 = com.p108u.C20618.m72551(r0)
            goto L6
        L4a:
            int r0 = com.p108u.C20617.f116562
            int r1 = com.p108u.C20617.f116562
            int r1 = r1 * (-5451)
            int r0 = r0 + r1
            if (r0 > 0) goto L5d
            com.p108u.C20619.m72586()
            java.lang.String r0 = "ۣۧۨ"
            int r0 = com.p108u.C20616.m72538(r0)
            goto L6
        L5d:
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20615.f116560
            int r0 = r0 - r1
            r1 = 1748548(0x1aae44, float:2.450238E-39)
            r0 = r0 ^ r1
            goto L6
        L67:
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20617.f116562
            int r0 = r0 / r1
            r1 = 1753423(0x1ac14f, float:2.457069E-39)
            r0 = r0 ^ r1
            goto L6
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.saveJsonToCache(android.content.Context, java.lang.String):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    public static void showDialog(Activity activity) {
        String str;
        int m72582 = C20619.m72582("۟ۥ۟");
        while (true) {
            switch (m72582) {
                case 1746756:
                    break;
                case 1746873:
                    m72582 = m72444(activity) ? (C20615.f116560 - C20619.f116564) ^ 1755619 : C20619.m72582("ۧۢۥ");
                case 1747742:
                case 1753636:
                    if (C20616.f116561 % (C20615.f116560 % 1180) <= 0) {
                        C20616.f116561 = 42;
                        str = "ۤ۠ۡ";
                        m72582 = C20618.m72551(str);
                    } else {
                        m72582 = (C20619.f116564 | C20617.f116562) ^ (-1746499);
                    }
                case 1748862:
                    if (C20618.f116563 % (C20616.f116561 - 2829) >= 0) {
                        C20619.f116564 = 63;
                        m72582 = C20618.m72551("ۢ۟ۧ");
                    } else {
                        m72582 = C20615.f116560 + C20617.f116562 + 1748242;
                    }
                case 1749578:
                case 1754474:
                    m72451(activity, m72452(activity));
                    if (C20618.f116563 >= 0) {
                        C20617.m72545();
                        m72582 = C20617.m72547("ۣۨۢ");
                    } else {
                        str = "۟ۡۦ";
                        m72582 = C20618.m72551(str);
                    }
                case 1754595:
                    m72582 = (C20616.f116561 ^ (C20616.f116561 | 2317)) <= 0 ? C20617.m72547("۠ۢۥ") : (C20618.f116563 / C20619.f116564) ^ 1746875;
                case 1755433:
                    m72443(activity);
                    if (C20615.m72490() >= 0) {
                        C20618.f116563 = 78;
                        m72582 = C20616.m72538("ۦۦۤ");
                    } else {
                        m72582 = (C20618.f116563 - C20618.f116563) + 1748862;
                    }
            }
            return;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0027 A[SYNTHETIC] */
    /* renamed from: ۟ۡ۠ۦۣ, reason: not valid java name and contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m72443(java.lang.Object r3) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72443(java.lang.Object):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039 A[SYNTHETIC] */
    /* renamed from: ۣ۟ۢۥ۠, reason: not valid java name and contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m72444(java.lang.Object r5) {
        /*
            r2 = 0
            java.lang.String r0 = "ۧۦۤ"
            int r3 = com.p108u.C20615.m72494(r0)
            r0 = r2
            r1 = r2
        L9:
            switch(r3) {
                case 56297: goto Ld;
                case 1746819: goto L14;
                case 1746973: goto L82;
                case 1747928: goto L64;
                case 1748859: goto L6e;
                case 1749698: goto L4e;
                case 1749824: goto L35;
                case 1751585: goto Lae;
                case 1754597: goto L95;
                case 1754601: goto Ld;
                case 1755342: goto Lb0;
                default: goto Lc;
            }
        Lc:
            goto L9
        Ld:
            java.lang.String r3 = "ۨ۟ۥ"
        Lf:
            int r3 = com.p108u.C20617.m72547(r3)
            goto L9
        L14:
            r0 = r5
            android.content.Context r0 = (android.content.Context) r0
            boolean r0 = isOnline(r0)
            int r3 = com.p108u.C20619.f116564
            int r4 = com.p108u.C20619.f116564
            int r4 = r4 + 6059
            int r3 = r3 / r4
            if (r3 == 0) goto L2b
        L24:
            java.lang.String r3 = "۠ۨ۠"
            int r3 = com.p108u.C20617.m72547(r3)
            goto L9
        L2b:
            int r3 = com.p108u.C20619.f116564
            int r4 = com.p108u.C20618.f116563
            int r3 = r3 * r4
            r4 = 1895892(0x1cedd4, float:2.65671E-39)
            r3 = r3 ^ r4
            goto L9
        L35:
            int r3 = com.p108u.C20618.f116563
            if (r3 < 0) goto L44
            r3 = 37
            com.p108u.C20618.f116563 = r3
            java.lang.String r3 = "ۦۥ"
            int r3 = com.p108u.C20618.m72551(r3)
            goto L9
        L44:
            int r3 = com.p108u.C20617.f116562
            int r4 = com.p108u.C20618.f116563
            int r3 = r3 % r4
            r4 = -1747228(0xffffffffffe556e4, float:NaN)
            r3 = r3 ^ r4
            goto L9
        L4e:
            int r3 = com.p108u.C20616.m72524()
            if (r3 > 0) goto L5a
            com.p108u.C20618.m72571()
            java.lang.String r3 = "ۢۧ"
            goto Lf
        L5a:
            int r3 = com.p108u.C20619.f116564
            int r4 = com.p108u.C20615.f116560
            int r3 = r3 + r4
            r4 = 1755273(0x1ac889, float:2.459661E-39)
            int r3 = r3 + r4
            goto L9
        L64:
            int r3 = com.p108u.C20616.f116561
            int r4 = com.p108u.C20619.f116564
            int r3 = r3 * r4
            r4 = 1805525(0x1b8cd5, float:2.53008E-39)
            int r3 = r3 + r4
            goto L9
        L6e:
            int r1 = com.p108u.C20619.m72586()
            if (r1 > 0) goto L80
            r1 = 77
            com.p108u.C20619.f116564 = r1
            java.lang.String r1 = "ۤۢ۟"
            int r3 = com.p108u.C20616.m72538(r1)
            r1 = r2
            goto L9
        L80:
            r1 = r2
            goto L24
        L82:
            int r3 = com.p108u.C20616.f116561
            if (r3 > 0) goto L91
            com.p108u.C20615.m72490()
        L89:
            java.lang.String r3 = "ۨ۟ۥ"
            int r3 = com.p108u.C20619.m72582(r3)
            goto L9
        L91:
            java.lang.String r3 = "ۡۧۡ"
            goto Lf
        L95:
            int r3 = com.p108u.C20615.m72490()
            if (r3 > 0) goto L35
            int r3 = com.p108u.C20617.f116562
            if (r3 < 0) goto Lab
            r3 = 16
            com.p108u.C20618.f116563 = r3
            java.lang.String r3 = "ۡۧۡ"
        La5:
            int r3 = com.p108u.C20618.m72551(r3)
            goto L9
        Lab:
            java.lang.String r3 = "ۣ۟ۧ"
            goto La5
        Lae:
            r1 = r0
            goto L89
        Lb0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72444(java.lang.Object):boolean");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* renamed from: ۟ۢۨ۠ۥ, reason: not valid java name and contains not printable characters */
    public static void m72445(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        int m72582 = C20619.m72582("ۣۧۡ");
        while (true) {
            switch (m72582) {
                case 56292:
                    displayUpdateDialog((Activity) obj, (String) obj2, (String) obj3, (String) obj4, (String) obj5);
                    if (C20617.f116562 >= 0) {
                        C20619.m72586();
                        m72582 = C20615.m72494("ۥۣ۟");
                    } else {
                        m72582 = (C20618.f116563 * C20618.f116563) + 858719;
                    }
                case 1746815:
                case 1750720:
                case 1752673:
                    m72582 = C20616.m72538(C20616.f116561 <= 0 ? "ۣ۠۠" : "ۨۥۥ");
                case 1750781:
                    m72582 = C20617.m72545() >= 0 ? C20617.m72545() <= 0 ? C20616.m72538("ۣۥۢ") : C20619.m72582("ۣ۟") : C20615.f116560 + C20618.f116563 + 1753641;
                case 1752457:
                    m72582 = C20617.f116562 + C20619.f116564 + 1753375;
                case 1755466:
                    m72582 = (C20619.f116564 | C20617.f116562) + 1751044;
                case 1755528:
                    break;
            }
            return;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bf A[SYNTHETIC] */
    /* renamed from: ۟ۥ۟ۨ۠, reason: not valid java name and contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static short[] m72446() {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72446():short[]");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0086 A[SYNTHETIC] */
    /* renamed from: ۣ۠ۤ, reason: not valid java name and contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m72447(java.lang.Object r3, long r4) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72447(java.lang.Object, long):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0023 A[SYNTHETIC] */
    /* renamed from: ۣ۠ۧۡ, reason: not valid java name and contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m72448(java.lang.Object r5, float r6) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72448(java.lang.Object, float):int");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0021 A[SYNTHETIC] */
    /* renamed from: ۢۡۧۤ, reason: not valid java name and contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float m72449(java.lang.Object r5, float r6) {
        /*
            r3 = 0
            java.lang.String r0 = "ۥۦۣ"
            int r2 = com.p108u.C20616.m72538(r0)
            r0 = r3
            r1 = r3
        L9:
            switch(r2) {
                case 56567: goto Ld;
                case 1746974: goto L9b;
                case 1747657: goto Ld;
                case 1747931: goto L47;
                case 1748616: goto L1b;
                case 1750627: goto Lc1;
                case 1752615: goto L78;
                case 1752674: goto Laf;
                case 1753416: goto L36;
                case 1755340: goto L55;
                case 1755555: goto L40;
                default: goto Lc;
            }
        Lc:
            goto L9
        Ld:
            int r2 = com.p108u.C20616.f116561
            if (r2 > 0) goto L6e
            com.p108u.C20619.m72586()
            java.lang.String r2 = "ۢۥ"
            int r2 = com.p108u.C20615.m72494(r2)
            goto L9
        L1b:
            int r2 = com.p108u.C20619.m72586()
            if (r2 > 0) goto L2c
            r2 = 90
            com.p108u.C20615.f116560 = r2
            java.lang.String r2 = "ۣۨ۠"
            int r2 = com.p108u.C20615.m72494(r2)
            goto L9
        L2c:
            int r2 = com.p108u.C20619.f116564
            int r4 = com.p108u.C20619.f116564
            int r2 = r2 / r4
            r4 = 1753417(0x1ac149, float:2.45706E-39)
            r2 = r2 ^ r4
            goto L9
        L36:
            int r2 = com.p108u.C20616.f116561
            int r4 = com.p108u.C20616.f116561
            int r2 = r2 % r4
            r4 = 1747931(0x1aabdb, float:2.449373E-39)
            r2 = r2 ^ r4
            goto L9
        L40:
            java.lang.String r2 = "ۥۦۣ"
            int r2 = com.p108u.C20619.m72582(r2)
            goto L9
        L47:
            int r1 = com.p108u.C20617.m72545()
            if (r1 > 0) goto L4d
        L4d:
            java.lang.String r1 = "۟ۨۧ"
            int r2 = com.p108u.C20617.m72547(r1)
            r1 = r3
            goto L9
        L55:
            int r1 = com.p108u.C20615.f116560
            int r2 = com.p108u.C20615.f116560
            int r2 = r2 / 2736
            int r1 = r1 * r2
            if (r1 == 0) goto L66
            java.lang.String r1 = "ۣۨ۟"
            int r2 = com.p108u.C20615.m72494(r1)
            r1 = r0
            goto L9
        L66:
            r1 = r0
        L67:
            java.lang.String r2 = "ۣۢۢ"
            int r2 = com.p108u.C20619.m72582(r2)
            goto L9
        L6e:
            int r2 = com.p108u.C20615.f116560
            int r4 = com.p108u.C20616.f116561
            int r2 = r2 + r4
            r4 = 1750748(0x1ab6dc, float:2.45332E-39)
            int r2 = r2 + r4
            goto L9
        L78:
            r0 = r5
            android.content.Context r0 = (android.content.Context) r0
            float r0 = dpToPxFloat(r0, r6)
            int r2 = com.p108u.C20618.m72571()
            if (r2 > 0) goto L90
            com.p108u.C20615.m72490()
        L88:
            java.lang.String r2 = "ۥۤۦ"
            int r2 = com.p108u.C20617.m72547(r2)
            goto L9
        L90:
            int r2 = com.p108u.C20617.f116562
            int r4 = com.p108u.C20617.f116562
            int r2 = r2 % r4
            r4 = 1755340(0x1ac8cc, float:2.459755E-39)
            int r2 = r2 + r4
            goto L9
        L9b:
            int r2 = com.p108u.C20619.f116564
            if (r2 < 0) goto La4
            r2 = 45
            com.p108u.C20618.f116563 = r2
            goto L67
        La4:
            int r2 = com.p108u.C20619.f116564
            int r4 = com.p108u.C20615.f116560
            int r2 = r2 + r4
            r4 = 57243(0xdf9b, float:8.0215E-41)
            int r2 = r2 + r4
            goto L9
        Laf:
            int r2 = com.p108u.C20615.m72490()
            if (r2 > 0) goto L1b
            int r2 = com.p108u.C20618.f116563
            if (r2 < 0) goto L88
            java.lang.String r2 = "ۦ۟ۡ"
            int r2 = com.p108u.C20618.m72551(r2)
            goto L9
        Lc1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72449(java.lang.Object, float):float");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    /* renamed from: ۣۤ۠ۥ, reason: not valid java name and contains not printable characters */
    public static Drawable m72450(Object obj, boolean z) {
        String str;
        String str2;
        Drawable drawable;
        int m72582 = C20619.m72582("ۦۤۨ");
        Drawable drawable2 = null;
        Drawable drawable3 = null;
        while (true) {
            switch (m72582) {
                case 1748643:
                    m72582 = (C20617.f116562 | C20618.f116563) ^ (-1755176);
                case 1749573:
                    drawable = createButtonDrawable((Context) obj, z);
                    if (C20619.f116564 - (C20617.f116562 / 2751) >= 0) {
                        C20615.f116560 = 36;
                        str2 = "ۣۣۢ";
                    } else {
                        str2 = "ۦۧۨ";
                    }
                    m72582 = C20616.m72538(str2);
                    drawable2 = drawable;
                case 1750658:
                    break;
                case 1752453:
                    if ((C20618.f116563 | (C20615.f116560 + 7699)) >= 0) {
                        C20616.m72524();
                        m72582 = C20617.m72547("ۡ۠ۢ");
                        drawable3 = null;
                    } else {
                        m72582 = (C20619.f116564 - C20619.f116564) + 1753482;
                        drawable3 = null;
                    }
                case 1753482:
                    if ((C20615.f116560 | (C20619.f116564 / 1753)) >= 0) {
                        C20619.f116564 = 3;
                        m72582 = C20619.m72582("ۢ۟ۢ");
                    } else {
                        m72582 = (C20617.f116562 + C20619.f116564) ^ (-1754976);
                    }
                case 1753578:
                    if (C20618.m72571() < 0) {
                        m72582 = (C20617.f116562 | C20618.f116563) ^ (-1755176);
                    } else if (C20616.f116561 % (C20616.f116561 | (-1824)) <= 0) {
                        C20616.m72524();
                        m72582 = C20615.m72494("ۦۤۨ");
                    } else {
                        m72582 = (C20618.f116563 ^ C20618.f116563) + 1749573;
                    }
                case 1753608:
                case 1754594:
                    str = "ۣۣۢ";
                    m72582 = C20615.m72494(str);
                case 1753671:
                    if (C20616.f116561 / (C20618.f116563 + 6587) != 0) {
                        m72582 = C20619.m72582("ۦۧۨ");
                        drawable3 = drawable2;
                    } else {
                        str2 = "ۣۣۢ";
                        drawable = drawable2;
                        drawable3 = drawable2;
                        m72582 = C20616.m72538(str2);
                        drawable2 = drawable;
                    }
                case 1755404:
                    if (C20619.f116564 >= 0) {
                        str = "۟ۨۤ";
                        m72582 = C20615.m72494(str);
                    } else {
                        m72582 = (C20619.f116564 ^ C20617.f116562) + 1753402;
                    }
                case 1755429:
                    m72582 = C20619.f116564 % (C20616.f116561 ^ 6614) >= 0 ? C20618.m72551("ۦۡۥ") : (C20615.f116560 + C20619.f116564) ^ (-1752871);
            }
            return drawable3;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* renamed from: ۥ۠ۢۤ, reason: contains not printable characters */
    public static void m72451(Object obj, Object obj2) {
        int m72582 = C20619.m72582("ۣۧ۟");
        while (true) {
            switch (m72582) {
                case 1746877:
                case 1751617:
                    m72582 = C20618.f116563 + (C20618.f116563 + (-5256)) >= 0 ? C20618.m72551("۠ۥ") : (C20618.f116563 | C20617.f116562) + 1749838;
                case 1747929:
                    if (C20615.f116560 >= 0) {
                        C20616.m72524();
                        m72582 = C20619.m72582("ۣۤۥ");
                    } else {
                        m72582 = (C20618.f116563 - C20616.f116561) ^ (-1745820);
                    }
                case 1749579:
                    break;
                case 1750692:
                    if (C20617.f116562 >= 0) {
                        C20616.m72524();
                        m72582 = C20617.m72547("ۨۢۨ");
                    } else {
                        m72582 = (C20617.f116562 | C20616.f116561) ^ (-1754242);
                    }
                case 1751524:
                    m72582 = (C20615.f116560 ^ C20619.f116564) + 1747583;
                case 1754499:
                    if (C20617.m72545() < 0) {
                        m72582 = (C20615.f116560 ^ C20619.f116564) + 1747583;
                    } else if (C20619.f116564 >= 0) {
                        C20618.f116563 = 51;
                        m72582 = C20618.m72551("ۣۧ۟");
                    } else {
                        m72582 = C20618.f116563 + C20617.f116562 + 1756612;
                    }
                case 1755402:
                    processJsonData((Activity) obj, (String) obj2);
                    m72582 = (C20619.f116564 / C20618.f116563) + 1749579;
            }
            return;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004f A[SYNTHETIC] */
    /* renamed from: ۥ۠ۢۧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m72452(java.lang.Object r5) {
        /*
            r3 = 0
            java.lang.String r0 = "۟ۧۤ"
            int r0 = com.p108u.C20617.m72547(r0)
            r2 = r3
            r1 = r3
        L9:
            switch(r0) {
                case 1746940: goto Ld;
                case 1746941: goto L40;
                case 1746972: goto Lc5;
                case 1749694: goto Lb2;
                case 1749761: goto L9c;
                case 1750782: goto L59;
                case 1752458: goto L7b;
                case 1752674: goto L9c;
                case 1753570: goto L88;
                case 1754376: goto L6d;
                case 1755372: goto L24;
                default: goto Lc;
            }
        Lc:
            goto L9
        Ld:
            int r0 = com.p108u.C20615.m72490()
            if (r0 >= 0) goto L40
            int r0 = com.p108u.C20619.m72586()
            if (r0 > 0) goto L85
            r0 = 96
            com.p108u.C20615.f116560 = r0
            java.lang.String r0 = "ۢۥۤ"
            int r0 = com.p108u.C20616.m72538(r0)
            goto L9
        L24:
            int r0 = com.p108u.C20619.m72586()
            if (r0 > 0) goto L35
            com.p108u.C20616.m72524()
            java.lang.String r0 = "۟ۧۤ"
            r1 = r3
        L30:
            int r0 = com.p108u.C20616.m72538(r0)
            goto L9
        L35:
            int r0 = com.p108u.C20616.f116561
            int r1 = com.p108u.C20619.f116564
            int r0 = r0 / r1
            r1 = 1753570(0x1ac1e2, float:2.457275E-39)
            int r0 = r0 + r1
            r1 = r3
            goto L9
        L40:
            int r0 = com.p108u.C20619.f116564
            if (r0 < 0) goto L4f
            r0 = 85
            com.p108u.C20615.f116560 = r0
            java.lang.String r0 = "ۣۤۤ"
            int r0 = com.p108u.C20618.m72551(r0)
            goto L9
        L4f:
            int r0 = com.p108u.C20615.f116560
            int r4 = com.p108u.C20615.f116560
            r0 = r0 | r4
            r4 = 1749931(0x1ab3ab, float:2.452176E-39)
            int r0 = r0 + r4
            goto L9
        L59:
            int r0 = com.p108u.C20615.f116560
            if (r0 < 0) goto L69
            r0 = 94
            com.p108u.C20619.f116564 = r0
            java.lang.String r0 = "۟ۨۥ"
            r1 = r2
        L64:
            int r0 = com.p108u.C20617.m72547(r0)
            goto L9
        L69:
            java.lang.String r0 = "۟ۨۥ"
            r1 = r2
            goto L64
        L6d:
            r0 = r5
            android.content.Context r0 = (android.content.Context) r0
            java.lang.String r2 = getCachedJson(r0)
            java.lang.String r0 = "ۣۧۢ"
        L76:
            int r0 = com.p108u.C20618.m72551(r0)
            goto L9
        L7b:
            int r0 = com.p108u.C20615.f116560
            int r4 = com.p108u.C20616.f116561
            int r0 = r0 - r4
            r4 = -1746589(0xffffffffffe55963, float:NaN)
            r0 = r0 ^ r4
            goto L9
        L85:
            java.lang.String r0 = "ۧ۟۠"
            goto L76
        L88:
            int r0 = com.p108u.C20618.m72571()
            if (r0 > 0) goto L99
            com.p108u.C20615.m72490()
            java.lang.String r0 = "ۧ۟۠"
            int r0 = com.p108u.C20615.m72494(r0)
            goto L9
        L99:
            java.lang.String r0 = "ۥۦۣ"
            goto L64
        L9c:
            int r0 = com.p108u.C20619.f116564
            if (r0 < 0) goto La7
            r0 = 64
            com.p108u.C20619.f116564 = r0
            java.lang.String r0 = "۠ۧۤ"
            goto L76
        La7:
            int r0 = com.p108u.C20615.f116560
            int r4 = com.p108u.C20615.f116560
            r0 = r0 | r4
            r4 = -1747185(0xffffffffffe5570f, float:NaN)
            r0 = r0 ^ r4
            goto L9
        Lb2:
            int r0 = com.p108u.C20616.f116561
            if (r0 > 0) goto Lc1
            com.p108u.C20618.m72571()
            java.lang.String r0 = "ۨ۠ۤ"
            int r0 = com.p108u.C20618.m72551(r0)
            goto L9
        Lc1:
            java.lang.String r0 = "ۨ۠ۤ"
            goto L30
        Lc5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72452(java.lang.Object):java.lang.String");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e A[SYNTHETIC] */
    /* renamed from: ۧۧۨۢ, reason: not valid java name and contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m72453(java.lang.Object r2, java.lang.Object r3) {
        /*
            java.lang.String r0 = "۠۟۟"
            int r0 = com.p108u.C20619.m72582(r0)
        L6:
            switch(r0) {
                case 56479: goto La;
                case 1747648: goto L14;
                case 1749605: goto L21;
                case 1750692: goto L65;
                case 1752580: goto L2b;
                case 1753541: goto L2b;
                case 1754596: goto L82;
                case 1755557: goto L42;
                default: goto L9;
            }
        L9:
            goto L6
        La:
            int r0 = com.p108u.C20618.f116563
            int r1 = com.p108u.C20615.f116560
            int r0 = r0 % r1
            r1 = 1752816(0x1abef0, float:2.456218E-39)
            int r0 = r0 + r1
            goto L6
        L14:
            int r0 = com.p108u.C20617.m72545()
            if (r0 <= 0) goto L65
            java.lang.String r0 = "ۨۦۣ"
        L1c:
            int r0 = com.p108u.C20617.m72547(r0)
            goto L6
        L21:
            int r0 = com.p108u.C20618.f116563
            if (r0 < 0) goto L28
            java.lang.String r0 = "ۤۤ۠"
            goto L1c
        L28:
            java.lang.String r0 = "۠۟۟"
            goto L1c
        L2b:
            int r0 = com.p108u.C20615.m72490()
            if (r0 < 0) goto L38
            java.lang.String r0 = "۟۠ۧ"
            int r0 = com.p108u.C20619.m72582(r0)
            goto L6
        L38:
            int r0 = com.p108u.C20617.f116562
            int r1 = com.p108u.C20615.f116560
            int r0 = r0 % r1
            r1 = 1754622(0x1ac5fe, float:2.458749E-39)
            int r0 = r0 + r1
            goto L6
        L42:
            r0 = r2
            android.content.Context r0 = (android.content.Context) r0
            r1 = r3
            java.lang.String r1 = (java.lang.String) r1
            saveJsonToCache(r0, r1)
            int r0 = com.p108u.C20619.f116564
            int r1 = com.p108u.C20617.f116562
            r1 = r1 | (-3453(0xfffffffffffff283, float:NaN))
            int r0 = r0 + r1
            if (r0 < 0) goto L5b
            java.lang.String r0 = "ۥۤ"
            int r0 = com.p108u.C20619.m72582(r0)
            goto L6
        L5b:
            int r0 = com.p108u.C20617.f116562
            int r1 = com.p108u.C20616.f116561
            r0 = r0 | r1
            r1 = 1754855(0x1ac6e7, float:2.459076E-39)
            int r0 = r0 + r1
            goto L6
        L65:
            int r0 = com.p108u.C20619.f116564
            int r1 = com.p108u.C20616.f116561
            int r1 = r1 * 6093
            int r0 = r0 - r1
            if (r0 < 0) goto L78
            com.p108u.C20616.m72524()
            java.lang.String r0 = "ۡ۠ۨ"
            int r0 = com.p108u.C20615.m72494(r0)
            goto L6
        L78:
            int r0 = com.p108u.C20615.f116560
            int r1 = com.p108u.C20617.f116562
            r0 = r0 ^ r1
            r1 = 56693(0xdd75, float:7.9444E-41)
            r0 = r0 ^ r1
            goto L6
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p108u.C17024u.m72453(java.lang.Object, java.lang.Object):void");
    }
}
