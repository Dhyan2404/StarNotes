package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class BufferedOutputStream extends OutputStream {

    /* renamed from: e */
    @NonNull
    public final OutputStream f14479e;

    /* renamed from: f */
    public byte[] f14480f;

    /* renamed from: g */
    public ArrayPool f14481g;

    /* renamed from: h */
    public int f14482h;

    public BufferedOutputStream(@NonNull OutputStream outputStream, @NonNull ArrayPool arrayPool) {
        this(outputStream, arrayPool, 65536);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f14479e.close();
            release();
        } catch (Throwable th) {
            this.f14479e.close();
            throw th;
        }
    }

    /* renamed from: f */
    public final void m8674f() throws IOException {
        int i = this.f14482h;
        if (i > 0) {
            this.f14479e.write(this.f14480f, 0, i);
            this.f14482h = 0;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m8674f();
        this.f14479e.flush();
    }

    /* renamed from: j */
    public final void m8675j() throws IOException {
        if (this.f14482h == this.f14480f.length) {
            m8674f();
        }
    }

    public final void release() {
        byte[] bArr = this.f14480f;
        if (bArr != null) {
            this.f14481g.put(bArr);
            this.f14480f = null;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f14480f;
        int i2 = this.f14482h;
        this.f14482h = i2 + 1;
        bArr[i2] = (byte) i;
        m8675j();
    }

    @VisibleForTesting
    public BufferedOutputStream(@NonNull OutputStream outputStream, ArrayPool arrayPool, int i) {
        this.f14479e = outputStream;
        this.f14481g = arrayPool;
        this.f14480f = (byte[]) arrayPool.get(i, byte[].class);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.f14482h;
            if (i6 == 0 && i4 >= this.f14480f.length) {
                this.f14479e.write(bArr, i5, i4);
                return;
            }
            int min = Math.min(i4, this.f14480f.length - i6);
            System.arraycopy(bArr, i5, this.f14480f, this.f14482h, min);
            this.f14482h += min;
            i3 += min;
            m8675j();
        } while (i3 < i2);
    }
}
