package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Checksum;

/* loaded from: classes12.dex */
public class ChecksumVerifyingInputStream extends InputStream {

    /* renamed from: e */
    public final InputStream f107315e;

    /* renamed from: f */
    public long f107316f;

    /* renamed from: g */
    public final long f107317g;

    /* renamed from: h */
    public final Checksum f107318h;

    public ChecksumVerifyingInputStream(Checksum checksum, InputStream inputStream, long j, long j2) {
        this.f107318h = checksum;
        this.f107315e = inputStream;
        this.f107317g = j2;
        this.f107316f = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f107315e.close();
    }

    /* renamed from: f */
    public final void m67160f() throws IOException {
        if (this.f107316f <= 0 && this.f107317g != this.f107318h.getValue()) {
            throw new IOException("Checksum verification failed");
        }
    }

    public long getBytesRemaining() {
        return this.f107316f;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f107316f <= 0) {
            return -1;
        }
        int read = this.f107315e.read();
        if (read >= 0) {
            this.f107318h.update(read);
            this.f107316f--;
        }
        m67160f();
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return read() >= 0 ? 1L : 0L;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int read = this.f107315e.read(bArr, i, i2);
        if (read >= 0) {
            this.f107318h.update(bArr, i, read);
            this.f107316f -= read;
        }
        m67160f();
        return read;
    }
}
