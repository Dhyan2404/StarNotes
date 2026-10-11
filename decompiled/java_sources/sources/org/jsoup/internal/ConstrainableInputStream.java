package org.jsoup.internal;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import org.jsoup.helper.Validate;

/* loaded from: classes13.dex */
public final class ConstrainableInputStream extends BufferedInputStream {

    /* renamed from: k */
    public static final int f114028k = 32768;

    /* renamed from: e */
    public final boolean f114029e;

    /* renamed from: f */
    public final int f114030f;

    /* renamed from: g */
    public long f114031g;

    /* renamed from: h */
    public long f114032h;

    /* renamed from: i */
    public int f114033i;

    /* renamed from: j */
    public boolean f114034j;

    public ConstrainableInputStream(InputStream inputStream, int i, int i2) {
        super(inputStream, i);
        this.f114032h = 0L;
        Validate.isTrue(i2 >= 0);
        this.f114030f = i2;
        this.f114033i = i2;
        this.f114029e = i2 != 0;
        this.f114031g = System.nanoTime();
    }

    public static ConstrainableInputStream wrap(InputStream inputStream, int i, int i2) {
        return inputStream instanceof ConstrainableInputStream ? (ConstrainableInputStream) inputStream : new ConstrainableInputStream(inputStream, i, i2);
    }

    /* renamed from: f */
    public final boolean m71095f() {
        return this.f114032h != 0 && System.nanoTime() - this.f114031g > this.f114032h;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (this.f114034j || (this.f114029e && this.f114033i <= 0)) {
            return -1;
        }
        if (Thread.interrupted()) {
            this.f114034j = true;
            return -1;
        }
        if (m71095f()) {
            throw new SocketTimeoutException("Read timeout");
        }
        if (this.f114029e && i2 > (i3 = this.f114033i)) {
            i2 = i3;
        }
        try {
            int read = super.read(bArr, i, i2);
            this.f114033i -= read;
            return read;
        } catch (SocketTimeoutException unused) {
            return 0;
        }
    }

    public ByteBuffer readToByteBuffer(int i) throws IOException {
        Validate.isTrue(i >= 0, "maxSize must be 0 (unlimited) or larger");
        boolean z = i > 0;
        int i2 = 32768;
        if (z && i < 32768) {
            i2 = i;
        }
        byte[] bArr = new byte[i2];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        while (true) {
            int read = read(bArr);
            if (read == -1) {
                break;
            }
            if (z) {
                if (read >= i) {
                    byteArrayOutputStream.write(bArr, 0, i);
                    break;
                }
                i -= read;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f114033i = this.f114030f - ((BufferedInputStream) this).markpos;
    }

    public ConstrainableInputStream timeout(long j, long j2) {
        this.f114031g = j;
        this.f114032h = j2 * 1000000;
        return this;
    }
}
