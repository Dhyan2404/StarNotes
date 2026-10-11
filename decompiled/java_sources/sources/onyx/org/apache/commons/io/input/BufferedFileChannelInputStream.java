package onyx.org.apache.commons.io.input;

import com.sunia.HTREnginev2.C14423sv;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.Objects;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public final class BufferedFileChannelInputStream extends InputStream {

    /* renamed from: e */
    public final ByteBuffer f104291e;

    /* renamed from: f */
    public final FileChannel f104292f;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<BufferedFileChannelInputStream, Builder> {
        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public BufferedFileChannelInputStream get() throws IOException {
            return new BufferedFileChannelInputStream(getPath(), getBufferSize());
        }
    }

    @Deprecated
    public BufferedFileChannelInputStream(File file) throws IOException {
        this(file, 8192);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: H */
    public final long m65421H(long j) throws IOException {
        long position = this.f104292f.position();
        long size = this.f104292f.size();
        long j2 = size - position;
        if (j > j2) {
            this.f104292f.position(size);
            return j2;
        }
        this.f104292f.position(position + j);
        return j;
    }

    @Override // java.io.InputStream
    public synchronized int available() throws IOException {
        return this.f104291e.remaining();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            this.f104292f.close();
        } finally {
            m65422f(this.f104291e);
        }
    }

    /* renamed from: f */
    public final void m65422f(ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect()) {
            m65423j(byteBuffer);
        }
    }

    /* renamed from: j */
    public final void m65423j(ByteBuffer byteBuffer) {
        if (C14423sv.m57264c()) {
            C14423sv.m57262a(byteBuffer);
        }
    }

    @Override // java.io.InputStream
    public synchronized int read() throws IOException {
        if (!m65424w()) {
            return -1;
        }
        return this.f104291e.get() & 255;
    }

    @Override // java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        if (this.f104291e.remaining() >= j) {
            ByteBuffer byteBuffer = this.f104291e;
            byteBuffer.position(byteBuffer.position() + ((int) j));
            return j;
        }
        long remaining = this.f104291e.remaining();
        this.f104291e.position(0);
        this.f104291e.flip();
        return remaining + m65421H(j - remaining);
    }

    /* renamed from: w */
    public final boolean m65424w() throws IOException {
        if (this.f104291e.hasRemaining()) {
            return true;
        }
        this.f104291e.clear();
        int i = 0;
        while (i == 0) {
            i = this.f104292f.read(this.f104291e);
        }
        this.f104291e.flip();
        return i >= 0;
    }

    @Deprecated
    public BufferedFileChannelInputStream(File file, int i) throws IOException {
        this(file.toPath(), i);
    }

    @Deprecated
    public BufferedFileChannelInputStream(Path path) throws IOException {
        this(path, 8192);
    }

    @Deprecated
    public BufferedFileChannelInputStream(Path path, int i) throws IOException {
        Objects.requireNonNull(path, "path");
        this.f104292f = FileChannel.open(path, StandardOpenOption.READ);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i);
        this.f104291e = allocateDirect;
        allocateDirect.flip();
    }

    @Override // java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i >= 0 && i2 >= 0 && (i3 = i + i2) >= 0) {
            if (i3 <= bArr.length) {
                if (!m65424w()) {
                    return -1;
                }
                int min = Math.min(i2, this.f104291e.remaining());
                this.f104291e.get(bArr, i, min);
                return min;
            }
        }
        throw new IndexOutOfBoundsException();
    }
}
