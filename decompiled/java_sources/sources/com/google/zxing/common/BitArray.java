package com.google.zxing.common;

import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes4.dex */
public final class BitArray implements Cloneable {

    /* renamed from: e */
    public int[] f38370e;

    /* renamed from: f */
    public int f38371f;

    public BitArray() {
        this.f38371f = 0;
        this.f38370e = new int[1];
    }

    /* renamed from: b */
    public static int[] m30508b(int i) {
        return new int[(i + 31) / 32];
    }

    /* renamed from: a */
    public final void m30509a(int i) {
        if (i > (this.f38370e.length << 5)) {
            int[] m30508b = m30508b(i);
            int[] iArr = this.f38370e;
            System.arraycopy(iArr, 0, m30508b, 0, iArr.length);
            this.f38370e = m30508b;
        }
    }

    public void appendBit(boolean z) {
        m30509a(this.f38371f + 1);
        if (z) {
            int[] iArr = this.f38370e;
            int i = this.f38371f;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f38371f++;
    }

    public void appendBitArray(BitArray bitArray) {
        int i = bitArray.f38371f;
        m30509a(this.f38371f + i);
        for (int i2 = 0; i2 < i; i2++) {
            appendBit(bitArray.get(i2));
        }
    }

    public void appendBits(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m30509a(this.f38371f + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            appendBit(z);
            i2--;
        }
    }

    public void clear() {
        int length = this.f38370e.length;
        for (int i = 0; i < length; i++) {
            this.f38370e[i] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitArray)) {
            return false;
        }
        BitArray bitArray = (BitArray) obj;
        return this.f38371f == bitArray.f38371f && Arrays.equals(this.f38370e, bitArray.f38370e);
    }

    public void flip(int i) {
        int[] iArr = this.f38370e;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public boolean get(int i) {
        return (this.f38370e[i / 32] & (1 << (i & 31))) != 0;
    }

    public int[] getBitArray() {
        return this.f38370e;
    }

    public int getNextSet(int i) {
        int i2 = this.f38371f;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (~((1 << (i & 31)) - 1)) & this.f38370e[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f38370e;
            if (i3 == iArr.length) {
                return this.f38371f;
            }
            i4 = iArr[i3];
        }
        int numberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.f38371f;
        return numberOfTrailingZeros > i5 ? i5 : numberOfTrailingZeros;
    }

    public int getNextUnset(int i) {
        int i2 = this.f38371f;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (~((1 << (i & 31)) - 1)) & (~this.f38370e[i3]);
        while (i4 == 0) {
            i3++;
            int[] iArr = this.f38370e;
            if (i3 == iArr.length) {
                return this.f38371f;
            }
            i4 = ~iArr[i3];
        }
        int numberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.f38371f;
        return numberOfTrailingZeros > i5 ? i5 : numberOfTrailingZeros;
    }

    public int getSize() {
        return this.f38371f;
    }

    public int getSizeInBytes() {
        return (this.f38371f + 7) / 8;
    }

    public int hashCode() {
        return (this.f38371f * 31) + Arrays.hashCode(this.f38370e);
    }

    public boolean isRange(int i, int i2, boolean z) {
        if (i2 < i || i < 0 || i2 > this.f38371f) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return true;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = (2 << (i6 >= i5 ? 31 & i3 : 31)) - (1 << (i6 > i4 ? 0 : i & 31));
            int i8 = this.f38370e[i6] & i7;
            if (!z) {
                i7 = 0;
            }
            if (i8 != i7) {
                return false;
            }
            i6++;
        }
        return true;
    }

    public void reverse() {
        int[] iArr = new int[this.f38370e.length];
        int i = (this.f38371f - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = this.f38370e[i3];
            long j2 = ((j & 1431655765) << 1) | ((j >> 1) & 1431655765);
            long j3 = ((j2 & 858993459) << 2) | ((j2 >> 2) & 858993459);
            long j4 = ((j3 & 252645135) << 4) | ((j3 >> 4) & 252645135);
            long j5 = ((j4 & 16711935) << 8) | ((j4 >> 8) & 16711935);
            iArr[i - i3] = (int) (((j5 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((j5 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        }
        int i4 = this.f38371f;
        int i5 = i2 << 5;
        if (i4 != i5) {
            int i6 = i5 - i4;
            int i7 = iArr[0] >>> i6;
            for (int i8 = 1; i8 < i2; i8++) {
                int i9 = iArr[i8];
                iArr[i8 - 1] = i7 | (i9 << (32 - i6));
                i7 = i9 >>> i6;
            }
            iArr[i2 - 1] = i7;
        }
        this.f38370e = iArr;
    }

    public void set(int i) {
        int[] iArr = this.f38370e;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public void setBulk(int i, int i2) {
        this.f38370e[i / 32] = i2;
    }

    public void setRange(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.f38371f) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = 31;
            int i8 = i6 > i4 ? 0 : i & 31;
            if (i6 >= i5) {
                i7 = 31 & i3;
            }
            int i9 = (2 << i7) - (1 << i8);
            int[] iArr = this.f38370e;
            iArr[i6] = i9 | iArr[i6];
            i6++;
        }
    }

    public void toBytes(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (get(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f38371f);
        for (int i = 0; i < this.f38371f; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(get(i) ? 'X' : '.');
        }
        return sb.toString();
    }

    public void xor(BitArray bitArray) {
        if (this.f38371f != bitArray.f38371f) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f38370e;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ bitArray.f38370e[i];
            i++;
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitArray m72168clone() {
        return new BitArray((int[]) this.f38370e.clone(), this.f38371f);
    }

    public BitArray(int i) {
        this.f38371f = i;
        this.f38370e = m30508b(i);
    }

    public BitArray(int[] iArr, int i) {
        this.f38370e = iArr;
        this.f38371f = i;
    }
}
