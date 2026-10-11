package javax.imageio.stream;

import com.sun.imageio.stream.CloseableDisposerRecord;
import com.sun.imageio.stream.StreamFinalizer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import sun.java2d.Disposer;

/* loaded from: classes5.dex */
public class FileImageOutputStream extends ImageOutputStreamImpl {

    /* renamed from: e */
    public RandomAccessFile f97986e;

    /* renamed from: f */
    public final Object f97987f;

    /* renamed from: g */
    public final CloseableDisposerRecord f97988g;

    public FileImageOutputStream(File file) throws FileNotFoundException, IOException {
        this(file == null ? null : new RandomAccessFile(file, "rw"));
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f97988g.dispose();
        this.f97986e = null;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long length() {
        try {
            checkClosed();
            return this.f97986e.length();
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        checkClosed();
        this.bitOffset = 0;
        int read = this.f97986e.read();
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
        this.f97986e.seek(j);
        this.streamPos = this.f97986e.getFilePointer();
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(int i) throws IOException {
        flushBits();
        this.f97986e.write(i);
        this.streamPos++;
    }

    public FileImageOutputStream(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            this.f97986e = randomAccessFile;
            CloseableDisposerRecord closeableDisposerRecord = new CloseableDisposerRecord(randomAccessFile);
            this.f97988g = closeableDisposerRecord;
            if (getClass() == FileImageOutputStream.class) {
                Object obj = new Object();
                this.f97987f = obj;
                Disposer.addRecord(obj, closeableDisposerRecord);
                return;
            }
            this.f97987f = new StreamFinalizer(this);
            return;
        }
        throw new IllegalArgumentException("raf == null!");
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) throws IOException {
        flushBits();
        this.f97986e.write(bArr, i, i2);
        this.streamPos += i2;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        checkClosed();
        this.bitOffset = 0;
        int read = this.f97986e.read(bArr, i, i2);
        if (read != -1) {
            this.streamPos += read;
        }
        return read;
    }
}
