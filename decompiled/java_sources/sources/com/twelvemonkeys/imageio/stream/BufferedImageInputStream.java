package com.twelvemonkeys.imageio.stream;

import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.nio.ByteBuffer;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageInputStreamImpl;

/* loaded from: classes10.dex */
public final class BufferedImageInputStream extends ImageInputStreamImpl implements ImageInputStream {

    /* renamed from: g */
    public static final int f94202g = 8192;

    /* renamed from: e */
    public ImageInputStream f94203e;

    /* renamed from: f */
    public ByteBuffer f94204f;

    public BufferedImageInputStream(ImageInputStream imageInputStream) throws IOException {
        this(imageInputStream, 8192);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f94203e != null) {
            this.f94203e = null;
            this.f94204f = null;
        }
        super.close();
    }

    /* renamed from: e0 */
    public final void m60664e0() throws IOException {
        this.f94204f.clear();
        int read = this.f94203e.read(this.f94204f.array(), 0, this.f94204f.capacity());
        if (read < 0) {
            this.f94204f.limit(0);
            return;
        }
        try {
            this.f94204f.position(read);
            this.f94204f.flip();
        } catch (IllegalArgumentException e) {
            System.err.println("length: " + read);
            throw e;
        }
    }

    /* renamed from: f0 */
    public final int m60665f0(byte[] bArr, int i, int i2) {
        if (!this.f94204f.hasRemaining()) {
            return -1;
        }
        int min = Math.min(this.f94204f.remaining(), i2);
        if (min > 0) {
            int position = this.f94204f.position();
            System.arraycopy(this.f94204f.array(), position, bArr, i, min);
            this.f94204f.position(position + min);
        }
        this.streamPos += min;
        return min;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
        super.finalize();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void flushBefore(long j) throws IOException {
        this.f94203e.flushBefore(j);
    }

    /* renamed from: g0 */
    public final int m60666g0(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f94203e.read(bArr, i, Math.min(this.f94204f.capacity(), i2));
        if (read > 0) {
            this.streamPos += read;
        }
        return read;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long getFlushedPosition() {
        return this.f94203e.getFlushedPosition();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCached() {
        return this.f94203e.isCached();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCachedFile() {
        return this.f94203e.isCachedFile();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCachedMemory() {
        return this.f94203e.isCachedMemory();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long length() {
        try {
            return this.f94203e.length();
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        if (!this.f94204f.hasRemaining()) {
            m60664e0();
        }
        if (!this.f94204f.hasRemaining()) {
            return -1;
        }
        this.bitOffset = 0;
        this.streamPos++;
        return this.f94204f.get() & 255;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void seek(long j) throws IOException {
        this.f94203e.seek(j);
        this.f94204f.limit(0);
        this.streamPos = this.f94203e.getStreamPosition();
    }

    public BufferedImageInputStream(ImageInputStream imageInputStream, int i) throws IOException {
        this.f94203e = (ImageInputStream) Validate.notNull(imageInputStream, "stream");
        this.streamPos = imageInputStream.getStreamPosition();
        ByteBuffer allocate = ByteBuffer.allocate(i);
        this.f94204f = allocate;
        allocate.limit(0);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        this.bitOffset = 0;
        if (!this.f94204f.hasRemaining()) {
            if (i2 >= this.f94204f.capacity()) {
                return m60666g0(bArr, i, i2);
            }
            m60664e0();
        }
        return m60665f0(bArr, i, i2);
    }
}
