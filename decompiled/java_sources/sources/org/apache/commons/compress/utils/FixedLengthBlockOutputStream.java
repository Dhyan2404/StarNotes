package org.apache.commons.compress.utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes12.dex */
public class FixedLengthBlockOutputStream extends OutputStream implements WritableByteChannel {

    /* renamed from: e */
    public final WritableByteChannel f107321e;

    /* renamed from: f */
    public final int f107322f;

    /* renamed from: g */
    public final ByteBuffer f107323g;

    /* renamed from: h */
    public final AtomicBoolean f107324h = new AtomicBoolean(false);

    /* renamed from: org.apache.commons.compress.utils.FixedLengthBlockOutputStream$b */
    /* loaded from: classes12.dex */
    public static class C18908b implements WritableByteChannel {

        /* renamed from: e */
        public final OutputStream f107325e;

        /* renamed from: f */
        public final AtomicBoolean f107326f;

        @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f107326f.compareAndSet(false, true)) {
                this.f107325e.close();
            }
        }

        @Override // java.nio.channels.Channel
        public boolean isOpen() {
            return !this.f107326f.get();
        }

        @Override // java.nio.channels.WritableByteChannel
        public int write(ByteBuffer byteBuffer) throws IOException {
            if (!isOpen()) {
                throw new ClosedChannelException();
            }
            if (!byteBuffer.hasArray()) {
                throw new IOException("Direct buffer somehow written to BufferAtATimeOutputChannel");
            }
            try {
                int position = byteBuffer.position();
                int limit = byteBuffer.limit() - position;
                this.f107325e.write(byteBuffer.array(), byteBuffer.arrayOffset() + position, limit);
                byteBuffer.position(byteBuffer.limit());
                return limit;
            } catch (IOException e) {
                try {
                    close();
                } catch (IOException unused) {
                }
                throw e;
            }
        }

        public C18908b(OutputStream outputStream) {
            this.f107326f = new AtomicBoolean(false);
            this.f107325e = outputStream;
        }
    }

    public FixedLengthBlockOutputStream(OutputStream outputStream, int i) {
        if (outputStream instanceof FileOutputStream) {
            this.f107321e = ((FileOutputStream) outputStream).getChannel();
            this.f107323g = ByteBuffer.allocateDirect(i);
        } else {
            this.f107321e = new C18908b(outputStream);
            this.f107323g = ByteBuffer.allocate(i);
        }
        this.f107322f = i;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        if (this.f107324h.compareAndSet(false, true)) {
            try {
                flushBlock();
            } finally {
                this.f107321e.close();
            }
        }
    }

    /* renamed from: f */
    public final void m67163f() throws IOException {
        if (this.f107323g.hasRemaining()) {
            return;
        }
        m67165w();
    }

    public void flushBlock() throws IOException {
        if (this.f107323g.position() != 0) {
            m67164j();
            m67165w();
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        if (!this.f107321e.isOpen()) {
            this.f107324h.set(true);
        }
        return !this.f107324h.get();
    }

    /* renamed from: j */
    public final void m67164j() {
        this.f107323g.order(ByteOrder.nativeOrder());
        int remaining = this.f107323g.remaining();
        if (remaining > 8) {
            int position = this.f107323g.position() & 7;
            if (position != 0) {
                int i = 8 - position;
                for (int i2 = 0; i2 < i; i2++) {
                    this.f107323g.put((byte) 0);
                }
                remaining -= i;
            }
            while (remaining >= 8) {
                this.f107323g.putLong(0L);
                remaining -= 8;
            }
        }
        while (this.f107323g.hasRemaining()) {
            this.f107323g.put((byte) 0);
        }
    }

    /* renamed from: w */
    public final void m67165w() throws IOException {
        this.f107323g.flip();
        int write = this.f107321e.write(this.f107323g);
        boolean hasRemaining = this.f107323g.hasRemaining();
        int i = this.f107322f;
        if (write != i || hasRemaining) {
            throw new IOException(String.format("Failed to write %,d bytes atomically. Only wrote  %,d", Integer.valueOf(i), Integer.valueOf(write)));
        }
        this.f107323g.clear();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (isOpen()) {
            this.f107323g.put((byte) i);
            m67163f();
            return;
        }
        throw new ClosedChannelException();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        while (i2 > 0) {
            int min = Math.min(i2, this.f107323g.remaining());
            this.f107323g.put(bArr, i, min);
            m67163f();
            i2 -= min;
            i += min;
        }
    }

    public FixedLengthBlockOutputStream(WritableByteChannel writableByteChannel, int i) {
        this.f107321e = writableByteChannel;
        this.f107322f = i;
        this.f107323g = ByteBuffer.allocateDirect(i);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        int i;
        if (isOpen()) {
            int remaining = byteBuffer.remaining();
            if (remaining < this.f107323g.remaining()) {
                this.f107323g.put(byteBuffer);
            } else {
                int limit = byteBuffer.limit();
                if (this.f107323g.position() != 0) {
                    int remaining2 = this.f107323g.remaining();
                    byteBuffer.limit(byteBuffer.position() + remaining2);
                    this.f107323g.put(byteBuffer);
                    m67165w();
                    i = remaining - remaining2;
                } else {
                    i = remaining;
                }
                while (i >= this.f107322f) {
                    byteBuffer.limit(byteBuffer.position() + this.f107322f);
                    this.f107321e.write(byteBuffer);
                    i -= this.f107322f;
                }
                byteBuffer.limit(limit);
                this.f107323g.put(byteBuffer);
            }
            return remaining;
        }
        throw new ClosedChannelException();
    }
}
