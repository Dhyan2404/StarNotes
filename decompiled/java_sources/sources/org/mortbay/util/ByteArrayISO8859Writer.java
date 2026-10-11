package org.mortbay.util;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

/* loaded from: classes13.dex */
public class ByteArrayISO8859Writer extends Writer {

    /* renamed from: e */
    public byte[] f115289e;

    /* renamed from: f */
    public int f115290f;

    /* renamed from: g */
    public ByteArrayOutputStream2 f115291g;

    /* renamed from: h */
    public OutputStreamWriter f115292h;

    /* renamed from: i */
    public boolean f115293i;

    public ByteArrayISO8859Writer() {
        this.f115291g = null;
        this.f115292h = null;
        this.f115293i = false;
        this.f115289e = new byte[2048];
    }

    public int capacity() {
        return this.f115289e.length;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void destroy() {
        this.f115289e = null;
    }

    public void ensureSpareCapacity(int i) throws IOException {
        int i2 = this.f115290f;
        int i3 = i2 + i;
        byte[] bArr = this.f115289e;
        if (i3 > bArr.length) {
            if (this.f115293i) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Buffer overflow: ");
                stringBuffer.append(this.f115289e.length);
                throw new IOException(stringBuffer.toString());
            }
            byte[] bArr2 = new byte[((bArr.length + i) * 4) / 3];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.f115289e = bArr2;
        }
    }

    /* renamed from: f */
    public final void m71652f(char[] cArr, int i, int i2) throws IOException {
        ByteArrayOutputStream2 byteArrayOutputStream2 = this.f115291g;
        if (byteArrayOutputStream2 == null) {
            this.f115291g = new ByteArrayOutputStream2(i2 * 2);
            this.f115292h = new OutputStreamWriter(this.f115291g, StringUtil.__ISO_8859_1);
        } else {
            byteArrayOutputStream2.reset();
        }
        this.f115292h.write(cArr, i, i2);
        this.f115292h.flush();
        ensureSpareCapacity(this.f115291g.getCount());
        System.arraycopy(this.f115291g.getBuf(), 0, this.f115289e, this.f115290f, this.f115291g.getCount());
        this.f115290f += this.f115291g.getCount();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    public byte[] getBuf() {
        return this.f115289e;
    }

    public byte[] getByteArray() {
        int i = this.f115290f;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f115289e, 0, bArr, 0, i);
        return bArr;
    }

    public Object getLock() {
        return ((Writer) this).lock;
    }

    public void resetWriter() {
        this.f115290f = 0;
    }

    public void setLength(int i) {
        this.f115290f = i;
    }

    public int size() {
        return this.f115290f;
    }

    public int spareCapacity() {
        return this.f115289e.length - this.f115290f;
    }

    public void write(char c) throws IOException {
        ensureSpareCapacity(1);
        if (c >= 0 && c <= 127) {
            byte[] bArr = this.f115289e;
            int i = this.f115290f;
            this.f115290f = i + 1;
            bArr[i] = (byte) c;
            return;
        }
        m71652f(new char[]{c}, 0, 1);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(this.f115289e, 0, this.f115290f);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        ensureSpareCapacity(cArr.length);
        for (int i = 0; i < cArr.length; i++) {
            char c = cArr[i];
            if (c >= 0 && c <= 127) {
                byte[] bArr = this.f115289e;
                int i2 = this.f115290f;
                this.f115290f = i2 + 1;
                bArr[i2] = (byte) c;
            } else {
                m71652f(cArr, i, cArr.length - i);
                return;
            }
        }
    }

    public ByteArrayISO8859Writer(int i) {
        this.f115291g = null;
        this.f115292h = null;
        this.f115293i = false;
        this.f115289e = new byte[i];
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        ensureSpareCapacity(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i + i3;
            char c = cArr[i4];
            if (c >= 0 && c <= 127) {
                byte[] bArr = this.f115289e;
                int i5 = this.f115290f;
                this.f115290f = i5 + 1;
                bArr[i5] = (byte) c;
            } else {
                m71652f(cArr, i4, i2 - i3);
                return;
            }
        }
    }

    public ByteArrayISO8859Writer(byte[] bArr) {
        this.f115291g = null;
        this.f115292h = null;
        this.f115289e = bArr;
        this.f115293i = true;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        if (str == null) {
            write("null", 0, 4);
            return;
        }
        int length = str.length();
        ensureSpareCapacity(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt >= 0 && charAt <= 127) {
                byte[] bArr = this.f115289e;
                int i2 = this.f115290f;
                this.f115290f = i2 + 1;
                bArr[i2] = (byte) charAt;
            } else {
                m71652f(str.toCharArray(), i, length - i);
                return;
            }
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        ensureSpareCapacity(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i + i3;
            char charAt = str.charAt(i4);
            if (charAt >= 0 && charAt <= 127) {
                byte[] bArr = this.f115289e;
                int i5 = this.f115290f;
                this.f115290f = i5 + 1;
                bArr[i5] = (byte) charAt;
            } else {
                m71652f(str.toCharArray(), i4, i2 - i3);
                return;
            }
        }
    }
}
