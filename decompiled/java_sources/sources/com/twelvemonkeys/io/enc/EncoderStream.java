package com.twelvemonkeys.io.enc;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public final class EncoderStream extends FilterOutputStream {
    protected final ByteBuffer buffer;

    /* renamed from: e */
    public final boolean f94272e;
    protected final Encoder encoder;

    public EncoderStream(OutputStream outputStream, Encoder encoder) {
        this(outputStream, encoder, false);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        super.close();
    }

    /* renamed from: f */
    public final void m60697f() throws IOException {
        if (this.buffer.position() != 0) {
            this.buffer.flip();
            this.encoder.encode(((FilterOutputStream) this).out, this.buffer);
            this.buffer.clear();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m60697f();
        super.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public EncoderStream(OutputStream outputStream, Encoder encoder, boolean z) {
        super(outputStream);
        this.encoder = encoder;
        this.f94272e = z;
        ByteBuffer allocate = ByteBuffer.allocate(1024);
        this.buffer = allocate;
        allocate.flip();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f94272e && i2 < this.buffer.remaining()) {
            this.buffer.put(bArr, i, i2);
        } else {
            m60697f();
            this.encoder.encode(((FilterOutputStream) this).out, ByteBuffer.wrap(bArr, i, i2));
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        if (!this.buffer.hasRemaining()) {
            m60697f();
        }
        this.buffer.put((byte) i);
    }
}
