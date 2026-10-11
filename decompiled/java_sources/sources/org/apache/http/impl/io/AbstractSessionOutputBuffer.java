package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.http.Consts;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractSessionOutputBuffer implements SessionOutputBuffer, BufferInfo {

    /* renamed from: k */
    public static final byte[] f110962k = {13, 10};

    /* renamed from: a */
    public OutputStream f110963a;

    /* renamed from: b */
    public ByteArrayBuffer f110964b;

    /* renamed from: c */
    public Charset f110965c;

    /* renamed from: d */
    public boolean f110966d;

    /* renamed from: e */
    public int f110967e;

    /* renamed from: f */
    public HttpTransportMetricsImpl f110968f;

    /* renamed from: g */
    public CodingErrorAction f110969g;

    /* renamed from: h */
    public CodingErrorAction f110970h;

    /* renamed from: i */
    public CharsetEncoder f110971i;

    /* renamed from: j */
    public ByteBuffer f110972j;

    public AbstractSessionOutputBuffer(OutputStream outputStream, int i, Charset charset, int i2, CodingErrorAction codingErrorAction, CodingErrorAction codingErrorAction2) {
        Args.notNull(outputStream, "Input stream");
        Args.notNegative(i, "Buffer size");
        this.f110963a = outputStream;
        this.f110964b = new ByteArrayBuffer(i);
        charset = charset == null ? Consts.ASCII : charset;
        this.f110965c = charset;
        this.f110966d = charset.equals(Consts.ASCII);
        this.f110971i = null;
        this.f110967e = i2 < 0 ? 512 : i2;
        this.f110968f = createTransportMetrics();
        this.f110969g = codingErrorAction == null ? CodingErrorAction.REPORT : codingErrorAction;
        this.f110970h = codingErrorAction2 == null ? CodingErrorAction.REPORT : codingErrorAction2;
    }

    /* renamed from: a */
    public final void m68574a(CoderResult coderResult) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.f110972j.flip();
        while (this.f110972j.hasRemaining()) {
            write(this.f110972j.get());
        }
        this.f110972j.compact();
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    /* renamed from: b */
    public final void m68575b(CharBuffer charBuffer) throws IOException {
        if (charBuffer.hasRemaining()) {
            if (this.f110971i == null) {
                CharsetEncoder newEncoder = this.f110965c.newEncoder();
                this.f110971i = newEncoder;
                newEncoder.onMalformedInput(this.f110969g);
                this.f110971i.onUnmappableCharacter(this.f110970h);
            }
            if (this.f110972j == null) {
                this.f110972j = ByteBuffer.allocate(1024);
            }
            this.f110971i.reset();
            while (charBuffer.hasRemaining()) {
                m68574a(this.f110971i.encode(charBuffer, this.f110972j, true));
            }
            m68574a(this.f110971i.flush(this.f110972j));
            this.f110972j.clear();
        }
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.f110964b.capacity();
    }

    public HttpTransportMetricsImpl createTransportMetrics() {
        return new HttpTransportMetricsImpl();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void flush() throws IOException {
        flushBuffer();
        this.f110963a.flush();
    }

    public void flushBuffer() throws IOException {
        int length = this.f110964b.length();
        if (length > 0) {
            this.f110963a.write(this.f110964b.buffer(), 0, length);
            this.f110964b.clear();
            this.f110968f.incrementBytesTransferred(length);
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.f110968f;
    }

    public void init(OutputStream outputStream, int i, HttpParams httpParams) {
        Args.notNull(outputStream, "Input stream");
        Args.notNegative(i, "Buffer size");
        Args.notNull(httpParams, "HTTP parameters");
        this.f110963a = outputStream;
        this.f110964b = new ByteArrayBuffer(i);
        String str = (String) httpParams.getParameter(CoreProtocolPNames.HTTP_ELEMENT_CHARSET);
        Charset forName = str != null ? Charset.forName(str) : Consts.ASCII;
        this.f110965c = forName;
        this.f110966d = forName.equals(Consts.ASCII);
        this.f110971i = null;
        this.f110967e = httpParams.getIntParameter(CoreConnectionPNames.MIN_CHUNK_LIMIT, 512);
        this.f110968f = createTransportMetrics();
        CodingErrorAction codingErrorAction = (CodingErrorAction) httpParams.getParameter(CoreProtocolPNames.HTTP_MALFORMED_INPUT_ACTION);
        if (codingErrorAction == null) {
            codingErrorAction = CodingErrorAction.REPORT;
        }
        this.f110969g = codingErrorAction;
        CodingErrorAction codingErrorAction2 = (CodingErrorAction) httpParams.getParameter(CoreProtocolPNames.HTTP_UNMAPPABLE_INPUT_ACTION);
        if (codingErrorAction2 == null) {
            codingErrorAction2 = CodingErrorAction.REPORT;
        }
        this.f110970h = codingErrorAction2;
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.f110964b.length();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            return;
        }
        if (i2 <= this.f110967e && i2 <= this.f110964b.capacity()) {
            if (i2 > this.f110964b.capacity() - this.f110964b.length()) {
                flushBuffer();
            }
            this.f110964b.append(bArr, i, i2);
        } else {
            flushBuffer();
            this.f110963a.write(bArr, i, i2);
            this.f110968f.incrementBytesTransferred(i2);
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(String str) throws IOException {
        if (str == null) {
            return;
        }
        if (str.length() > 0) {
            if (this.f110966d) {
                for (int i = 0; i < str.length(); i++) {
                    write(str.charAt(i));
                }
            } else {
                m68575b(CharBuffer.wrap(str));
            }
        }
        write(f110962k);
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
        if (this.f110966d) {
            int length = charArrayBuffer.length();
            while (length > 0) {
                int min = Math.min(this.f110964b.capacity() - this.f110964b.length(), length);
                if (min > 0) {
                    this.f110964b.append(charArrayBuffer, i, min);
                }
                if (this.f110964b.isFull()) {
                    flushBuffer();
                }
                i += min;
                length -= min;
            }
        } else {
            m68575b(CharBuffer.wrap(charArrayBuffer.buffer(), 0, charArrayBuffer.length()));
        }
        write(f110962k);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(int i) throws IOException {
        if (this.f110964b.isFull()) {
            flushBuffer();
        }
        this.f110964b.append(i);
    }

    public AbstractSessionOutputBuffer() {
    }
}
