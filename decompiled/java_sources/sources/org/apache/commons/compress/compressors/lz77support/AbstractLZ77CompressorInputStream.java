package org.apache.commons.compress.compressors.lz77support;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public abstract class AbstractLZ77CompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: f */
    public final int f106247f;

    /* renamed from: g */
    public final byte[] f106248g;

    /* renamed from: h */
    public int f106249h;

    /* renamed from: i */
    public int f106250i;

    /* renamed from: j */
    public final CountingInputStream f106251j;

    /* renamed from: k */
    public long f106252k;

    /* renamed from: l */
    public int f106253l;

    /* renamed from: m */
    public int f106254m;

    /* renamed from: n */
    public final byte[] f106255n = new byte[1];
    protected final ByteUtils.ByteSupplier supplier = new ByteUtils.ByteSupplier() { // from class: com.sunia.HTREnginev2.w3
        @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
        public final int getAsByte() {
            return AbstractLZ77CompressorInputStream.this.readOneByte();
        }
    };

    public AbstractLZ77CompressorInputStream(InputStream inputStream, int i) {
        this.f106251j = new CountingInputStream(inputStream);
        if (i <= 0) {
            throw new IllegalArgumentException("windowSize must be bigger than 0");
        }
        this.f106247f = i;
        this.f106248g = new byte[i * 3];
        this.f106250i = 0;
        this.f106249h = 0;
        this.f106252k = 0L;
    }

    /* renamed from: H */
    public final void m66772H(int i) throws IOException {
        int min = Math.min((int) Math.min(i, this.f106252k), this.f106248g.length - this.f106249h);
        int readFully = min > 0 ? IOUtils.readFully(this.f106251j, this.f106248g, this.f106249h, min) : 0;
        count(readFully);
        if (min != readFully) {
            throw new IOException("Premature end of stream reading literal");
        }
        this.f106249h += min;
        this.f106252k -= min;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f106249h - this.f106250i;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106251j.close();
    }

    /* renamed from: f */
    public final int m66773f(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, available());
        if (min > 0) {
            System.arraycopy(this.f106248g, this.f106250i, bArr, i, min);
            int i3 = this.f106250i + min;
            this.f106250i = i3;
            if (i3 > this.f106247f * 2) {
                m66774j();
            }
        }
        this.f106254m += min;
        return min;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106251j.getBytesRead();
    }

    public int getSize() {
        return this.f106254m;
    }

    public final boolean hasMoreDataInBlock() {
        return this.f106252k > 0;
    }

    /* renamed from: j */
    public final void m66774j() {
        byte[] bArr = this.f106248g;
        int i = this.f106247f;
        System.arraycopy(bArr, i, bArr, 0, i * 2);
        int i2 = this.f106249h;
        int i3 = this.f106247f;
        this.f106249h = i2 - i3;
        this.f106250i -= i3;
    }

    public void prefill(byte[] bArr) {
        if (this.f106249h != 0) {
            throw new IllegalStateException("The stream has already been read from, can't prefill anymore");
        }
        int min = Math.min(this.f106247f, bArr.length);
        System.arraycopy(bArr, bArr.length - min, this.f106248g, 0, min);
        this.f106249h += min;
        this.f106250i += min;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f106255n, 0, 1) == -1) {
            return -1;
        }
        return this.f106255n[0] & 255;
    }

    public final int readBackReference(byte[] bArr, int i, int i2) {
        int available = available();
        if (i2 > available) {
            m66775w(i2 - available);
        }
        return m66773f(bArr, i, i2);
    }

    public final int readLiteral(byte[] bArr, int i, int i2) throws IOException {
        int available = available();
        if (i2 > available) {
            m66772H(i2 - available);
        }
        return m66773f(bArr, i, i2);
    }

    public final int readOneByte() throws IOException {
        int read = this.f106251j.read();
        if (read == -1) {
            return -1;
        }
        count(1);
        return read & 255;
    }

    public final void startBackReference(int i, long j) {
        if (i <= 0 || i > this.f106249h) {
            throw new IllegalArgumentException("offset must be bigger than 0 but not bigger than the number of bytes available for back-references");
        }
        if (j < 0) {
            throw new IllegalArgumentException("length must not be negative");
        }
        this.f106253l = i;
        this.f106252k = j;
    }

    public final void startLiteral(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("length must not be negative");
        }
        this.f106252k = j;
    }

    /* renamed from: w */
    public final void m66775w(int i) {
        int min = Math.min((int) Math.min(i, this.f106252k), this.f106248g.length - this.f106249h);
        if (min != 0) {
            int i2 = this.f106253l;
            if (i2 == 1) {
                byte[] bArr = this.f106248g;
                int i3 = this.f106249h;
                Arrays.fill(bArr, i3, i3 + min, bArr[i3 - 1]);
                this.f106249h += min;
            } else if (min < i2) {
                byte[] bArr2 = this.f106248g;
                int i4 = this.f106249h;
                System.arraycopy(bArr2, i4 - i2, bArr2, i4, min);
                this.f106249h += min;
            } else {
                int i5 = min / i2;
                for (int i6 = 0; i6 < i5; i6++) {
                    byte[] bArr3 = this.f106248g;
                    int i7 = this.f106249h;
                    int i8 = this.f106253l;
                    System.arraycopy(bArr3, i7 - i8, bArr3, i7, i8);
                    this.f106249h += this.f106253l;
                }
                int i9 = this.f106253l;
                int i10 = min - (i5 * i9);
                if (i10 > 0) {
                    byte[] bArr4 = this.f106248g;
                    int i11 = this.f106249h;
                    System.arraycopy(bArr4, i11 - i9, bArr4, i11, i10);
                    this.f106249h += i10;
                }
            }
        }
        this.f106252k -= min;
    }
}
