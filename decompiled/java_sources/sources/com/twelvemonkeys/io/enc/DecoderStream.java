package com.twelvemonkeys.io.enc;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public final class DecoderStream extends FilterInputStream {
    protected final ByteBuffer buffer;
    protected final Decoder decoder;

    public DecoderStream(InputStream inputStream, Decoder decoder) {
        this(inputStream, decoder, 1024);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.buffer.remaining();
    }

    public int fill() throws IOException {
        this.buffer.clear();
        int decode = this.decoder.decode(((FilterInputStream) this).in, this.buffer);
        if (decode > this.buffer.capacity()) {
            throw new AssertionError(String.format("Decode beyond buffer (%d): %d (using %s decoder)", Integer.valueOf(this.buffer.capacity()), Integer.valueOf(decode), this.decoder.getClass().getName()));
        }
        this.buffer.flip();
        if (decode == 0) {
            return -1;
        }
        return decode;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.buffer.hasRemaining() || fill() >= 0) {
            return this.buffer.get() & 255;
        }
        return -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        if (!this.buffer.hasRemaining() && fill() < 0) {
            return 0L;
        }
        while (j2 < j && (this.buffer.hasRemaining() || fill() >= 0)) {
            int min = (int) Math.min(j - j2, this.buffer.remaining());
            ByteBuffer byteBuffer = this.buffer;
            byteBuffer.position(byteBuffer.position() + min);
            j2 += min;
        }
        return j2;
    }

    public DecoderStream(InputStream inputStream, Decoder decoder, int i) {
        super(inputStream);
        this.decoder = decoder;
        ByteBuffer allocate = ByteBuffer.allocate(i);
        this.buffer = allocate;
        allocate.flip();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        bArr.getClass();
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("bytes.length=" + bArr.length + " offset=" + i + " length=" + i2);
        }
        int i4 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (!this.buffer.hasRemaining() && fill() < 0) {
            return -1;
        }
        while (i2 > i4 && (this.buffer.hasRemaining() || fill() >= 0)) {
            int min = Math.min(i2 - i4, this.buffer.remaining());
            this.buffer.get(bArr, i, min);
            i += min;
            i4 += min;
        }
        return i4;
    }
}
