package org.apache.commons.io.input.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.apache.commons.io.IOUtils;

/* loaded from: classes12.dex */
public class CircularBufferInputStream extends InputStream {
    protected final CircularByteBuffer buffer;
    protected final int bufferSize;
    private boolean eof;

    /* renamed from: in */
    protected final InputStream f107354in;

    public CircularBufferInputStream(InputStream inputStream, int i) {
        if (i > 0) {
            Objects.requireNonNull(inputStream, "inputStream");
            this.f107354in = inputStream;
            this.buffer = new CircularByteBuffer(i);
            this.bufferSize = i;
            this.eof = false;
            return;
        }
        throw new IllegalArgumentException("Invalid bufferSize: " + i);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f107354in.close();
        this.eof = true;
        this.buffer.clear();
    }

    public void fillBuffer() throws IOException {
        if (this.eof) {
            return;
        }
        int space = this.buffer.getSpace();
        byte[] byteArray = IOUtils.byteArray(space);
        while (space > 0) {
            int read = this.f107354in.read(byteArray, 0, space);
            if (read == -1) {
                this.eof = true;
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

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (haveBytes(1)) {
            return this.buffer.read() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
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

    public CircularBufferInputStream(InputStream inputStream) {
        this(inputStream, 8192);
    }
}
