package javax.imageio.stream;

import com.sunia.HTREnginev2.amj;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public class MemoryCacheImageOutputStream extends ImageOutputStreamImpl {

    /* renamed from: e */
    public OutputStream f97997e;

    /* renamed from: f */
    public amj f97998f = new amj();

    public MemoryCacheImageOutputStream(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException("stream == null!");
        }
        this.f97997e = outputStream;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long m53033c = this.f97998f.m53033c();
        seek(m53033c);
        flushBefore(m53033c);
        super.close();
        this.f97998f.m53038h();
        this.f97998f = null;
        this.f97997e = null;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void flushBefore(long j) throws IOException {
        long j2 = this.flushedPos;
        super.flushBefore(j);
        this.f97998f.m53041k(this.f97997e, j2, this.flushedPos - j2);
        this.f97998f.m53031a(this.flushedPos);
        this.f97997e.flush();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCached() {
        return true;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCachedFile() {
        return false;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCachedMemory() {
        return true;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long length() {
        try {
            checkClosed();
            return this.f97998f.m53033c();
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        checkClosed();
        this.bitOffset = 0;
        int m53036f = this.f97998f.m53036f(this.streamPos);
        if (m53036f != -1) {
            this.streamPos++;
        }
        return m53036f;
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(int i) throws IOException {
        flushBits();
        this.f97998f.m53039i(i, this.streamPos);
        this.streamPos++;
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) throws IOException {
        flushBits();
        this.f97998f.m53040j(bArr, i, i2, this.streamPos);
        this.streamPos += i2;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        checkClosed();
        if (bArr != null) {
            if (i >= 0 && i2 >= 0 && (i3 = i + i2) <= bArr.length && i3 >= 0) {
                this.bitOffset = 0;
                if (i2 == 0) {
                    return 0;
                }
                long m53033c = this.f97998f.m53033c() - this.streamPos;
                if (m53033c <= 0) {
                    return -1;
                }
                int min = (int) Math.min(m53033c, i2);
                this.f97998f.m53037g(bArr, i, min, this.streamPos);
                this.streamPos += min;
                return min;
            }
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off+len > b.length || off+len < 0!");
        }
        throw new NullPointerException("b == null!");
    }
}
