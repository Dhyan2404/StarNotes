package com.twelvemonkeys.imageio.stream;

import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageInputStreamImpl;

/* loaded from: classes10.dex */
public final class SubImageInputStream extends ImageInputStreamImpl {

    /* renamed from: e */
    public final ImageInputStream f94208e;

    /* renamed from: f */
    public final long f94209f;

    /* renamed from: g */
    public final long f94210g;

    public SubImageInputStream(ImageInputStream imageInputStream, long j) throws IOException {
        Validate.notNull(imageInputStream, "stream");
        Validate.isTrue(j >= 0, Long.valueOf(j), "length < 0: %d");
        this.f94208e = imageInputStream;
        this.f94209f = imageInputStream.getStreamPosition();
        this.f94210g = j;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long length() {
        try {
            long length = this.f94208e.length();
            if (length < 0) {
                return -1L;
            }
            return Math.min(length - this.f94209f, this.f94210g);
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        if (this.streamPos >= this.f94210g) {
            return -1;
        }
        int read = this.f94208e.read();
        if (read >= 0) {
            this.streamPos++;
        }
        return read;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public void seek(long j) throws IOException {
        if (j < getFlushedPosition()) {
            throw new IndexOutOfBoundsException("pos < flushedPosition");
        }
        this.f94208e.seek(this.f94209f + j);
        this.streamPos = j;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.streamPos;
        long j2 = this.f94210g;
        if (j >= j2) {
            return -1;
        }
        int read = this.f94208e.read(bArr, i, (int) Math.min(i2, j2 - j));
        if (read >= 0) {
            this.streamPos += read;
        }
        return read;
    }
}
