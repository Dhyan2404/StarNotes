package com.sunia.HTREnginev2;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public class e1n implements Closeable {

    /* renamed from: j */
    public static final byte f68489j = 13;

    /* renamed from: k */
    public static final byte f68490k = 10;

    /* renamed from: e */
    public final InputStream f68491e;

    /* renamed from: f */
    public final Charset f68492f;

    /* renamed from: g */
    public byte[] f68493g;

    /* renamed from: h */
    public int f68494h;

    /* renamed from: i */
    public int f68495i;

    /* renamed from: com.sunia.HTREnginev2.e1n$a */
    /* loaded from: classes3.dex */
    public class C13653a extends ByteArrayOutputStream {
        public C13653a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                i--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, e1n.this.f68492f.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public e1n(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f68491e) {
            if (this.f68493g != null) {
                this.f68493g = null;
                this.f68491e.close();
            }
        }
    }

    /* renamed from: j */
    public final void m53904j() throws IOException {
        InputStream inputStream = this.f68491e;
        byte[] bArr = this.f68493g;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.f68494h = 0;
        this.f68495i = read;
    }

    public String readLine() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.f68491e) {
            if (this.f68493g == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f68494h >= this.f68495i) {
                m53904j();
            }
            for (int i3 = this.f68494h; i3 != this.f68495i; i3++) {
                byte[] bArr2 = this.f68493g;
                if (bArr2[i3] == 10) {
                    int i4 = this.f68494h;
                    if (i3 != i4) {
                        i2 = i3 - 1;
                        if (bArr2[i2] == 13) {
                            String str = new String(bArr2, i4, i2 - i4, this.f68492f.name());
                            this.f68494h = i3 + 1;
                            return str;
                        }
                    }
                    i2 = i3;
                    String str2 = new String(bArr2, i4, i2 - i4, this.f68492f.name());
                    this.f68494h = i3 + 1;
                    return str2;
                }
            }
            C13653a c13653a = new C13653a((this.f68495i - this.f68494h) + 80);
            loop1: while (true) {
                byte[] bArr3 = this.f68493g;
                int i5 = this.f68494h;
                c13653a.write(bArr3, i5, this.f68495i - i5);
                this.f68495i = -1;
                m53904j();
                i = this.f68494h;
                while (i != this.f68495i) {
                    bArr = this.f68493g;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.f68494h;
            if (i != i6) {
                c13653a.write(bArr, i6, i - i6);
            }
            this.f68494h = i + 1;
            return c13653a.toString();
        }
    }

    /* renamed from: w */
    public boolean m53905w() {
        return this.f68495i == -1;
    }

    public e1n(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i >= 0) {
            if (charset.equals(gzn.f71667a)) {
                this.f68491e = inputStream;
                this.f68492f = charset;
                this.f68493g = new byte[i];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}
