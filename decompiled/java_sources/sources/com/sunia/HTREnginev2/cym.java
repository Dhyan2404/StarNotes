package com.sunia.HTREnginev2;

import com.google.zxing.aztec.encoder.HighLevelEncoder;
import com.google.zxing.common.BitArray;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes4.dex */
public final class cym {

    /* renamed from: e */
    public static final cym f67319e = new cym(win.f88669b, 0, 0, 0);

    /* renamed from: a */
    public final int f67320a;

    /* renamed from: b */
    public final win f67321b;

    /* renamed from: c */
    public final int f67322c;

    /* renamed from: d */
    public final int f67323d;

    public cym(win winVar, int i, int i2, int i3) {
        this.f67321b = winVar;
        this.f67320a = i;
        this.f67322c = i2;
        this.f67323d = i3;
    }

    /* renamed from: a */
    public cym m53539a(int i) {
        win winVar = this.f67321b;
        int i2 = this.f67320a;
        int i3 = this.f67323d;
        if (i2 == 4 || i2 == 2) {
            int i4 = HighLevelEncoder.f38260h[i2][0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            winVar = winVar.m58077a(i5, i6);
            i3 += i6;
            i2 = 0;
        }
        int i7 = this.f67322c;
        cym cymVar = new cym(winVar, i2, i7 + 1, i3 + ((i7 == 0 || i7 == 31) ? 18 : i7 == 62 ? 9 : 8));
        return cymVar.f67322c == 2078 ? cymVar.m53540b(i + 1) : cymVar;
    }

    /* renamed from: b */
    public cym m53540b(int i) {
        int i2 = this.f67322c;
        return i2 == 0 ? this : new cym(this.f67321b.m58078b(i - i2, i2), this.f67320a, 0, this.f67323d);
    }

    /* renamed from: c */
    public int m53541c() {
        return this.f67322c;
    }

    /* renamed from: d */
    public int m53542d() {
        return this.f67323d;
    }

    /* renamed from: e */
    public int m53543e() {
        return this.f67320a;
    }

    /* renamed from: f */
    public win m53544f() {
        return this.f67321b;
    }

    /* renamed from: g */
    public boolean m53545g(cym cymVar) {
        int i;
        int i2 = this.f67323d + (HighLevelEncoder.f38260h[this.f67320a][cymVar.f67320a] >> 16);
        int i3 = cymVar.f67322c;
        if (i3 > 0 && ((i = this.f67322c) == 0 || i > i3)) {
            i2 += 10;
        }
        return i2 <= cymVar.f67323d;
    }

    /* renamed from: h */
    public cym m53546h(int i, int i2) {
        int i3 = this.f67323d;
        win winVar = this.f67321b;
        int i4 = this.f67320a;
        if (i != i4) {
            int i5 = HighLevelEncoder.f38260h[i4][i];
            int i6 = 65535 & i5;
            int i7 = i5 >> 16;
            winVar = winVar.m58077a(i6, i7);
            i3 += i7;
        }
        int i8 = i == 2 ? 4 : 5;
        return new cym(winVar.m58077a(i2, i8), i, 0, i3 + i8);
    }

    /* renamed from: i */
    public cym m53547i(int i, int i2) {
        win winVar = this.f67321b;
        int i3 = this.f67320a;
        int i4 = i3 == 2 ? 4 : 5;
        return new cym(winVar.m58077a(HighLevelEncoder.f38262j[i3][i], i4).m58077a(i2, 5), this.f67320a, 0, this.f67323d + i4 + 5);
    }

    /* renamed from: j */
    public BitArray m53548j(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (win winVar = m53540b(bArr.length).f67321b; winVar != null; winVar = winVar.m58079d()) {
            linkedList.addFirst(winVar);
        }
        BitArray bitArray = new BitArray();
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            ((win) it2.next()).mo57867c(bitArray, bArr);
        }
        return bitArray;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.f38254b[this.f67320a], Integer.valueOf(this.f67323d), Integer.valueOf(this.f67322c));
    }
}
