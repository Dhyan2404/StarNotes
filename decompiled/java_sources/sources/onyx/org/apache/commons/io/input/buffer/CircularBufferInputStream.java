package onyx.org.apache.commons.io.input.buffer;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import onyx.org.apache.commons.io.IOUtils;

/* loaded from: classes11.dex */
public class CircularBufferInputStream extends FilterInputStream {
    protected final CircularByteBuffer buffer;
    protected final int bufferSize;

    /* renamed from: e */
    public boolean f104467e;

    public CircularBufferInputStream(InputStream inputStream) {
        this(inputStream, 8192);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f104467e = true;
        this.buffer.clear();
    }

    public void fillBuffer() throws IOException {
        if (this.f104467e) {
            return;
        }
        int space = this.buffer.getSpace();
        byte[] byteArray = IOUtils.byteArray(space);
        while (space > 0) {
            int read = ((FilterInputStream) this).in.read(byteArray, 0, space);
            if (read == -1) {
                this.f104467e = true;
                return;
            } else if (read > 0) {
                this.buffer.add(byteArray, 0, read);
                space -= read;
            }
        }
    }

    public boolean haveBytes(int i) throws IOException {
        if (this.buffer.getCurrentNumberOfBytes() < i) {
            fillBuffer();
        }
        return this.buffer.hasBytes();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (haveBytes(1)) {
            return this.buffer.read() & 255;
        }
        return -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircularBufferInputStream(InputStream inputStream, int i) {
        super(inputStream);
        Objects.requireNonNull(inputStream, "inputStream");
        if (i > 0) {
            this.buffer = new CircularByteBuffer(i);
            this.bufferSize = i;
            this.f104467e = false;
        } else {
            throw new IllegalArgumentException("Illegal bufferSize: " + i);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(bArr, "targetBuffer");
        if (i < 0) {
            throw new IllegalArgumentException("Offset must not be negative");
        }
        if (i2 >= 0) {
            if (!haveBytes(i2)) {
                return -1;
            }
            int min = Math.min(i2, this.buffer.getCurrentNumberOfBytes());
            for (int i3 = 0; i3 < min; i3++) {
                bArr[i + i3] = this.buffer.read();
            }
            return min;
        }
        throw new IllegalArgumentException("Length must not be negative");
    }
}
