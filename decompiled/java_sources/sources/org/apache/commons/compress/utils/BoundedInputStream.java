package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes12.dex */
public class BoundedInputStream extends InputStream {

    /* renamed from: e */
    public final InputStream f107308e;

    /* renamed from: f */
    public long f107309f;

    public BoundedInputStream(InputStream inputStream, long j) {
        this.f107308e = inputStream;
        this.f107309f = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public long getBytesRemaining() {
        return this.f107309f;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        long j = this.f107309f;
        if (j <= 0) {
            return -1;
        }
        this.f107309f = j - 1;
        return this.f107308e.read();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = this.f107308e.skip(Math.min(this.f107309f, j));
        this.f107309f -= skip;
        return skip;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f107309f;
        if (j == 0) {
            return -1;
        }
        if (i2 > j) {
            i2 = (int) j;
        }
        int read = this.f107308e.read(bArr, i, i2);
        if (read >= 0) {
            this.f107309f -= read;
        }
        return read;
    }
}
