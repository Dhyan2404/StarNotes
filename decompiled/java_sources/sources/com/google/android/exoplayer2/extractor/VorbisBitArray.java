package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.Assertions;

/* loaded from: classes5.dex */
public final class VorbisBitArray {

    /* renamed from: a */
    public final byte[] f23551a;

    /* renamed from: b */
    public final int f23552b;

    /* renamed from: c */
    public int f23553c;

    /* renamed from: d */
    public int f23554d;

    public VorbisBitArray(byte[] bArr) {
        this.f23551a = bArr;
        this.f23552b = bArr.length;
    }

    /* renamed from: a */
    public final void m18808a() {
        int i;
        int i2 = this.f23553c;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.f23552b) || (i2 == i && this.f23554d == 0)));
    }

    public int bitsLeft() {
        return ((this.f23552b - this.f23553c) * 8) - this.f23554d;
    }

    public int getPosition() {
        return (this.f23553c * 8) + this.f23554d;
    }

    public boolean readBit() {
        boolean z = (((this.f23551a[this.f23553c] & 255) >> this.f23554d) & 1) == 1;
        skipBits(1);
        return z;
    }

    public int readBits(int i) {
        int i2 = this.f23553c;
        int min = Math.min(i, 8 - this.f23554d);
        int i3 = i2 + 1;
        int i4 = ((this.f23551a[i2] & 255) >> this.f23554d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f23551a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        skipBits(i);
        return i5;
    }

    public void reset() {
        this.f23553c = 0;
        this.f23554d = 0;
    }

    public void setPosition(int i) {
        int i2 = i / 8;
        this.f23553c = i2;
        this.f23554d = i - (i2 * 8);
        m18808a();
    }

    public void skipBits(int i) {
        int i2 = i / 8;
        int i3 = this.f23553c + i2;
        this.f23553c = i3;
        int i4 = this.f23554d + (i - (i2 * 8));
        this.f23554d = i4;
        if (i4 > 7) {
            this.f23553c = i3 + 1;
            this.f23554d = i4 - 8;
        }
        m18808a();
    }
}
