package com.sunia.HTREnginev2;

import com.jakewharton.disklrucache.Util;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* loaded from: classes4.dex */
public class d1n implements Closeable {

    /* renamed from: j */
    public static final byte f67400j = 13;

    /* renamed from: k */
    public static final byte f67401k = 10;

    /* renamed from: e */
    public final InputStream f67402e;

    /* renamed from: f */
    public final Charset f67403f;

    /* renamed from: g */
    public byte[] f67404g;

    /* renamed from: h */
    public int f67405h;

    /* renamed from: i */
    public int f67406i;

    /* renamed from: com.sunia.HTREnginev2.d1n$a */
    /* loaded from: classes4.dex */
    public class C13599a extends ByteArrayOutputStream {
        public C13599a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                i--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, d1n.this.f67403f.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public d1n(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f67402e) {
            if (this.f67404g != null) {
                this.f67404g = null;
                this.f67402e.close();
            }
        }
    }

    /* renamed from: j */
    public final void m53576j() throws IOException {
        InputStream inputStream = this.f67402e;
        byte[] bArr = this.f67404g;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.f67405h = 0;
        this.f67406i = read;
    }

    public String readLine() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.f67402e) {
            if (this.f67404g == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f67405h >= this.f67406i) {
                m53576j();
            }
            for (int i3 = this.f67405h; i3 != this.f67406i; i3++) {
                byte[] bArr2 = this.f67404g;
                if (bArr2[i3] == 10) {
                    int i4 = this.f67405h;
                    if (i3 != i4) {
                        i2 = i3 - 1;
                        if (bArr2[i2] == 13) {
                            String str = new String(bArr2, i4, i2 - i4, this.f67403f.name());
                            this.f67405h = i3 + 1;
                            return str;
                        }
                    }
                    i2 = i3;
                    String str2 = new String(bArr2, i4, i2 - i4, this.f67403f.name());
                    this.f67405h = i3 + 1;
                    return str2;
                }
            }
            C13599a c13599a = new C13599a((this.f67406i - this.f67405h) + 80);
            loop1: while (true) {
                byte[] bArr3 = this.f67404g;
                int i5 = this.f67405h;
                c13599a.write(bArr3, i5, this.f67406i - i5);
                this.f67406i = -1;
                m53576j();
                i = this.f67405h;
                while (i != this.f67406i) {
                    bArr = this.f67404g;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.f67405h;
            if (i != i6) {
                c13599a.write(bArr, i6, i - i6);
            }
            this.f67405h = i + 1;
            return c13599a.toString();
        }
    }

    public d1n(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i >= 0) {
            if (charset.equals(Util.f39060a)) {
                this.f67402e = inputStream;
                this.f67403f = charset;
                this.f67404g = new byte[i];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}
