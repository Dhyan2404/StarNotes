package org.apache.xerces.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes13.dex */
public final class UCSReader extends Reader {
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final short UCS2BE = 2;
    public static final short UCS2LE = 1;
    public static final short UCS4BE = 8;
    public static final short UCS4LE = 4;
    protected final byte[] fBuffer;
    protected final short fEncoding;
    protected final InputStream fInputStream;

    public UCSReader(InputStream inputStream, int i, short s) {
        this(inputStream, new byte[i], s);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.fInputStream.close();
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        this.fInputStream.mark(i);
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return this.fInputStream.markSupported();
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int read;
        int read2;
        int read3 = this.fInputStream.read() & 255;
        if (read3 == 255 || (read = this.fInputStream.read() & 255) == 255) {
            return -1;
        }
        short s = this.fEncoding;
        if (s < 4) {
            return s == 2 ? (read3 << 8) + read : (read << 8) + read3;
        }
        int read4 = this.fInputStream.read() & 255;
        if (read4 == 255 || (read2 = this.fInputStream.read() & 255) == 255) {
            return -1;
        }
        return this.fEncoding == 8 ? (read3 << 24) + (read << 16) + (read4 << 8) + read2 : (read2 << 24) + (read4 << 16) + (read << 8) + read3;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return false;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.fInputStream.reset();
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        int i = this.fEncoding >= 4 ? 2 : 1;
        long skip = this.fInputStream.skip(j << i);
        long j2 = (i | 1) & skip;
        long j3 = skip >> i;
        return j2 == 0 ? j3 : j3 + 1;
    }

    public UCSReader(InputStream inputStream, short s) {
        this(inputStream, 8192, s);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3 = i2 << (this.fEncoding >= 4 ? 2 : 1);
        byte[] bArr = this.fBuffer;
        if (i3 > bArr.length) {
            i3 = bArr.length;
        }
        int read = this.fInputStream.read(bArr, 0, i3);
        if (read == -1) {
            return -1;
        }
        if (this.fEncoding >= 4) {
            int i4 = (4 - (read & 3)) & 3;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    break;
                }
                int read2 = this.fInputStream.read();
                if (read2 == -1) {
                    while (i5 < i4) {
                        this.fBuffer[read + i5] = 0;
                        i5++;
                    }
                } else {
                    this.fBuffer[read + i5] = (byte) read2;
                    i5++;
                }
            }
            read += i4;
        } else if ((read & 1) != 0) {
            read++;
            int read3 = this.fInputStream.read();
            if (read3 == -1) {
                this.fBuffer[read] = 0;
            } else {
                this.fBuffer[read] = (byte) read3;
            }
        }
        int i6 = read >> (this.fEncoding >= 4 ? 2 : 1);
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            byte[] bArr2 = this.fBuffer;
            int i9 = i7 + 1;
            int i10 = bArr2[i7] & 255;
            int i11 = i9 + 1;
            int i12 = bArr2[i9] & 255;
            short s = this.fEncoding;
            if (s >= 4) {
                int i13 = i11 + 1;
                int i14 = bArr2[i11] & 255;
                int i15 = i13 + 1;
                int i16 = bArr2[i13] & 255;
                if (s == 8) {
                    cArr[i + i8] = (char) ((i10 << 24) + (i12 << 16) + (i14 << 8) + i16);
                } else {
                    cArr[i + i8] = (char) ((i16 << 24) + (i14 << 16) + (i12 << 8) + i10);
                }
                i7 = i15;
            } else {
                int i17 = i + i8;
                if (s == 2) {
                    cArr[i17] = (char) ((i10 << 8) + i12);
                } else {
                    cArr[i17] = (char) ((i12 << 8) + i10);
                }
                i7 = i11;
            }
        }
        return i6;
    }

    public UCSReader(InputStream inputStream, byte[] bArr, short s) {
        this.fInputStream = inputStream;
        this.fBuffer = bArr;
        this.fEncoding = s;
    }
}
