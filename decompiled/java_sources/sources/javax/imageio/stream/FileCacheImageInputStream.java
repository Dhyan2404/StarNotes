package javax.imageio.stream;

import com.sun.imageio.stream.StreamCloser;
import com.sun.imageio.stream.StreamFinalizer;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes5.dex */
public class FileCacheImageInputStream extends ImageInputStreamImpl {

    /* renamed from: n */
    public static final int f97966n = 1024;

    /* renamed from: e */
    public InputStream f97967e;

    /* renamed from: f */
    public File f97968f;

    /* renamed from: g */
    public RandomAccessFile f97969g;

    /* renamed from: h */
    public byte[] f97970h = new byte[1024];

    /* renamed from: i */
    public long f97971i = 0;

    /* renamed from: j */
    public boolean f97972j = false;

    /* renamed from: k */
    public final Object f97973k;

    /* renamed from: l */
    public final DisposerRecord f97974l;

    /* renamed from: m */
    public final StreamCloser.CloseAction f97975m;

    /* renamed from: javax.imageio.stream.FileCacheImageInputStream$a */
    /* loaded from: classes5.dex */
    public static class C17886a implements DisposerRecord {

        /* renamed from: e */
        public File f97976e;

        /* renamed from: f */
        public RandomAccessFile f97977f;

        public C17886a(File file, RandomAccessFile randomAccessFile) {
            this.f97976e = file;
            this.f97977f = randomAccessFile;
        }

        @Override // sun.java2d.DisposerRecord
        public synchronized void dispose() {
            RandomAccessFile randomAccessFile = this.f97977f;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.f97977f = null;
                    throw th;
                }
                this.f97977f = null;
            }
            File file = this.f97976e;
            if (file != null) {
                file.delete();
                this.f97976e = null;
            }
        }
    }

    public FileCacheImageInputStream(InputStream inputStream, File file) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("stream == null!");
        }
        if (file != null && !file.isDirectory()) {
            throw new IllegalArgumentException("Not a directory!");
        }
        this.f97967e = inputStream;
        if (file == null) {
            this.f97968f = Files.createTempFile("imageio", ".tmp", new FileAttribute[0]).toFile();
        } else {
            this.f97968f = Files.createTempFile(file.toPath(), "imageio", ".tmp", new FileAttribute[0]).toFile();
        }
        this.f97969g = new RandomAccessFile(this.f97968f, "rw");
        StreamCloser.CloseAction createCloseAction = StreamCloser.createCloseAction(this);
        this.f97975m = createCloseAction;
        StreamCloser.addToQueue(createCloseAction);
        C17886a c17886a = new C17886a(this.f97968f, this.f97969g);
        this.f97974l = c17886a;
        if (getClass() != FileCacheImageInputStream.class) {
            this.f97973k = new StreamFinalizer(this);
            return;
        }
        Object obj = new Object();
        this.f97973k = obj;
        Disposer.addRecord(obj, c17886a);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f97974l.dispose();
        this.f97967e = null;
        this.f97969g = null;
        this.f97968f = null;
        StreamCloser.removeFromQueue(this.f97975m);
    }

    /* renamed from: e0 */
    public final long m61495e0(long j) throws IOException {
        long j2 = this.f97971i;
        if (j < j2) {
            return j;
        }
        if (this.f97972j) {
            return j2;
        }
        long j3 = j - j2;
        this.f97969g.seek(j2);
        while (j3 > 0) {
            int read = this.f97967e.read(this.f97970h, 0, (int) Math.min(j3, 1024L));
            if (read == -1) {
                this.f97972j = true;
                return this.f97971i;
            }
            this.f97969g.write(this.f97970h, 0, read);
            long j4 = read;
            j3 -= j4;
            this.f97971i += j4;
        }
        return j;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCached() {
        return true;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCachedFile() {
        return true;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCachedMemory() {
        return false;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        checkClosed();
        this.bitOffset = 0;
        long j = this.streamPos + 1;
        if (m61495e0(j) < j) {
            return -1;
        }
        RandomAccessFile randomAccessFile = this.f97969g;
        long j2 = this.streamPos;
        this.streamPos = 1 + j2;
        randomAccessFile.seek(j2);
        return this.f97969g.read();
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
                long j = i2;
                int min = (int) Math.min(j, m61495e0(this.streamPos + j) - this.streamPos);
                if (min <= 0) {
                    return -1;
                }
                this.f97969g.seek(this.streamPos);
                this.f97969g.readFully(bArr, i, min);
                this.streamPos += min;
                return min;
            }
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off+len > b.length || off+len < 0!");
        }
        throw new NullPointerException("b == null!");
    }
}
