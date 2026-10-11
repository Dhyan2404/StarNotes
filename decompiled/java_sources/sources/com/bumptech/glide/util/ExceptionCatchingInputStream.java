package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

@Deprecated
/* loaded from: classes3.dex */
public class ExceptionCatchingInputStream extends InputStream {

    /* renamed from: g */
    public static final Queue<ExceptionCatchingInputStream> f15475g = Util.createQueue(0);

    /* renamed from: e */
    public InputStream f15476e;

    /* renamed from: f */
    public IOException f15477f;

    /* renamed from: f */
    public static void m9176f() {
        while (true) {
            Queue<ExceptionCatchingInputStream> queue = f15475g;
            if (queue.isEmpty()) {
                return;
            } else {
                queue.remove();
            }
        }
    }

    @NonNull
    public static ExceptionCatchingInputStream obtain(@NonNull InputStream inputStream) {
        ExceptionCatchingInputStream poll;
        Queue<ExceptionCatchingInputStream> queue = f15475g;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new ExceptionCatchingInputStream();
        }
        poll.m9177j(inputStream);
        return poll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f15476e.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15476e.close();
    }

    @Nullable
    public IOException getException() {
        return this.f15477f;
    }

    /* renamed from: j */
    public void m9177j(@NonNull InputStream inputStream) {
        this.f15476e = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f15476e.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f15476e.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f15476e.read(bArr);
        } catch (IOException e) {
            this.f15477f = e;
            return -1;
        }
    }

    public void release() {
        this.f15477f = null;
        this.f15476e = null;
        Queue<ExceptionCatchingInputStream> queue = f15475g;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f15476e.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.f15476e.skip(j);
        } catch (IOException e) {
            this.f15477f = e;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f15476e.read(bArr, i, i2);
        } catch (IOException e) {
            this.f15477f = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f15476e.read();
        } catch (IOException e) {
            this.f15477f = e;
            return -1;
        }
    }
}
