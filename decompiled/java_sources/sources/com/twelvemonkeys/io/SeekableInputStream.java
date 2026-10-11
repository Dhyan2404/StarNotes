package com.twelvemonkeys.io;

import java.io.IOException;
import java.io.InputStream;
import java.util.Stack;

/* loaded from: classes10.dex */
public abstract class SeekableInputStream extends InputStream implements Seekable {

    /* renamed from: e */
    public long f94250e;

    /* renamed from: f */
    public long f94251f;

    /* renamed from: g */
    public boolean f94252g;
    protected Stack<Long> markedPositions = new Stack<>();

    public final void checkOpen() throws IOException {
        if (this.f94252g) {
            throw new IOException("closed");
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable, com.twelvemonkeys.io.Seekable
    public final void close() throws IOException {
        checkOpen();
        this.f94252g = true;
        closeImpl();
    }

    public abstract void closeImpl() throws IOException;

    public void finalize() throws Throwable {
        if (!this.f94252g) {
            try {
                close();
            } catch (IOException unused) {
            }
        }
        super.finalize();
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void flush() throws IOException {
        flushBefore(this.f94251f);
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void flushBefore(long j) throws IOException {
        if (j < this.f94251f) {
            throw new IndexOutOfBoundsException("position < flushedPosition");
        }
        if (j > getStreamPosition()) {
            throw new IndexOutOfBoundsException("position > stream position");
        }
        checkOpen();
        flushBeforeImpl(j);
        this.f94251f = j;
    }

    public abstract void flushBeforeImpl(long j) throws IOException;

    @Override // com.twelvemonkeys.io.Seekable
    public final long getFlushedPosition() throws IOException {
        checkOpen();
        return this.f94251f;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final long getStreamPosition() throws IOException {
        checkOpen();
        return this.f94250e;
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        mark();
        try {
            flushBefore(Math.max(this.f94250e - i, this.f94251f));
        } catch (IOException unused) {
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr != null ? bArr.length : 1);
    }

    @Override // java.io.InputStream, com.twelvemonkeys.io.Seekable
    public final void reset() throws IOException {
        checkOpen();
        if (this.markedPositions.isEmpty()) {
            seek(0L);
            return;
        }
        long longValue = this.markedPositions.pop().longValue();
        if (longValue < this.f94251f) {
            throw new IOException("Previous marked position has been discarded");
        }
        seek(longValue);
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void seek(long j) throws IOException {
        checkOpen();
        if (j < this.f94251f) {
            throw new IndexOutOfBoundsException("position < flushedPosition");
        }
        seekImpl(j);
        this.f94250e = j;
    }

    public abstract void seekImpl(long j) throws IOException;

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        long j2 = this.f94250e;
        long j3 = j2 + j;
        if (j3 < this.f94251f) {
            throw new IOException("position < flushedPosition");
        }
        int available = available();
        if (available > 0) {
            seek(Math.min(j3, available + j2));
        } else {
            for (int max = (int) Math.max(Math.min(j, 512L), -512L); max > 0 && read() >= 0; max--) {
            }
        }
        return this.f94250e - j2;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void mark() {
        this.markedPositions.push(Long.valueOf(this.f94250e));
    }
}
