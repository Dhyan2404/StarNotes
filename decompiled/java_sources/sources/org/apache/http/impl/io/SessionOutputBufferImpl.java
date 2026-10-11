package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes12.dex */
public class SessionOutputBufferImpl implements SessionOutputBuffer, BufferInfo {

    /* renamed from: g */
    public static final byte[] f111030g = {13, 10};

    /* renamed from: a */
    public final HttpTransportMetricsImpl f111031a;

    /* renamed from: b */
    public final ByteArrayBuffer f111032b;

    /* renamed from: c */
    public final int f111033c;

    /* renamed from: d */
    public final CharsetEncoder f111034d;

    /* renamed from: e */
    public OutputStream f111035e;

    /* renamed from: f */
    public ByteBuffer f111036f;

    public SessionOutputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i, int i2, CharsetEncoder charsetEncoder) {
        Args.positive(i, "Buffer size");
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        this.f111031a = httpTransportMetricsImpl;
        this.f111032b = new ByteArrayBuffer(i);
        this.f111033c = i2 < 0 ? 0 : i2;
        this.f111034d = charsetEncoder;
    }

    /* renamed from: a */
    public final void m68584a() throws IOException {
        int length = this.f111032b.length();
        if (length > 0) {
            m68587d(this.f111032b.buffer(), 0, length);
            this.f111032b.clear();
            this.f111031a.incrementBytesTransferred(length);
        }
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    /* renamed from: b */
    public final void m68585b() throws IOException {
        OutputStream outputStream = this.f111035e;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    public void bind(OutputStream outputStream) {
        this.f111035e = outputStream;
    }

    /* renamed from: c */
    public final void m68586c(CoderResult coderResult) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.f111036f.flip();
        while (this.f111036f.hasRemaining()) {
            write(this.f111036f.get());
        }
        this.f111036f.compact();
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.f111032b.capacity();
    }

    /* renamed from: d */
    public final void m68587d(byte[] bArr, int i, int i2) throws IOException {
        Asserts.notNull(this.f111035e, "Output stream");
        this.f111035e.write(bArr, i, i2);
    }

    /* renamed from: e */
    public final void m68588e(CharBuffer charBuffer) throws IOException {
        if (charBuffer.hasRemaining()) {
            if (this.f111036f == null) {
                this.f111036f = ByteBuffer.allocate(1024);
            }
            this.f111034d.reset();
            while (charBuffer.hasRemaining()) {
                m68586c(this.f111034d.encode(charBuffer, this.f111036f, true));
            }
            m68586c(this.f111034d.flush(this.f111036f));
            this.f111036f.clear();
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void flush() throws IOException {
        m68584a();
        m68585b();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.f111031a;
    }

    public boolean isBound() {
        return this.f111035e != null;
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.f111032b.length();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            return;
        }
        if (i2 <= this.f111033c && i2 <= this.f111032b.capacity()) {
            if (i2 > this.f111032b.capacity() - this.f111032b.length()) {
                m68584a();
            }
            this.f111032b.append(bArr, i, i2);
        } else {
            m68584a();
            m68587d(bArr, i, i2);
            this.f111031a.incrementBytesTransferred(i2);
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(String str) throws IOException {
        if (str == null) {
            return;
        }
        if (str.length() > 0) {
            if (this.f111034d == null) {
                for (int i = 0; i < str.length(); i++) {
                    write(str.charAt(i));
                }
            } else {
                m68588e(CharBuffer.wrap(str));
            }
        }
        write(f111030g);
    }

    public SessionOutputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i) {
        this(httpTransportMetricsImpl, i, i, null);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr) throws IOException {
        if (bArr == null) {
            return;
        }
        write(bArr, 0, bArr.length);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(CharArrayBuffer charArrayBuffer) throws IOException {
        if (charArrayBuffer == null) {
            return;
        }
        int i = 0;
        if (this.f111034d == null) {
            int length = charArrayBuffer.length();
            while (length > 0) {
                int min = Math.min(this.f111032b.capacity() - this.f111032b.length(), length);
                if (min > 0) {
                    this.f111032b.append(charArrayBuffer, i, min);
                }
                if (this.f111032b.isFull()) {
                    m68584a();
                }
                i += min;
                length -= min;
            }
        } else {
            m68588e(CharBuffer.wrap(charArrayBuffer.buffer(), 0, charArrayBuffer.length()));
        }
        write(f111030g);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(int i) throws IOException {
        if (this.f111033c > 0) {
            if (this.f111032b.isFull()) {
                m68584a();
            }
            this.f111032b.append(i);
        } else {
            m68584a();
            this.f111035e.write(i);
        }
    }
}
