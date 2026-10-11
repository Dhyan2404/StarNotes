package org.mozilla.universalchardet;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes13.dex */
public class EncodingDetectorInputStream extends InputStream {

    /* renamed from: e */
    public InputStream f115490e;

    /* renamed from: f */
    public final UniversalDetector f115491f = new UniversalDetector(null);

    public EncodingDetectorInputStream(InputStream inputStream) {
        this.f115490e = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f115490e.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f115490e.close();
    }

    public String getDetectedCharset() {
        return this.f115491f.getDetectedCharset();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f115490e.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f115490e.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) >= 0) {
            return bArr[0];
        }
        return -1;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f115490e.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (this.f115491f.isDone()) {
            return this.f115490e.skip(j);
        }
        int i = 0;
        long j2 = -1;
        for (long j3 = 0; j3 < j && i >= 0; j3++) {
            i = this.f115490e.read();
            j2++;
        }
        return j2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f115490e.read(bArr, i, i2);
        if (!this.f115491f.isDone() && read > 0) {
            this.f115491f.handleData(bArr, i, read);
        }
        if (read == -1) {
            this.f115491f.dataEnd();
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
