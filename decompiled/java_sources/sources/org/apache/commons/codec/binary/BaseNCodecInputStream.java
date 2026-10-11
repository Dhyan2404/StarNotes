package org.apache.commons.codec.binary;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.apache.commons.codec.binary.BaseNCodec;

/* loaded from: classes9.dex */
public class BaseNCodecInputStream extends FilterInputStream {

    /* renamed from: e */
    public final BaseNCodec f104623e;

    /* renamed from: f */
    public final boolean f104624f;

    /* renamed from: g */
    public final byte[] f104625g;

    /* renamed from: h */
    public final BaseNCodec.C18665a f104626h;

    public BaseNCodecInputStream(InputStream inputStream, BaseNCodec baseNCodec, boolean z) {
        super(inputStream);
        this.f104625g = new byte[1];
        this.f104626h = new BaseNCodec.C18665a();
        this.f104624f = z;
        this.f104623e = baseNCodec;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return !this.f104626h.f104620f ? 1 : 0;
    }

    public boolean isStrictDecoding() {
        return this.f104623e.isStrictDecoding();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = read(this.f104625g, 0, 1);
        while (read == 0) {
            read = read(this.f104625g, 0, 1);
        }
        if (read <= 0) {
            return -1;
        }
        byte b = this.f104625g[0];
        return b < 0 ? b + 256 : b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        int read;
        if (j < 0) {
            throw new IllegalArgumentException("Negative skip length: " + j);
        }
        byte[] bArr = new byte[512];
        long j2 = j;
        while (j2 > 0 && (read = read(bArr, 0, (int) Math.min(512, j2))) != -1) {
            j2 -= read;
        }
        return j - j2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(bArr, "array");
        if (i >= 0 && i2 >= 0) {
            if (i > bArr.length || i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            int i3 = 0;
            while (i3 == 0) {
                if (!this.f104623e.m65711f(this.f104626h)) {
                    byte[] bArr2 = new byte[this.f104624f ? 4096 : 8192];
                    int read = ((FilterInputStream) this).in.read(bArr2);
                    if (this.f104624f) {
                        this.f104623e.mo65699e(bArr2, 0, read, this.f104626h);
                    } else {
                        this.f104623e.mo65698d(bArr2, 0, read, this.f104626h);
                    }
                }
                i3 = this.f104623e.m65712g(bArr, i, i2, this.f104626h);
            }
            return i3;
        }
        throw new IndexOutOfBoundsException();
    }
}
