package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class MarkEnforcingInputStream extends FilterInputStream {

    /* renamed from: f */
    public static final int f15491f = Integer.MIN_VALUE;

    /* renamed from: g */
    public static final int f15492g = -1;

    /* renamed from: e */
    public int f15493e;

    public MarkEnforcingInputStream(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f15493e = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.f15493e;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    /* renamed from: f */
    public final long m9181f(long j) {
        int i = this.f15493e;
        if (i == 0) {
            return -1L;
        }
        return (i == Integer.MIN_VALUE || j <= ((long) i)) ? j : i;
    }

    /* renamed from: j */
    public final void m9182j(long j) {
        int i = this.f15493e;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f15493e = (int) (i - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.f15493e = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (m9181f(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m9182j(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f15493e = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long m9181f = m9181f(j);
        if (m9181f == -1) {
            return 0L;
        }
        long skip = super.skip(m9181f);
        m9182j(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int m9181f = (int) m9181f(i2);
        if (m9181f == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m9181f);
        m9182j(read);
        return read;
    }
}
