package org.apache.commons.compress.compressors.p112xz;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.XZOutputStream;

/* loaded from: classes12.dex */
public class XZCompressorOutputStream extends CompressorOutputStream {

    /* renamed from: e */
    public final XZOutputStream f106384e;

    public XZCompressorOutputStream(OutputStream outputStream) throws IOException {
        this.f106384e = new XZOutputStream(outputStream, new LZMA2Options());
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106384e.close();
    }

    public void finish() throws IOException {
        this.f106384e.finish();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f106384e.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f106384e.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f106384e.write(bArr, i, i2);
    }

    public XZCompressorOutputStream(OutputStream outputStream, int i) throws IOException {
        this.f106384e = new XZOutputStream(outputStream, new LZMA2Options(i));
    }
}
