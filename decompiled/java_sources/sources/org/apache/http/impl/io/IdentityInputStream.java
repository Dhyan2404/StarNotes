package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class IdentityInputStream extends InputStream {

    /* renamed from: e */
    public final SessionInputBuffer f111016e;

    /* renamed from: f */
    public boolean f111017f = false;

    public IdentityInputStream(SessionInputBuffer sessionInputBuffer) {
        this.f111016e = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        SessionInputBuffer sessionInputBuffer = this.f111016e;
        if (sessionInputBuffer instanceof BufferInfo) {
            return ((BufferInfo) sessionInputBuffer).length();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f111017f = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f111017f) {
            return -1;
        }
        return this.f111016e.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f111017f) {
            return -1;
        }
        return this.f111016e.read(bArr, i, i2);
    }
}
