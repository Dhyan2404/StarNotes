package com.tencent.beacon.base.net.p066b.p067a.p068a;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: com.tencent.beacon.base.net.b.a.a.c */
/* loaded from: classes10.dex */
public class C14924c {

    /* renamed from: a */
    byte[] f92705a;

    /* renamed from: b */
    int f92706b;

    /* renamed from: c */
    int f92707c = 0;

    /* renamed from: d */
    int f92708d;

    /* renamed from: e */
    OutputStream f92709e;

    /* renamed from: a */
    public void m59173a(int i) {
        if (this.f92705a == null || this.f92707c != i) {
            this.f92705a = new byte[i];
        }
        this.f92707c = i;
        this.f92706b = 0;
        this.f92708d = 0;
    }

    /* renamed from: b */
    public void m59178b() throws IOException {
        m59171a();
        this.f92709e = null;
    }

    /* renamed from: b */
    public byte m59177b(int i) {
        int i2 = (this.f92706b - i) - 1;
        if (i2 < 0) {
            i2 += this.f92707c;
        }
        return this.f92705a[i2];
    }

    /* renamed from: a */
    public void m59175a(OutputStream outputStream) throws IOException {
        m59178b();
        this.f92709e = outputStream;
    }

    /* renamed from: a */
    public void m59176a(boolean z) {
        if (z) {
            return;
        }
        this.f92708d = 0;
        this.f92706b = 0;
    }

    /* renamed from: a */
    public void m59171a() throws IOException {
        int i = this.f92706b;
        int i2 = this.f92708d;
        int i3 = i - i2;
        if (i3 == 0) {
            return;
        }
        this.f92709e.write(this.f92705a, i2, i3);
        if (this.f92706b >= this.f92707c) {
            this.f92706b = 0;
        }
        this.f92708d = this.f92706b;
    }

    /* renamed from: a */
    public void m59174a(int i, int i2) throws IOException {
        int i3 = (this.f92706b - i) - 1;
        if (i3 < 0) {
            i3 += this.f92707c;
        }
        while (i2 != 0) {
            int i4 = this.f92707c;
            if (i3 >= i4) {
                i3 = 0;
            }
            byte[] bArr = this.f92705a;
            int i5 = this.f92706b;
            int i6 = i5 + 1;
            this.f92706b = i6;
            int i7 = i3 + 1;
            bArr[i5] = bArr[i3];
            if (i6 >= i4) {
                m59171a();
            }
            i2--;
            i3 = i7;
        }
    }

    /* renamed from: a */
    public void m59172a(byte b) throws IOException {
        byte[] bArr = this.f92705a;
        int i = this.f92706b;
        int i2 = i + 1;
        this.f92706b = i2;
        bArr[i] = b;
        if (i2 >= this.f92707c) {
            m59171a();
        }
    }
}
