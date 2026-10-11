package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.Validate;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* loaded from: classes10.dex */
public final class axo extends FilterInputStream {

    /* renamed from: e */
    public final int f65185e;

    /* renamed from: f */
    public final int f65186f;

    /* renamed from: g */
    public final int f65187g;

    /* renamed from: h */
    public final int f65188h;

    /* renamed from: i */
    public final int f65189i;

    /* renamed from: j */
    public final int f65190j;

    /* renamed from: k */
    public final int f65191k;

    /* renamed from: l */
    public final byte[] f65192l;

    /* renamed from: m */
    public int f65193m;

    /* renamed from: n */
    public int f65194n;

    /* renamed from: o */
    public final byte[] f65195o;

    /* renamed from: p */
    public int f65196p;

    /* renamed from: q */
    public int f65197q;

    public axo(InputStream inputStream, int[] iArr, int i, int i2, ByteOrder byteOrder) {
        super((InputStream) Validate.notNull(inputStream, "stream"));
        Validate.notNull(iArr, "chromaSub");
        Validate.isTrue(iArr.length == 2, "chromaSub.length != 2");
        Validate.notNull(byteOrder, "byteOrder");
        int i3 = iArr[0];
        this.f65185e = i3;
        int i4 = iArr[1];
        this.f65186f = i4;
        this.f65187g = i;
        this.f65188h = i2;
        int i5 = ((i3 * i4) + 2) * 2;
        this.f65190j = i5;
        int i6 = ((i2 + i3) - 1) / i3;
        this.f65189i = i6;
        this.f65191k = ((i3 * i6) - i2) * 2;
        this.f65192l = new byte[i2 * 2 * i4 * 3];
        this.f65195o = new byte[i5 * i6];
    }

    /* renamed from: f */
    public final void m53109f() throws EOFException {
        this.f65193m = this.f65192l.length;
        for (int i = 0; i < this.f65189i; i++) {
            if (this.f65197q >= this.f65196p) {
                throw new EOFException("Unexpected end of stream");
            }
            byte[] bArr = this.f65195o;
            int i2 = this.f65190j;
            byte b = bArr[(r2 + i2) - 4];
            byte b2 = bArr[(r2 + i2) - 3];
            byte b3 = bArr[(r2 + i2) - 2];
            byte b4 = bArr[(r2 + i2) - 1];
            for (int i3 = 0; i3 < this.f65186f; i3++) {
                int i4 = 0;
                while (true) {
                    int i5 = this.f65185e;
                    if (i4 >= i5) {
                        break;
                    }
                    int i6 = (i5 * i) + i4;
                    int i7 = this.f65188h;
                    if (i6 >= i7) {
                        this.f65197q += this.f65191k;
                        break;
                    }
                    int i8 = (i6 + (i7 * i3)) * 6;
                    byte[] bArr2 = this.f65192l;
                    byte[] bArr3 = this.f65195o;
                    int i9 = this.f65197q;
                    int i10 = i9 + 1;
                    bArr2[i8] = bArr3[i9];
                    this.f65197q = i10 + 1;
                    bArr2[i8 + 1] = bArr3[i10];
                    bArr2[i8 + 2] = b;
                    bArr2[i8 + 3] = b2;
                    bArr2[i8 + 4] = b3;
                    bArr2[i8 + 5] = b4;
                    i4++;
                }
            }
            this.f65197q += 4;
        }
        this.f65197q = this.f65196p;
        this.f65194n = 0;
    }

    /* renamed from: j */
    public final void m53110j() throws IOException {
        if (this.f65197q >= this.f65196p) {
            int i = 0;
            while (i < this.f65195o.length) {
                InputStream inputStream = ((FilterInputStream) this).in;
                byte[] bArr = this.f65195o;
                int read = inputStream.read(bArr, i, bArr.length - i);
                if (read <= 0) {
                    break;
                } else {
                    i += read;
                }
            }
            this.f65196p = i;
            this.f65197q = 0;
        }
        if (this.f65196p > 0) {
            m53109f();
        } else {
            this.f65193m = -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = this.f65193m;
        if (i < 0) {
            return -1;
        }
        if (this.f65194n >= i) {
            m53110j();
            if (this.f65193m < 0) {
                return -1;
            }
        }
        byte[] bArr = this.f65192l;
        int i2 = this.f65194n;
        this.f65194n = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        int i = this.f65193m;
        if (i < 0) {
            return -1L;
        }
        if (this.f65194n >= i) {
            m53110j();
            if (this.f65193m < 0) {
                return -1L;
            }
        }
        int min = (int) Math.min(this.f65193m - this.f65194n, j);
        this.f65194n += min;
        return min;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f65193m;
        if (i3 < 0) {
            return -1;
        }
        if (this.f65194n >= i3) {
            m53110j();
            if (this.f65193m < 0) {
                return -1;
            }
        }
        int min = Math.min(this.f65193m - this.f65194n, i2);
        System.arraycopy(this.f65192l, this.f65194n, bArr, i, min);
        this.f65194n += min;
        return min;
    }
}
