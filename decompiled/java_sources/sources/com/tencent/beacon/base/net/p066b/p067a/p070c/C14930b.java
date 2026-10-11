package com.tencent.beacon.base.net.p066b.p067a.p070c;

import java.io.IOException;

/* renamed from: com.tencent.beacon.base.net.b.a.c.b */
/* loaded from: classes10.dex */
public class C14930b {

    /* renamed from: a */
    short[] f92837a;

    /* renamed from: b */
    int f92838b;

    public C14930b(int i) {
        this.f92838b = i;
        this.f92837a = new short[1 << i];
    }

    /* renamed from: a */
    public void m59255a() {
        C14931c.m59259a(this.f92837a);
    }

    /* renamed from: b */
    public void m59258b(C14932d c14932d, int i) throws IOException {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f92838b; i3++) {
            int i4 = i & 1;
            c14932d.m59272a(this.f92837a, i2, i4);
            i2 = (i2 << 1) | i4;
            i >>= 1;
        }
    }

    /* renamed from: a */
    public void m59256a(C14932d c14932d, int i) throws IOException {
        int i2 = this.f92838b;
        int i3 = 1;
        while (i2 != 0) {
            i2--;
            int i4 = (i >>> i2) & 1;
            c14932d.m59272a(this.f92837a, i3, i4);
            i3 = (i3 << 1) | i4;
        }
    }

    /* renamed from: b */
    public int m59257b(int i) {
        int i2 = 0;
        int i3 = 1;
        for (int i4 = this.f92838b; i4 != 0; i4--) {
            int i5 = i & 1;
            i >>>= 1;
            i2 += C14932d.m59268b(this.f92837a[i3], i5);
            i3 = (i3 << 1) | i5;
        }
        return i2;
    }

    /* renamed from: a */
    public int m59254a(int i) {
        int i2 = this.f92838b;
        int i3 = 0;
        int i4 = 1;
        while (i2 != 0) {
            i2--;
            int i5 = (i >>> i2) & 1;
            i3 += C14932d.m59268b(this.f92837a[i4], i5);
            i4 = (i4 << 1) + i5;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m59252a(short[] sArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 1;
        while (i2 != 0) {
            int i6 = i3 & 1;
            i3 >>>= 1;
            i4 += C14932d.m59268b(sArr[i + i5], i6);
            i5 = (i5 << 1) | i6;
            i2--;
        }
        return i4;
    }

    /* renamed from: a */
    public static void m59253a(short[] sArr, int i, C14932d c14932d, int i2, int i3) throws IOException {
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i3 & 1;
            c14932d.m59272a(sArr, i + i4, i6);
            i4 = (i4 << 1) | i6;
            i3 >>= 1;
        }
    }
}
