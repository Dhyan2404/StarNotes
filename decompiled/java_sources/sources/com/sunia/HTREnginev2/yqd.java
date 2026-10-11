package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.Objects;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class yqd extends Reader {

    /* renamed from: e */
    @CheckForNull
    public CharSequence f90981e;

    /* renamed from: f */
    public int f90982f;

    /* renamed from: g */
    public int f90983g;

    public yqd(CharSequence charSequence) {
        this.f90981e = (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f90981e = null;
    }

    /* renamed from: f */
    public final void m58470f() throws IOException {
        if (this.f90981e == null) {
            throw new IOException("reader closed");
        }
    }

    /* renamed from: j */
    public final boolean m58471j() {
        return m58472w() > 0;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) throws IOException {
        Preconditions.checkArgument(i >= 0, "readAheadLimit (%s) may not be negative", i);
        m58470f();
        this.f90983g = this.f90982f;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader, java.lang.Readable
    public synchronized int read(CharBuffer charBuffer) throws IOException {
        Preconditions.checkNotNull(charBuffer);
        m58470f();
        Objects.requireNonNull(this.f90981e);
        if (!m58471j()) {
            return -1;
        }
        int min = Math.min(charBuffer.remaining(), m58472w());
        for (int i = 0; i < min; i++) {
            CharSequence charSequence = this.f90981e;
            int i2 = this.f90982f;
            this.f90982f = i2 + 1;
            charBuffer.put(charSequence.charAt(i2));
        }
        return min;
    }

    @Override // java.io.Reader
    public synchronized boolean ready() throws IOException {
        m58470f();
        return true;
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        m58470f();
        this.f90982f = this.f90983g;
    }

    @Override // java.io.Reader
    public synchronized long skip(long j) throws IOException {
        int min;
        Preconditions.checkArgument(j >= 0, "n (%s) may not be negative", j);
        m58470f();
        min = (int) Math.min(m58472w(), j);
        this.f90982f += min;
        return min;
    }

    /* renamed from: w */
    public final int m58472w() {
        Objects.requireNonNull(this.f90981e);
        return this.f90981e.length() - this.f90982f;
    }

    @Override // java.io.Reader
    public synchronized int read() throws IOException {
        char c;
        m58470f();
        Objects.requireNonNull(this.f90981e);
        if (m58471j()) {
            CharSequence charSequence = this.f90981e;
            int i = this.f90982f;
            this.f90982f = i + 1;
            c = charSequence.charAt(i);
        } else {
            c = 65535;
        }
        return c;
    }

    @Override // java.io.Reader
    public synchronized int read(char[] cArr, int i, int i2) throws IOException {
        Preconditions.checkPositionIndexes(i, i + i2, cArr.length);
        m58470f();
        Objects.requireNonNull(this.f90981e);
        if (!m58471j()) {
            return -1;
        }
        int min = Math.min(i2, m58472w());
        for (int i3 = 0; i3 < min; i3++) {
            CharSequence charSequence = this.f90981e;
            int i4 = this.f90982f;
            this.f90982f = i4 + 1;
            cArr[i + i3] = charSequence.charAt(i4);
        }
        return min;
    }
}
