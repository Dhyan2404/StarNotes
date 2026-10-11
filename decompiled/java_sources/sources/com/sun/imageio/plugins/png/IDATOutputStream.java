package com.sun.imageio.plugins.png;

import com.alibaba.fastjson2.JSONB;
import java.io.IOException;
import java.util.zip.Deflater;
import javax.imageio.stream.ImageOutputStream;
import javax.imageio.stream.ImageOutputStreamImpl;

/* loaded from: classes9.dex */
final class IDATOutputStream extends ImageOutputStreamImpl {
    private static final byte[] chunkType = {73, JSONB.Constants.BC_INT32_SHORT_ZERO, 65, 84};
    private int bytesRemaining;
    private final int chunkLength;
    private final Deflater def;
    private long startPos;
    private final ImageOutputStream stream;
    private final CRC crc = new CRC();
    private final byte[] buf = new byte[512];
    private final byte[] wbuf1 = new byte[1];

    public IDATOutputStream(ImageOutputStream imageOutputStream, int i, int i2) throws IOException {
        this.stream = imageOutputStream;
        this.chunkLength = i;
        this.def = new Deflater(i2);
        startChunk();
    }

    private void finishChunk() throws IOException {
        this.stream.writeInt(this.crc.getValue());
        long streamPosition = this.stream.getStreamPosition();
        this.stream.seek(this.startPos);
        this.stream.writeInt(((int) (streamPosition - this.startPos)) - 12);
        this.stream.seek(streamPosition);
        try {
            this.stream.flushBefore(streamPosition);
        } catch (IOException e) {
            this.startPos = this.stream.getStreamPosition();
            throw e;
        }
    }

    private void startChunk() throws IOException {
        this.crc.reset();
        this.startPos = this.stream.getStreamPosition();
        this.stream.writeInt(-1);
        CRC crc = this.crc;
        byte[] bArr = chunkType;
        crc.update(bArr, 0, 4);
        this.stream.write(bArr, 0, 4);
        this.bytesRemaining = this.chunkLength;
    }

    public void deflate() throws IOException {
        Deflater deflater = this.def;
        byte[] bArr = this.buf;
        int i = 0;
        int deflate = deflater.deflate(bArr, 0, bArr.length);
        while (deflate > 0) {
            if (this.bytesRemaining == 0) {
                finishChunk();
                startChunk();
            }
            int min = Math.min(deflate, this.bytesRemaining);
            this.crc.update(this.buf, i, min);
            this.stream.write(this.buf, i, min);
            i += min;
            deflate -= min;
            this.bytesRemaining -= min;
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    public void finish() throws IOException {
        try {
            if (!this.def.finished()) {
                this.def.finish();
                while (!this.def.finished()) {
                    deflate();
                }
            }
            finishChunk();
        } finally {
            this.def.end();
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        throw new RuntimeException("Method not available");
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0 || this.def.finished()) {
            return;
        }
        this.def.setInput(bArr, i, i2);
        while (!this.def.needsInput()) {
            deflate();
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException("Method not available");
    }

    @Override // javax.imageio.stream.ImageOutputStreamImpl, javax.imageio.stream.ImageOutputStream, java.io.DataOutput
    public void write(int i) throws IOException {
        byte[] bArr = this.wbuf1;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
