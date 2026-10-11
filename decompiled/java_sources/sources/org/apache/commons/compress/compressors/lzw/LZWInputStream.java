package org.apache.commons.compress.compressors.lzw;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.MemoryLimitException;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public abstract class LZWInputStream extends CompressorInputStream implements InputStreamStatistics {
    protected static final int DEFAULT_CODE_SIZE = 9;
    protected static final int UNUSED_PREFIX = -1;

    /* renamed from: i */
    public byte f106307i;

    /* renamed from: in */
    protected final BitInputStream f106308in;

    /* renamed from: k */
    public int f106310k;

    /* renamed from: l */
    public int[] f106311l;

    /* renamed from: m */
    public byte[] f106312m;

    /* renamed from: n */
    public byte[] f106313n;

    /* renamed from: o */
    public int f106314o;

    /* renamed from: f */
    public final byte[] f106304f = new byte[1];

    /* renamed from: g */
    public int f106305g = -1;

    /* renamed from: h */
    public int f106306h = 9;

    /* renamed from: j */
    public int f106309j = -1;

    public LZWInputStream(InputStream inputStream, ByteOrder byteOrder) {
        this.f106308in = new BitInputStream(inputStream, byteOrder);
    }

    public abstract int addEntry(int i, byte b) throws IOException;

    public int addEntry(int i, byte b, int i2) {
        int i3 = this.f106310k;
        if (i3 >= i2) {
            return -1;
        }
        this.f106311l[i3] = i;
        this.f106312m[i3] = b;
        this.f106310k = i3 + 1;
        return i3;
    }

    public int addRepeatOfPreviousCode() throws IOException {
        int i = this.f106309j;
        if (i != -1) {
            return addEntry(i, this.f106307i);
        }
        throw new IOException("The first code can't be a reference to its preceding code");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106308in.close();
    }

    public abstract int decompressNextSymbol() throws IOException;

    public int expandCodeToOutputStack(int i, boolean z) throws IOException {
        int i2 = i;
        while (i2 >= 0) {
            byte[] bArr = this.f106313n;
            int i3 = this.f106314o - 1;
            this.f106314o = i3;
            bArr[i3] = this.f106312m[i2];
            i2 = this.f106311l[i2];
        }
        int i4 = this.f106309j;
        if (i4 != -1 && !z) {
            addEntry(i4, this.f106313n[this.f106314o]);
        }
        this.f106309j = i;
        byte[] bArr2 = this.f106313n;
        int i5 = this.f106314o;
        this.f106307i = bArr2[i5];
        return i5;
    }

    /* renamed from: f */
    public final int m66792f(byte[] bArr, int i, int i2) {
        int length = this.f106313n.length - this.f106314o;
        if (length <= 0) {
            return 0;
        }
        int min = Math.min(length, i2);
        System.arraycopy(this.f106313n, this.f106314o, bArr, i, min);
        this.f106314o += min;
        return min;
    }

    public int getClearCode() {
        return this.f106305g;
    }

    public int getCodeSize() {
        return this.f106306h;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106308in.getBytesRead();
    }

    public int getPrefix(int i) {
        return this.f106311l[i];
    }

    public int getPrefixesLength() {
        return this.f106311l.length;
    }

    public int getTableSize() {
        return this.f106310k;
    }

    public void incrementCodeSize() {
        this.f106306h++;
    }

    public void initializeTables(int i, int i2) throws MemoryLimitException {
        if (i > 0) {
            if (i2 > -1) {
                long j = ((1 << i) * 6) >> 10;
                if (j > i2) {
                    throw new MemoryLimitException(j, i2);
                }
            }
            initializeTables(i);
            return;
        }
        throw new IllegalArgumentException("maxCodeSize is " + i + ", must be bigger than 0");
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = read(this.f106304f);
        return read < 0 ? read : this.f106304f[0] & 255;
    }

    public int readNextCode() throws IOException {
        int i = this.f106306h;
        if (i <= 31) {
            return (int) this.f106308in.readBits(i);
        }
        throw new IllegalArgumentException("Code size must not be bigger than 31");
    }

    public void resetCodeSize() {
        setCodeSize(9);
    }

    public void resetPreviousCode() {
        this.f106309j = -1;
    }

    public void setClearCode(int i) {
        this.f106305g = 1 << (i - 1);
    }

    public void setCodeSize(int i) {
        this.f106306h = i;
    }

    public void setPrefix(int i, int i2) {
        this.f106311l[i] = i2;
    }

    public void setTableSize(int i) {
        this.f106310k = i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int m66792f = m66792f(bArr, i, i2);
        while (true) {
            int i3 = i2 - m66792f;
            if (i3 > 0) {
                int decompressNextSymbol = decompressNextSymbol();
                if (decompressNextSymbol < 0) {
                    if (m66792f <= 0) {
                        return decompressNextSymbol;
                    }
                    count(m66792f);
                    return m66792f;
                }
                m66792f += m66792f(bArr, i + m66792f, i3);
            } else {
                count(m66792f);
                return m66792f;
            }
        }
    }

    public void initializeTables(int i) {
        if (i > 0) {
            int i2 = 1 << i;
            this.f106311l = new int[i2];
            this.f106312m = new byte[i2];
            this.f106313n = new byte[i2];
            this.f106314o = i2;
            for (int i3 = 0; i3 < 256; i3++) {
                this.f106311l[i3] = -1;
                this.f106312m[i3] = (byte) i3;
            }
            return;
        }
        throw new IllegalArgumentException("maxCodeSize is " + i + ", must be bigger than 0");
    }
}
