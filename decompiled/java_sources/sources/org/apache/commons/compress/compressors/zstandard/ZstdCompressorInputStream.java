package org.apache.commons.compress.compressors.zstandard;

import com.github.luben.zstd.BufferPool;
import com.github.luben.zstd.ZstdInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class ZstdCompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: f */
    public final CountingInputStream f106395f;

    /* renamed from: g */
    public final ZstdInputStream f106396g;

    public ZstdCompressorInputStream(InputStream inputStream) throws IOException {
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.f106395f = countingInputStream;
        this.f106396g = new ZstdInputStream(countingInputStream);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f106396g.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106396g.close();
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106395f.getBytesRead();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.f106396g.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f106396g.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f106396g.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return IOUtils.skip(this.f106396g, j);
    }

    public String toString() {
        return this.f106396g.toString();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f106396g.read();
        count(read == -1 ? 0 : 1);
        return read;
    }

    public ZstdCompressorInputStream(InputStream inputStream, BufferPool bufferPool) throws IOException {
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.f106395f = countingInputStream;
        this.f106396g = new ZstdInputStream(countingInputStream, bufferPool);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int read = this.f106396g.read(bArr, i, i2);
        count(read);
        return read;
    }
}
