package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class FinderPatternFinder {
    protected static final int MAX_MODULES = 57;
    protected static final int MIN_SKIP = 3;

    /* renamed from: f */
    public static final int f38769f = 2;

    /* renamed from: a */
    public final BitMatrix f38770a;

    /* renamed from: b */
    public final List<FinderPattern> f38771b;

    /* renamed from: c */
    public boolean f38772c;

    /* renamed from: d */
    public final int[] f38773d;

    /* renamed from: e */
    public final ResultPointCallback f38774e;

    /* loaded from: classes4.dex */
    public static final class CenterComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        private CenterComparator(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            if (finderPattern2.m30776d() == finderPattern.m30776d()) {
                float abs = Math.abs(finderPattern2.getEstimatedModuleSize() - this.average);
                float abs2 = Math.abs(finderPattern.getEstimatedModuleSize() - this.average);
                if (abs < abs2) {
                    return 1;
                }
                return abs == abs2 ? 0 : -1;
            }
            return finderPattern2.m30776d() - finderPattern.m30776d();
        }
    }

    /* loaded from: classes4.dex */
    public static final class FurthestFromAverageComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        private FurthestFromAverageComparator(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            float abs = Math.abs(finderPattern2.getEstimatedModuleSize() - this.average);
            float abs2 = Math.abs(finderPattern.getEstimatedModuleSize() - this.average);
            if (abs < abs2) {
                return -1;
            }
            return abs == abs2 ? 0 : 1;
        }
    }

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    /* renamed from: a */
    public static float m30777a(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    public static boolean foundPatternCross(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 2.0f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
    
        if (r18 >= r6) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        if (r17 < r6) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
    
        if (r18 < r6) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        if (r16.f38770a.get(r18 - r6, r17 - r6) != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
    
        r9 = r4[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
    
        if (r9 > r19) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        r4[1] = r9 + 1;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
    
        if (r17 < r6) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
    
        if (r18 < r6) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
    
        if (r4[1] <= r19) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
    
        if (r17 < r6) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        if (r18 < r6) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
    
        if (r16.f38770a.get(r18 - r6, r17 - r6) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0063, code lost:
    
        r9 = r4[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
        if (r9 > r19) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
    
        r4[0] = r9 + 1;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0070, code lost:
    
        if (r4[0] <= r19) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
    
        r6 = r16.f38770a.getHeight();
        r9 = r16.f38770a.getWidth();
        r10 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0080, code lost:
    
        r11 = r17 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
    
        if (r11 >= r6) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0084, code lost:
    
        r12 = r18 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        if (r12 >= r9) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008e, code lost:
    
        if (r16.f38770a.get(r12, r11) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        r4[2] = r4[2] + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0098, code lost:
    
        if (r11 >= r6) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x009c, code lost:
    
        if ((r18 + r10) < r9) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009f, code lost:
    
        r11 = r17 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a2, code lost:
    
        if (r11 >= r6) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a4, code lost:
    
        r13 = r18 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a6, code lost:
    
        if (r13 >= r9) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ae, code lost:
    
        if (r16.f38770a.get(r13, r11) != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b0, code lost:
    
        r13 = r4[3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b2, code lost:
    
        if (r13 >= r19) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b4, code lost:
    
        r4[3] = r13 + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00bb, code lost:
    
        if (r11 >= r6) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00bf, code lost:
    
        if ((r18 + r10) >= r9) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c3, code lost:
    
        if (r4[3] < r19) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c6, code lost:
    
        r11 = r17 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c9, code lost:
    
        if (r11 >= r6) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00cb, code lost:
    
        r14 = r18 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00cd, code lost:
    
        if (r14 >= r9) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d5, code lost:
    
        if (r16.f38770a.get(r14, r11) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d7, code lost:
    
        r11 = r4[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d9, code lost:
    
        if (r11 >= r19) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00db, code lost:
    
        r4[4] = r11 + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00e2, code lost:
    
        r0 = r4[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e4, code lost:
    
        if (r0 < r19) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e6, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00fb, code lost:
    
        if (java.lang.Math.abs(((((r4[0] + r4[1]) + r4[2]) + r4[3]) + r0) - r20) >= (r20 * 2)) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0101, code lost:
    
        if (foundPatternCross(r4) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0103, code lost:
    
        return true;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m30778b(int r17, int r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.m30778b(int, int, int, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0082, code lost:
    
        if (r9[3] < r12) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0086, code lost:
    
        if (r10 >= r1) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008c, code lost:
    
        if (r0.get(r10, r11) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008e, code lost:
    
        r8 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0090, code lost:
    
        if (r8 >= r12) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0092, code lost:
    
        r9[4] = r8 + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0099, code lost:
    
        r11 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009b, code lost:
    
        if (r11 < r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x009d, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b1, code lost:
    
        if ((java.lang.Math.abs(((((r9[0] + r9[1]) + r9[2]) + r9[3]) + r11) - r13) * 5) < r13) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b3, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b8, code lost:
    
        if (foundPatternCross(r9) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00be, code lost:
    
        return m30777a(r9, r10);
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m30779c(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            com.google.zxing.common.BitMatrix r0 = r9.f38770a
            int r1 = r0.getWidth()
            int[] r9 = r9.m30783g()
            r2 = r10
        Lb:
            r3 = 2
            r4 = 1
            if (r2 < 0) goto L1d
            boolean r5 = r0.get(r2, r11)
            if (r5 == 0) goto L1d
            r5 = r9[r3]
            int r5 = r5 + r4
            r9[r3] = r5
            int r2 = r2 + (-1)
            goto Lb
        L1d:
            r5 = 2143289344(0x7fc00000, float:NaN)
            if (r2 >= 0) goto L22
            return r5
        L22:
            if (r2 < 0) goto L35
            boolean r6 = r0.get(r2, r11)
            if (r6 != 0) goto L35
            r6 = r9[r4]
            if (r6 > r12) goto L35
            int r6 = r6 + 1
            r9[r4] = r6
            int r2 = r2 + (-1)
            goto L22
        L35:
            if (r2 < 0) goto Lbf
            r6 = r9[r4]
            if (r6 <= r12) goto L3d
            goto Lbf
        L3d:
            r6 = 0
            if (r2 < 0) goto L51
            boolean r7 = r0.get(r2, r11)
            if (r7 == 0) goto L51
            r7 = r9[r6]
            if (r7 > r12) goto L51
            int r7 = r7 + 1
            r9[r6] = r7
            int r2 = r2 + (-1)
            goto L3d
        L51:
            r2 = r9[r6]
            if (r2 <= r12) goto L56
            return r5
        L56:
            int r10 = r10 + r4
        L57:
            if (r10 >= r1) goto L67
            boolean r2 = r0.get(r10, r11)
            if (r2 == 0) goto L67
            r2 = r9[r3]
            int r2 = r2 + r4
            r9[r3] = r2
            int r10 = r10 + 1
            goto L57
        L67:
            if (r10 != r1) goto L6a
            return r5
        L6a:
            r2 = 3
            if (r10 >= r1) goto L7e
            boolean r7 = r0.get(r10, r11)
            if (r7 != 0) goto L7e
            r7 = r9[r2]
            if (r7 >= r12) goto L7e
            int r7 = r7 + 1
            r9[r2] = r7
            int r10 = r10 + 1
            goto L6a
        L7e:
            if (r10 == r1) goto Lbf
            r7 = r9[r2]
            if (r7 < r12) goto L85
            goto Lbf
        L85:
            r7 = 4
            if (r10 >= r1) goto L99
            boolean r8 = r0.get(r10, r11)
            if (r8 == 0) goto L99
            r8 = r9[r7]
            if (r8 >= r12) goto L99
            int r8 = r8 + 1
            r9[r7] = r8
            int r10 = r10 + 1
            goto L85
        L99:
            r11 = r9[r7]
            if (r11 < r12) goto L9e
            return r5
        L9e:
            r12 = r9[r6]
            r0 = r9[r4]
            int r12 = r12 + r0
            r0 = r9[r3]
            int r12 = r12 + r0
            r0 = r9[r2]
            int r12 = r12 + r0
            int r12 = r12 + r11
            int r12 = r12 - r13
            int r11 = java.lang.Math.abs(r12)
            int r11 = r11 * 5
            if (r11 < r13) goto Lb4
            return r5
        Lb4:
            boolean r11 = foundPatternCross(r9)
            if (r11 == 0) goto Lbf
            float r9 = m30777a(r9, r10)
            return r9
        Lbf:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.m30779c(int, int, int, int):float");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0082, code lost:
    
        if (r9[3] < r12) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0086, code lost:
    
        if (r10 >= r1) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008c, code lost:
    
        if (r0.get(r11, r10) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008e, code lost:
    
        r8 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0090, code lost:
    
        if (r8 >= r12) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0092, code lost:
    
        r9[4] = r8 + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0099, code lost:
    
        r11 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009b, code lost:
    
        if (r11 < r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x009d, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b2, code lost:
    
        if ((java.lang.Math.abs(((((r9[0] + r9[1]) + r9[2]) + r9[3]) + r11) - r13) * 5) < (r13 * 2)) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b4, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b9, code lost:
    
        if (foundPatternCross(r9) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bf, code lost:
    
        return m30777a(r9, r10);
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m30780d(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            com.google.zxing.common.BitMatrix r0 = r9.f38770a
            int r1 = r0.getHeight()
            int[] r9 = r9.m30783g()
            r2 = r10
        Lb:
            r3 = 2
            r4 = 1
            if (r2 < 0) goto L1d
            boolean r5 = r0.get(r11, r2)
            if (r5 == 0) goto L1d
            r5 = r9[r3]
            int r5 = r5 + r4
            r9[r3] = r5
            int r2 = r2 + (-1)
            goto Lb
        L1d:
            r5 = 2143289344(0x7fc00000, float:NaN)
            if (r2 >= 0) goto L22
            return r5
        L22:
            if (r2 < 0) goto L35
            boolean r6 = r0.get(r11, r2)
            if (r6 != 0) goto L35
            r6 = r9[r4]
            if (r6 > r12) goto L35
            int r6 = r6 + 1
            r9[r4] = r6
            int r2 = r2 + (-1)
            goto L22
        L35:
            if (r2 < 0) goto Lc0
            r6 = r9[r4]
            if (r6 <= r12) goto L3d
            goto Lc0
        L3d:
            r6 = 0
            if (r2 < 0) goto L51
            boolean r7 = r0.get(r11, r2)
            if (r7 == 0) goto L51
            r7 = r9[r6]
            if (r7 > r12) goto L51
            int r7 = r7 + 1
            r9[r6] = r7
            int r2 = r2 + (-1)
            goto L3d
        L51:
            r2 = r9[r6]
            if (r2 <= r12) goto L56
            return r5
        L56:
            int r10 = r10 + r4
        L57:
            if (r10 >= r1) goto L67
            boolean r2 = r0.get(r11, r10)
            if (r2 == 0) goto L67
            r2 = r9[r3]
            int r2 = r2 + r4
            r9[r3] = r2
            int r10 = r10 + 1
            goto L57
        L67:
            if (r10 != r1) goto L6a
            return r5
        L6a:
            r2 = 3
            if (r10 >= r1) goto L7e
            boolean r7 = r0.get(r11, r10)
            if (r7 != 0) goto L7e
            r7 = r9[r2]
            if (r7 >= r12) goto L7e
            int r7 = r7 + 1
            r9[r2] = r7
            int r10 = r10 + 1
            goto L6a
        L7e:
            if (r10 == r1) goto Lc0
            r7 = r9[r2]
            if (r7 < r12) goto L85
            goto Lc0
        L85:
            r7 = 4
            if (r10 >= r1) goto L99
            boolean r8 = r0.get(r11, r10)
            if (r8 == 0) goto L99
            r8 = r9[r7]
            if (r8 >= r12) goto L99
            int r8 = r8 + 1
            r9[r7] = r8
            int r10 = r10 + 1
            goto L85
        L99:
            r11 = r9[r7]
            if (r11 < r12) goto L9e
            return r5
        L9e:
            r12 = r9[r6]
            r0 = r9[r4]
            int r12 = r12 + r0
            r0 = r9[r3]
            int r12 = r12 + r0
            r0 = r9[r2]
            int r12 = r12 + r0
            int r12 = r12 + r11
            int r12 = r12 - r13
            int r11 = java.lang.Math.abs(r12)
            int r11 = r11 * 5
            int r13 = r13 * r3
            if (r11 < r13) goto Lb5
            return r5
        Lb5:
            boolean r11 = foundPatternCross(r9)
            if (r11 == 0) goto Lc0
            float r9 = m30777a(r9, r10)
            return r9
        Lc0:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.m30780d(int, int, int, int):float");
    }

    /* renamed from: e */
    public final FinderPatternInfo m30781e(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        boolean z2 = map != null && map.containsKey(DecodeHintType.PURE_BARCODE);
        int height = this.f38770a.getHeight();
        int width = this.f38770a.getWidth();
        int i = (height * 3) / 228;
        if (i < 3 || z) {
            i = 3;
        }
        int[] iArr = new int[5];
        int i2 = i - 1;
        boolean z3 = false;
        while (i2 < height && !z3) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
            int i3 = 0;
            int i4 = 0;
            while (i3 < width) {
                if (this.f38770a.get(i3, i2)) {
                    if ((i4 & 1) == 1) {
                        i4++;
                    }
                    iArr[i4] = iArr[i4] + 1;
                } else if ((i4 & 1) != 0) {
                    iArr[i4] = iArr[i4] + 1;
                } else if (i4 == 4) {
                    if (!foundPatternCross(iArr)) {
                        iArr[0] = iArr[2];
                        iArr[1] = iArr[3];
                        iArr[2] = iArr[4];
                        iArr[3] = 1;
                        iArr[4] = 0;
                    } else if (handlePossibleCenter(iArr, i2, i3, z2)) {
                        if (this.f38772c) {
                            z3 = m30784h();
                        } else {
                            int m30782f = m30782f();
                            int i5 = iArr[2];
                            if (m30782f > i5) {
                                i2 += (m30782f - i5) - 2;
                                i3 = width - 1;
                            }
                        }
                        iArr[0] = 0;
                        iArr[1] = 0;
                        iArr[2] = 0;
                        iArr[3] = 0;
                        iArr[4] = 0;
                        i4 = 0;
                        i = 2;
                    } else {
                        iArr[0] = iArr[2];
                        iArr[1] = iArr[3];
                        iArr[2] = iArr[4];
                        iArr[3] = 1;
                        iArr[4] = 0;
                    }
                    i4 = 3;
                } else {
                    i4++;
                    iArr[i4] = iArr[i4] + 1;
                }
                i3++;
            }
            if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i2, width, z2)) {
                i = iArr[0];
                if (this.f38772c) {
                    z3 = m30784h();
                }
            }
            i2 += i;
        }
        FinderPattern[] m30785i = m30785i();
        ResultPoint.orderBestPatterns(m30785i);
        return new FinderPatternInfo(m30785i);
    }

    /* renamed from: f */
    public final int m30782f() {
        if (this.f38771b.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.f38771b) {
            if (finderPattern2.m30776d() >= 2) {
                if (finderPattern != null) {
                    this.f38772c = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
                finderPattern = finderPattern2;
            }
        }
        return 0;
    }

    /* renamed from: g */
    public final int[] m30783g() {
        int[] iArr = this.f38773d;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        return iArr;
    }

    public final BitMatrix getImage() {
        return this.f38770a;
    }

    public final List<FinderPattern> getPossibleCenters() {
        return this.f38771b;
    }

    /* renamed from: h */
    public final boolean m30784h() {
        int size = this.f38771b.size();
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        for (FinderPattern finderPattern : this.f38771b) {
            if (finderPattern.m30776d() >= 2) {
                i++;
                f2 += finderPattern.getEstimatedModuleSize();
            }
        }
        if (i < 3) {
            return false;
        }
        float f3 = f2 / size;
        Iterator<FinderPattern> it2 = this.f38771b.iterator();
        while (it2.hasNext()) {
            f += Math.abs(it2.next().getEstimatedModuleSize() - f3);
        }
        return f <= f2 * 0.05f;
    }

    public final boolean handlePossibleCenter(int[] iArr, int i, int i2, boolean z) {
        boolean z2 = false;
        int i3 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int m30777a = (int) m30777a(iArr, i2);
        float m30780d = m30780d(i, m30777a, iArr[2], i3);
        if (!Float.isNaN(m30780d)) {
            int i4 = (int) m30780d;
            float m30779c = m30779c(m30777a, i4, iArr[2], i3);
            if (!Float.isNaN(m30779c) && (!z || m30778b(i4, (int) m30779c, iArr[2], i3))) {
                float f = i3 / 7.0f;
                int i5 = 0;
                while (true) {
                    if (i5 >= this.f38771b.size()) {
                        break;
                    }
                    FinderPattern finderPattern = this.f38771b.get(i5);
                    if (finderPattern.m30774b(f, m30780d, m30779c)) {
                        this.f38771b.set(i5, finderPattern.m30775c(m30780d, m30779c, f));
                        z2 = true;
                        break;
                    }
                    i5++;
                }
                if (!z2) {
                    FinderPattern finderPattern2 = new FinderPattern(m30779c, m30780d, f);
                    this.f38771b.add(finderPattern2);
                    ResultPointCallback resultPointCallback = this.f38774e;
                    if (resultPointCallback != null) {
                        resultPointCallback.foundPossibleResultPoint(finderPattern2);
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final FinderPattern[] m30785i() throws NotFoundException {
        int size = this.f38771b.size();
        if (size < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        float f = 0.0f;
        if (size > 3) {
            Iterator<FinderPattern> it2 = this.f38771b.iterator();
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (it2.hasNext()) {
                float estimatedModuleSize = it2.next().getEstimatedModuleSize();
                f2 += estimatedModuleSize;
                f3 += estimatedModuleSize * estimatedModuleSize;
            }
            float f4 = f2 / size;
            float sqrt = (float) Math.sqrt((f3 / r0) - (f4 * f4));
            Collections.sort(this.f38771b, new FurthestFromAverageComparator(f4));
            float max = Math.max(0.2f * f4, sqrt);
            int i = 0;
            while (i < this.f38771b.size() && this.f38771b.size() > 3) {
                if (Math.abs(this.f38771b.get(i).getEstimatedModuleSize() - f4) > max) {
                    this.f38771b.remove(i);
                    i--;
                }
                i++;
            }
        }
        if (this.f38771b.size() > 3) {
            Iterator<FinderPattern> it3 = this.f38771b.iterator();
            while (it3.hasNext()) {
                f += it3.next().getEstimatedModuleSize();
            }
            Collections.sort(this.f38771b, new CenterComparator(f / this.f38771b.size()));
            List<FinderPattern> list = this.f38771b;
            list.subList(3, list.size()).clear();
        }
        return new FinderPattern[]{this.f38771b.get(0), this.f38771b.get(1), this.f38771b.get(2)};
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.f38770a = bitMatrix;
        this.f38771b = new ArrayList();
        this.f38773d = new int[5];
        this.f38774e = resultPointCallback;
    }
}
