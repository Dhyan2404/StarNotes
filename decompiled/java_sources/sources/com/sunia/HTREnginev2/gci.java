package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.io.OutputStream;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public class gci extends OutputStream {

    /* renamed from: e */
    public ImageOutputStream f70902e;

    public gci(ImageOutputStream imageOutputStream) {
        Validate.notNull(imageOutputStream, "stream == null");
        this.f70902e = imageOutputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f70902e = null;
    }

    /* renamed from: f */
    public final void m54252f() throws IOException {
        if (this.f70902e == null) {
            throw new IOException("stream already closed");
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m54252f();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        m54252f();
        this.f70902e.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        m54252f();
        this.f70902e.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        m54252f();
        this.f70902e.write(i);
    }
}
