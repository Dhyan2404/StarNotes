package org.mozilla.universalchardet;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes13.dex */
public class EncodingDetectorOutputStream extends OutputStream {

    /* renamed from: e */
    public OutputStream f115492e;

    /* renamed from: f */
    public final UniversalDetector f115493f = new UniversalDetector(null);

    public EncodingDetectorOutputStream(OutputStream outputStream) {
        this.f115492e = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f115492e.close();
        this.f115493f.dataEnd();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f115492e.flush();
    }

    public String getDetectedCharset() {
        return this.f115493f.getDetectedCharset();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f115492e.write(bArr, i, i2);
        if (this.f115493f.isDone()) {
            return;
        }
        this.f115493f.handleData(bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }
}
