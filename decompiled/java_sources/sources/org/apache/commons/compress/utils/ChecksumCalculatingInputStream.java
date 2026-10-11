package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.Checksum;

/* loaded from: classes12.dex */
public class ChecksumCalculatingInputStream extends InputStream {

    /* renamed from: e */
    public final InputStream f107313e;

    /* renamed from: f */
    public final Checksum f107314f;

    public ChecksumCalculatingInputStream(Checksum checksum, InputStream inputStream) {
        Objects.requireNonNull(checksum, "checksum");
        Objects.requireNonNull(inputStream, "in");
        this.f107314f = checksum;
        this.f107313e = inputStream;
    }

    public long getValue() {
        return this.f107314f.getValue();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f107313e.read();
        if (read >= 0) {
            this.f107314f.update(read);
        }
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return read() >= 0 ? 1L : 0L;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int read = this.f107313e.read(bArr, i, i2);
        if (read >= 0) {
            this.f107314f.update(bArr, i, read);
        }
        return read;
    }
}
