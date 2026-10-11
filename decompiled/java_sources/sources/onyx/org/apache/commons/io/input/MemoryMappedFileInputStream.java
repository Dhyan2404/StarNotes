package onyx.org.apache.commons.io.input;

import com.sunia.HTREnginev2.C14423sv;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public final class MemoryMappedFileInputStream extends InputStream {

    /* renamed from: j */
    public static final int f104312j = 262144;

    /* renamed from: k */
    public static final ByteBuffer f104313k = ByteBuffer.wrap(new byte[0]).asReadOnlyBuffer();

    /* renamed from: e */
    public final int f104314e;

    /* renamed from: f */
    public final FileChannel f104315f;

    /* renamed from: g */
    public ByteBuffer f104316g;

    /* renamed from: h */
    public boolean f104317h;

    /* renamed from: i */
    public long f104318i;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<MemoryMappedFileInputStream, Builder> {
        public Builder() {
            setBufferSizeDefault(262144);
            setBufferSize(262144);
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public MemoryMappedFileInputStream get() throws IOException {
            return new MemoryMappedFileInputStream(getPath(), getBufferSize());
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: H */
    public final void m65441H() throws IOException {
        long size = this.f104315f.size() - this.f104318i;
        if (size <= 0) {
            this.f104316g = f104313k;
            return;
        }
        long min = Math.min(size, this.f104314e);
        m65442f();
        this.f104316g = this.f104315f.map(FileChannel.MapMode.READ_ONLY, this.f104318i, min);
        this.f104318i += min;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f104316g.remaining();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f104317h) {
            return;
        }
        m65442f();
        this.f104316g = null;
        this.f104315f.close();
        this.f104317h = true;
    }

    /* renamed from: f */
    public final void m65442f() {
        if (C14423sv.m57264c() && this.f104316g.isDirect()) {
            C14423sv.m57262a(this.f104316g);
        }
    }

    /* renamed from: j */
    public final void m65443j() throws IOException {
        if (this.f104317h) {
            throw new IOException("Stream closed");
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        m65443j();
        if (!this.f104316g.hasRemaining()) {
            m65441H();
            if (!this.f104316g.hasRemaining()) {
                return -1;
            }
        }
        return Short.toUnsignedInt(this.f104316g.get());
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        m65443j();
        if (j <= 0) {
            return 0L;
        }
        if (j <= this.f104316g.remaining()) {
            this.f104316g.position((int) (r6.position() + j));
            return j;
        }
        long remaining = this.f104316g.remaining() + Math.min(this.f104315f.size() - this.f104318i, j - this.f104316g.remaining());
        this.f104318i += remaining - this.f104316g.remaining();
        m65441H();
        return remaining;
    }

    /* renamed from: w */
    public int m65444w() {
        return this.f104314e;
    }

    public MemoryMappedFileInputStream(Path path, int i) throws IOException {
        this.f104316g = f104313k;
        this.f104314e = i;
        this.f104315f = FileChannel.open(path, StandardOpenOption.READ);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        m65443j();
        if (!this.f104316g.hasRemaining()) {
            m65441H();
            if (!this.f104316g.hasRemaining()) {
                return -1;
            }
        }
        int min = Math.min(this.f104316g.remaining(), i2);
        this.f104316g.get(bArr, i, min);
        return min;
    }
}
