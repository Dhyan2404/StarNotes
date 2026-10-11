package com.sunia.HTREnginev2;

/* loaded from: classes12.dex */
public class ptd {

    /* renamed from: a */
    public final int f81214a;

    /* renamed from: b */
    public final byte[] f81215b;

    /* renamed from: c */
    public int f81216c;

    /* renamed from: d */
    public int f81217d;

    public ptd(int i) {
        this.f81214a = i;
        this.f81215b = new byte[i];
    }

    /* renamed from: a */
    public boolean m56372a() {
        return this.f81216c != this.f81217d;
    }

    /* renamed from: b */
    public void m56373b(int i, int i2) {
        int i3 = this.f81217d - i;
        int i4 = i2 + i3;
        while (i3 < i4) {
            byte[] bArr = this.f81215b;
            int i5 = this.f81217d;
            int i6 = this.f81214a;
            bArr[i5] = bArr[(i3 + i6) % i6];
            this.f81217d = (i5 + 1) % i6;
            i3++;
        }
    }

    /* renamed from: c */
    public int m56374c() {
        if (!m56372a()) {
            return -1;
        }
        byte[] bArr = this.f81215b;
        int i = this.f81216c;
        byte b = bArr[i];
        this.f81216c = (i + 1) % this.f81214a;
        return b & 255;
    }

    /* renamed from: d */
    public void m56375d(int i) {
        byte[] bArr = this.f81215b;
        int i2 = this.f81217d;
        bArr[i2] = (byte) i;
        this.f81217d = (i2 + 1) % this.f81214a;
    }
}
