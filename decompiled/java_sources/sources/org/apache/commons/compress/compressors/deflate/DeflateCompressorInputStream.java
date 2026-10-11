package org.apache.commons.compress.compressors.deflate;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class DeflateCompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: i */
    public static final int f106094i = 120;

    /* renamed from: j */
    public static final int f106095j = 1;

    /* renamed from: k */
    public static final int f106096k = 94;

    /* renamed from: l */
    public static final int f106097l = 156;

    /* renamed from: m */
    public static final int f106098m = 218;

    /* renamed from: f */
    public final CountingInputStream f106099f;

    /* renamed from: g */
    public final InputStream f106100g;

    /* renamed from: h */
    public final Inflater f106101h;

    public DeflateCompressorInputStream(InputStream inputStream) {
        this(inputStream, new DeflateParameters());
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i <= 3 || bArr[0] != 120) {
            return false;
        }
        byte b = bArr[1];
        return b == 1 || b == 94 || b == -100 || b == -38;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f106100g.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f106100g.close();
        } finally {
            this.f106101h.end();
        }
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106099f.getBytesRead();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f106100g.read();
        count(read == -1 ? 0 : 1);
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return IOUtils.skip(this.f106100g, j);
    }

    public DeflateCompressorInputStream(InputStream inputStream, DeflateParameters deflateParameters) {
        Inflater inflater = new Inflater(!deflateParameters.withZlibHeader());
        this.f106101h = inflater;
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        this.f106099f = countingInputStream;
        this.f106100g = new InflaterInputStream(countingInputStream, inflater);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int read = this.f106100g.read(bArr, i, i2);
        count(read);
        return read;
    }
}
