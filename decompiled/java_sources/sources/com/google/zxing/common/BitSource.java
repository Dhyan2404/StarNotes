package com.google.zxing.common;

/* loaded from: classes4.dex */
public final class BitSource {

    /* renamed from: a */
    public final byte[] f38376a;

    /* renamed from: b */
    public int f38377b;

    /* renamed from: c */
    public int f38378c;

    public BitSource(byte[] bArr) {
        this.f38376a = bArr;
    }

    public int available() {
        return ((this.f38376a.length - this.f38377b) * 8) - this.f38378c;
    }

    public int getBitOffset() {
        return this.f38378c;
    }

    public int getByteOffset() {
        return this.f38377b;
    }

    public int readBits(int i) {
        if (i <= 0 || i > 32 || i > available()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        int i2 = this.f38378c;
        int i3 = 0;
        if (i2 > 0) {
            int i4 = 8 - i2;
            int i5 = i < i4 ? i : i4;
            int i6 = i4 - i5;
            byte[] bArr = this.f38376a;
            int i7 = this.f38377b;
            int i8 = (((255 >> (8 - i5)) << i6) & bArr[i7]) >> i6;
            i -= i5;
            int i9 = i2 + i5;
            this.f38378c = i9;
            if (i9 == 8) {
                this.f38378c = 0;
                this.f38377b = i7 + 1;
            }
            i3 = i8;
        }
        if (i <= 0) {
            return i3;
        }
        while (i >= 8) {
            int i10 = i3 << 8;
            byte[] bArr2 = this.f38376a;
            int i11 = this.f38377b;
            i3 = (bArr2[i11] & 255) | i10;
            this.f38377b = i11 + 1;
            i -= 8;
        }
        if (i <= 0) {
            return i3;
        }
        int i12 = 8 - i;
        int i13 = (i3 << i) | ((((255 >> i12) << i12) & this.f38376a[this.f38377b]) >> i12);
        this.f38378c += i;
        return i13;
    }
}
