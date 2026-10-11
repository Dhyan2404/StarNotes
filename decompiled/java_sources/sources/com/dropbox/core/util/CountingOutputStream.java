package com.dropbox.core.util;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public class CountingOutputStream extends OutputStream {

    /* renamed from: e */
    public final OutputStream f16624e;

    /* renamed from: f */
    public long f16625f = 0;

    public CountingOutputStream(OutputStream outputStream) {
        this.f16624e = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw new UnsupportedOperationException("You aren't allowed to call close() on this object.");
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f16624e.flush();
    }

    public long getBytesWritten() {
        return this.f16625f;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f16625f++;
        this.f16624e.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f16625f += bArr.length;
        this.f16624e.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f16625f += i2;
        this.f16624e.write(bArr, i, i2);
    }
}
