package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.impl.conn.Wire;

/* loaded from: classes12.dex */
public class m3j extends OutputStream {

    /* renamed from: e */
    public final OutputStream f77143e;

    /* renamed from: f */
    public final Wire f77144f;

    public m3j(OutputStream outputStream, Wire wire) {
        this.f77143e = outputStream;
        this.f77144f = wire;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f77143e.close();
        } catch (IOException e) {
            this.f77144f.output("[close] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.f77143e.flush();
        } catch (IOException e) {
            this.f77144f.output("[flush] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            this.f77144f.output(i);
        } catch (IOException e) {
            this.f77144f.output("[write] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.f77144f.output(bArr);
            this.f77143e.write(bArr);
        } catch (IOException e) {
            this.f77144f.output("[write] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.f77144f.output(bArr, i, i2);
            this.f77143e.write(bArr, i, i2);
        } catch (IOException e) {
            this.f77144f.output("[write] I/O error: " + e.getMessage());
            throw e;
        }
    }
}
