package com.sunia.HTREnginev2;

import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* loaded from: classes9.dex */
public class d9g extends ForwardingSink {

    /* renamed from: e */
    public boolean f67647e;

    public d9g(Sink sink) {
        super(sink);
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        if (this.f67647e) {
            return;
        }
        try {
            super.close();
        } catch (IOException e) {
            this.f67647e = true;
            mo52633f(e);
        }
    }

    /* renamed from: f */
    public void mo52633f(IOException iOException) {
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        if (this.f67647e) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e) {
            this.f67647e = true;
            mo52633f(e);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        if (this.f67647e) {
            buffer.skip(j);
            return;
        }
        try {
            super.write(buffer, j);
        } catch (IOException e) {
            this.f67647e = true;
            mo52633f(e);
        }
    }
}
