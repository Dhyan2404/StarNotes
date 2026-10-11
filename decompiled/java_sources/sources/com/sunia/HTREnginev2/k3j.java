package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.impl.conn.Wire;

/* loaded from: classes12.dex */
public class k3j extends InputStream {

    /* renamed from: e */
    public final InputStream f75043e;

    /* renamed from: f */
    public final Wire f75044f;

    public k3j(InputStream inputStream, Wire wire) {
        this.f75043e = inputStream;
        this.f75044f = wire;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.f75043e.available();
        } catch (IOException e) {
            this.f75044f.input("[available] I/O error : " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f75043e.close();
        } catch (IOException e) {
            this.f75044f.input("[close] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        super.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int read = this.f75043e.read();
            if (read == -1) {
                this.f75044f.input("end of stream");
            } else {
                this.f75044f.input(read);
            }
            return read;
        } catch (IOException e) {
            this.f75044f.input("[read] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        super.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            return super.skip(j);
        } catch (IOException e) {
            this.f75044f.input("[skip] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int read = this.f75043e.read(bArr);
            if (read == -1) {
                this.f75044f.input("end of stream");
            } else if (read > 0) {
                this.f75044f.input(bArr, 0, read);
            }
            return read;
        } catch (IOException e) {
            this.f75044f.input("[read] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int read = this.f75043e.read(bArr, i, i2);
            if (read == -1) {
                this.f75044f.input("end of stream");
            } else if (read > 0) {
                this.f75044f.input(bArr, i, read);
            }
            return read;
        } catch (IOException e) {
            this.f75044f.input("[read] I/O error: " + e.getMessage());
            throw e;
        }
    }
}
