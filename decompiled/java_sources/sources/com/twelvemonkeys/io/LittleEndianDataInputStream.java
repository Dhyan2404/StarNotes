package com.twelvemonkeys.io;

import com.twelvemonkeys.lang.Validate;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UTFDataFormatException;

/* loaded from: classes10.dex */
public class LittleEndianDataInputStream extends FilterInputStream implements DataInput {
    public LittleEndianDataInputStream(InputStream inputStream) {
        super((InputStream) Validate.notNull(inputStream, "stream"));
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            return read != 0;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        int read2 = ((FilterInputStream) this).in.read();
        if (read2 >= 0) {
            return (char) (((read2 << 24) >>> 16) | ((read << 24) >>> 24));
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        int read2 = ((FilterInputStream) this).in.read();
        int read3 = ((FilterInputStream) this).in.read();
        int read4 = ((FilterInputStream) this).in.read();
        if (read4 >= 0) {
            return (read4 << 24) | ((read3 << 24) >>> 8) | ((read2 << 24) >>> 16) | ((read << 24) >>> 24);
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        return new DataInputStream(((FilterInputStream) this).in).readLine();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        long read = ((FilterInputStream) this).in.read();
        long read2 = ((FilterInputStream) this).in.read();
        long read3 = ((FilterInputStream) this).in.read();
        long read4 = ((FilterInputStream) this).in.read();
        long read5 = ((FilterInputStream) this).in.read();
        long read6 = ((FilterInputStream) this).in.read();
        long read7 = ((FilterInputStream) this).in.read();
        long read8 = ((FilterInputStream) this).in.read();
        if (read8 >= 0) {
            return (read8 << 56) | ((read7 << 56) >>> 8) | ((read6 << 56) >>> 16) | ((read5 << 56) >>> 24) | ((read4 << 56) >>> 32) | ((read3 << 56) >>> 40) | ((read2 << 56) >>> 48) | ((read << 56) >>> 56);
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        int read2 = ((FilterInputStream) this).in.read();
        if (read2 >= 0) {
            return (short) (((read2 << 24) >>> 16) | ((read << 24) >>> 24));
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        int read2 = ((FilterInputStream) this).in.read();
        if (read2 < 0) {
            throw new EOFException();
        }
        int i = (read << 8) + read2;
        char[] cArr = new char[i];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int readUnsignedByte = readUnsignedByte();
            int i4 = readUnsignedByte >> 4;
            if (i4 < 8) {
                i2++;
                cArr[i3] = (char) readUnsignedByte;
                i3++;
            } else if (i4 == 12 || i4 == 13) {
                i2 += 2;
                if (i2 > i) {
                    throw new UTFDataFormatException();
                }
                int readUnsignedByte2 = readUnsignedByte();
                if ((readUnsignedByte2 & 192) != 128) {
                    throw new UTFDataFormatException();
                }
                cArr[i3] = (char) (((readUnsignedByte & 31) << 6) | (readUnsignedByte2 & 63));
                i3++;
            } else {
                if (i4 != 14) {
                    throw new UTFDataFormatException();
                }
                i2 += 3;
                if (i2 > i) {
                    throw new UTFDataFormatException();
                }
                int readUnsignedByte3 = readUnsignedByte();
                int readUnsignedByte4 = readUnsignedByte();
                if ((readUnsignedByte3 & 192) != 128 || (readUnsignedByte4 & 192) != 128) {
                    throw new UTFDataFormatException();
                }
                cArr[i3] = (char) (((readUnsignedByte & 15) << 12) | ((readUnsignedByte3 & 63) << 6) | (readUnsignedByte4 & 63));
                i3++;
            }
        }
        return new String(cArr, 0, i3);
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        int read2 = ((FilterInputStream) this).in.read();
        if (read2 >= 0) {
            return (read2 << 8) + read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i) throws IOException {
        int i2 = 0;
        while (i2 < i) {
            int skip = (int) ((FilterInputStream) this).in.skip(i - i2);
            if (skip <= 0) {
                break;
            }
            i2 += skip;
        }
        return i2;
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i, int i2) throws IOException {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = 0;
        while (i3 < i2) {
            int read = ((FilterInputStream) this).in.read(bArr, i + i3, i2 - i3);
            if (read < 0) {
                throw new EOFException();
            }
            i3 += read;
        }
    }
}
