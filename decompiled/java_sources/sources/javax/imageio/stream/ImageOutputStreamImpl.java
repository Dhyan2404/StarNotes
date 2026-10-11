package javax.imageio.stream;

import java.io.IOException;
import java.io.UTFDataFormatException;
import java.nio.ByteOrder;

/* loaded from: classes5.dex */
public abstract class ImageOutputStreamImpl extends ImageInputStreamImpl implements ImageOutputStream {
    public final void flushBits() throws IOException {
        int i;
        checkClosed();
        int i2 = this.bitOffset;
        if (i2 != 0) {
            int read = read();
            if (read < 0) {
                i = 0;
                this.bitOffset = 0;
            } else {
                seek(getStreamPosition() - 1);
                i = ((-1) << (8 - i2)) & read;
            }
            write(i);
        }
    }

    public abstract void write(int i) throws IOException;

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeBit(int i) throws IOException {
        writeBits(1 & i, 1);
    }

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeBits(long j, int i) throws IOException {
        checkClosed();
        if (i < 0 || i > 64) {
            throw new IllegalArgumentException("Bad value for numBits!");
        }
        if (i == 0) {
            return;
        }
        int i2 = 0;
        if (getStreamPosition() > 0 || this.bitOffset > 0) {
            int i3 = this.bitOffset;
            int read = read();
            if (read != -1) {
                seek(getStreamPosition() - 1);
            } else {
                read = 0;
            }
            int i4 = i + i3;
            if (i4 < 8) {
                write((int) ((read & (~(r15 << r0))) | ((((-1) >>> (32 - i)) & j) << (8 - i4))));
                seek(getStreamPosition() - 1);
                this.bitOffset = i4;
                i = 0;
            } else {
                int i5 = 8 - i3;
                i -= i5;
                write((int) ((((-1) >>> (32 - i5)) & (j >> i)) | (read & (~r7))));
            }
        }
        if (i > 7) {
            int i6 = i % 8;
            for (int i7 = i / 8; i7 > 0; i7--) {
                int i8 = ((i7 - 1) * 8) + i6;
                write((int) (i8 == 0 ? j & 255 : (j >> i8) & 255));
            }
            i = i6;
        }
        if (i != 0) {
            int read2 = read();
            if (read2 != -1) {
                seek(getStreamPosition() - 1);
                i2 = read2;
            }
            write((int) (((j & ((-1) >>> (32 - i))) << (8 - i)) | (i2 & (~(r4 << r0)))));
            seek(getStreamPosition() - 1);
            this.bitOffset = i;
        }
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeBoolean(boolean z) throws IOException {
        write(z ? 1 : 0);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeByte(int i) throws IOException {
        write(i);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeBytes(String str) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            write((byte) str.charAt(i));
        }
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeChar(int i) throws IOException {
        writeShort(i);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeChars(String str) throws IOException {
        int length = str.length();
        int i = length * 2;
        byte[] bArr = new byte[i];
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                char charAt = str.charAt(i3);
                int i4 = i2 + 1;
                bArr[i2] = (byte) (charAt >>> '\b');
                i2 = i4 + 1;
                bArr[i4] = (byte) (charAt >>> 0);
            }
        } else {
            int i5 = 0;
            for (int i6 = 0; i6 < length; i6++) {
                char charAt2 = str.charAt(i6);
                int i7 = i5 + 1;
                bArr[i5] = (byte) (charAt2 >>> 0);
                i5 = i7 + 1;
                bArr[i7] = (byte) (charAt2 >>> '\b');
            }
        }
        write(bArr, 0, i);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeDouble(double d) throws IOException {
        writeLong(Double.doubleToLongBits(d));
    }

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeDoubles(double[] dArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > dArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > d.length!");
        }
        int i4 = i2 * 8;
        byte[] bArr = new byte[i4];
        char c = '8';
        char c2 = '0';
        char c3 = '(';
        char c4 = ' ';
        char c5 = 16;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i5 = 0;
            int i6 = 0;
            while (i5 < i2) {
                long doubleToLongBits = Double.doubleToLongBits(dArr[i + i5]);
                int i7 = i6 + 1;
                bArr[i6] = (byte) (doubleToLongBits >>> c);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (doubleToLongBits >>> c2);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (doubleToLongBits >>> c3);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (doubleToLongBits >>> c4);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (doubleToLongBits >>> 24);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (doubleToLongBits >>> 16);
                int i13 = i12 + 1;
                bArr[i12] = (byte) (doubleToLongBits >>> 8);
                i6 = i13 + 1;
                bArr[i13] = (byte) (doubleToLongBits >>> 0);
                i5++;
                c = '8';
                c2 = '0';
                c3 = '(';
                c4 = ' ';
            }
        } else {
            int i14 = 0;
            int i15 = 0;
            while (i15 < i2) {
                long doubleToLongBits2 = Double.doubleToLongBits(dArr[i + i15]);
                int i16 = i14 + 1;
                bArr[i14] = (byte) (doubleToLongBits2 >>> 0);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (doubleToLongBits2 >>> 8);
                int i18 = i17 + 1;
                bArr[i17] = (byte) (doubleToLongBits2 >>> c5);
                int i19 = i18 + 1;
                bArr[i18] = (byte) (doubleToLongBits2 >>> 24);
                int i20 = i19 + 1;
                bArr[i19] = (byte) (doubleToLongBits2 >>> 32);
                int i21 = i20 + 1;
                bArr[i20] = (byte) (doubleToLongBits2 >>> 40);
                int i22 = i21 + 1;
                bArr[i21] = (byte) (doubleToLongBits2 >>> 48);
                i14 = i22 + 1;
                bArr[i22] = (byte) (doubleToLongBits2 >>> 56);
                i15++;
                c5 = 16;
            }
        }
        write(bArr, 0, i4);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeFloat(float f) throws IOException {
        writeInt(Float.floatToIntBits(f));
    }

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeFloats(float[] fArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > fArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > f.length!");
        }
        int i4 = i2 * 4;
        byte[] bArr = new byte[i4];
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int floatToIntBits = Float.floatToIntBits(fArr[i + i6]);
                int i7 = i5 + 1;
                bArr[i5] = (byte) (floatToIntBits >>> 24);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (floatToIntBits >>> 16);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (floatToIntBits >>> 8);
                i5 = i9 + 1;
                bArr[i9] = (byte) (floatToIntBits >>> 0);
            }
        } else {
            int i10 = 0;
            for (int i11 = 0; i11 < i2; i11++) {
                int floatToIntBits2 = Float.floatToIntBits(fArr[i + i11]);
                int i12 = i10 + 1;
                bArr[i10] = (byte) (floatToIntBits2 >>> 0);
                int i13 = i12 + 1;
                bArr[i12] = (byte) (floatToIntBits2 >>> 8);
                int i14 = i13 + 1;
                bArr[i13] = (byte) (floatToIntBits2 >>> 16);
                i10 = i14 + 1;
                bArr[i14] = (byte) (floatToIntBits2 >>> 24);
            }
        }
        write(bArr, 0, i4);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeInt(int i) throws IOException {
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.byteBuf;
            bArr[0] = (byte) (i >>> 24);
            bArr[1] = (byte) (i >>> 16);
            bArr[2] = (byte) (i >>> 8);
            bArr[3] = (byte) (i >>> 0);
        } else {
            byte[] bArr2 = this.byteBuf;
            bArr2[0] = (byte) (i >>> 0);
            bArr2[1] = (byte) (i >>> 8);
            bArr2[2] = (byte) (i >>> 16);
            bArr2[3] = (byte) (i >>> 24);
        }
        write(this.byteBuf, 0, 4);
    }

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeInts(int[] iArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > iArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > i.length!");
        }
        int i4 = i2 * 4;
        byte[] bArr = new byte[i4];
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = iArr[i + i6];
                int i8 = i5 + 1;
                bArr[i5] = (byte) (i7 >>> 24);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (i7 >>> 16);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i7 >>> 8);
                i5 = i10 + 1;
                bArr[i10] = (byte) (i7 >>> 0);
            }
        } else {
            int i11 = 0;
            for (int i12 = 0; i12 < i2; i12++) {
                int i13 = iArr[i + i12];
                int i14 = i11 + 1;
                bArr[i11] = (byte) (i13 >>> 0);
                int i15 = i14 + 1;
                bArr[i14] = (byte) (i13 >>> 8);
                int i16 = i15 + 1;
                bArr[i15] = (byte) (i13 >>> 16);
                i11 = i16 + 1;
                bArr[i16] = (byte) (i13 >>> 24);
            }
        }
        write(bArr, 0, i4);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeLong(long j) throws IOException {
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.byteBuf;
            bArr[0] = (byte) (j >>> 56);
            bArr[1] = (byte) (j >>> 48);
            bArr[2] = (byte) (j >>> 40);
            bArr[3] = (byte) (j >>> 32);
            bArr[4] = (byte) (j >>> 24);
            bArr[5] = (byte) (j >>> 16);
            bArr[6] = (byte) (j >>> 8);
            bArr[7] = (byte) (j >>> 0);
        } else {
            byte[] bArr2 = this.byteBuf;
            bArr2[0] = (byte) (j >>> 0);
            bArr2[1] = (byte) (j >>> 8);
            bArr2[2] = (byte) (j >>> 16);
            bArr2[3] = (byte) (j >>> 24);
            bArr2[4] = (byte) (j >>> 32);
            bArr2[5] = (byte) (j >>> 40);
            bArr2[6] = (byte) (j >>> 48);
            bArr2[7] = (byte) (j >>> 56);
        }
        write(this.byteBuf, 0, 4);
        write(this.byteBuf, 4, 4);
    }

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeLongs(long[] jArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > jArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > l.length!");
        }
        int i4 = i2 * 8;
        byte[] bArr = new byte[i4];
        char c = '8';
        char c2 = '0';
        char c3 = '(';
        char c4 = ' ';
        char c5 = 16;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i5 = 0;
            int i6 = 0;
            while (i5 < i2) {
                long j = jArr[i + i5];
                int i7 = i6 + 1;
                bArr[i6] = (byte) (j >>> c);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (j >>> c2);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (j >>> c3);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (j >>> c4);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (j >>> 24);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (j >>> 16);
                int i13 = i12 + 1;
                bArr[i12] = (byte) (j >>> 8);
                i6 = i13 + 1;
                bArr[i13] = (byte) (j >>> 0);
                i5++;
                c = '8';
                c2 = '0';
                c3 = '(';
                c4 = ' ';
            }
        } else {
            int i14 = 0;
            int i15 = 0;
            while (i15 < i2) {
                long j2 = jArr[i + i15];
                int i16 = i14 + 1;
                bArr[i14] = (byte) (j2 >>> 0);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (j2 >>> 8);
                int i18 = i17 + 1;
                bArr[i17] = (byte) (j2 >>> c5);
                int i19 = i18 + 1;
                bArr[i18] = (byte) (j2 >>> 24);
                int i20 = i19 + 1;
                bArr[i19] = (byte) (j2 >>> 32);
                int i21 = i20 + 1;
                bArr[i20] = (byte) (j2 >>> 40);
                int i22 = i21 + 1;
                bArr[i21] = (byte) (j2 >>> 48);
                i14 = i22 + 1;
                bArr[i22] = (byte) (j2 >>> 56);
                i15++;
                c5 = 16;
            }
        }
        write(bArr, 0, i4);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeShort(int i) throws IOException {
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.byteBuf;
            bArr[0] = (byte) (i >>> 8);
            bArr[1] = (byte) (i >>> 0);
        } else {
            byte[] bArr2 = this.byteBuf;
            bArr2[0] = (byte) (i >>> 0);
            bArr2[1] = (byte) (i >>> 8);
        }
        write(this.byteBuf, 0, 2);
    }

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeShorts(short[] sArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > sArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > s.length!");
        }
        int i4 = i2 * 2;
        byte[] bArr = new byte[i4];
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                short s = sArr[i + i6];
                int i7 = i5 + 1;
                bArr[i5] = (byte) (s >>> 8);
                i5 = i7 + 1;
                bArr[i7] = (byte) (s >>> 0);
            }
        } else {
            int i8 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                short s2 = sArr[i + i9];
                int i10 = i8 + 1;
                bArr[i8] = (byte) (s2 >>> 0);
                i8 = i10 + 1;
                bArr[i10] = (byte) (s2 >>> 8);
            }
        }
        write(bArr, 0, i4);
    }

    @Override // javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void writeUTF(String str) throws IOException {
        int i;
        int length = str.length();
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char c = cArr[i3];
            i2 = (c < 1 || c > 127) ? c > 2047 ? i2 + 3 : i2 + 2 : i2 + 1;
        }
        if (i2 > 65535) {
            throw new UTFDataFormatException("utflen > 65536!");
        }
        int i4 = i2 + 2;
        byte[] bArr = new byte[i4];
        bArr[0] = (byte) ((i2 >>> 8) & 255);
        bArr[1] = (byte) ((i2 >>> 0) & 255);
        int i5 = 2;
        for (int i6 = 0; i6 < length; i6++) {
            char c2 = cArr[i6];
            if (c2 >= 1 && c2 <= 127) {
                i = i5 + 1;
                bArr[i5] = (byte) c2;
            } else if (c2 > 2047) {
                int i7 = i5 + 1;
                bArr[i5] = (byte) (((c2 >> '\f') & 15) | 224);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((c2 >> 6) & 63) | 128);
                i = i8 + 1;
                bArr[i8] = (byte) (((c2 >> 0) & 63) | 128);
            } else {
                int i9 = i5 + 1;
                bArr[i5] = (byte) (((c2 >> 6) & 31) | 192);
                i5 = i9 + 1;
                bArr[i9] = (byte) (((c2 >> 0) & 63) | 128);
            }
            i5 = i;
        }
        write(bArr, 0, i4);
    }

    @Override // javax.imageio.stream.ImageOutputStream
    public void writeChars(char[] cArr, int i, int i2) throws IOException {
        int i3;
        if (i >= 0 && i2 >= 0 && (i3 = i + i2) <= cArr.length && i3 >= 0) {
            int i4 = i2 * 2;
            byte[] bArr = new byte[i4];
            if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
                int i5 = 0;
                for (int i6 = 0; i6 < i2; i6++) {
                    char c = cArr[i + i6];
                    int i7 = i5 + 1;
                    bArr[i5] = (byte) (c >>> '\b');
                    i5 = i7 + 1;
                    bArr[i7] = (byte) (c >>> 0);
                }
            } else {
                int i8 = 0;
                for (int i9 = 0; i9 < i2; i9++) {
                    char c2 = cArr[i + i9];
                    int i10 = i8 + 1;
                    bArr[i8] = (byte) (c2 >>> 0);
                    i8 = i10 + 1;
                    bArr[i10] = (byte) (c2 >>> '\b');
                }
            }
            write(bArr, 0, i4);
            return;
        }
        throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > c.length!");
    }
}
