package org.apache.commons.compress.compressors.lzma;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;
import org.tukaani.xz.LZMAInputStream;
import org.tukaani.xz.MemoryLimitException;

/* loaded from: classes12.dex */
public class LZMACompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: f */
    public final CountingInputStream f106298f;

    /* renamed from: g */
    public final InputStream f106299g;

    public LZMACompressorInputStream(InputStream inputStream) throws IOException {
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.f106298f = countingInputStream;
        this.f106299g = new LZMAInputStream(countingInputStream, -1);
    }

    public static boolean matches(byte[] bArr, int i) {
        return bArr != null && i >= 3 && bArr[0] == 93 && bArr[1] == 0 && bArr[2] == 0;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f106299g.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106299g.close();
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106298f.getBytesRead();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f106299g.read();
        count(read == -1 ? 0 : 1);
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return IOUtils.skip(this.f106299g, j);
    }

    public LZMACompressorInputStream(InputStream inputStream, int i) throws IOException {
        try {
            CountingInputStream countingInputStream = new CountingInputStream(inputStream);
            this.f106298f = countingInputStream;
            this.f106299g = new LZMAInputStream(countingInputStream, i);
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f106299g.read(bArr, i, i2);
        count(read);
        return read;
    }
}
