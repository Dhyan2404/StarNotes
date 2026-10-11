package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.io.InputStream;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public class dci extends InputStream {

    /* renamed from: e */
    public ImageInputStream f67720e;

    /* renamed from: f */
    public final boolean f67721f;

    /* renamed from: g */
    public long f67722g;

    /* renamed from: h */
    public long f67723h;

    public dci(ImageInputStream imageInputStream) {
        this(imageInputStream, -1L, false);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (!this.f67721f) {
            return 0;
        }
        long j = this.f67722g;
        if (j > 0) {
            return (int) Math.min(2147483647L, j);
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f67721f) {
            ImageInputStream imageInputStream = this.f67720e;
            imageInputStream.seek(imageInputStream.getStreamPosition() + this.f67722g);
        }
        this.f67722g = 0L;
        this.f67720e = null;
    }

    /* renamed from: f */
    public final long m53632f(long j) {
        if (this.f67721f) {
            long j2 = this.f67722g;
            if (j2 < j) {
                return Math.max(j2, 0L);
            }
        }
        return Math.max(j, 0L);
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        try {
            this.f67723h = this.f67720e.getStreamPosition();
        } catch (IOException e) {
            throw new IllegalStateException("Could not read stream position: " + e.getMessage(), e);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f67721f) {
            long j = this.f67722g;
            this.f67722g = j - 1;
            if (j <= 0) {
                this.f67722g = 0L;
                return -1;
            }
        }
        return this.f67720e.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        long streamPosition = this.f67720e.getStreamPosition();
        long j = this.f67723h;
        this.f67720e.seek(j);
        this.f67722g += streamPosition - j;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long skipBytes = this.f67720e.skipBytes(m53632f(j));
        this.f67722g -= skipBytes;
        return skipBytes;
    }

    public dci(ImageInputStream imageInputStream, long j) {
        this(imageInputStream, j, true);
    }

    public dci(ImageInputStream imageInputStream, long j, boolean z) {
        Validate.notNull(imageInputStream, "stream");
        Validate.isTrue(!z || j >= 0, Long.valueOf(j), "length < 0: %f");
        this.f67720e = imageInputStream;
        this.f67722g = j;
        this.f67721f = z;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f67721f && this.f67722g <= 0) {
            return -1;
        }
        int read = this.f67720e.read(bArr, i, (int) m53632f(i2));
        if (this.f67721f) {
            this.f67722g = read >= 0 ? this.f67722g - read : 0L;
        }
        return read;
    }
}
