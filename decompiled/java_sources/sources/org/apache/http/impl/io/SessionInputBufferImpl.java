package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import org.apache.http.MessageConstraintException;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes12.dex */
public class SessionInputBufferImpl implements SessionInputBuffer, BufferInfo {

    /* renamed from: a */
    public final HttpTransportMetricsImpl f111020a;

    /* renamed from: b */
    public final byte[] f111021b;

    /* renamed from: c */
    public final ByteArrayBuffer f111022c;

    /* renamed from: d */
    public final int f111023d;

    /* renamed from: e */
    public final MessageConstraints f111024e;

    /* renamed from: f */
    public final CharsetDecoder f111025f;

    /* renamed from: g */
    public InputStream f111026g;

    /* renamed from: h */
    public int f111027h;

    /* renamed from: i */
    public int f111028i;

    /* renamed from: j */
    public CharBuffer f111029j;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i, int i2, MessageConstraints messageConstraints, CharsetDecoder charsetDecoder) {
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        Args.positive(i, "Buffer size");
        this.f111020a = httpTransportMetricsImpl;
        this.f111021b = new byte[i];
        this.f111027h = 0;
        this.f111028i = 0;
        this.f111023d = i2 < 0 ? 512 : i2;
        this.f111024e = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.f111022c = new ByteArrayBuffer(i);
        this.f111025f = charsetDecoder;
    }

    /* renamed from: a */
    public final int m68579a(CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        int i = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        if (this.f111029j == null) {
            this.f111029j = CharBuffer.allocate(1024);
        }
        this.f111025f.reset();
        while (byteBuffer.hasRemaining()) {
            i += m68580b(this.f111025f.decode(byteBuffer, this.f111029j, true), charArrayBuffer, byteBuffer);
        }
        int m68580b = i + m68580b(this.f111025f.flush(this.f111029j), charArrayBuffer, byteBuffer);
        this.f111029j.clear();
        return m68580b;
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    /* renamed from: b */
    public final int m68580b(CoderResult coderResult, CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.f111029j.flip();
        int remaining = this.f111029j.remaining();
        while (this.f111029j.hasRemaining()) {
            charArrayBuffer.append(this.f111029j.get());
        }
        this.f111029j.compact();
        return remaining;
    }

    public void bind(InputStream inputStream) {
        this.f111026g = inputStream;
    }

    /* renamed from: c */
    public final int m68581c(CharArrayBuffer charArrayBuffer) throws IOException {
        int length = this.f111022c.length();
        if (length > 0) {
            if (this.f111022c.byteAt(length - 1) == 10) {
                length--;
            }
            if (length > 0 && this.f111022c.byteAt(length - 1) == 13) {
                length--;
            }
        }
        if (this.f111025f == null) {
            charArrayBuffer.append(this.f111022c, 0, length);
        } else {
            length = m68579a(charArrayBuffer, ByteBuffer.wrap(this.f111022c.buffer(), 0, length));
        }
        this.f111022c.clear();
        return length;
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.f111021b.length;
    }

    public void clear() {
        this.f111027h = 0;
        this.f111028i = 0;
    }

    /* renamed from: d */
    public final int m68582d(CharArrayBuffer charArrayBuffer, int i) throws IOException {
        int i2 = this.f111027h;
        this.f111027h = i + 1;
        if (i > i2 && this.f111021b[i - 1] == 13) {
            i--;
        }
        int i3 = i - i2;
        if (this.f111025f != null) {
            return m68579a(charArrayBuffer, ByteBuffer.wrap(this.f111021b, i2, i3));
        }
        charArrayBuffer.append(this.f111021b, i2, i3);
        return i3;
    }

    /* renamed from: e */
    public final int m68583e(byte[] bArr, int i, int i2) throws IOException {
        Asserts.notNull(this.f111026g, "Input stream");
        return this.f111026g.read(bArr, i, i2);
    }

    public int fillBuffer() throws IOException {
        int i = this.f111027h;
        if (i > 0) {
            int i2 = this.f111028i - i;
            if (i2 > 0) {
                byte[] bArr = this.f111021b;
                System.arraycopy(bArr, i, bArr, 0, i2);
            }
            this.f111027h = 0;
            this.f111028i = i2;
        }
        int i3 = this.f111028i;
        byte[] bArr2 = this.f111021b;
        int m68583e = m68583e(bArr2, i3, bArr2.length - i3);
        if (m68583e == -1) {
            return -1;
        }
        this.f111028i = i3 + m68583e;
        this.f111020a.incrementBytesTransferred(m68583e);
        return m68583e;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.f111020a;
    }

    public boolean hasBufferedData() {
        return this.f111027h < this.f111028i;
    }

    public boolean isBound() {
        return this.f111026g != null;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        return hasBufferedData();
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.f111028i - this.f111027h;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.f111021b;
        int i = this.f111027h;
        this.f111027h = i + 1;
        return bArr[i] & 255;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        int maxLineLength = this.f111024e.getMaxLineLength();
        boolean z = true;
        int i = 0;
        while (z) {
            int i2 = this.f111027h;
            while (true) {
                if (i2 >= this.f111028i) {
                    i2 = -1;
                    break;
                }
                if (this.f111021b[i2] == 10) {
                    break;
                }
                i2++;
            }
            if (maxLineLength > 0) {
                if ((this.f111022c.length() + (i2 >= 0 ? i2 : this.f111028i)) - this.f111027h >= maxLineLength) {
                    throw new MessageConstraintException("Maximum line length limit exceeded");
                }
            }
            if (i2 != -1) {
                if (this.f111022c.isEmpty()) {
                    return m68582d(charArrayBuffer, i2);
                }
                int i3 = i2 + 1;
                int i4 = this.f111027h;
                this.f111022c.append(this.f111021b, i4, i3 - i4);
                this.f111027h = i3;
            } else {
                if (hasBufferedData()) {
                    int i5 = this.f111028i;
                    int i6 = this.f111027h;
                    this.f111022c.append(this.f111021b, i6, i5 - i6);
                    this.f111027h = this.f111028i;
                }
                i = fillBuffer();
                if (i == -1) {
                }
            }
            z = false;
        }
        if (i == -1 && this.f111022c.isEmpty()) {
            return -1;
        }
        return m68581c(charArrayBuffer);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int min = Math.min(i2, this.f111028i - this.f111027h);
            System.arraycopy(this.f111021b, this.f111027h, bArr, i, min);
            this.f111027h += min;
            return min;
        }
        if (i2 > this.f111023d) {
            int m68583e = m68583e(bArr, i, i2);
            if (m68583e > 0) {
                this.f111020a.incrementBytesTransferred(m68583e);
            }
            return m68583e;
        }
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        int min2 = Math.min(i2, this.f111028i - this.f111027h);
        System.arraycopy(this.f111021b, this.f111027h, bArr, i, min2);
        this.f111027h += min2;
        return min2;
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i) {
        this(httpTransportMetricsImpl, i, i, null, null);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public String readLine() throws IOException {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (readLine(charArrayBuffer) != -1) {
            return charArrayBuffer.toString();
        }
        return null;
    }
}
