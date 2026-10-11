package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class IdentityOutputStream extends OutputStream {

    /* renamed from: e */
    public final SessionOutputBuffer f111018e;

    /* renamed from: f */
    public boolean f111019f = false;

    public IdentityOutputStream(SessionOutputBuffer sessionOutputBuffer) {
        this.f111018e = (SessionOutputBuffer) Args.notNull(sessionOutputBuffer, "Session output buffer");
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f111019f) {
            return;
        }
        this.f111019f = true;
        this.f111018e.flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f111018e.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f111019f) {
            this.f111018e.write(bArr, i, i2);
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (!this.f111019f) {
            this.f111018e.write(i);
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }
}
