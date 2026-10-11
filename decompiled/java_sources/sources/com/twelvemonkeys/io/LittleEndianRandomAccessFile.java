package com.twelvemonkeys.io;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UTFDataFormatException;
import java.nio.channels.FileChannel;

/* loaded from: classes10.dex */
public class LittleEndianRandomAccessFile implements DataInput, DataOutput {

    /* renamed from: e */
    public RandomAccessFile f94240e;

    public LittleEndianRandomAccessFile(String str, String str2) throws FileNotFoundException {
        this(FileUtil.resolve(str), str2);
    }

    public void close() throws IOException {
        this.f94240e.close();
    }

    public FileChannel getChannel() {
        return this.f94240e.getChannel();
    }

    public FileDescriptor getFD() throws IOException {
        return this.f94240e.getFD();
    }

    public long getFilePointer() throws IOException {
        return this.f94240e.getFilePointer();
    }

    public long length() throws IOException {
        return this.f94240e.length();
    }

    public int read() throws IOException {
        return this.f94240e.read();
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        int read = this.f94240e.read();
        if (read >= 0) {
            return read != 0;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        int read = this.f94240e.read();
        if (read >= 0) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        int read = this.f94240e.read();
        int read2 = this.f94240e.read();
        if (read2 >= 0) {
            return (char) (((read2 << 24) >>> 16) + ((read << 24) >>> 24));
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
    public void readFully(byte[] bArr) throws IOException {
        this.f94240e.readFully(bArr);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        int read = this.f94240e.read();
        int read2 = this.f94240e.read();
        int read3 = this.f94240e.read();
        int read4 = this.f94240e.read();
        if (read4 >= 0) {
            return (read4 << 24) + ((read3 << 24) >>> 8) + ((read2 << 24) >>> 16) + ((read << 24) >>> 24);
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        return this.f94240e.readLine();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        long read = this.f94240e.read();
        long read2 = this.f94240e.read();
        long read3 = this.f94240e.read();
        long read4 = this.f94240e.read();
        long read5 = this.f94240e.read();
        long read6 = this.f94240e.read();
        long read7 = this.f94240e.read();
        long read8 = this.f94240e.read();
        if (read8 >= 0) {
            return (read8 << 56) + ((read7 << 56) >>> 8) + ((read6 << 56) >>> 16) + ((read5 << 56) >>> 24) + ((read4 << 56) >>> 32) + ((read3 << 56) >>> 40) + ((read2 << 56) >>> 48) + ((read << 56) >>> 56);
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        int read = this.f94240e.read();
        int read2 = this.f94240e.read();
        if (read2 >= 0) {
            return (short) ((((read2 << 24) >>> 16) + (read << 24)) >>> 24);
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        int read = this.f94240e.read();
        int read2 = this.f94240e.read();
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
        int read = this.f94240e.read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        int read = this.f94240e.read();
        int read2 = this.f94240e.read();
        if (read2 >= 0) {
            return (read2 << 8) + read;
        }
        throw new EOFException();
    }

    public void seek(long j) throws IOException {
        this.f94240e.seek(j);
    }

    public void setLength(long j) throws IOException {
        this.f94240e.setLength(j);
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) throws IOException {
        return this.f94240e.skipBytes(i);
    }

    @Override // java.io.DataOutput
    public void write(byte[] bArr) throws IOException {
        this.f94240e.write(bArr);
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean z) throws IOException {
        if (z) {
            write(1);
        } else {
            write(0);
        }
    }

    @Override // java.io.DataOutput
    public void writeByte(int i) throws IOException {
        this.f94240e.write(i);
    }

    @Override // java.io.DataOutput
    public void writeBytes(String str) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            this.f94240e.write((byte) str.charAt(i));
        }
    }

    @Override // java.io.DataOutput
    public void writeChar(int i) throws IOException {
        this.f94240e.write(i & 255);
        this.f94240e.write((i >>> 8) & 255);
    }

    @Override // java.io.DataOutput
    public void writeChars(String str) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            this.f94240e.write(charAt & 255);
            this.f94240e.write((charAt >>> '\b') & 255);
        }
    }

    @Override // java.io.DataOutput
    public final void writeDouble(double d) throws IOException {
        writeLong(Double.doubleToLongBits(d));
    }

    @Override // java.io.DataOutput
    public final void writeFloat(float f) throws IOException {
        writeInt(Float.floatToIntBits(f));
    }

    @Override // java.io.DataOutput
    public void writeInt(int i) throws IOException {
        this.f94240e.write(i & 255);
        this.f94240e.write((i >>> 8) & 255);
        this.f94240e.write((i >>> 16) & 255);
        this.f94240e.write((i >>> 24) & 255);
    }

    @Override // java.io.DataOutput
    public void writeLong(long j) throws IOException {
        this.f94240e.write(((int) j) & 255);
        this.f94240e.write(((int) (j >>> 8)) & 255);
        this.f94240e.write(((int) (j >>> 16)) & 255);
        this.f94240e.write(((int) (j >>> 24)) & 255);
        this.f94240e.write(((int) (j >>> 32)) & 255);
        this.f94240e.write(((int) (j >>> 40)) & 255);
        this.f94240e.write(((int) (j >>> 48)) & 255);
        this.f94240e.write(((int) (j >>> 56)) & 255);
    }

    @Override // java.io.DataOutput
    public void writeShort(int i) throws IOException {
        this.f94240e.write(i & 255);
        this.f94240e.write((i >>> 8) & 255);
    }

    @Override // java.io.DataOutput
    public void writeUTF(String str) throws IOException {
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            i = (charAt < 1 || charAt > 127) ? charAt > 2047 ? i + 3 : i + 2 : i + 1;
        }
        if (i > 65535) {
            throw new UTFDataFormatException();
        }
        this.f94240e.write((i >>> 8) & 255);
        this.f94240e.write(i & 255);
        for (int i3 = 0; i3 < length; i3++) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 1 && charAt2 <= 127) {
                this.f94240e.write(charAt2);
            } else if (charAt2 > 2047) {
                this.f94240e.write(((charAt2 >> '\f') & 15) | 224);
                this.f94240e.write(((charAt2 >> 6) & 63) | 128);
                this.f94240e.write((charAt2 & '?') | 128);
            } else {
                this.f94240e.write(((charAt2 >> 6) & 31) | 192);
                this.f94240e.write((charAt2 & '?') | 128);
            }
        }
    }

    public LittleEndianRandomAccessFile(File file, String str) throws FileNotFoundException {
        this.f94240e = new RandomAccessFile(file, str);
    }

    public int read(byte[] bArr) throws IOException {
        return this.f94240e.read(bArr);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        this.f94240e.readFully(bArr, i, i2);
    }

    @Override // java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f94240e.write(bArr, i, i2);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f94240e.read(bArr, i, i2);
    }

    @Override // java.io.DataOutput
    public void write(int i) throws IOException {
        this.f94240e.write(i);
    }
}
