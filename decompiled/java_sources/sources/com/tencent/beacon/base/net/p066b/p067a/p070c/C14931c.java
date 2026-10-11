package com.tencent.beacon.base.net.p066b.p067a.p070c;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.tencent.beacon.base.net.b.a.c.c */
/* loaded from: classes10.dex */
public class C14931c {

    /* renamed from: a */
    int f92839a;

    /* renamed from: b */
    int f92840b;

    /* renamed from: c */
    InputStream f92841c;

    /* renamed from: a */
    public final void m59263a(InputStream inputStream) {
        this.f92841c = inputStream;
    }

    /* renamed from: b */
    public final void m59264b() {
        this.f92841c = null;
    }

    /* renamed from: a */
    public final void m59262a() throws IOException {
        this.f92840b = 0;
        this.f92839a = -1;
        for (int i = 0; i < 5; i++) {
            this.f92840b = (this.f92840b << 8) | this.f92841c.read();
        }
    }

    /* renamed from: a */
    public final int m59260a(int i) throws IOException {
        int i2 = 0;
        while (i != 0) {
            int i3 = this.f92839a >>> 1;
            this.f92839a = i3;
            int i4 = this.f92840b;
            int i5 = (i4 - i3) >>> 31;
            int i6 = i4 - ((i5 - 1) & i3);
            this.f92840b = i6;
            i2 = (i2 << 1) | (1 - i5);
            if ((i3 & (-16777216)) == 0) {
                this.f92840b = (i6 << 8) | this.f92841c.read();
                this.f92839a <<= 8;
            }
            i--;
        }
        return i2;
    }

    /* renamed from: a */
    public int m59261a(short[] sArr, int i) throws IOException {
        short s = sArr[i];
        int i2 = this.f92839a;
        int i3 = (i2 >>> 11) * s;
        int i4 = this.f92840b;
        if ((i4 ^ Integer.MIN_VALUE) < (Integer.MIN_VALUE ^ i3)) {
            this.f92839a = i3;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            if ((i3 & (-16777216)) != 0) {
                return 0;
            }
            this.f92840b = (i4 << 8) | this.f92841c.read();
            this.f92839a <<= 8;
            return 0;
        }
        int i5 = i2 - i3;
        this.f92839a = i5;
        int i6 = i4 - i3;
        this.f92840b = i6;
        sArr[i] = (short) (s - (s >>> 5));
        if ((i5 & (-16777216)) != 0) {
            return 1;
        }
        this.f92840b = (i6 << 8) | this.f92841c.read();
        this.f92839a <<= 8;
        return 1;
    }

    /* renamed from: a */
    public static void m59259a(short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = 1024;
        }
    }
}
