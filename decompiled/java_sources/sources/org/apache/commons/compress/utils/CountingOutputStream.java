package org.apache.commons.compress.utils;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes12.dex */
public class CountingOutputStream extends FilterOutputStream {

    /* renamed from: e */
    public long f107320e;

    public CountingOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void count(long j) {
        if (j != -1) {
            this.f107320e += j;
        }
    }

    public long getBytesWritten() {
        return this.f107320e;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        count(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        count(i2);
    }
}
