package com.dropbox.core;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public final class NoThrowInputStream extends InputStream {

    /* renamed from: e */
    public final InputStream f16473e;

    /* renamed from: f */
    public long f16474f = 0;

    /* loaded from: classes4.dex */
    public static final class HiddenException extends RuntimeException {
        private static final long serialVersionUID = 0;

        public HiddenException(IOException iOException) {
            super(iOException);
        }

        @Override // java.lang.Throwable
        public IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    public NoThrowInputStream(InputStream inputStream) {
        this.f16473e = inputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("don't call close()");
    }

    public long getBytesRead() {
        return this.f16474f;
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            this.f16474f++;
            return this.f16473e.read();
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.f16473e.read(bArr, i, i2);
            this.f16474f += read;
            return read;
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            int read = this.f16473e.read(bArr);
            this.f16474f += read;
            return read;
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }
}
