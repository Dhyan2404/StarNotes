package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.Validate;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes10.dex */
public final class bxo extends FilterInputStream {

    /* renamed from: e */
    public final int f66232e;

    /* renamed from: f */
    public final int f66233f;

    /* renamed from: g */
    public final int f66234g;

    /* renamed from: h */
    public final int f66235h;

    /* renamed from: i */
    public final int f66236i;

    /* renamed from: j */
    public final int f66237j;

    /* renamed from: k */
    public final int f66238k;

    /* renamed from: l */
    public final byte[] f66239l;

    /* renamed from: m */
    public int f66240m;

    /* renamed from: n */
    public int f66241n;

    /* renamed from: o */
    public final byte[] f66242o;

    /* renamed from: p */
    public int f66243p;

    /* renamed from: q */
    public int f66244q;

    public bxo(InputStream inputStream, int[] iArr, int i, int i2) {
        super((InputStream) Validate.notNull(inputStream, "stream"));
        Validate.notNull(iArr, "chromaSub");
        Validate.isTrue(iArr.length == 2, "chromaSub.length != 2");
        int i3 = iArr[0];
        this.f66232e = i3;
        int i4 = iArr[1];
        this.f66233f = i4;
        this.f66234g = i;
        this.f66235h = i2;
        int i5 = (i3 * i4) + 2;
        this.f66237j = i5;
        int i6 = ((i2 + i3) - 1) / i3;
        this.f66236i = i6;
        this.f66238k = (i3 * i6) - i2;
        this.f66239l = new byte[i2 * i4 * 3];
        this.f66242o = new byte[i5 * i6];
    }

    /* renamed from: f */
    public static byte m53353f(int i) {
        return (byte) Math.max(0, Math.min(255, i));
    }

    /* renamed from: j */
    public final void m53354j() throws EOFException {
        this.f66240m = this.f66239l.length;
        for (int i = 0; i < this.f66236i; i++) {
            if (this.f66244q >= this.f66243p) {
                throw new EOFException("Unexpected end of stream");
            }
            byte[] bArr = this.f66242o;
            int i2 = this.f66237j;
            byte b = bArr[(r2 + i2) - 2];
            byte b2 = bArr[(r2 + i2) - 1];
            for (int i3 = 0; i3 < this.f66233f; i3++) {
                int i4 = 0;
                while (true) {
                    int i5 = this.f66232e;
                    if (i4 >= i5) {
                        break;
                    }
                    int i6 = (i5 * i) + i4;
                    int i7 = this.f66235h;
                    if (i6 >= i7) {
                        this.f66244q += this.f66238k;
                        break;
                    }
                    int i8 = (i6 + (i7 * i3)) * 3;
                    byte[] bArr2 = this.f66239l;
                    byte[] bArr3 = this.f66242o;
                    int i9 = this.f66244q;
                    this.f66244q = i9 + 1;
                    bArr2[i8] = bArr3[i9];
                    bArr2[i8 + 1] = b;
                    bArr2[i8 + 2] = b2;
                    i4++;
                }
            }
            this.f66244q += 2;
        }
        this.f66244q = this.f66243p;
        this.f66241n = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = this.f66240m;
        if (i < 0) {
            return -1;
        }
        if (this.f66241n >= i) {
            m53355w();
            if (this.f66240m < 0) {
                return -1;
            }
        }
        byte[] bArr = this.f66239l;
        int i2 = this.f66241n;
        this.f66241n = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        int i = this.f66240m;
        if (i < 0) {
            return -1L;
        }
        if (this.f66241n >= i) {
            m53355w();
            if (this.f66240m < 0) {
                return -1L;
            }
        }
        int min = (int) Math.min(this.f66240m - this.f66241n, j);
        this.f66241n += min;
        return min;
    }

    /* renamed from: w */
    public final void m53355w() throws IOException {
        if (this.f66244q >= this.f66243p) {
            int i = 0;
            while (i < this.f66242o.length) {
                InputStream inputStream = ((FilterInputStream) this).in;
                byte[] bArr = this.f66242o;
                int read = inputStream.read(bArr, i, bArr.length - i);
                if (read <= 0) {
                    break;
                } else {
                    i += read;
                }
            }
            this.f66243p = i;
            this.f66244q = 0;
        }
        if (this.f66243p > 0) {
            m53354j();
        } else {
            this.f66240m = -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f66240m;
        if (i3 < 0) {
            return -1;
        }
        if (this.f66241n >= i3) {
            m53355w();
            if (this.f66240m < 0) {
                return -1;
            }
        }
        int min = Math.min(this.f66240m - this.f66241n, i2);
        System.arraycopy(this.f66239l, this.f66241n, bArr, i, min);
        this.f66241n += min;
        return min;
    }
}
