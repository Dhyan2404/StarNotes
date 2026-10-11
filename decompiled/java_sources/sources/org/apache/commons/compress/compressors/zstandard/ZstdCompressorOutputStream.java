package org.apache.commons.compress.compressors.zstandard;

import com.github.luben.zstd.ZstdOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* loaded from: classes12.dex */
public class ZstdCompressorOutputStream extends CompressorOutputStream {

    /* renamed from: e */
    public final ZstdOutputStream f106397e;

    public ZstdCompressorOutputStream(OutputStream outputStream, int i, boolean z, boolean z2) throws IOException {
        ZstdOutputStream zstdOutputStream = new ZstdOutputStream(outputStream, i);
        this.f106397e = zstdOutputStream;
        zstdOutputStream.setCloseFrameOnFlush(z);
        zstdOutputStream.setChecksum(z2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106397e.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f106397e.flush();
    }

    public String toString() {
        return this.f106397e.toString();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f106397e.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f106397e.write(bArr, i, i2);
    }

    public ZstdCompressorOutputStream(OutputStream outputStream, int i, boolean z) throws IOException {
        ZstdOutputStream zstdOutputStream = new ZstdOutputStream(outputStream, i);
        this.f106397e = zstdOutputStream;
        zstdOutputStream.setCloseFrameOnFlush(z);
    }

    public ZstdCompressorOutputStream(OutputStream outputStream, int i) throws IOException {
        this.f106397e = new ZstdOutputStream(outputStream, i);
    }

    public ZstdCompressorOutputStream(OutputStream outputStream) throws IOException {
        this.f106397e = new ZstdOutputStream(outputStream);
    }
}
