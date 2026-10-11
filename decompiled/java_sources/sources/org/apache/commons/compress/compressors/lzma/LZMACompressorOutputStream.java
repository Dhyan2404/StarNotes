package org.apache.commons.compress.compressors.lzma;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.LZMAOutputStream;

/* loaded from: classes12.dex */
public class LZMACompressorOutputStream extends CompressorOutputStream {

    /* renamed from: e */
    public final LZMAOutputStream f106300e;

    public LZMACompressorOutputStream(OutputStream outputStream) throws IOException {
        this.f106300e = new LZMAOutputStream(outputStream, new LZMA2Options(), -1L);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106300e.close();
    }

    public void finish() throws IOException {
        this.f106300e.finish();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f106300e.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f106300e.write(bArr, i, i2);
    }
}
