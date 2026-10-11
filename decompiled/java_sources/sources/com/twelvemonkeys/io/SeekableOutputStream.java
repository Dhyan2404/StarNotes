package com.twelvemonkeys.io;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Stack;

/* loaded from: classes10.dex */
public abstract class SeekableOutputStream extends OutputStream implements Seekable {

    /* renamed from: e */
    public long f94253e;

    /* renamed from: f */
    public long f94254f;

    /* renamed from: g */
    public boolean f94255g;
    protected Stack<Long> markedPositions = new Stack<>();

    public final void checkOpen() throws IOException {
        if (this.f94255g) {
            throw new IOException("closed");
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable, com.twelvemonkeys.io.Seekable
    public final void close() throws IOException {
        checkOpen();
        this.f94255g = true;
        closeImpl();
    }

    public abstract void closeImpl() throws IOException;

    @Override // java.io.OutputStream, java.io.Flushable, com.twelvemonkeys.io.Seekable
    public final void flush() throws IOException {
        flushBefore(this.f94254f);
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void flushBefore(long j) throws IOException {
        if (j < this.f94254f) {
            throw new IndexOutOfBoundsException("position < flushedPosition!");
        }
        if (j > getStreamPosition()) {
            throw new IndexOutOfBoundsException("position > getStreamPosition()!");
        }
        checkOpen();
        flushBeforeImpl(j);
        this.f94254f = j;
    }

    public abstract void flushBeforeImpl(long j) throws IOException;

    @Override // com.twelvemonkeys.io.Seekable
    public final long getFlushedPosition() throws IOException {
        checkOpen();
        return this.f94254f;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final long getStreamPosition() throws IOException {
        checkOpen();
        return this.f94253e;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void mark() {
        this.markedPositions.push(Long.valueOf(this.f94253e));
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void reset() throws IOException {
        checkOpen();
        if (this.markedPositions.isEmpty()) {
            return;
        }
        long longValue = this.markedPositions.pop().longValue();
        if (longValue < this.f94254f) {
            throw new IOException("Previous marked position has been discarded!");
        }
        seek(longValue);
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final void seek(long j) throws IOException {
        checkOpen();
        if (j < this.f94254f) {
            throw new IndexOutOfBoundsException("position < flushedPosition!");
        }
        seekImpl(j);
        this.f94253e = j;
    }

    public abstract void seekImpl(long j) throws IOException;

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr != null ? bArr.length : 1);
    }
}
