package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.SessionOutputBuffer;

/* loaded from: classes12.dex */
public class ChunkedOutputStream extends OutputStream {

    /* renamed from: e */
    public final SessionOutputBuffer f110987e;

    /* renamed from: f */
    public final byte[] f110988f;

    /* renamed from: g */
    public int f110989g;

    /* renamed from: h */
    public boolean f110990h;

    /* renamed from: i */
    public boolean f110991i;

    @Deprecated
    public ChunkedOutputStream(SessionOutputBuffer sessionOutputBuffer, int i) throws IOException {
        this(i, sessionOutputBuffer);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f110991i) {
            return;
        }
        this.f110991i = true;
        finish();
        this.f110987e.flush();
    }

    public void finish() throws IOException {
        if (this.f110990h) {
            return;
        }
        flushCache();
        writeClosingChunk();
        this.f110990h = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        flushCache();
        this.f110987e.flush();
    }

    public void flushCache() throws IOException {
        int i = this.f110989g;
        if (i > 0) {
            this.f110987e.writeLine(Integer.toHexString(i));
            this.f110987e.write(this.f110988f, 0, this.f110989g);
            this.f110987e.writeLine("");
            this.f110989g = 0;
        }
    }

    public void flushCacheWithAppend(byte[] bArr, int i, int i2) throws IOException {
        this.f110987e.writeLine(Integer.toHexString(this.f110989g + i2));
        this.f110987e.write(this.f110988f, 0, this.f110989g);
        this.f110987e.write(bArr, i, i2);
        this.f110987e.writeLine("");
        this.f110989g = 0;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (!this.f110991i) {
            byte[] bArr = this.f110988f;
            int i2 = this.f110989g;
            bArr[i2] = (byte) i;
            int i3 = i2 + 1;
            this.f110989g = i3;
            if (i3 == bArr.length) {
                flushCache();
                return;
            }
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }

    public void writeClosingChunk() throws IOException {
        this.f110987e.writeLine("0");
        this.f110987e.writeLine("");
    }

    @Deprecated
    public ChunkedOutputStream(SessionOutputBuffer sessionOutputBuffer) throws IOException {
        this(2048, sessionOutputBuffer);
    }

    public ChunkedOutputStream(int i, SessionOutputBuffer sessionOutputBuffer) {
        this.f110989g = 0;
        this.f110990h = false;
        this.f110991i = false;
        this.f110988f = new byte[i];
        this.f110987e = sessionOutputBuffer;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f110991i) {
            byte[] bArr2 = this.f110988f;
            int length = bArr2.length;
            int i3 = this.f110989g;
            if (i2 >= length - i3) {
                flushCacheWithAppend(bArr, i, i2);
                return;
            } else {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f110989g += i2;
                return;
            }
        }
        throw new IOException("Attempted write to closed stream.");
    }
}
