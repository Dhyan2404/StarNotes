package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* renamed from: com.sunia.HTREnginev2.qu */
/* loaded from: classes12.dex */
public class C14319qu extends InputStream {

    /* renamed from: h */
    public static final int f82420h = 8192;

    /* renamed from: e */
    public final ByteBuffer f82421e;

    /* renamed from: f */
    public final SeekableByteChannel f82422f;

    /* renamed from: g */
    public long f82423g;

    public C14319qu(SeekableByteChannel seekableByteChannel, long j) {
        this.f82422f = seekableByteChannel;
        this.f82423g = j;
        if (j >= 8192 || j <= 0) {
            this.f82421e = ByteBuffer.allocate(8192);
        } else {
            this.f82421e = ByteBuffer.allocate((int) j);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: f */
    public final int m56764f(int i) throws IOException {
        this.f82421e.rewind().limit(i);
        int read = this.f82422f.read(this.f82421e);
        this.f82421e.flip();
        return read;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        long j = this.f82423g;
        if (j <= 0) {
            return -1;
        }
        this.f82423g = j - 1;
        int m56764f = m56764f(1);
        return m56764f < 0 ? m56764f : this.f82421e.get() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        ByteBuffer allocate;
        int read;
        if (i2 == 0) {
            return 0;
        }
        long j = this.f82423g;
        if (j <= 0) {
            return -1;
        }
        if (i2 > j) {
            i2 = (int) j;
        }
        if (i2 <= this.f82421e.capacity()) {
            allocate = this.f82421e;
            read = m56764f(i2);
        } else {
            allocate = ByteBuffer.allocate(i2);
            read = this.f82422f.read(allocate);
            allocate.flip();
        }
        if (read >= 0) {
            allocate.get(bArr, i, read);
            this.f82423g -= read;
        }
        return read;
    }
}
