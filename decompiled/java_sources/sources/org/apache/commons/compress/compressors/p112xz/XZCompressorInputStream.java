package org.apache.commons.compress.compressors.p112xz;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;
import org.tukaani.xz.MemoryLimitException;
import org.tukaani.xz.SingleXZInputStream;
import org.tukaani.xz.XZ;
import org.tukaani.xz.XZInputStream;

/* loaded from: classes12.dex */
public class XZCompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: f */
    public final CountingInputStream f106382f;

    /* renamed from: g */
    public final InputStream f106383g;

    public XZCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < XZ.HEADER_MAGIC.length) {
            return false;
        }
        for (int i2 = 0; i2 < XZ.HEADER_MAGIC.length; i2++) {
            if (bArr[i2] != XZ.HEADER_MAGIC[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f106383g.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106383g.close();
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106382f.getBytesRead();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int read = this.f106383g.read();
            int i = -1;
            if (read != -1) {
                i = 1;
            }
            count(i);
            return read;
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            return IOUtils.skip(this.f106383g, j);
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }

    public XZCompressorInputStream(InputStream inputStream, boolean z) throws IOException {
        this(inputStream, z, -1);
    }

    public XZCompressorInputStream(InputStream inputStream, boolean z, int i) throws IOException {
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.f106382f = countingInputStream;
        if (z) {
            this.f106383g = new XZInputStream(countingInputStream, i);
        } else {
            this.f106383g = new SingleXZInputStream(countingInputStream, i);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        try {
            int read = this.f106383g.read(bArr, i, i2);
            count(read);
            return read;
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }
}
