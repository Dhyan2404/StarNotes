package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class yji extends InflaterInputStream implements InputStreamStatistics {

    /* renamed from: e */
    public long f90799e;

    /* renamed from: f */
    public long f90800f;

    public yji(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.util.zip.InflaterInputStream
    public void fill() throws IOException {
        super.fill();
        this.f90799e += ((InflaterInputStream) this).inf.getRemaining();
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f90799e;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getUncompressedCount() {
        return this.f90800f;
    }

    @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read > -1) {
            this.f90800f++;
        }
        return read;
    }

    public yji(InputStream inputStream, Inflater inflater) {
        super(inputStream, inflater);
    }

    public yji(InputStream inputStream, Inflater inflater, int i) {
        super(inputStream, inflater, i);
    }

    @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read > -1) {
            this.f90800f += read;
        }
        return read;
    }
}
