package com.google.zxing.aztec.encoder;

import com.sunia.HTREnginev2.cym;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes4.dex */
public final class HighLevelEncoder {

    /* renamed from: c */
    public static final int f38255c = 0;

    /* renamed from: d */
    public static final int f38256d = 1;

    /* renamed from: e */
    public static final int f38257e = 2;

    /* renamed from: f */
    public static final int f38258f = 3;

    /* renamed from: g */
    public static final int f38259g = 4;

    /* renamed from: i */
    public static final int[][] f38261i;

    /* renamed from: j */
    public static final int[][] f38262j;

    /* renamed from: a */
    public final byte[] f38263a;

    /* renamed from: b */
    public static final String[] f38254b = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: h */
    public static final int[][] f38260h = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: com.google.zxing.aztec.encoder.HighLevelEncoder$a */
    /* loaded from: classes4.dex */
    public class C6893a implements Comparator<cym> {
        public C6893a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(cym cymVar, cym cymVar2) {
            return cymVar.m53542d() - cymVar2.m53542d();
        }
    }

    static {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 5, 256);
        f38261i = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f38261i[0][i] = (i - 65) + 2;
        }
        f38261i[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f38261i[1][i2] = (i2 - 97) + 2;
        }
        f38261i[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f38261i[2][i3] = (i3 - 48) + 2;
        }
        int[] iArr2 = f38261i[2];
        iArr2[44] = 12;
        iArr2[46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127};
        for (int i4 = 0; i4 < 28; i4++) {
            f38261i[3][iArr3[i4]] = i4;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            int i6 = iArr4[i5];
            if (i6 > 0) {
                f38261i[4][i6] = i5;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, 6);
        f38262j = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = f38262j;
        iArr7[0][4] = 0;
        int[] iArr8 = iArr7[1];
        iArr8[4] = 0;
        iArr8[0] = 28;
        iArr7[3][4] = 0;
        int[] iArr9 = iArr7[2];
        iArr9[4] = 0;
        iArr9[0] = 15;
    }

    public HighLevelEncoder(byte[] bArr) {
        this.f38263a = bArr;
    }

    /* renamed from: a */
    public static Collection<cym> m30459a(Iterable<cym> iterable) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        for (cym cymVar : iterable) {
            Iterator it2 = linkedList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                cym cymVar2 = (cym) it2.next();
                if (cymVar2.m53545g(cymVar)) {
                    z = false;
                    break;
                }
                if (cymVar.m53545g(cymVar2)) {
                    it2.remove();
                }
            }
            if (z) {
                linkedList.add(cymVar);
            }
        }
        return linkedList;
    }

    /* renamed from: c */
    public static void m30460c(cym cymVar, int i, int i2, Collection<cym> collection) {
        cym m53540b = cymVar.m53540b(i);
        collection.add(m53540b.m53546h(4, i2));
        if (cymVar.m53543e() != 4) {
            collection.add(m53540b.m53547i(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(m53540b.m53546h(2, 16 - i2).m53546h(2, 1));
        }
        if (cymVar.m53541c() > 0) {
            collection.add(cymVar.m53539a(i).m53539a(i + 1));
        }
    }

    /* renamed from: e */
    public static Collection<cym> m30461e(Iterable<cym> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        Iterator<cym> it2 = iterable.iterator();
        while (it2.hasNext()) {
            m30460c(it2.next(), i, i2, linkedList);
        }
        return m30459a(linkedList);
    }

    /* renamed from: b */
    public final void m30462b(cym cymVar, int i, Collection<cym> collection) {
        char c = (char) (this.f38263a[i] & 255);
        boolean z = f38261i[cymVar.m53543e()][c] > 0;
        cym cymVar2 = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = f38261i[i2][c];
            if (i3 > 0) {
                if (cymVar2 == null) {
                    cymVar2 = cymVar.m53540b(i);
                }
                if (!z || i2 == cymVar.m53543e() || i2 == 2) {
                    collection.add(cymVar2.m53546h(i2, i3));
                }
                if (!z && f38262j[cymVar.m53543e()][i2] >= 0) {
                    collection.add(cymVar2.m53547i(i2, i3));
                }
            }
        }
        if (cymVar.m53541c() > 0 || f38261i[cymVar.m53543e()][c] == 0) {
            collection.add(cymVar.m53539a(i));
        }
    }

    /* renamed from: d */
    public final Collection<cym> m30463d(Iterable<cym> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        Iterator<cym> it2 = iterable.iterator();
        while (it2.hasNext()) {
            m30462b(it2.next(), i, linkedList);
        }
        return m30459a(linkedList);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.BitArray encode() {
        /*
            r8 = this;
            com.sunia.HTREnginev2.cym r0 = com.sunia.HTREnginev2.cym.f67319e
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r1 = 0
            r2 = r1
        L8:
            byte[] r3 = r8.f38263a
            int r4 = r3.length
            if (r2 >= r4) goto L4c
            int r4 = r2 + 1
            int r5 = r3.length
            if (r4 >= r5) goto L15
            r5 = r3[r4]
            goto L16
        L15:
            r5 = r1
        L16:
            r3 = r3[r2]
            r6 = 13
            if (r3 == r6) goto L38
            r6 = 44
            r7 = 32
            if (r3 == r6) goto L34
            r6 = 46
            if (r3 == r6) goto L30
            r6 = 58
            if (r3 == r6) goto L2c
        L2a:
            r3 = r1
            goto L3d
        L2c:
            if (r5 != r7) goto L2a
            r3 = 5
            goto L3d
        L30:
            if (r5 != r7) goto L2a
            r3 = 3
            goto L3d
        L34:
            if (r5 != r7) goto L2a
            r3 = 4
            goto L3d
        L38:
            r3 = 10
            if (r5 != r3) goto L2a
            r3 = 2
        L3d:
            if (r3 <= 0) goto L45
            java.util.Collection r0 = m30461e(r0, r2, r3)
            r2 = r4
            goto L49
        L45:
            java.util.Collection r0 = r8.m30463d(r0, r2)
        L49:
            int r2 = r2 + 1
            goto L8
        L4c:
            com.google.zxing.aztec.encoder.HighLevelEncoder$a r1 = new com.google.zxing.aztec.encoder.HighLevelEncoder$a
            r1.<init>()
            java.lang.Object r0 = java.util.Collections.min(r0, r1)
            com.sunia.HTREnginev2.cym r0 = (com.sunia.HTREnginev2.cym) r0
            byte[] r8 = r8.f38263a
            com.google.zxing.common.BitArray r8 = r0.m53548j(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.HighLevelEncoder.encode():com.google.zxing.common.BitArray");
    }
}
