package com.dropbox.core.util;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public class ProgressOutputStream extends OutputStream {

    /* renamed from: e */
    public int f16635e;

    /* renamed from: f */
    public OutputStream f16636f;

    /* renamed from: g */
    public IOUtil.ProgressListener f16637g;

    public ProgressOutputStream(OutputStream outputStream) {
        this.f16636f = outputStream;
        this.f16635e = 0;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f16636f.close();
    }

    /* renamed from: f */
    public final void m10138f(int i) {
        int i2 = this.f16635e + i;
        this.f16635e = i2;
        IOUtil.ProgressListener progressListener = this.f16637g;
        if (progressListener != null) {
            progressListener.onProgress(i2);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f16636f.flush();
    }

    public void setListener(IOUtil.ProgressListener progressListener) {
        this.f16637g = progressListener;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f16636f.write(bArr, i, i2);
        m10138f(i2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f16636f.write(bArr);
        m10138f(bArr.length);
    }

    public ProgressOutputStream(OutputStream outputStream, IOUtil.ProgressListener progressListener) {
        this(outputStream);
        this.f16637g = progressListener;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f16636f.write(i);
        m10138f(1);
    }
}
