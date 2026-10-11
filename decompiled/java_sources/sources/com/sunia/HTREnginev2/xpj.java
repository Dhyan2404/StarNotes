package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.io.ByteSource;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class xpj extends InputStream {

    /* renamed from: e */
    public Iterator<? extends ByteSource> f89937e;

    /* renamed from: f */
    @CheckForNull
    public InputStream f89938f;

    public xpj(Iterator<? extends ByteSource> it2) throws IOException {
        this.f89937e = (Iterator) Preconditions.checkNotNull(it2);
        m58297f();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        InputStream inputStream = this.f89938f;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f89938f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f89938f = null;
            }
        }
    }

    /* renamed from: f */
    public final void m58297f() throws IOException {
        close();
        if (this.f89937e.hasNext()) {
            this.f89938f = this.f89937e.next().openStream();
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f89938f;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            m58297f();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        InputStream inputStream = this.f89938f;
        if (inputStream == null || j <= 0) {
            return 0L;
        }
        long skip = inputStream.skip(j);
        if (skip != 0) {
            return skip;
        }
        if (read() == -1) {
            return 0L;
        }
        return this.f89938f.skip(j - 1) + 1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Preconditions.checkNotNull(bArr);
        while (true) {
            InputStream inputStream = this.f89938f;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                return read;
            }
            m58297f();
        }
    }
}
