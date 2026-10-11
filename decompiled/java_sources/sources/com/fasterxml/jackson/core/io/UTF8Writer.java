package com.fasterxml.jackson.core.io;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* loaded from: classes4.dex */
public final class UTF8Writer extends Writer {

    /* renamed from: k */
    public static final int f21269k = 55296;

    /* renamed from: l */
    public static final int f21270l = 56319;

    /* renamed from: m */
    public static final int f21271m = 56320;

    /* renamed from: n */
    public static final int f21272n = 57343;

    /* renamed from: e */
    public final IOContext f21273e;

    /* renamed from: f */
    public OutputStream f21274f;

    /* renamed from: g */
    public byte[] f21275g;

    /* renamed from: h */
    public final int f21276h;

    /* renamed from: i */
    public int f21277i = 0;

    /* renamed from: j */
    public int f21278j;

    public UTF8Writer(IOContext iOContext, OutputStream outputStream) {
        this.f21273e = iOContext;
        this.f21274f = outputStream;
        this.f21275g = iOContext.allocWriteEncodingBuffer();
        this.f21276h = r1.length - 4;
    }

    public static void illegalSurrogate(int i) throws IOException {
        throw new IOException(illegalSurrogateDesc(i));
    }

    public static String illegalSurrogateDesc(int i) {
        if (i > 1114111) {
            return "Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 4627";
        }
        if (i < 55296) {
            return "Illegal character point (0x" + Integer.toHexString(i) + ") to output";
        }
        if (i <= 56319) {
            return "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + MotionUtils.f31762d;
        }
        return "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + MotionUtils.f31762d;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f21274f;
        if (outputStream != null) {
            int i = this.f21277i;
            if (i > 0) {
                outputStream.write(this.f21275g, 0, i);
                this.f21277i = 0;
            }
            OutputStream outputStream2 = this.f21274f;
            this.f21274f = null;
            byte[] bArr = this.f21275g;
            if (bArr != null) {
                this.f21275g = null;
                this.f21273e.releaseWriteEncodingBuffer(bArr);
            }
            outputStream2.close();
            int i2 = this.f21278j;
            this.f21278j = 0;
            if (i2 > 0) {
                illegalSurrogate(i2);
            }
        }
    }

    public int convertSurrogate(int i) throws IOException {
        int i2 = this.f21278j;
        this.f21278j = 0;
        if (i >= 56320 && i <= 57343) {
            return ((i2 - 55296) << 10) + 65536 + (i - 56320);
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.f21274f;
        if (outputStream != null) {
            int i = this.f21277i;
            if (i > 0) {
                outputStream.write(this.f21275g, 0, i);
                this.f21277i = 0;
            }
            this.f21274f.flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        write(c);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0025, code lost:
    
        continue;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(char[] r8, int r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.UTF8Writer.write(char[], int, int):void");
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        int i2;
        if (this.f21278j > 0) {
            i = convertSurrogate(i);
        } else if (i >= 55296 && i <= 57343) {
            if (i > 56319) {
                illegalSurrogate(i);
            }
            this.f21278j = i;
            return;
        }
        int i3 = this.f21277i;
        if (i3 >= this.f21276h) {
            this.f21274f.write(this.f21275g, 0, i3);
            this.f21277i = 0;
        }
        if (i < 128) {
            byte[] bArr = this.f21275g;
            int i4 = this.f21277i;
            this.f21277i = i4 + 1;
            bArr[i4] = (byte) i;
            return;
        }
        int i5 = this.f21277i;
        if (i < 2048) {
            byte[] bArr2 = this.f21275g;
            int i6 = i5 + 1;
            bArr2[i5] = (byte) ((i >> 6) | 192);
            i2 = i6 + 1;
            bArr2[i6] = (byte) ((i & 63) | 128);
        } else if (i <= 65535) {
            byte[] bArr3 = this.f21275g;
            int i7 = i5 + 1;
            bArr3[i5] = (byte) ((i >> 12) | 224);
            int i8 = i7 + 1;
            bArr3[i7] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i8] = (byte) ((i & 63) | 128);
            i2 = i8 + 1;
        } else {
            if (i > 1114111) {
                illegalSurrogate(i);
            }
            byte[] bArr4 = this.f21275g;
            int i9 = i5 + 1;
            bArr4[i5] = (byte) ((i >> 18) | 240);
            int i10 = i9 + 1;
            bArr4[i9] = (byte) (((i >> 12) & 63) | 128);
            int i11 = i10 + 1;
            bArr4[i10] = (byte) (((i >> 6) & 63) | 128);
            i2 = i11 + 1;
            bArr4[i11] = (byte) ((i & 63) | 128);
        }
        this.f21277i = i2;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0029, code lost:
    
        continue;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(java.lang.String r8, int r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.UTF8Writer.write(java.lang.String, int, int):void");
    }
}
