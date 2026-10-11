package org.apache.commons.compress.compressors.deflate64;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class Deflate64CompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: f */
    public InputStream f106108f;

    /* renamed from: g */
    public C18881a f106109g;

    /* renamed from: h */
    public long f106110h;

    /* renamed from: i */
    public final byte[] f106111i;

    public Deflate64CompressorInputStream(InputStream inputStream) {
        this(new C18881a(inputStream));
        this.f106108f = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        C18881a c18881a = this.f106109g;
        if (c18881a != null) {
            return c18881a.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            m66672f();
            InputStream inputStream = this.f106108f;
            if (inputStream != null) {
                inputStream.close();
                this.f106108f = null;
            }
        } catch (Throwable th) {
            if (this.f106108f != null) {
                this.f106108f.close();
                this.f106108f = null;
            }
            throw th;
        }
    }

    /* renamed from: f */
    public final void m66672f() {
        IOUtils.closeQuietly(this.f106109g);
        this.f106109g = null;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106110h;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read;
        do {
            read = read(this.f106111i);
            if (read == -1) {
                return -1;
            }
        } while (read == 0);
        if (read == 1) {
            return this.f106111i[0] & 255;
        }
        throw new IllegalStateException("Invalid return value from read: " + read);
    }

    public Deflate64CompressorInputStream(C18881a c18881a) {
        this.f106111i = new byte[1];
        this.f106109g = c18881a;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        C18881a c18881a = this.f106109g;
        if (c18881a == null) {
            return -1;
        }
        try {
            int m66687i0 = c18881a.m66687i0(bArr, i, i2);
            this.f106110h = this.f106109g.m66688j0();
            count(m66687i0);
            if (m66687i0 == -1) {
                m66672f();
            }
            return m66687i0;
        } catch (RuntimeException e) {
            throw new IOException("Invalid Deflate64 input", e);
        }
    }
}
