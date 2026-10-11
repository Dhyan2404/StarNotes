package com.tencent.beacon.base.net.p066b.p067a.p070c;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: com.tencent.beacon.base.net.b.a.c.d */
/* loaded from: classes10.dex */
public class C14932d {

    /* renamed from: a */
    private static int[] f92842a = new int[512];

    /* renamed from: b */
    OutputStream f92843b;

    /* renamed from: c */
    long f92844c;

    /* renamed from: d */
    int f92845d;

    /* renamed from: e */
    int f92846e;

    /* renamed from: f */
    int f92847f;

    /* renamed from: g */
    long f92848g;

    static {
        for (int i = 8; i >= 0; i--) {
            int i2 = 9 - i;
            int i3 = i2 - 1;
            int i4 = 1 << i2;
            for (int i5 = 1 << i3; i5 < i4; i5++) {
                f92842a[i5] = (i << 6) + (((i4 - i5) << 6) >>> i3);
            }
        }
    }

    /* renamed from: a */
    public void m59271a(OutputStream outputStream) {
        this.f92843b = outputStream;
    }

    /* renamed from: b */
    public void m59273b() throws IOException {
        this.f92843b.flush();
    }

    /* renamed from: c */
    public long m59274c() {
        return this.f92846e + this.f92848g + 4;
    }

    /* renamed from: d */
    public void m59275d() {
        this.f92848g = 0L;
        this.f92844c = 0L;
        this.f92845d = -1;
        this.f92846e = 1;
        this.f92847f = 0;
    }

    /* renamed from: e */
    public void m59276e() {
        this.f92843b = null;
    }

    /* renamed from: f */
    public void m59277f() throws IOException {
        long j = this.f92844c;
        int i = (int) (j >>> 32);
        if (i != 0 || j < 4278190080L) {
            this.f92848g += this.f92846e;
            int i2 = this.f92847f;
            while (true) {
                this.f92843b.write(i2 + i);
                int i3 = this.f92846e - 1;
                this.f92846e = i3;
                if (i3 == 0) {
                    break;
                } else {
                    i2 = 255;
                }
            }
            this.f92847f = ((int) this.f92844c) >>> 24;
        }
        this.f92846e++;
        this.f92844c = (this.f92844c & 16777215) << 8;
    }

    /* renamed from: b */
    public static int m59268b(int i, int i2) {
        return f92842a[(((i - i2) ^ (-i2)) & 2047) >>> 2];
    }

    /* renamed from: a */
    public void m59269a() throws IOException {
        for (int i = 0; i < 5; i++) {
            m59277f();
        }
    }

    /* renamed from: b */
    public static int m59267b(int i) {
        return f92842a[(2048 - i) >>> 2];
    }

    /* renamed from: a */
    public void m59270a(int i, int i2) throws IOException {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            int i4 = this.f92845d >>> 1;
            this.f92845d = i4;
            if (((i >>> i3) & 1) == 1) {
                this.f92844c += i4;
            }
            if (((-16777216) & i4) == 0) {
                this.f92845d = i4 << 8;
                m59277f();
            }
        }
    }

    /* renamed from: a */
    public static void m59266a(short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = 1024;
        }
    }

    /* renamed from: a */
    public void m59272a(short[] sArr, int i, int i2) throws IOException {
        short s = sArr[i];
        int i3 = this.f92845d;
        int i4 = (i3 >>> 11) * s;
        if (i2 == 0) {
            this.f92845d = i4;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
        } else {
            this.f92844c += i4 & 4294967295L;
            this.f92845d = i3 - i4;
            sArr[i] = (short) (s - (s >>> 5));
        }
        int i5 = this.f92845d;
        if (((-16777216) & i5) == 0) {
            this.f92845d = i5 << 8;
            m59277f();
        }
    }

    /* renamed from: a */
    public static int m59265a(int i) {
        return f92842a[i >>> 2];
    }
}
