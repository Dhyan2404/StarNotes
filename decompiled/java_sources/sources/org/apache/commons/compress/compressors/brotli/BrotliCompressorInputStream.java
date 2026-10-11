package org.apache.commons.compress.compressors.brotli;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;
import org.brotli.dec.BrotliInputStream;

/* loaded from: classes12.dex */
public class BrotliCompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: f */
    public final CountingInputStream f105983f;

    /* renamed from: g */
    public final BrotliInputStream f105984g;

    public BrotliCompressorInputStream(InputStream inputStream) throws IOException {
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.f105983f = countingInputStream;
        this.f105984g = new BrotliInputStream(countingInputStream);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f105984g.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f105984g.close();
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f105983f.getBytesRead();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.f105984g.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f105984g.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.f105984g.read(bArr);
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f105984g.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return IOUtils.skip(this.f105984g, j);
    }

    public String toString() {
        return this.f105984g.toString();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f105984g.read();
        count(read == -1 ? 0 : 1);
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f105984g.read(bArr, i, i2);
        count(read);
        return read;
    }
}
