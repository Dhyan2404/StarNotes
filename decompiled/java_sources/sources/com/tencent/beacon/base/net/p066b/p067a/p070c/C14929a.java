package com.tencent.beacon.base.net.p066b.p067a.p070c;

import java.io.IOException;

/* renamed from: com.tencent.beacon.base.net.b.a.c.a */
/* loaded from: classes10.dex */
public class C14929a {

    /* renamed from: a */
    short[] f92835a;

    /* renamed from: b */
    int f92836b;

    public C14929a(int i) {
        this.f92836b = i;
        this.f92835a = new short[1 << i];
    }

    /* renamed from: a */
    public void m59250a() {
        C14931c.m59259a(this.f92835a);
    }

    /* renamed from: b */
    public int m59251b(C14931c c14931c) throws IOException {
        int i = 1;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f92836b; i3++) {
            int m59261a = c14931c.m59261a(this.f92835a, i);
            i = (i << 1) + m59261a;
            i2 |= m59261a << i3;
        }
        return i2;
    }

    /* renamed from: a */
    public int m59249a(C14931c c14931c) throws IOException {
        int i = 1;
        for (int i2 = this.f92836b; i2 != 0; i2--) {
            i = c14931c.m59261a(this.f92835a, i) + (i << 1);
        }
        return i - (1 << this.f92836b);
    }

    /* renamed from: a */
    public static int m59248a(short[] sArr, int i, C14931c c14931c, int i2) throws IOException {
        int i3 = 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int m59261a = c14931c.m59261a(sArr, i + i3);
            i3 = (i3 << 1) + m59261a;
            i4 |= m59261a << i5;
        }
        return i4;
    }
}
