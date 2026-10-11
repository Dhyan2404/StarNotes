package javax.imageio.stream;

import com.sun.imageio.stream.StreamFinalizer;
import com.sunia.HTREnginev2.amj;
import java.io.IOException;
import java.io.InputStream;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes5.dex */
public class MemoryCacheImageInputStream extends ImageInputStreamImpl {

    /* renamed from: e */
    public InputStream f97992e;

    /* renamed from: f */
    public amj f97993f;

    /* renamed from: g */
    public final Object f97994g;

    /* renamed from: h */
    public final DisposerRecord f97995h;

    /* renamed from: javax.imageio.stream.MemoryCacheImageInputStream$a */
    /* loaded from: classes5.dex */
    public static class C17887a implements DisposerRecord {

        /* renamed from: e */
        public amj f97996e;

        public C17887a(amj amjVar) {
            this.f97996e = amjVar;
        }

        @Override // sun.java2d.DisposerRecord
        public synchronized void dispose() {
            amj amjVar = this.f97996e;
            if (amjVar != null) {
                amjVar.m53038h();
                this.f97996e = null;
            }
        }
    }

    public MemoryCacheImageInputStream(InputStream inputStream) {
        amj amjVar = new amj();
        this.f97993f = amjVar;
        if (inputStream == null) {
            throw new IllegalArgumentException("stream == null!");
        }
        this.f97992e = inputStream;
        C17887a c17887a = new C17887a(amjVar);
        this.f97995h = c17887a;
        if (getClass() != MemoryCacheImageInputStream.class) {
            this.f97994g = new StreamFinalizer(this);
            return;
        }
        Object obj = new Object();
        this.f97994g = obj;
        Disposer.addRecord(obj, c17887a);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f97995h.dispose();
        this.f97992e = null;
        this.f97993f = null;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void flushBefore(long j) throws IOException {
        super.flushBefore(j);
        this.f97993f.m53031a(j);
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
    public int read() throws IOException {
        checkClosed();
        this.bitOffset = 0;
        long m53034d = this.f97993f.m53034d(this.f97992e, this.streamPos + 1);
        long j = this.streamPos;
        if (m53034d < j + 1) {
            return -1;
        }
        amj amjVar = this.f97993f;
        this.streamPos = 1 + j;
        return amjVar.m53036f(j);
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
                long m53034d = this.f97993f.m53034d(this.f97992e, this.streamPos + i2);
                long j = this.streamPos;
                int i4 = (int) (m53034d - j);
                if (i4 <= 0) {
                    return -1;
                }
                this.f97993f.m53037g(bArr, i, i4, j);
                this.streamPos += i4;
                return i4;
            }
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off+len > b.length || off+len < 0!");
        }
        throw new NullPointerException("b == null!");
    }
}
