package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.TruncatedChunkException;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes12.dex */
public class ChunkedInputStream extends InputStream {

    /* renamed from: n */
    public static final int f110973n = 1;

    /* renamed from: o */
    public static final int f110974o = 2;

    /* renamed from: p */
    public static final int f110975p = 3;

    /* renamed from: q */
    public static final int f110976q = Integer.MAX_VALUE;

    /* renamed from: r */
    public static final int f110977r = 2048;

    /* renamed from: e */
    public final SessionInputBuffer f110978e;

    /* renamed from: f */
    public final CharArrayBuffer f110979f;

    /* renamed from: g */
    public final MessageConstraints f110980g;

    /* renamed from: h */
    public int f110981h;

    /* renamed from: i */
    public long f110982i;

    /* renamed from: j */
    public long f110983j;

    /* renamed from: k */
    public boolean f110984k;

    /* renamed from: l */
    public boolean f110985l;

    /* renamed from: m */
    public Header[] f110986m;

    public ChunkedInputStream(SessionInputBuffer sessionInputBuffer, MessageConstraints messageConstraints) {
        this.f110984k = false;
        this.f110985l = false;
        this.f110986m = new Header[0];
        this.f110978e = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
        this.f110983j = 0L;
        this.f110979f = new CharArrayBuffer(16);
        this.f110980g = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.f110981h = 1;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.f110978e instanceof BufferInfo) {
            return (int) Math.min(((BufferInfo) r0).length(), this.f110982i - this.f110983j);
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f110985l) {
            return;
        }
        try {
            if (!this.f110984k && this.f110981h != Integer.MAX_VALUE) {
                do {
                } while (read(new byte[2048]) >= 0);
            }
        } finally {
            this.f110984k = true;
            this.f110985l = true;
        }
    }

    /* renamed from: f */
    public final long m68576f() throws IOException {
        int i = this.f110981h;
        if (i != 1) {
            if (i != 3) {
                throw new IllegalStateException("Inconsistent codec state");
            }
            this.f110979f.clear();
            if (this.f110978e.readLine(this.f110979f) == -1) {
                throw new MalformedChunkCodingException("CRLF expected at end of chunk");
            }
            if (!this.f110979f.isEmpty()) {
                throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
            }
            this.f110981h = 1;
        }
        this.f110979f.clear();
        if (this.f110978e.readLine(this.f110979f) == -1) {
            throw new ConnectionClosedException("Premature end of chunk coded message body: closing chunk expected");
        }
        int indexOf = this.f110979f.indexOf(59);
        if (indexOf < 0) {
            indexOf = this.f110979f.length();
        }
        String substringTrimmed = this.f110979f.substringTrimmed(0, indexOf);
        try {
            return Long.parseLong(substringTrimmed, 16);
        } catch (NumberFormatException unused) {
            throw new MalformedChunkCodingException("Bad chunk header: " + substringTrimmed);
        }
    }

    public Header[] getFooters() {
        return (Header[]) this.f110986m.clone();
    }

    /* renamed from: j */
    public final void m68577j() throws IOException {
        if (this.f110981h == Integer.MAX_VALUE) {
            throw new MalformedChunkCodingException("Corrupt data stream");
        }
        try {
            long m68576f = m68576f();
            this.f110982i = m68576f;
            if (m68576f < 0) {
                throw new MalformedChunkCodingException("Negative chunk size");
            }
            this.f110981h = 2;
            this.f110983j = 0L;
            if (m68576f == 0) {
                this.f110984k = true;
                m68578w();
            }
        } catch (MalformedChunkCodingException e) {
            this.f110981h = Integer.MAX_VALUE;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f110985l) {
            if (this.f110984k) {
                return -1;
            }
            if (this.f110981h != 2) {
                m68577j();
                if (this.f110984k) {
                    return -1;
                }
            }
            int read = this.f110978e.read();
            if (read != -1) {
                long j = this.f110983j + 1;
                this.f110983j = j;
                if (j >= this.f110982i) {
                    this.f110981h = 3;
                }
            }
            return read;
        }
        throw new IOException("Attempted read from closed stream.");
    }

    /* renamed from: w */
    public final void m68578w() throws IOException {
        try {
            this.f110986m = AbstractMessageParser.parseHeaders(this.f110978e, this.f110980g.getMaxHeaderCount(), this.f110980g.getMaxLineLength(), null);
        } catch (HttpException e) {
            MalformedChunkCodingException malformedChunkCodingException = new MalformedChunkCodingException("Invalid footer: " + e.getMessage());
            malformedChunkCodingException.initCause(e);
            throw malformedChunkCodingException;
        }
    }

    public ChunkedInputStream(SessionInputBuffer sessionInputBuffer) {
        this(sessionInputBuffer, null);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f110985l) {
            if (this.f110984k) {
                return -1;
            }
            if (this.f110981h != 2) {
                m68577j();
                if (this.f110984k) {
                    return -1;
                }
            }
            int read = this.f110978e.read(bArr, i, (int) Math.min(i2, this.f110982i - this.f110983j));
            if (read != -1) {
                long j = this.f110983j + read;
                this.f110983j = j;
                if (j >= this.f110982i) {
                    this.f110981h = 3;
                }
                return read;
            }
            this.f110984k = true;
            throw new TruncatedChunkException("Truncated chunk (expected size: %,d; actual size: %,d)", Long.valueOf(this.f110982i), Long.valueOf(this.f110983j));
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
