package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import java.util.zip.ZipException;

/* loaded from: classes12.dex */
public class DeflateInputStream extends InputStream {

    /* renamed from: e */
    public final InputStream f110151e;

    /* renamed from: org.apache.http.client.entity.DeflateInputStream$a */
    /* loaded from: classes12.dex */
    public static class C19334a extends InflaterInputStream {

        /* renamed from: e */
        public boolean f110152e;

        public C19334a(InputStream inputStream, Inflater inflater) {
            super(inputStream, inflater);
            this.f110152e = false;
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f110152e) {
                return;
            }
            this.f110152e = true;
            ((InflaterInputStream) this).inf.end();
            super.close();
        }
    }

    public DeflateInputStream(InputStream inputStream) throws IOException {
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 2);
        int read = pushbackInputStream.read();
        int read2 = pushbackInputStream.read();
        if (read == -1 || read2 == -1) {
            throw new ZipException("Unexpected end of stream");
        }
        pushbackInputStream.unread(read2);
        pushbackInputStream.unread(read);
        int i = read & 255;
        this.f110151e = new C19334a(pushbackInputStream, new Inflater(((i & 15) == 8 && ((i >> 4) & 15) <= 7 && ((i << 8) | (read2 & 255)) % 31 == 0) ? false : true));
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f110151e.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f110151e.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f110151e.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f110151e.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f110151e.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f110151e.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.f110151e.skip(j);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.f110151e.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f110151e.read(bArr, i, i2);
    }
}
