package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class ExifOrientationStream extends FilterInputStream {

    /* renamed from: g */
    public static final int f14486g = 2;

    /* renamed from: h */
    public static final byte[] f14487h;

    /* renamed from: i */
    public static final int f14488i;

    /* renamed from: j */
    public static final int f14489j;

    /* renamed from: e */
    public final byte f14490e;

    /* renamed from: f */
    public int f14491f;

    static {
        byte[] bArr = {-1, ExifInterface.f7159G1, 0, 28, 69, 120, JSONB.Constants.BC_STR_ASCII_FIX_32, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f14487h = bArr;
        int length = bArr.length;
        f14488i = length;
        f14489j = length + 2;
    }

    public ExifOrientationStream(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f14490e = (byte) i;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        int i;
        int i2 = this.f14491f;
        if (i2 < 2 || i2 > (i = f14489j)) {
            read = super.read();
        } else if (i2 == i) {
            read = this.f14490e;
        } else {
            read = f14487h[i2 - 2] & 255;
        }
        if (read != -1) {
            this.f14491f++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f14491f = (int) (this.f14491f + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = this.f14491f;
        int i5 = f14489j;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f14490e;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f14487h, this.f14491f - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f14491f += i3;
        }
        return i3;
    }
}
