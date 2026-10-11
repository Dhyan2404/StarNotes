package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes5.dex */
public final class DataSourceInputStream extends InputStream {

    /* renamed from: e */
    public final DataSource f27966e;

    /* renamed from: f */
    public final DataSpec f27967f;

    /* renamed from: j */
    public long f27971j;

    /* renamed from: h */
    public boolean f27969h = false;

    /* renamed from: i */
    public boolean f27970i = false;

    /* renamed from: g */
    public final byte[] f27968g = new byte[1];

    public DataSourceInputStream(DataSource dataSource, DataSpec dataSpec) {
        this.f27966e = dataSource;
        this.f27967f = dataSpec;
    }

    public long bytesRead() {
        return this.f27971j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f27970i) {
            return;
        }
        this.f27966e.close();
        this.f27970i = true;
    }

    /* renamed from: f */
    public final void m21310f() throws IOException {
        if (this.f27969h) {
            return;
        }
        this.f27966e.open(this.f27967f);
        this.f27969h = true;
    }

    public void open() throws IOException {
        m21310f();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f27968g) == -1) {
            return -1;
        }
        return this.f27968g[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Assertions.checkState(!this.f27970i);
        m21310f();
        int read = this.f27966e.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.f27971j += read;
        return read;
    }
}
