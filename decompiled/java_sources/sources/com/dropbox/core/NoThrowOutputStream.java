package com.dropbox.core;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public final class NoThrowOutputStream extends OutputStream {

    /* renamed from: e */
    public final OutputStream f16475e;

    /* renamed from: f */
    public long f16476f = 0;

    /* loaded from: classes4.dex */
    public static final class HiddenException extends RuntimeException {
        public static final long serialVersionUID = 0;
        public final NoThrowOutputStream owner;

        public HiddenException(NoThrowOutputStream noThrowOutputStream, IOException iOException) {
            super(iOException);
            this.owner = noThrowOutputStream;
        }

        @Override // java.lang.Throwable
        public IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    public NoThrowOutputStream(OutputStream outputStream) {
        this.f16475e = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("don't call close()");
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            this.f16475e.flush();
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    public long getBytesWritten() {
        return this.f16476f;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        try {
            this.f16476f += i2;
            this.f16475e.write(bArr, i, i2);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        try {
            this.f16476f += bArr.length;
            this.f16475e.write(bArr);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        try {
            this.f16476f++;
            this.f16475e.write(i);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }
}
