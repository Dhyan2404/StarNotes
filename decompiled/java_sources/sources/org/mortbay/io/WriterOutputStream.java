package org.mortbay.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* loaded from: classes13.dex */
public class WriterOutputStream extends OutputStream {
    protected String _encoding;
    protected Writer _writer;

    /* renamed from: e */
    public byte[] f114476e;

    public WriterOutputStream(Writer writer, String str) {
        this.f114476e = new byte[1];
        this._writer = writer;
        this._encoding = str;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this._writer.close();
        this._writer = null;
        this._encoding = null;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this._writer.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        String str = this._encoding;
        if (str == null) {
            this._writer.write(new String(bArr));
        } else {
            this._writer.write(new String(bArr, str));
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        String str = this._encoding;
        if (str == null) {
            this._writer.write(new String(bArr, i, i2));
        } else {
            this._writer.write(new String(bArr, i, i2, str));
        }
    }

    public WriterOutputStream(Writer writer) {
        this.f114476e = new byte[1];
        this._writer = writer;
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) throws IOException {
        byte[] bArr = this.f114476e;
        bArr[0] = (byte) i;
        write(bArr);
    }
}
