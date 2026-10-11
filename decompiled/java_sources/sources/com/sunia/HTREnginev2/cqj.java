package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.io.CharSource;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public class cqj extends Reader {

    /* renamed from: e */
    public final Iterator<? extends CharSource> f67084e;

    /* renamed from: f */
    @CheckForNull
    public Reader f67085f;

    public cqj(Iterator<? extends CharSource> it2) throws IOException {
        this.f67084e = it2;
        m53497f();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Reader reader = this.f67085f;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.f67085f = null;
            }
        }
    }

    /* renamed from: f */
    public final void m53497f() throws IOException {
        close();
        if (this.f67084e.hasNext()) {
            this.f67085f = this.f67084e.next().openStream();
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        Preconditions.checkNotNull(cArr);
        Reader reader = this.f67085f;
        if (reader == null) {
            return -1;
        }
        int read = reader.read(cArr, i, i2);
        if (read != -1) {
            return read;
        }
        m53497f();
        return read(cArr, i, i2);
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        Reader reader = this.f67085f;
        return reader != null && reader.ready();
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "n is negative");
        if (j > 0) {
            while (true) {
                Reader reader = this.f67085f;
                if (reader == null) {
                    break;
                }
                long skip = reader.skip(j);
                if (skip > 0) {
                    return skip;
                }
                m53497f();
            }
        }
        return 0L;
    }
}
