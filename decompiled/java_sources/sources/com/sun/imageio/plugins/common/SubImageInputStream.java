package com.sun.imageio.plugins.common;

import java.io.IOException;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageInputStreamImpl;

/* loaded from: classes9.dex */
public final class SubImageInputStream extends ImageInputStreamImpl {
    int length;
    int startingLength;
    long startingPos;
    ImageInputStream stream;

    public SubImageInputStream(ImageInputStream imageInputStream, int i) throws IOException {
        this.stream = imageInputStream;
        this.startingPos = imageInputStream.getStreamPosition();
        this.length = i;
        this.startingLength = i;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long length() {
        return this.startingLength;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        int i = this.length;
        if (i == 0) {
            return -1;
        }
        this.length = i - 1;
        return this.stream.read();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void seek(long j) throws IOException {
        this.stream.seek(j - this.startingPos);
        this.streamPos = j;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.length;
        if (i3 == 0) {
            return -1;
        }
        int read = this.stream.read(bArr, i, Math.min(i2, i3));
        this.length -= read;
        return read;
    }
}
