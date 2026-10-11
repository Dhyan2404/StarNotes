package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public final class MergedStream extends InputStream {

    /* renamed from: e */
    public final IOContext f21247e;

    /* renamed from: f */
    public final InputStream f21248f;

    /* renamed from: g */
    public byte[] f21249g;

    /* renamed from: h */
    public int f21250h;

    /* renamed from: i */
    public final int f21251i;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2) {
        this.f21247e = iOContext;
        this.f21248f = inputStream;
        this.f21249g = bArr;
        this.f21250h = i;
        this.f21251i = i2;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f21249g != null ? this.f21251i - this.f21250h : this.f21248f.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m17137f();
        this.f21248f.close();
    }

    /* renamed from: f */
    public final void m17137f() {
        byte[] bArr = this.f21249g;
        if (bArr != null) {
            this.f21249g = null;
            IOContext iOContext = this.f21247e;
            if (iOContext != null) {
                iOContext.releaseReadIOBuffer(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        if (this.f21249g == null) {
            this.f21248f.mark(i);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f21249g == null && this.f21248f.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this.f21249g;
        if (bArr != null) {
            int i = this.f21250h;
            int i2 = i + 1;
            this.f21250h = i2;
            int i3 = bArr[i] & 255;
            if (i2 >= this.f21251i) {
                m17137f();
            }
            return i3;
        }
        return this.f21248f.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (this.f21249g == null) {
            this.f21248f.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2;
        if (this.f21249g != null) {
            int i = this.f21251i;
            int i2 = this.f21250h;
            long j3 = i - i2;
            if (j3 > j) {
                this.f21250h = i2 + ((int) j);
                return j;
            }
            m17137f();
            j2 = j3 + 0;
            j -= j3;
        } else {
            j2 = 0;
        }
        return j > 0 ? j2 + this.f21248f.skip(j) : j2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = this.f21249g;
        if (bArr2 != null) {
            int i3 = this.f21251i;
            int i4 = this.f21250h;
            int i5 = i3 - i4;
            if (i2 > i5) {
                i2 = i5;
            }
            System.arraycopy(bArr2, i4, bArr, i, i2);
            int i6 = this.f21250h + i2;
            this.f21250h = i6;
            if (i6 >= this.f21251i) {
                m17137f();
            }
            return i2;
        }
        return this.f21248f.read(bArr, i, i2);
    }
}
