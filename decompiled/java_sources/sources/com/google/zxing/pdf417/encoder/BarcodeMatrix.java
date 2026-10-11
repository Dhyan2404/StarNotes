package com.google.zxing.pdf417.encoder;

import com.sunia.HTREnginev2.C14551vm;
import java.lang.reflect.Array;

/* loaded from: classes4.dex */
public final class BarcodeMatrix {

    /* renamed from: a */
    public final C14551vm[] f38717a;

    /* renamed from: b */
    public int f38718b;

    /* renamed from: c */
    public final int f38719c;

    /* renamed from: d */
    public final int f38720d;

    public BarcodeMatrix(int i, int i2) {
        C14551vm[] c14551vmArr = new C14551vm[i];
        this.f38717a = c14551vmArr;
        int length = c14551vmArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f38717a[i3] = new C14551vm(((i2 + 4) * 17) + 1);
        }
        this.f38720d = i2 * 17;
        this.f38719c = i;
        this.f38718b = -1;
    }

    /* renamed from: a */
    public C14551vm m30740a() {
        return this.f38717a[this.f38718b];
    }

    /* renamed from: b */
    public void m30741b(int i, int i2, byte b) {
        this.f38717a[i2].m57847c(i, b);
    }

    /* renamed from: c */
    public void m30742c() {
        this.f38718b++;
    }

    public byte[][] getMatrix() {
        return getScaledMatrix(1, 1);
    }

    public byte[][] getScaledMatrix(int i, int i2) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.f38719c * i2, this.f38720d * i);
        int i3 = this.f38719c * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.f38717a[i4 / i2].m57846b(i);
        }
        return bArr;
    }
}
