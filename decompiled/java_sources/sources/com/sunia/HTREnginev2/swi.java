package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.client.entity.InputStreamFactory;

/* loaded from: classes12.dex */
public class swi extends InputStream {

    /* renamed from: e */
    public final InputStream f84640e;

    /* renamed from: f */
    public final InputStreamFactory f84641f;

    /* renamed from: g */
    public InputStream f84642g;

    public swi(InputStream inputStream, InputStreamFactory inputStreamFactory) {
        this.f84640e = inputStream;
        this.f84641f = inputStreamFactory;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        m57271f();
        return this.f84642g.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            InputStream inputStream = this.f84642g;
            if (inputStream != null) {
                inputStream.close();
            }
        } finally {
            this.f84640e.close();
        }
    }

    /* renamed from: f */
    public final void m57271f() throws IOException {
        if (this.f84642g == null) {
            this.f84642g = this.f84641f.create(this.f84640e);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        m57271f();
        return this.f84642g.read();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        m57271f();
        return this.f84642g.skip(j);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        m57271f();
        return this.f84642g.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        m57271f();
        return this.f84642g.read(bArr, i, i2);
    }
}
