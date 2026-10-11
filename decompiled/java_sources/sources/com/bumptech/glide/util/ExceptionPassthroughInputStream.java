package com.bumptech.glide.util;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* loaded from: classes3.dex */
public final class ExceptionPassthroughInputStream extends InputStream {

    /* renamed from: g */
    @GuardedBy("POOL")
    public static final Queue<ExceptionPassthroughInputStream> f15478g = Util.createQueue(0);

    /* renamed from: e */
    public InputStream f15479e;

    /* renamed from: f */
    public IOException f15480f;

    /* renamed from: f */
    public static void m9178f() {
        synchronized (f15478g) {
            while (true) {
                Queue<ExceptionPassthroughInputStream> queue = f15478g;
                if (!queue.isEmpty()) {
                    queue.remove();
                }
            }
        }
    }

    @NonNull
    public static ExceptionPassthroughInputStream obtain(@NonNull InputStream inputStream) {
        ExceptionPassthroughInputStream poll;
        Queue<ExceptionPassthroughInputStream> queue = f15478g;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new ExceptionPassthroughInputStream();
        }
        poll.m9179j(inputStream);
        return poll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f15479e.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15479e.close();
    }

    @Nullable
    public IOException getException() {
        return this.f15480f;
    }

    /* renamed from: j */
    public void m9179j(@NonNull InputStream inputStream) {
        this.f15479e = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f15479e.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f15479e.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.f15479e.read();
        } catch (IOException e) {
            this.f15480f = e;
            throw e;
        }
    }

    public void release() {
        this.f15480f = null;
        this.f15479e = null;
        Queue<ExceptionPassthroughInputStream> queue = f15478g;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f15479e.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            return this.f15479e.skip(j);
        } catch (IOException e) {
            this.f15480f = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.f15479e.read(bArr);
        } catch (IOException e) {
            this.f15480f = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.f15479e.read(bArr, i, i2);
        } catch (IOException e) {
            this.f15480f = e;
            throw e;
        }
    }
}
