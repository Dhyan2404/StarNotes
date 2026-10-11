package org.apache.commons.compress.utils;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* loaded from: classes12.dex */
public class BitInputStream implements Closeable {

    /* renamed from: i */
    public static final int f107299i = 63;

    /* renamed from: j */
    public static final long[] f107300j = new long[64];

    /* renamed from: e */
    public final CountingInputStream f107301e;

    /* renamed from: f */
    public final ByteOrder f107302f;

    /* renamed from: g */
    public long f107303g;

    /* renamed from: h */
    public int f107304h;

    static {
        for (int i = 1; i <= 63; i++) {
            long[] jArr = f107300j;
            jArr[i] = (jArr[i - 1] << 1) + 1;
        }
    }

    public BitInputStream(InputStream inputStream, ByteOrder byteOrder) {
        this.f107301e = new CountingInputStream(inputStream);
        this.f107302f = byteOrder;
    }

    public void alignWithByteBoundary() {
        int i = this.f107304h % 8;
        if (i > 0) {
            m67158w(i);
        }
    }

    public long bitsAvailable() throws IOException {
        return this.f107304h + (this.f107301e.available() * 8);
    }

    public int bitsCached() {
        return this.f107304h;
    }

    public void clearBitCache() {
        this.f107303g = 0L;
        this.f107304h = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f107301e.close();
    }

    /* renamed from: f */
    public final boolean m67156f(int i) throws IOException {
        while (true) {
            int i2 = this.f107304h;
            if (i2 >= i || i2 >= 57) {
                return false;
            }
            long read = this.f107301e.read();
            if (read < 0) {
                return true;
            }
            if (this.f107302f == ByteOrder.LITTLE_ENDIAN) {
                this.f107303g = (read << this.f107304h) | this.f107303g;
            } else {
                this.f107303g = read | (this.f107303g << 8);
            }
            this.f107304h += 8;
        }
    }

    public long getBytesRead() {
        return this.f107301e.getBytesRead();
    }

    /* renamed from: j */
    public final long m67157j(int i) throws IOException {
        long j;
        int i2 = i - this.f107304h;
        int i3 = 8 - i2;
        long read = this.f107301e.read();
        if (read < 0) {
            return read;
        }
        if (this.f107302f == ByteOrder.LITTLE_ENDIAN) {
            long[] jArr = f107300j;
            this.f107303g = ((jArr[i2] & read) << this.f107304h) | this.f107303g;
            read >>>= i2;
            j = jArr[i3];
        } else {
            long j2 = this.f107303g << i2;
            long[] jArr2 = f107300j;
            this.f107303g = j2 | ((read >>> i3) & jArr2[i2]);
            j = jArr2[i3];
        }
        long j3 = read & j;
        long j4 = this.f107303g & f107300j[i];
        this.f107303g = j3;
        this.f107304h = i3;
        return j4;
    }

    public long readBits(int i) throws IOException {
        if (i < 0 || i > 63) {
            throw new IOException("count must not be negative or greater than 63");
        }
        if (m67156f(i)) {
            return -1L;
        }
        return this.f107304h < i ? m67157j(i) : m67158w(i);
    }

    /* renamed from: w */
    public final long m67158w(int i) {
        long j;
        if (this.f107302f == ByteOrder.LITTLE_ENDIAN) {
            long j2 = this.f107303g;
            j = f107300j[i] & j2;
            this.f107303g = j2 >>> i;
        } else {
            j = f107300j[i] & (this.f107303g >> (this.f107304h - i));
        }
        this.f107304h -= i;
        return j;
    }
}
