package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class ContentLengthOutputStream extends OutputStream {

    /* renamed from: e */
    public final SessionOutputBuffer f110997e;

    /* renamed from: f */
    public final long f110998f;

    /* renamed from: g */
    public long f110999g;

    /* renamed from: h */
    public boolean f111000h;

    public ContentLengthOutputStream(SessionOutputBuffer sessionOutputBuffer, long j) {
        this.f110997e = (SessionOutputBuffer) Args.notNull(sessionOutputBuffer, "Session output buffer");
        this.f110998f = Args.notNegative(j, "Content length");
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f111000h) {
            return;
        }
        this.f111000h = true;
        this.f110997e.flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f110997e.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f111000h) {
            long j = this.f110999g;
            long j2 = this.f110998f;
            if (j < j2) {
                long j3 = j2 - j;
                if (i2 > j3) {
                    i2 = (int) j3;
                }
                this.f110997e.write(bArr, i, i2);
                this.f110999g += i2;
                return;
            }
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
        if (this.f111000h) {
            throw new IOException("Attempted write to closed stream.");
        }
        if (this.f110999g < this.f110998f) {
            this.f110997e.write(i);
            this.f110999g++;
        }
    }
}
