package com.tencent.beacon.base.net.p066b.p067a.p068a;

import java.io.IOException;

/* renamed from: com.tencent.beacon.base.net.b.a.a.a */
/* loaded from: classes10.dex */
public class C14922a extends C14923b {

    /* renamed from: l */
    private static final int[] f92681l = new int[256];

    /* renamed from: m */
    int f92682m;

    /* renamed from: o */
    int f92684o;

    /* renamed from: p */
    int[] f92685p;

    /* renamed from: q */
    int[] f92686q;

    /* renamed from: s */
    int f92688s;

    /* renamed from: n */
    int f92683n = 0;

    /* renamed from: r */
    int f92687r = 255;

    /* renamed from: t */
    int f92689t = 0;

    /* renamed from: u */
    boolean f92690u = true;

    /* renamed from: v */
    int f92691v = 0;

    /* renamed from: w */
    int f92692w = 4;

    /* renamed from: x */
    int f92693x = 66560;

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                int i4 = i2 & 1;
                i2 >>>= 1;
                if (i4 != 0) {
                    i2 ^= -306674912;
                }
            }
            f92681l[i] = i2;
        }
    }

    /* renamed from: a */
    public boolean m59155a(int i, int i2, int i3, int i4) {
        int i5;
        if (i > 1073741567) {
            return false;
        }
        this.f92687r = (i3 >> 1) + 16;
        int i6 = i2 + i;
        super.m59163a(i6, i4 + i3, (((i6 + i3) + i4) / 2) + 256);
        this.f92684o = i3;
        int i7 = i + 1;
        if (this.f92683n != i7) {
            this.f92683n = i7;
            this.f92685p = new int[i7 * 2];
        }
        if (this.f92690u) {
            int i8 = i - 1;
            int i9 = i8 | (i8 >> 1);
            int i10 = i9 | (i9 >> 2);
            int i11 = i10 | (i10 >> 4);
            int i12 = ((i11 | (i11 >> 8)) >> 1) | 65535;
            if (i12 > 16777216) {
                i12 >>= 1;
            }
            this.f92688s = i12;
            i5 = i12 + 1 + this.f92693x;
        } else {
            i5 = 65536;
        }
        if (i5 != this.f92689t) {
            this.f92689t = i5;
            this.f92686q = new int[i5];
        }
        return true;
    }

    /* renamed from: c */
    public void m59157c(int i) {
        boolean z = i > 2;
        this.f92690u = z;
        if (z) {
            this.f92691v = 0;
            this.f92692w = 4;
            this.f92693x = 66560;
        } else {
            this.f92691v = 2;
            this.f92692w = 3;
            this.f92693x = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ac, code lost:
    
        if (r15[r13 + r14] == r15[r6 + r14]) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ae, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b0, code lost:
    
        if (r14 == r3) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
    
        r5 = r17.f92694a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bc, code lost:
    
        if (r5[r13 + r14] == r5[r6 + r14]) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00be, code lost:
    
        if (r14 != r3) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c0, code lost:
    
        r3 = r17.f92685p;
        r3[r2] = r3[r11];
        r3[r8] = r3[r11 + 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cd, code lost:
    
        r5 = r17.f92694a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
    
        if ((r5[r13 + r14] & 255) >= (r5[r6 + r14] & 255)) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00dc, code lost:
    
        r5 = r17.f92685p;
        r5[r2] = r7;
        r11 = r11 + 1;
        r7 = r5[r11];
        r2 = r11;
        r10 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f1, code lost:
    
        r11 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e8, code lost:
    
        r5 = r17.f92685p;
        r5[r8] = r7;
        r7 = r5[r11];
        r8 = r11;
        r9 = r14;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m59158d(int r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.base.net.p066b.p067a.p068a.C14922a.m59158d(int):void");
    }

    @Override // com.tencent.beacon.base.net.p066b.p067a.p068a.C14923b
    /* renamed from: e */
    public void mo59159e() throws IOException {
        int i = this.f92682m + 1;
        this.f92682m = i;
        if (i >= this.f92683n) {
            this.f92682m = 0;
        }
        super.mo59159e();
        if (this.f92701h == 1073741823) {
            m59160h();
        }
    }

    /* renamed from: h */
    public void m59160h() {
        int i = this.f92701h;
        int i2 = this.f92683n;
        int i3 = i - i2;
        m59154a(this.f92685p, i2 * 2, i3);
        m59154a(this.f92686q, this.f92689t, i3);
        m59167b(i3);
    }

    @Override // com.tencent.beacon.base.net.p066b.p067a.p068a.C14923b
    /* renamed from: c */
    public void mo59156c() throws IOException {
        super.mo59156c();
        for (int i = 0; i < this.f92689t; i++) {
            this.f92686q[i] = 0;
        }
        this.f92682m = 0;
        m59167b(-1);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m59153a(int[] r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.base.net.p066b.p067a.p068a.C14922a.m59153a(int[]):int");
    }

    /* renamed from: a */
    public void m59154a(int[] iArr, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            iArr[i3] = i4 <= i2 ? 0 : i4 - i2;
        }
    }
}
