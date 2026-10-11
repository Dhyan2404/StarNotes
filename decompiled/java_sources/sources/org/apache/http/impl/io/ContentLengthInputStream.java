package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class ContentLengthInputStream extends InputStream {

    /* renamed from: i */
    public static final int f110992i = 2048;

    /* renamed from: e */
    public final long f110993e;

    /* renamed from: f */
    public long f110994f = 0;

    /* renamed from: g */
    public boolean f110995g = false;

    /* renamed from: h */
    public SessionInputBuffer f110996h;

    public ContentLengthInputStream(SessionInputBuffer sessionInputBuffer, long j) {
        this.f110996h = null;
        this.f110996h = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
        this.f110993e = Args.notNegative(j, "Content length");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        SessionInputBuffer sessionInputBuffer = this.f110996h;
        if (sessionInputBuffer instanceof BufferInfo) {
            return Math.min(((BufferInfo) sessionInputBuffer).length(), (int) (this.f110993e - this.f110994f));
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f110995g) {
            return;
        }
        try {
            if (this.f110994f < this.f110993e) {
                do {
                } while (read(new byte[2048]) >= 0);
            }
        } finally {
            this.f110995g = true;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f110995g) {
            throw new IOException("Attempted read from closed stream.");
        }
        if (this.f110994f >= this.f110993e) {
            return -1;
        }
        int read = this.f110996h.read();
        if (read != -1) {
            this.f110994f++;
        } else if (this.f110994f < this.f110993e) {
            throw new ConnectionClosedException("Premature end of Content-Length delimited message body (expected: %,d; received: %,d)", Long.valueOf(this.f110993e), Long.valueOf(this.f110994f));
        }
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        int read;
        if (j <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[2048];
        long min = Math.min(j, this.f110993e - this.f110994f);
        long j2 = 0;
        while (min > 0 && (read = read(bArr, 0, (int) Math.min(2048L, min))) != -1) {
            long j3 = read;
            j2 += j3;
            min -= j3;
        }
        return j2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f110995g) {
            long j = this.f110994f;
            long j2 = this.f110993e;
            if (j >= j2) {
                return -1;
            }
            if (i2 + j > j2) {
                i2 = (int) (j2 - j);
            }
            int read = this.f110996h.read(bArr, i, i2);
            if (read == -1 && this.f110994f < this.f110993e) {
                throw new ConnectionClosedException("Premature end of Content-Length delimited message body (expected: %,d; received: %,d)", Long.valueOf(this.f110993e), Long.valueOf(this.f110994f));
            }
            if (read > 0) {
                this.f110994f += read;
            }
            return read;
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
