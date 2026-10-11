package org.apache.commons.compress.compressors.deflate;

import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* loaded from: classes12.dex */
public class DeflateCompressorOutputStream extends CompressorOutputStream {

    /* renamed from: e */
    public final DeflaterOutputStream f106102e;

    /* renamed from: f */
    public final Deflater f106103f;

    public DeflateCompressorOutputStream(OutputStream outputStream) {
        this(outputStream, new DeflateParameters());
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f106102e.close();
        } finally {
            this.f106103f.end();
        }
    }

    public void finish() throws IOException {
        this.f106102e.finish();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f106102e.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f106102e.write(i);
    }

    public DeflateCompressorOutputStream(OutputStream outputStream, DeflateParameters deflateParameters) {
        Deflater deflater = new Deflater(deflateParameters.getCompressionLevel(), !deflateParameters.withZlibHeader());
        this.f106103f = deflater;
        this.f106102e = new DeflaterOutputStream(outputStream, deflater);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f106102e.write(bArr, i, i2);
    }
}
