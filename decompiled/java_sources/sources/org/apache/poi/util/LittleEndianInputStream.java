package org.apache.poi.util;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes13.dex */
public class LittleEndianInputStream extends FilterInputStream implements LittleEndianInput {
    private static final int BUFFERED_SIZE = 8096;
    private static final int EOF = -1;
    private int markIndex;
    private int readIndex;

    public LittleEndianInputStream(InputStream inputStream) {
        super(inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, BUFFERED_SIZE));
        this.readIndex = 0;
        this.markIndex = -1;
    }

    private int _read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2;
        while (i3 > 0) {
            int read = read(bArr, (i2 - i3) + i, i3);
            if (-1 == read) {
                break;
            }
            i3 -= read;
        }
        return i2 - i3;
    }

    private static void checkEOF(int i, int i2) {
        if (i2 != 0) {
            if (i == -1 || i != i2) {
                throw new IllegalStateException("Unexpected end-of-file");
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, org.apache.poi.util.LittleEndianInput
    @SuppressForbidden("just delegating")
    public int available() {
        try {
            return super.available();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public int getReadIndex() {
        return this.readIndex;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.markIndex = this.readIndex;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        this.readIndex += Math.max(0, read);
        return read;
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public byte readByte() {
        return (byte) readUByte();
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public void readFully(byte[] bArr) {
        readFully(bArr, 0, bArr.length);
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public int readInt() {
        byte[] bArr = new byte[4];
        try {
            checkEOF(read(bArr), 4);
            return LittleEndian.getInt(bArr);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public long readLong() {
        byte[] bArr = new byte[8];
        try {
            checkEOF(read(bArr), 8);
            return LittleEndian.getLong(bArr);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public void readPlain(byte[] bArr, int i, int i2) {
        readFully(bArr, i, i2);
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public short readShort() {
        return (short) readUShort();
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public int readUByte() {
        byte[] bArr = new byte[1];
        try {
            checkEOF(read(bArr), 1);
            return LittleEndian.getUByte(bArr);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public long readUInt() {
        return readInt() & 4294967295L;
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public int readUShort() {
        byte[] bArr = new byte[2];
        try {
            checkEOF(read(bArr), 2);
            return LittleEndian.getUShort(bArr);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        int i = this.markIndex;
        if (i > -1) {
            this.readIndex = i;
            this.markIndex = -1;
        }
    }

    public void skipFully(int i) throws IOException {
        if (i == 0) {
            return;
        }
        long skipFully = IOUtils.skipFully(this, i);
        if (skipFully > 2147483647L) {
            throw new IOException("can't skip further than 2147483647");
        }
        checkEOF((int) skipFully, i);
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public void readFully(byte[] bArr, int i, int i2) {
        try {
            checkEOF(_read(bArr, i, i2), i2);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
