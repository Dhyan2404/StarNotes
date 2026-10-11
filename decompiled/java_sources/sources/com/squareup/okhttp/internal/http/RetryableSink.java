package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

/* loaded from: classes9.dex */
public final class RetryableSink implements Sink {

    /* renamed from: e */
    public boolean f63813e;

    /* renamed from: f */
    public final int f63814f;

    /* renamed from: g */
    public final Buffer f63815g;

    public RetryableSink(int i) {
        this.f63815g = new Buffer();
        this.f63814f = i;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        if (this.f63813e) {
            return;
        }
        this.f63813e = true;
        if (this.f63815g.size() >= this.f63814f) {
            return;
        }
        throw new ProtocolException("content-length promised " + this.f63814f + " bytes, but received " + this.f63815g.size());
    }

    public long contentLength() throws IOException {
        return this.f63815g.size();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // okio.Sink
    /* renamed from: timeout */
    public Timeout getF104018e() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        if (this.f63813e) {
            throw new IllegalStateException("closed");
        }
        Util.checkOffsetAndCount(buffer.size(), 0L, j);
        if (this.f63814f == -1 || this.f63815g.size() <= this.f63814f - j) {
            this.f63815g.write(buffer, j);
            return;
        }
        throw new ProtocolException("exceeded content-length limit of " + this.f63814f + " bytes");
    }

    public void writeToSocket(Sink sink) throws IOException {
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.f63815g;
        buffer2.copyTo(buffer, 0L, buffer2.size());
        sink.write(buffer, buffer.size());
    }

    public RetryableSink() {
        this(-1);
    }
}
