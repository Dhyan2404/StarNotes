package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.http.Consts;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractSessionInputBuffer implements SessionInputBuffer, BufferInfo {

    /* renamed from: a */
    public InputStream f110948a;

    /* renamed from: b */
    public byte[] f110949b;

    /* renamed from: c */
    public ByteArrayBuffer f110950c;

    /* renamed from: d */
    public Charset f110951d;

    /* renamed from: e */
    public boolean f110952e;

    /* renamed from: f */
    public int f110953f;

    /* renamed from: g */
    public int f110954g;

    /* renamed from: h */
    public HttpTransportMetricsImpl f110955h;

    /* renamed from: i */
    public CodingErrorAction f110956i;

    /* renamed from: j */
    public CodingErrorAction f110957j;

    /* renamed from: k */
    public int f110958k;

    /* renamed from: l */
    public int f110959l;

    /* renamed from: m */
    public CharsetDecoder f110960m;

    /* renamed from: n */
    public CharBuffer f110961n;

    /* renamed from: a */
    public final int m68569a(CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        int i = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        if (this.f110960m == null) {
            CharsetDecoder newDecoder = this.f110951d.newDecoder();
            this.f110960m = newDecoder;
            newDecoder.onMalformedInput(this.f110956i);
            this.f110960m.onUnmappableCharacter(this.f110957j);
        }
        if (this.f110961n == null) {
            this.f110961n = CharBuffer.allocate(1024);
        }
        this.f110960m.reset();
        while (byteBuffer.hasRemaining()) {
            i += m68570b(this.f110960m.decode(byteBuffer, this.f110961n, true), charArrayBuffer, byteBuffer);
        }
        int m68570b = i + m68570b(this.f110960m.flush(this.f110961n), charArrayBuffer, byteBuffer);
        this.f110961n.clear();
        return m68570b;
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    /* renamed from: b */
    public final int m68570b(CoderResult coderResult, CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.f110961n.flip();
        int remaining = this.f110961n.remaining();
        while (this.f110961n.hasRemaining()) {
            charArrayBuffer.append(this.f110961n.get());
        }
        this.f110961n.compact();
        return remaining;
    }

    /* renamed from: c */
    public final int m68571c(CharArrayBuffer charArrayBuffer) throws IOException {
        int length = this.f110950c.length();
        if (length > 0) {
            if (this.f110950c.byteAt(length - 1) == 10) {
                length--;
            }
            if (length > 0 && this.f110950c.byteAt(length - 1) == 13) {
                length--;
            }
        }
        if (this.f110952e) {
            charArrayBuffer.append(this.f110950c, 0, length);
        } else {
            length = m68569a(charArrayBuffer, ByteBuffer.wrap(this.f110950c.buffer(), 0, length));
        }
        this.f110950c.clear();
        return length;
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.f110949b.length;
    }

    public HttpTransportMetricsImpl createTransportMetrics() {
        return new HttpTransportMetricsImpl();
    }

    /* renamed from: d */
    public final int m68572d(CharArrayBuffer charArrayBuffer, int i) throws IOException {
        int i2 = this.f110958k;
        this.f110958k = i + 1;
        if (i > i2 && this.f110949b[i - 1] == 13) {
            i--;
        }
        int i3 = i - i2;
        if (!this.f110952e) {
            return m68569a(charArrayBuffer, ByteBuffer.wrap(this.f110949b, i2, i3));
        }
        charArrayBuffer.append(this.f110949b, i2, i3);
        return i3;
    }

    /* renamed from: e */
    public final int m68573e() {
        for (int i = this.f110958k; i < this.f110959l; i++) {
            if (this.f110949b[i] == 10) {
                return i;
            }
        }
        return -1;
    }

    public int fillBuffer() throws IOException {
        int i = this.f110958k;
        if (i > 0) {
            int i2 = this.f110959l - i;
            if (i2 > 0) {
                byte[] bArr = this.f110949b;
                System.arraycopy(bArr, i, bArr, 0, i2);
            }
            this.f110958k = 0;
            this.f110959l = i2;
        }
        int i3 = this.f110959l;
        byte[] bArr2 = this.f110949b;
        int read = this.f110948a.read(bArr2, i3, bArr2.length - i3);
        if (read == -1) {
            return -1;
        }
        this.f110959l = i3 + read;
        this.f110955h.incrementBytesTransferred(read);
        return read;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.f110955h;
    }

    public boolean hasBufferedData() {
        return this.f110958k < this.f110959l;
    }

    public void init(InputStream inputStream, int i, HttpParams httpParams) {
        Args.notNull(inputStream, "Input stream");
        Args.notNegative(i, "Buffer size");
        Args.notNull(httpParams, "HTTP parameters");
        this.f110948a = inputStream;
        this.f110949b = new byte[i];
        this.f110958k = 0;
        this.f110959l = 0;
        this.f110950c = new ByteArrayBuffer(i);
        String str = (String) httpParams.getParameter(CoreProtocolPNames.HTTP_ELEMENT_CHARSET);
        Charset forName = str != null ? Charset.forName(str) : Consts.ASCII;
        this.f110951d = forName;
        this.f110952e = forName.equals(Consts.ASCII);
        this.f110960m = null;
        this.f110953f = httpParams.getIntParameter(CoreConnectionPNames.MAX_LINE_LENGTH, -1);
        this.f110954g = httpParams.getIntParameter(CoreConnectionPNames.MIN_CHUNK_LIMIT, 512);
        this.f110955h = createTransportMetrics();
        CodingErrorAction codingErrorAction = (CodingErrorAction) httpParams.getParameter(CoreProtocolPNames.HTTP_MALFORMED_INPUT_ACTION);
        if (codingErrorAction == null) {
            codingErrorAction = CodingErrorAction.REPORT;
        }
        this.f110956i = codingErrorAction;
        CodingErrorAction codingErrorAction2 = (CodingErrorAction) httpParams.getParameter(CoreProtocolPNames.HTTP_UNMAPPABLE_INPUT_ACTION);
        if (codingErrorAction2 == null) {
            codingErrorAction2 = CodingErrorAction.REPORT;
        }
        this.f110957j = codingErrorAction2;
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.f110959l - this.f110958k;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.f110949b;
        int i = this.f110958k;
        this.f110958k = i + 1;
        return bArr[i] & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0049, code lost:
    
        if (r2 == (-1)) goto L12;
     */
    @Override // org.apache.http.io.SessionInputBuffer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int readLine(org.apache.http.util.CharArrayBuffer r8) throws java.io.IOException {
        /*
            r7 = this;
            java.lang.String r0 = "Char array buffer"
            org.apache.http.util.Args.notNull(r8, r0)
            r0 = 0
            r1 = 1
            r2 = r0
        L8:
            r3 = -1
            if (r1 == 0) goto L63
            int r4 = r7.m68573e()
            if (r4 == r3) goto L2f
            org.apache.http.util.ByteArrayBuffer r1 = r7.f110950c
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L1e
            int r7 = r7.m68572d(r8, r4)
            return r7
        L1e:
            int r4 = r4 + 1
            int r1 = r7.f110958k
            int r3 = r4 - r1
            org.apache.http.util.ByteArrayBuffer r5 = r7.f110950c
            byte[] r6 = r7.f110949b
            r5.append(r6, r1, r3)
            r7.f110958k = r4
        L2d:
            r1 = r0
            goto L4c
        L2f:
            boolean r2 = r7.hasBufferedData()
            if (r2 == 0) goto L45
            int r2 = r7.f110959l
            int r4 = r7.f110958k
            int r2 = r2 - r4
            org.apache.http.util.ByteArrayBuffer r5 = r7.f110950c
            byte[] r6 = r7.f110949b
            r5.append(r6, r4, r2)
            int r2 = r7.f110959l
            r7.f110958k = r2
        L45:
            int r2 = r7.fillBuffer()
            if (r2 != r3) goto L4c
            goto L2d
        L4c:
            int r3 = r7.f110953f
            if (r3 <= 0) goto L8
            org.apache.http.util.ByteArrayBuffer r3 = r7.f110950c
            int r3 = r3.length()
            int r4 = r7.f110953f
            if (r3 >= r4) goto L5b
            goto L8
        L5b:
            java.io.IOException r7 = new java.io.IOException
            java.lang.String r8 = "Maximum line length limit exceeded"
            r7.<init>(r8)
            throw r7
        L63:
            if (r2 != r3) goto L6e
            org.apache.http.util.ByteArrayBuffer r0 = r7.f110950c
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L6e
            return r3
        L6e:
            int r7 = r7.m68571c(r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.io.AbstractSessionInputBuffer.readLine(org.apache.http.util.CharArrayBuffer):int");
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int min = Math.min(i2, this.f110959l - this.f110958k);
            System.arraycopy(this.f110949b, this.f110958k, bArr, i, min);
            this.f110958k += min;
            return min;
        }
        if (i2 > this.f110954g) {
            int read = this.f110948a.read(bArr, i, i2);
            if (read > 0) {
                this.f110955h.incrementBytesTransferred(read);
            }
            return read;
        }
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        int min2 = Math.min(i2, this.f110959l - this.f110958k);
        System.arraycopy(this.f110949b, this.f110958k, bArr, i, min2);
        this.f110958k += min2;
        return min2;
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
