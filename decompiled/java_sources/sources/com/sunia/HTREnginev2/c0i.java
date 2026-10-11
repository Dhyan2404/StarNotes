package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;

/* loaded from: classes12.dex */
public class c0i extends OutputStream {

    /* renamed from: e */
    public final MessageDigest f66327e;

    /* renamed from: f */
    public boolean f66328f;

    /* renamed from: g */
    public byte[] f66329g;

    public c0i(MessageDigest messageDigest) {
        this.f66327e = messageDigest;
        messageDigest.reset();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f66328f) {
            return;
        }
        this.f66328f = true;
        this.f66329g = this.f66327e.digest();
        super.close();
    }

    /* renamed from: f */
    public byte[] m53380f() {
        return this.f66329g;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (!this.f66328f) {
            this.f66327e.update((byte) i);
            return;
        }
        throw new IOException("Stream has been already closed");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f66328f) {
            this.f66327e.update(bArr, i, i2);
            return;
        }
        throw new IOException("Stream has been already closed");
    }
}
