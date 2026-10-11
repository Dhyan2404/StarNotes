package com.twelvemonkeys.io;

import com.twelvemonkeys.lang.Validate;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes10.dex */
public final class SubStream extends FilterInputStream {

    /* renamed from: e */
    public long f94262e;

    /* renamed from: f */
    public int f94263f;

    public SubStream(InputStream inputStream, long j) {
        super((InputStream) Validate.notNull(inputStream, "stream"));
        this.f94262e = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return (int) Math.min(super.available(), this.f94262e);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        while (true) {
            long j = this.f94262e;
            if (j <= 0) {
                return;
            } else {
                skip(j);
            }
        }
    }

    /* renamed from: f */
    public final long m60692f(long j) {
        return this.f94262e < j ? (int) Math.max(r0, 0L) : j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        this.f94263f = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        long j = this.f94262e;
        this.f94262e = j - 1;
        if (j <= 0) {
            return -1;
        }
        return super.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f94262e += this.f94263f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(m60692f(j));
        this.f94262e -= skip;
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f94262e <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, (int) m60692f(i2));
        this.f94262e = read >= 0 ? this.f94262e - read : 0L;
        return read;
    }
}
