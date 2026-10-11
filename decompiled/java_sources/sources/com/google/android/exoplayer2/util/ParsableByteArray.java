package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import com.google.common.base.Charsets;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class ParsableByteArray {

    /* renamed from: a */
    public byte[] f28415a;

    /* renamed from: b */
    public int f28416b;

    /* renamed from: c */
    public int f28417c;

    public ParsableByteArray() {
        this.f28415a = Util.EMPTY_BYTE_ARRAY;
    }

    public int bytesLeft() {
        return this.f28417c - this.f28416b;
    }

    public int capacity() {
        return this.f28415a.length;
    }

    public void ensureCapacity(int i) {
        if (i > capacity()) {
            this.f28415a = Arrays.copyOf(this.f28415a, i);
        }
    }

    public byte[] getData() {
        return this.f28415a;
    }

    public int getPosition() {
        return this.f28416b;
    }

    public int limit() {
        return this.f28417c;
    }

    public char peekChar() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        return (char) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public int peekUnsignedByte() {
        return this.f28415a[this.f28416b] & 255;
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i) {
        readBytes(parsableBitArray.data, 0, i);
        parsableBitArray.setPosition(0);
    }

    @Nullable
    public String readDelimiterTerminatedString(char c) {
        if (bytesLeft() == 0) {
            return null;
        }
        int i = this.f28416b;
        while (i < this.f28417c && this.f28415a[i] != c) {
            i++;
        }
        byte[] bArr = this.f28415a;
        int i2 = this.f28416b;
        String fromUtf8Bytes = Util.fromUtf8Bytes(bArr, i2, i - i2);
        this.f28416b = i;
        if (i < this.f28417c) {
            this.f28416b = i + 1;
        }
        return fromUtf8Bytes;
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public int readInt() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = ((bArr[i] & 255) << 24) | ((bArr[i2] & 255) << 16);
        int i5 = i3 + 1;
        int i6 = i4 | ((bArr[i3] & 255) << 8);
        this.f28416b = i5 + 1;
        return (bArr[i5] & 255) | i6;
    }

    public int readInt24() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (((bArr[i] & 255) << 24) >> 8) | ((bArr[i2] & 255) << 8);
        this.f28416b = i3 + 1;
        return (bArr[i3] & 255) | i4;
    }

    @Nullable
    public String readLine() {
        if (bytesLeft() == 0) {
            return null;
        }
        int i = this.f28416b;
        while (i < this.f28417c && !Util.isLinebreak(this.f28415a[i])) {
            i++;
        }
        int i2 = this.f28416b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f28415a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f28416b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f28415a;
        int i3 = this.f28416b;
        String fromUtf8Bytes = Util.fromUtf8Bytes(bArr2, i3, i - i3);
        this.f28416b = i;
        int i4 = this.f28417c;
        if (i == i4) {
            return fromUtf8Bytes;
        }
        byte[] bArr3 = this.f28415a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f28416b = i5;
            if (i5 == i4) {
                return fromUtf8Bytes;
            }
        }
        int i6 = this.f28416b;
        if (bArr3[i6] == 10) {
            this.f28416b = i6 + 1;
        }
        return fromUtf8Bytes;
    }

    public int readLittleEndianInt() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] & 255) | ((bArr[i2] & 255) << 8);
        int i5 = i3 + 1;
        int i6 = i4 | ((bArr[i3] & 255) << 16);
        this.f28416b = i5 + 1;
        return ((bArr[i5] & 255) << 24) | i6;
    }

    public int readLittleEndianInt24() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] & 255) | ((bArr[i2] & 255) << 8);
        this.f28416b = i3 + 1;
        return ((bArr[i3] & 255) << 16) | i4;
    }

    public long readLittleEndianLong() {
        byte[] bArr = this.f28415a;
        long j = bArr[r1] & 255;
        int i = this.f28416b + 1 + 1 + 1;
        long j2 = j | ((bArr[r2] & 255) << 8) | ((bArr[r1] & 255) << 16);
        long j3 = j2 | ((bArr[i] & 255) << 24);
        long j4 = j3 | ((bArr[r3] & 255) << 32);
        long j5 = j4 | ((bArr[r4] & 255) << 40);
        long j6 = j5 | ((bArr[r3] & 255) << 48);
        this.f28416b = i + 1 + 1 + 1 + 1 + 1;
        return j6 | ((bArr[r4] & 255) << 56);
    }

    public short readLittleEndianShort() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        this.f28416b = i2 + 1;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public long readLittleEndianUnsignedInt() {
        byte[] bArr = this.f28415a;
        long j = bArr[r1] & 255;
        int i = this.f28416b + 1 + 1 + 1;
        long j2 = j | ((bArr[r2] & 255) << 8) | ((bArr[r1] & 255) << 16);
        this.f28416b = i + 1;
        return j2 | ((bArr[i] & 255) << 24);
    }

    public int readLittleEndianUnsignedInt24() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] & 255) | ((bArr[i2] & 255) << 8);
        this.f28416b = i3 + 1;
        return ((bArr[i3] & 255) << 16) | i4;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int readLittleEndianInt = readLittleEndianInt();
        if (readLittleEndianInt >= 0) {
            return readLittleEndianInt;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(readLittleEndianInt);
        throw new IllegalStateException(sb.toString());
    }

    public int readLittleEndianUnsignedShort() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        this.f28416b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public long readLong() {
        byte[] bArr = this.f28415a;
        long j = (bArr[r1] & 255) << 56;
        int i = this.f28416b + 1 + 1 + 1;
        long j2 = j | ((bArr[r2] & 255) << 48) | ((bArr[r1] & 255) << 40);
        long j3 = j2 | ((bArr[i] & 255) << 32);
        long j4 = j3 | ((bArr[r3] & 255) << 24);
        long j5 = j4 | ((bArr[r4] & 255) << 16);
        long j6 = j5 | ((bArr[r3] & 255) << 8);
        this.f28416b = i + 1 + 1 + 1 + 1 + 1;
        return j6 | (bArr[r4] & 255);
    }

    public String readNullTerminatedString(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f28416b;
        int i3 = (i2 + i) - 1;
        String fromUtf8Bytes = Util.fromUtf8Bytes(this.f28415a, i2, (i3 >= this.f28417c || this.f28415a[i3] != 0) ? i : i - 1);
        this.f28416b += i;
        return fromUtf8Bytes;
    }

    public short readShort() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = (bArr[i] & 255) << 8;
        this.f28416b = i2 + 1;
        return (short) ((bArr[i2] & 255) | i3);
    }

    public String readString(int i) {
        return readString(i, Charsets.UTF_8);
    }

    public int readSynchSafeInt() {
        return readUnsignedByte() | (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7);
    }

    public int readUnsignedByte() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        this.f28416b = i + 1;
        return bArr[i] & 255;
    }

    public int readUnsignedFixedPoint1616() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = (bArr[i2] & 255) | ((bArr[i] & 255) << 8);
        this.f28416b = i2 + 1 + 2;
        return i3;
    }

    public long readUnsignedInt() {
        byte[] bArr = this.f28415a;
        long j = (bArr[r1] & 255) << 24;
        int i = this.f28416b + 1 + 1 + 1;
        long j2 = j | ((bArr[r2] & 255) << 16) | ((bArr[r1] & 255) << 8);
        this.f28416b = i + 1;
        return j2 | (bArr[i] & 255);
    }

    public int readUnsignedInt24() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = ((bArr[i] & 255) << 16) | ((bArr[i2] & 255) << 8);
        this.f28416b = i3 + 1;
        return (bArr[i3] & 255) | i4;
    }

    public int readUnsignedIntToInt() {
        int readInt = readInt();
        if (readInt >= 0) {
            return readInt;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(readInt);
        throw new IllegalStateException(sb.toString());
    }

    public long readUnsignedLongToLong() {
        long readLong = readLong();
        if (readLong >= 0) {
            return readLong;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(readLong);
        throw new IllegalStateException(sb.toString());
    }

    public int readUnsignedShort() {
        byte[] bArr = this.f28415a;
        int i = this.f28416b;
        int i2 = i + 1;
        int i3 = (bArr[i] & 255) << 8;
        this.f28416b = i2 + 1;
        return (bArr[i2] & 255) | i3;
    }

    public long readUtf8EncodedLong() {
        int i;
        int i2;
        long j = this.f28415a[this.f28416b];
        int i3 = 7;
        while (true) {
            if (i3 < 0) {
                break;
            }
            if (((1 << i3) & j) != 0) {
                i3--;
            } else if (i3 < 6) {
                j &= r6 - 1;
                i2 = 7 - i3;
            } else if (i3 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 == 0) {
            StringBuilder sb = new StringBuilder(55);
            sb.append("Invalid UTF-8 sequence first byte: ");
            sb.append(j);
            throw new NumberFormatException(sb.toString());
        }
        for (i = 1; i < i2; i++) {
            if ((this.f28415a[this.f28416b + i] & 192) != 128) {
                StringBuilder sb2 = new StringBuilder(62);
                sb2.append("Invalid UTF-8 sequence continuation byte: ");
                sb2.append(j);
                throw new NumberFormatException(sb2.toString());
            }
            j = (j << 6) | (r3 & 63);
        }
        this.f28416b += i2;
        return j;
    }

    public void reset(int i) {
        reset(capacity() < i ? new byte[i] : this.f28415a, i);
    }

    public void setLimit(int i) {
        Assertions.checkArgument(i >= 0 && i <= this.f28415a.length);
        this.f28417c = i;
    }

    public void setPosition(int i) {
        Assertions.checkArgument(i >= 0 && i <= this.f28417c);
        this.f28416b = i;
    }

    public void skipBytes(int i) {
        setPosition(this.f28416b + i);
    }

    public String readString(int i, Charset charset) {
        String str = new String(this.f28415a, this.f28416b, i, charset);
        this.f28416b += i;
        return str;
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public ParsableByteArray(int i) {
        this.f28415a = new byte[i];
        this.f28417c = i;
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f28415a, this.f28416b, bArr, i, i2);
        this.f28416b += i2;
    }

    public void reset(byte[] bArr, int i) {
        this.f28415a = bArr;
        this.f28417c = i;
        this.f28416b = 0;
    }

    public void readBytes(ByteBuffer byteBuffer, int i) {
        byteBuffer.put(this.f28415a, this.f28416b, i);
        this.f28416b += i;
    }

    @Nullable
    public String readNullTerminatedString() {
        return readDelimiterTerminatedString((char) 0);
    }

    public ParsableByteArray(byte[] bArr) {
        this.f28415a = bArr;
        this.f28417c = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i) {
        this.f28415a = bArr;
        this.f28417c = i;
    }
}
