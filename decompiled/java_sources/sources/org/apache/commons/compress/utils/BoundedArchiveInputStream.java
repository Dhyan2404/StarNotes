package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes12.dex */
public abstract class BoundedArchiveInputStream extends InputStream {

    /* renamed from: e */
    public final long f107305e;

    /* renamed from: f */
    public ByteBuffer f107306f;

    /* renamed from: g */
    public long f107307g;

    public BoundedArchiveInputStream(long j, long j2) {
        long j3 = j + j2;
        this.f107305e = j3;
        if (j3 >= j) {
            this.f107307g = j;
            return;
        }
        throw new IllegalArgumentException("Invalid length of stream at offset=" + j + ", length=" + j2);
    }

    @Override // java.io.InputStream
    public synchronized int read() throws IOException {
        if (this.f107307g >= this.f107305e) {
            return -1;
        }
        ByteBuffer byteBuffer = this.f107306f;
        if (byteBuffer == null) {
            this.f107306f = ByteBuffer.allocate(1);
        } else {
            byteBuffer.rewind();
        }
        if (read(this.f107307g, this.f107306f) < 1) {
            return -1;
        }
        this.f107307g++;
        return this.f107306f.get() & 255;
    }

    public abstract int read(long j, ByteBuffer byteBuffer) throws IOException;

    @Override // java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f107307g;
        long j2 = this.f107305e;
        if (j >= j2) {
            return -1;
        }
        long min = Math.min(i2, j2 - j);
        if (min <= 0) {
            return 0;
        }
        if (i >= 0 && i <= bArr.length && min <= bArr.length - i) {
            int read = read(this.f107307g, ByteBuffer.wrap(bArr, i, (int) min));
            if (read > 0) {
                this.f107307g += read;
            }
            return read;
        }
        throw new IndexOutOfBoundsException("offset or len are out of bounds");
    }
}
