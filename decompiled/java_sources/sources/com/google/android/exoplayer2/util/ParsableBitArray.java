package com.google.android.exoplayer2.util;

import com.google.common.base.Charsets;
import java.nio.charset.Charset;

/* loaded from: classes5.dex */
public final class ParsableBitArray {

    /* renamed from: a */
    public int f28412a;

    /* renamed from: b */
    public int f28413b;

    /* renamed from: c */
    public int f28414c;
    public byte[] data;

    public ParsableBitArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    /* renamed from: a */
    public final void m21516a() {
        int i;
        int i2 = this.f28412a;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.f28414c) || (i2 == i && this.f28413b == 0)));
    }

    public int bitsLeft() {
        return ((this.f28414c - this.f28412a) * 8) - this.f28413b;
    }

    public void byteAlign() {
        if (this.f28413b == 0) {
            return;
        }
        this.f28413b = 0;
        this.f28412a++;
        m21516a();
    }

    public int getBytePosition() {
        Assertions.checkState(this.f28413b == 0);
        return this.f28412a;
    }

    public int getPosition() {
        return (this.f28412a * 8) + this.f28413b;
    }

    public void putInt(int i, int i2) {
        if (i2 < 32) {
            i &= (1 << i2) - 1;
        }
        int min = Math.min(8 - this.f28413b, i2);
        int i3 = this.f28413b;
        int i4 = (8 - i3) - min;
        byte[] bArr = this.data;
        int i5 = this.f28412a;
        byte b = (byte) (((65280 >> i3) | ((1 << i4) - 1)) & bArr[i5]);
        bArr[i5] = b;
        int i6 = i2 - min;
        bArr[i5] = (byte) (b | ((i >>> i6) << i4));
        int i7 = i5 + 1;
        while (i6 > 8) {
            this.data[i7] = (byte) (i >>> (i6 - 8));
            i6 -= 8;
            i7++;
        }
        int i8 = 8 - i6;
        byte[] bArr2 = this.data;
        byte b2 = (byte) (bArr2[i7] & ((1 << i8) - 1));
        bArr2[i7] = b2;
        bArr2[i7] = (byte) (((i & ((1 << i6) - 1)) << i8) | b2);
        skipBits(i2);
        m21516a();
    }

    public boolean readBit() {
        boolean z = (this.data[this.f28412a] & (128 >> this.f28413b)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f28413b += i;
        int i3 = 0;
        while (true) {
            i2 = this.f28413b;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f28413b = i4;
            byte[] bArr = this.data;
            int i5 = this.f28412a;
            this.f28412a = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.data;
        int i6 = this.f28412a;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.f28413b = 0;
            this.f28412a = i6 + 1;
        }
        m21516a();
        return i7;
    }

    public long readBitsToLong(int i) {
        return i <= 32 ? Util.toUnsignedLong(readBits(i)) : Util.toLong(readBits(i - 32), readBits(32));
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        Assertions.checkState(this.f28413b == 0);
        System.arraycopy(this.data, this.f28412a, bArr, i, i2);
        this.f28412a += i2;
        m21516a();
    }

    public String readBytesAsString(int i) {
        return readBytesAsString(i, Charsets.UTF_8);
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void setPosition(int i) {
        int i2 = i / 8;
        this.f28412a = i2;
        this.f28413b = i - (i2 * 8);
        m21516a();
    }

    public void skipBit() {
        int i = this.f28413b + 1;
        this.f28413b = i;
        if (i == 8) {
            this.f28413b = 0;
            this.f28412a++;
        }
        m21516a();
    }

    public void skipBits(int i) {
        int i2 = i / 8;
        int i3 = this.f28412a + i2;
        this.f28412a = i3;
        int i4 = this.f28413b + (i - (i2 * 8));
        this.f28413b = i4;
        if (i4 > 7) {
            this.f28412a = i3 + 1;
            this.f28413b = i4 - 8;
        }
        m21516a();
    }

    public void skipBytes(int i) {
        Assertions.checkState(this.f28413b == 0);
        this.f28412a += i;
        m21516a();
    }

    public String readBytesAsString(int i, Charset charset) {
        byte[] bArr = new byte[i];
        readBytes(bArr, 0, i);
        return new String(bArr, charset);
    }

    public void reset(ParsableByteArray parsableByteArray) {
        reset(parsableByteArray.getData(), parsableByteArray.limit());
        setPosition(parsableByteArray.getPosition() * 8);
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i) {
        this.data = bArr;
        this.f28414c = i;
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.f28412a = 0;
        this.f28413b = 0;
        this.f28414c = i;
    }

    public void readBits(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.data;
            int i4 = this.f28412a;
            int i5 = i4 + 1;
            this.f28412a = i5;
            byte b = bArr2[i4];
            int i6 = this.f28413b;
            byte b2 = (byte) (b << i6);
            bArr[i] = b2;
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | b2);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        byte b3 = (byte) (bArr[i3] & (255 >> i7));
        bArr[i3] = b3;
        int i8 = this.f28413b;
        if (i8 + i7 > 8) {
            byte[] bArr3 = this.data;
            int i9 = this.f28412a;
            this.f28412a = i9 + 1;
            bArr[i3] = (byte) (b3 | ((bArr3[i9] & 255) << i8));
            this.f28413b = i8 - 8;
        }
        int i10 = this.f28413b + i7;
        this.f28413b = i10;
        byte[] bArr4 = this.data;
        int i11 = this.f28412a;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
        if (i10 == 8) {
            this.f28413b = 0;
            this.f28412a = i11 + 1;
        }
        m21516a();
    }
}
