package org.apache.poi.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;

/* loaded from: classes13.dex */
public class RLEDecompressingInputStream extends InputStream {
    private static final int[] POWER2 = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768};

    /* renamed from: in */
    private final InputStream f111714in;
    private int len;
    private final byte[] buf = new byte[4096];
    private int pos = 0;

    public RLEDecompressingInputStream(InputStream inputStream) throws IOException {
        this.f111714in = inputStream;
        int read = inputStream.read();
        if (read != 1) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "Header byte 0x01 expected, received 0x%02X", Integer.valueOf(read & 255)));
        }
        this.len = readChunk();
    }

    public static byte[] decompress(byte[] bArr) throws IOException {
        return decompress(bArr, 0, bArr.length);
    }

    public static int getCopyLenBits(int i) {
        for (int i2 = 11; i2 >= 4; i2--) {
            if ((POWER2[i2] & i) != 0) {
                return 15 - i2;
            }
        }
        return 12;
    }

    private int readChunk() throws IOException {
        this.pos = 0;
        int readShort = readShort(this.f111714in);
        if (readShort == -1 || readShort == 0) {
            return -1;
        }
        int i = (readShort & 4095) + 1;
        if ((readShort & 28672) != 12288) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "Chunksize header A should be 0x3000, received 0x%04X", Integer.valueOf(readShort & 57344)));
        }
        if ((readShort & 32768) == 0) {
            if (IOUtils.readFully(this.f111714in, this.buf, 0, i) >= i) {
                return i;
            }
            throw new IllegalStateException(String.format(Locale.ROOT, "Not enough bytes read, expected %d", Integer.valueOf(i)));
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int read = this.f111714in.read();
            i2++;
            if (read == -1) {
                break;
            }
            for (int i4 = 0; i4 < 8 && i2 < i; i4++) {
                int[] iArr = POWER2;
                if ((iArr[i4] & read) == 0) {
                    int read2 = this.f111714in.read();
                    if (read2 == -1) {
                        return -1;
                    }
                    this.buf[i3] = (byte) read2;
                    i2++;
                    i3++;
                } else {
                    int readShort2 = readShort(this.f111714in);
                    if (readShort2 == -1) {
                        return -1;
                    }
                    i2 += 2;
                    int copyLenBits = getCopyLenBits(i3 - 1);
                    int i5 = ((iArr[copyLenBits] - 1) & readShort2) + 3;
                    int i6 = i3 - ((readShort2 >> copyLenBits) + 1);
                    int i7 = i5 + i6;
                    while (i6 < i7) {
                        byte[] bArr = this.buf;
                        bArr[i3] = bArr[i6];
                        i6++;
                        i3++;
                    }
                }
            }
        }
        return i3;
    }

    @Override // java.io.InputStream
    public int available() {
        int i = this.len;
        if (i > 0) {
            return i - this.pos;
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f111714in.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.len;
        if (i == -1) {
            return -1;
        }
        if (this.pos >= i) {
            int readChunk = readChunk();
            this.len = readChunk;
            if (readChunk == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buf;
        int i2 = this.pos;
        this.pos = i2 + 1;
        return bArr[i2] & 255;
    }

    public int readInt() throws IOException {
        return readInt(this);
    }

    public int readShort() throws IOException {
        return readShort(this);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = j;
        while (j2 > 0) {
            if (this.pos >= this.len) {
                int readChunk = readChunk();
                this.len = readChunk;
                if (readChunk == -1) {
                    return -1L;
                }
            }
            int min = (int) Math.min(j, this.len - this.pos);
            this.pos += min;
            j2 -= min;
        }
        return j;
    }

    public static byte[] decompress(byte[] bArr, int i, int i2) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(bArr, i, i2);
            try {
                RLEDecompressingInputStream rLEDecompressingInputStream = new RLEDecompressingInputStream(unsynchronizedByteArrayInputStream);
                try {
                    IOUtils.copy(rLEDecompressingInputStream, unsynchronizedByteArrayOutputStream);
                    byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                    rLEDecompressingInputStream.close();
                    unsynchronizedByteArrayInputStream.close();
                    unsynchronizedByteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private int readInt(InputStream inputStream) throws IOException {
        int read;
        int read2;
        int read3;
        int read4 = inputStream.read();
        if (read4 == -1 || (read = inputStream.read()) == -1 || (read2 = inputStream.read()) == -1 || (read3 = inputStream.read()) == -1) {
            return -1;
        }
        return (read4 & 255) | ((read & 255) << 8) | ((read2 & 255) << 16) | ((read3 & 255) << 24);
    }

    private int readShort(InputStream inputStream) throws IOException {
        int read;
        int read2 = inputStream.read();
        if (read2 == -1 || (read = inputStream.read()) == -1) {
            return -1;
        }
        return (read2 & 255) | ((read & 255) << 8);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.len == -1) {
            return -1;
        }
        int i3 = i;
        int i4 = i2;
        while (i4 > 0) {
            if (this.pos >= this.len) {
                int readChunk = readChunk();
                this.len = readChunk;
                if (readChunk == -1) {
                    if (i3 > i) {
                        return i3 - i;
                    }
                    return -1;
                }
            }
            int min = Math.min(i4, this.len - this.pos);
            System.arraycopy(this.buf, this.pos, bArr, i3, min);
            this.pos += min;
            i4 -= min;
            i3 += min;
        }
        return i2;
    }
}
