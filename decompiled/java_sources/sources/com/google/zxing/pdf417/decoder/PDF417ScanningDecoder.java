package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.ec.ErrorCorrection;
import com.sunia.HTREnginev2.C14368ru;
import com.sunia.HTREnginev2.C14510um;
import com.sunia.HTREnginev2.C14609wm;
import com.sunia.HTREnginev2.a4f;
import com.sunia.HTREnginev2.b4f;
import com.sunia.HTREnginev2.tjk;
import com.sunia.HTREnginev2.twd;
import com.sunia.HTREnginev2.z3f;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;

/* loaded from: classes4.dex */
public final class PDF417ScanningDecoder {

    /* renamed from: a */
    public static final int f38694a = 2;

    /* renamed from: b */
    public static final int f38695b = 3;

    /* renamed from: c */
    public static final int f38696c = 512;

    /* renamed from: d */
    public static final ErrorCorrection f38697d = new ErrorCorrection();

    /* renamed from: a */
    public static C14368ru m30699a(b4f b4fVar) throws NotFoundException {
        int[] m53168j;
        if (b4fVar == null || (m53168j = b4fVar.m53168j()) == null) {
            return null;
        }
        int m30713o = m30713o(m53168j);
        int i = 0;
        int i2 = 0;
        for (int i3 : m53168j) {
            i2 += m30713o - i3;
            if (i3 > 0) {
                break;
            }
        }
        twd[] m52959d = b4fVar.m52959d();
        for (int i4 = 0; i2 > 0 && m52959d[i4] == null; i4++) {
            i2--;
        }
        for (int length = m53168j.length - 1; length >= 0; length--) {
            int i5 = m53168j[length];
            i += m30713o - i5;
            if (i5 > 0) {
                break;
            }
        }
        for (int length2 = m52959d.length - 1; i > 0 && m52959d[length2] == null; length2--) {
            i--;
        }
        return b4fVar.m52956a().m57008a(i2, i, b4fVar.m53169k());
    }

    /* renamed from: b */
    public static void m30700b(z3f z3fVar, C14609wm[][] c14609wmArr) throws NotFoundException {
        int[] m58092b = c14609wmArr[0][1].m58092b();
        int m58618j = (z3fVar.m58618j() * z3fVar.m58620l()) - m30715q(z3fVar.m58619k());
        if (m58092b.length != 0) {
            if (m58092b[0] != m58618j) {
                c14609wmArr[0][1].m58093c(m58618j);
            }
        } else {
            if (m58618j <= 0 || m58618j > 928) {
                throw NotFoundException.getNotFoundInstance();
            }
            c14609wmArr[0][1].m58093c(m58618j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m30701c(com.google.zxing.common.BitMatrix r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            if (r8 == 0) goto L4
            r0 = -1
            goto L5
        L4:
            r0 = 1
        L5:
            r1 = 0
            r2 = r9
        L7:
            r3 = 2
            if (r1 >= r3) goto L28
        La:
            if (r8 == 0) goto Lf
            if (r2 < r6) goto L22
            goto L11
        Lf:
            if (r2 >= r7) goto L22
        L11:
            boolean r4 = r5.get(r2, r10)
            if (r8 != r4) goto L22
            int r4 = r9 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r4 <= r3) goto L20
            return r9
        L20:
            int r2 = r2 + r0
            goto La
        L22:
            int r0 = -r0
            r8 = r8 ^ 1
            int r1 = r1 + 1
            goto L7
        L28:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.m30701c(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int");
    }

    /* renamed from: d */
    public static boolean m30702d(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    public static DecoderResult decode(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) throws NotFoundException, FormatException, ChecksumException {
        int i3;
        int i4;
        int i5;
        int i6;
        b4f b4fVar = null;
        b4f b4fVar2 = null;
        z3f z3fVar = null;
        C14368ru c14368ru = new C14368ru(bitMatrix, resultPoint, resultPoint2, resultPoint3, resultPoint4);
        for (int i7 = 0; i7 < 2; i7++) {
            if (resultPoint != null) {
                b4fVar = m30716r(bitMatrix, c14368ru, resultPoint, true, i, i2);
            }
            if (resultPoint3 != null) {
                b4fVar2 = m30716r(bitMatrix, c14368ru, resultPoint3, false, i, i2);
            }
            z3fVar = m30719u(b4fVar, b4fVar2);
            if (z3fVar == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i7 != 0 || z3fVar.m58621m() == null || (z3fVar.m58621m().m57015h() >= c14368ru.m57015h() && z3fVar.m58621m().m57013f() <= c14368ru.m57013f())) {
                z3fVar.m58624p(c14368ru);
                break;
            }
            c14368ru = z3fVar.m58621m();
        }
        int m58618j = z3fVar.m58618j() + 1;
        z3fVar.m58625q(0, b4fVar);
        z3fVar.m58625q(m58618j, b4fVar2);
        boolean z = b4fVar != null;
        int i8 = i;
        int i9 = i2;
        for (int i10 = 1; i10 <= m58618j; i10++) {
            int i11 = z ? i10 : m58618j - i10;
            if (z3fVar.m58622n(i11) == null) {
                a4f b4fVar3 = (i11 == 0 || i11 == m58618j) ? new b4f(c14368ru, i11 == 0) : new a4f(c14368ru);
                z3fVar.m58625q(i11, b4fVar3);
                int i12 = -1;
                int m57015h = c14368ru.m57015h();
                int i13 = -1;
                while (m57015h <= c14368ru.m57013f()) {
                    int m30717s = m30717s(z3fVar, i11, m57015h, z);
                    if (m30717s >= 0 && m30717s <= c14368ru.m57012e()) {
                        i6 = m30717s;
                    } else if (i13 != i12) {
                        i6 = i13;
                    } else {
                        i3 = i13;
                        i4 = m57015h;
                        i5 = i12;
                        i13 = i3;
                        m57015h = i4 + 1;
                        i12 = i5;
                    }
                    i3 = i13;
                    int i14 = m57015h;
                    i5 = i12;
                    twd m30708j = m30708j(bitMatrix, c14368ru.m57014g(), c14368ru.m57012e(), z, i6, i14, i8, i9);
                    i4 = i14;
                    if (m30708j != null) {
                        b4fVar3.m52961f(i4, m30708j);
                        i8 = Math.min(i8, m30708j.m57471f());
                        i9 = Math.max(i9, m30708j.m57471f());
                        i13 = i6;
                        m57015h = i4 + 1;
                        i12 = i5;
                    }
                    i13 = i3;
                    m57015h = i4 + 1;
                    i12 = i5;
                }
            }
        }
        return m30705g(z3fVar);
    }

    /* renamed from: e */
    public static int m30703e(int[] iArr, int[] iArr2, int i) throws ChecksumException {
        if ((iArr2 == null || iArr2.length <= (i / 2) + 3) && i >= 0 && i <= 512) {
            return f38697d.decode(iArr, i, iArr2);
        }
        throw ChecksumException.getChecksumInstance();
    }

    /* renamed from: f */
    public static C14609wm[][] m30704f(z3f z3fVar) {
        int m57468c;
        C14609wm[][] c14609wmArr = (C14609wm[][]) Array.newInstance((Class<?>) C14609wm.class, z3fVar.m58620l(), z3fVar.m58618j() + 2);
        for (C14609wm[] c14609wmArr2 : c14609wmArr) {
            int i = 0;
            while (true) {
                if (i < c14609wmArr2.length) {
                    c14609wmArr2[i] = new C14609wm();
                    i++;
                }
            }
        }
        int i2 = 0;
        for (a4f a4fVar : z3fVar.m58623o()) {
            if (a4fVar != null) {
                for (twd twdVar : a4fVar.m52959d()) {
                    if (twdVar != null && (m57468c = twdVar.m57468c()) >= 0 && m57468c < c14609wmArr.length) {
                        c14609wmArr[m57468c][i2].m58093c(twdVar.m57470e());
                    }
                }
            }
            i2++;
        }
        return c14609wmArr;
    }

    /* renamed from: g */
    public static DecoderResult m30705g(z3f z3fVar) throws FormatException, ChecksumException, NotFoundException {
        C14609wm[][] m30704f = m30704f(z3fVar);
        m30700b(z3fVar, m30704f);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[z3fVar.m58620l() * z3fVar.m58618j()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < z3fVar.m58620l(); i++) {
            int i2 = 0;
            while (i2 < z3fVar.m58618j()) {
                int i3 = i2 + 1;
                int[] m58092b = m30704f[i][i3].m58092b();
                int m58618j = (z3fVar.m58618j() * i) + i2;
                if (m58092b.length == 0) {
                    arrayList.add(Integer.valueOf(m58618j));
                } else if (m58092b.length == 1) {
                    iArr[m58618j] = m58092b[0];
                } else {
                    arrayList3.add(Integer.valueOf(m58618j));
                    arrayList2.add(m58092b);
                }
                i2 = i3;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr2[i4] = (int[]) arrayList2.get(i4);
        }
        return m30706h(z3fVar.m58619k(), iArr, PDF417Common.toIntArray(arrayList), PDF417Common.toIntArray(arrayList3), iArr2);
    }

    /* renamed from: h */
    public static DecoderResult m30706h(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws FormatException, ChecksumException {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                throw ChecksumException.getChecksumInstance();
            }
            for (int i4 = 0; i4 < length; i4++) {
                iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
            }
            try {
                return m30707i(iArr, i, iArr2);
            } catch (ChecksumException unused) {
                if (length == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    int i6 = iArr5[i5];
                    if (i6 < iArr4[i5].length - 1) {
                        iArr5[i5] = i6 + 1;
                        break;
                    }
                    iArr5[i5] = 0;
                    if (i5 == length - 1) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    i5++;
                }
                i2 = i3;
            }
        }
    }

    /* renamed from: i */
    public static DecoderResult m30707i(int[] iArr, int i, int[] iArr2) throws FormatException, ChecksumException {
        if (iArr.length == 0) {
            throw FormatException.getFormatInstance();
        }
        int i2 = 1 << (i + 1);
        int m30703e = m30703e(iArr, iArr2, i2);
        m30720v(iArr, i2);
        DecoderResult m30693b = DecodedBitStreamParser.m30693b(iArr, String.valueOf(i));
        m30693b.setErrorsCorrected(Integer.valueOf(m30703e));
        m30693b.setErasures(Integer.valueOf(iArr2.length));
        return m30693b;
    }

    /* renamed from: j */
    public static twd m30708j(BitMatrix bitMatrix, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int m57382d;
        int codeword;
        int m30701c = m30701c(bitMatrix, i, i2, z, i3, i4);
        int[] m30714p = m30714p(bitMatrix, i, i2, z, m30701c, i4);
        if (m30714p == null) {
            return null;
        }
        int sum = MathUtils.sum(m30714p);
        if (z) {
            i7 = m30701c + sum;
        } else {
            for (int i8 = 0; i8 < m30714p.length / 2; i8++) {
                int i9 = m30714p[i8];
                m30714p[i8] = m30714p[(m30714p.length - 1) - i8];
                m30714p[(m30714p.length - 1) - i8] = i9;
            }
            m30701c -= sum;
            i7 = m30701c;
        }
        if (m30702d(sum, i5, i6) && (codeword = PDF417Common.getCodeword((m57382d = tjk.m57382d(m30714p)))) != -1) {
            return new twd(m30701c, i7, m30711m(m57382d), codeword);
        }
        return null;
    }

    /* renamed from: k */
    public static C14510um m30709k(b4f b4fVar, b4f b4fVar2) {
        C14510um m53167i;
        C14510um m53167i2;
        if (b4fVar == null || (m53167i = b4fVar.m53167i()) == null) {
            if (b4fVar2 == null) {
                return null;
            }
            return b4fVar2.m53167i();
        }
        if (b4fVar2 == null || (m53167i2 = b4fVar2.m53167i()) == null || m53167i.m57641a() == m53167i2.m57641a() || m53167i.m57642b() == m53167i2.m57642b() || m53167i.m57643c() == m53167i2.m57643c()) {
            return m53167i;
        }
        return null;
    }

    /* renamed from: l */
    public static int[] m30710l(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    /* renamed from: m */
    public static int m30711m(int i) {
        return m30712n(m30710l(i));
    }

    /* renamed from: n */
    public static int m30712n(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    /* renamed from: o */
    public static int m30713o(int[] iArr) {
        int i = -1;
        for (int i2 : iArr) {
            i = Math.max(i, i2);
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0027 A[EDGE_INSN: B:17:0x0027->B:18:0x0027 BREAK  A[LOOP:0: B:5:0x000c->B:13:0x000c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m30714p(com.google.zxing.common.BitMatrix r7, int r8, int r9, boolean r10, int r11, int r12) {
        /*
            r0 = 8
            int[] r1 = new int[r0]
            r2 = 1
            if (r10 == 0) goto L9
            r3 = r2
            goto La
        L9:
            r3 = -1
        La:
            r4 = 0
            r5 = r10
        Lc:
            if (r10 == 0) goto L11
            if (r11 >= r9) goto L27
            goto L13
        L11:
            if (r11 < r8) goto L27
        L13:
            if (r4 >= r0) goto L27
            boolean r6 = r7.get(r11, r12)
            if (r6 != r5) goto L22
            r6 = r1[r4]
            int r6 = r6 + r2
            r1[r4] = r6
            int r11 = r11 + r3
            goto Lc
        L22:
            int r4 = r4 + 1
            r5 = r5 ^ 1
            goto Lc
        L27:
            if (r4 == r0) goto L34
            if (r10 == 0) goto L2c
            r8 = r9
        L2c:
            if (r11 != r8) goto L32
            r7 = 7
            if (r4 != r7) goto L32
            goto L34
        L32:
            r7 = 0
            return r7
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.m30714p(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int[]");
    }

    /* renamed from: q */
    public static int m30715q(int i) {
        return 2 << i;
    }

    /* renamed from: r */
    public static b4f m30716r(BitMatrix bitMatrix, C14368ru c14368ru, ResultPoint resultPoint, boolean z, int i, int i2) {
        b4f b4fVar = new b4f(c14368ru, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int x = (int) resultPoint.getX();
            for (int y = (int) resultPoint.getY(); y <= c14368ru.m57013f() && y >= c14368ru.m57015h(); y += i4) {
                twd m30708j = m30708j(bitMatrix, 0, bitMatrix.getWidth(), z, x, y, i, i2);
                if (m30708j != null) {
                    b4fVar.m52961f(y, m30708j);
                    x = z ? m30708j.m57469d() : m30708j.m57467b();
                }
            }
            i3++;
        }
        return b4fVar;
    }

    /* renamed from: s */
    public static int m30717s(z3f z3fVar, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        int i4 = i - i3;
        twd m52957b = m30718t(z3fVar, i4) ? z3fVar.m58622n(i4).m52957b(i2) : null;
        if (m52957b != null) {
            return z ? m52957b.m57467b() : m52957b.m57469d();
        }
        twd m52958c = z3fVar.m58622n(i).m52958c(i2);
        if (m52958c != null) {
            return z ? m52958c.m57469d() : m52958c.m57467b();
        }
        if (m30718t(z3fVar, i4)) {
            m52958c = z3fVar.m58622n(i4).m52958c(i2);
        }
        if (m52958c != null) {
            return z ? m52958c.m57467b() : m52958c.m57469d();
        }
        int i5 = 0;
        while (true) {
            i -= i3;
            if (!m30718t(z3fVar, i)) {
                C14368ru m58621m = z3fVar.m58621m();
                return z ? m58621m.m57014g() : m58621m.m57012e();
            }
            for (twd twdVar : z3fVar.m58622n(i).m52959d()) {
                if (twdVar != null) {
                    return (z ? twdVar.m57467b() : twdVar.m57469d()) + (i3 * i5 * (twdVar.m57467b() - twdVar.m57469d()));
                }
            }
            i5++;
        }
    }

    /* renamed from: t */
    public static boolean m30718t(z3f z3fVar, int i) {
        return i >= 0 && i <= z3fVar.m58618j() + 1;
    }

    public static String toString(C14609wm[][] c14609wmArr) {
        Formatter formatter = new Formatter();
        for (int i = 0; i < c14609wmArr.length; i++) {
            formatter.format("Row %2d: ", Integer.valueOf(i));
            int i2 = 0;
            while (true) {
                C14609wm[] c14609wmArr2 = c14609wmArr[i];
                if (i2 < c14609wmArr2.length) {
                    C14609wm c14609wm = c14609wmArr2[i2];
                    if (c14609wm.m58092b().length == 0) {
                        formatter.format("        ", null);
                    } else {
                        formatter.format("%4d(%2d)", Integer.valueOf(c14609wm.m58092b()[0]), c14609wm.m58091a(c14609wm.m58092b()[0]));
                    }
                    i2++;
                }
            }
            formatter.format("%n", new Object[0]);
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }

    /* renamed from: u */
    public static z3f m30719u(b4f b4fVar, b4f b4fVar2) throws NotFoundException {
        C14510um m30709k;
        if ((b4fVar == null && b4fVar2 == null) || (m30709k = m30709k(b4fVar, b4fVar2)) == null) {
            return null;
        }
        return new z3f(m30709k, C14368ru.m57007l(m30699a(b4fVar), m30699a(b4fVar2)));
    }

    /* renamed from: v */
    public static void m30720v(int[] iArr, int i) throws FormatException {
        if (iArr.length < 4) {
            throw FormatException.getFormatInstance();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw FormatException.getFormatInstance();
        }
        if (i2 == 0) {
            if (i >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            iArr[0] = iArr.length - i;
        }
    }
}
