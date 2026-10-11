package org.apache.commons.compress.utils;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes12.dex */
public class CountingInputStream extends FilterInputStream {

    /* renamed from: e */
    public long f107319e;

    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public final void count(long j) {
        if (j != -1) {
            this.f107319e += j;
        }
    }

    public long getBytesRead() {
        return this.f107319e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            count(1L);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read >= 0) {
            count(read);
        }
        return read;
    }
}
