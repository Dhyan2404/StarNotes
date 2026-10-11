package com.sun.imageio.plugins.png;

import java.io.IOException;
import javax.imageio.stream.ImageOutputStream;
import javax.imageio.stream.ImageOutputStreamImpl;

/* loaded from: classes9.dex */
final class ChunkStream extends ImageOutputStreamImpl {
    private final CRC crc = new CRC();
    private final long startPos;
    private final ImageOutputStream stream;

    public ChunkStream(int i, ImageOutputStream imageOutputStream) throws IOException {
        this.stream = imageOutputStream;
        this.startPos = imageOutputStream.getStreamPosition();
        imageOutputStream.writeInt(-1);
        writeInt(i);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    public void finish() throws IOException {
        this.stream.writeInt(this.crc.getValue());
        long streamPosition = this.stream.getStreamPosition();
        this.stream.seek(this.startPos);
        this.stream.writeInt(((int) (streamPosition - this.startPos)) - 12);
        this.stream.seek(streamPosition);
        this.stream.flushBefore(streamPosition);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        throw new RuntimeException("Method not available");
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.crc.update(bArr, i, i2);
        this.stream.write(bArr, i, i2);
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException("Method not available");
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(int i) throws IOException {
        this.crc.update(i);
        this.stream.write(i);
    }
}
