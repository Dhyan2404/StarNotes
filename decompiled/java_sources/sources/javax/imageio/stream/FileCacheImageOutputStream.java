package javax.imageio.stream;

import com.sun.imageio.stream.StreamCloser;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;

/* loaded from: classes5.dex */
public class FileCacheImageOutputStream extends ImageOutputStreamImpl {

    /* renamed from: e */
    public OutputStream f97978e;

    /* renamed from: f */
    public File f97979f;

    /* renamed from: g */
    public RandomAccessFile f97980g;

    /* renamed from: h */
    public long f97981h = 0;

    /* renamed from: i */
    public final StreamCloser.CloseAction f97982i;

    public FileCacheImageOutputStream(OutputStream outputStream, File file) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("stream == null!");
        }
        if (file != null && !file.isDirectory()) {
            throw new IllegalArgumentException("Not a directory!");
        }
        this.f97978e = outputStream;
        if (file == null) {
            this.f97979f = Files.createTempFile("imageio", ".tmp", new FileAttribute[0]).toFile();
        } else {
            this.f97979f = Files.createTempFile(file.toPath(), "imageio", ".tmp", new FileAttribute[0]).toFile();
        }
        this.f97980g = new RandomAccessFile(this.f97979f, "rw");
        StreamCloser.CloseAction createCloseAction = StreamCloser.createCloseAction(this);
        this.f97982i = createCloseAction;
        StreamCloser.addToQueue(createCloseAction);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long length = this.f97980g.length();
        this.f97981h = length;
        seek(length);
        flushBefore(this.f97981h);
        super.close();
        this.f97980g.close();
        this.f97980g = null;
        this.f97979f.delete();
        this.f97979f = null;
        this.f97978e.flush();
        this.f97978e = null;
        StreamCloser.removeFromQueue(this.f97982i);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void flushBefore(long j) throws IOException {
        long j2 = this.flushedPos;
        super.flushBefore(j);
        long j3 = this.flushedPos - j2;
        if (j3 > 0) {
            byte[] bArr = new byte[512];
            this.f97980g.seek(j2);
            while (j3 > 0) {
                int min = (int) Math.min(j3, 512);
                this.f97980g.readFully(bArr, 0, min);
                this.f97978e.write(bArr, 0, min);
                j3 -= min;
            }
            this.f97978e.flush();
        }
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
    public long length() {
        try {
            checkClosed();
            return this.f97980g.length();
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        checkClosed();
        this.bitOffset = 0;
        int read = this.f97980g.read();
        if (read != -1) {
            this.streamPos++;
        }
        return read;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void seek(long j) throws IOException {
        checkClosed();
        if (j < this.flushedPos) {
            throw new IndexOutOfBoundsException();
        }
        this.f97980g.seek(j);
        long filePointer = this.f97980g.getFilePointer();
        this.streamPos = filePointer;
        this.f97981h = Math.max(this.f97981h, filePointer);
        this.bitOffset = 0;
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(int i) throws IOException {
        flushBits();
        this.f97980g.write(i);
        long j = this.streamPos + 1;
        this.streamPos = j;
        this.f97981h = Math.max(this.f97981h, j);
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
                int read = this.f97980g.read(bArr, i, i2);
                if (read != -1) {
                    this.streamPos += read;
                }
                return read;
            }
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off+len > b.length || off+len < 0!");
        }
        throw new NullPointerException("b == null!");
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) throws IOException {
        flushBits();
        this.f97980g.write(bArr, i, i2);
        long j = this.streamPos + i2;
        this.streamPos = j;
        this.f97981h = Math.max(this.f97981h, j);
    }
}
