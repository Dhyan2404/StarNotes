package javax.imageio.stream;

import com.sun.imageio.stream.CloseableDisposerRecord;
import com.sun.imageio.stream.StreamFinalizer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import sun.java2d.Disposer;

/* loaded from: classes5.dex */
public class FileImageInputStream extends ImageInputStreamImpl {

    /* renamed from: e */
    public RandomAccessFile f97983e;

    /* renamed from: f */
    public final Object f97984f;

    /* renamed from: g */
    public final CloseableDisposerRecord f97985g;

    public FileImageInputStream(File file) throws FileNotFoundException, IOException {
        this(file == null ? null : new RandomAccessFile(file, "r"));
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f97985g.dispose();
        this.f97983e = null;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long length() {
        try {
            checkClosed();
            return this.f97983e.length();
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        checkClosed();
        this.bitOffset = 0;
        int read = this.f97983e.read();
        if (read != -1) {
            this.streamPos++;
        }
        return read;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void seek(long j) throws IOException {
        checkClosed();
        if (j < this.flushedPos) {
            throw new IndexOutOfBoundsException("pos < flushedPos!");
        }
        this.bitOffset = 0;
        this.f97983e.seek(j);
        this.streamPos = this.f97983e.getFilePointer();
    }

    public FileImageInputStream(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            this.f97983e = randomAccessFile;
            CloseableDisposerRecord closeableDisposerRecord = new CloseableDisposerRecord(randomAccessFile);
            this.f97985g = closeableDisposerRecord;
            if (getClass() == FileImageInputStream.class) {
                Object obj = new Object();
                this.f97984f = obj;
                Disposer.addRecord(obj, closeableDisposerRecord);
                return;
            }
            this.f97984f = new StreamFinalizer(this);
            return;
        }
        throw new IllegalArgumentException("raf == null!");
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        checkClosed();
        this.bitOffset = 0;
        int read = this.f97983e.read(bArr, i, i2);
        if (read != -1) {
            this.streamPos += read;
        }
        return read;
    }
}
