package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;

/* loaded from: classes3.dex */
public class CheckCRC64DownloadInputStream extends CheckedInputStream {

    /* renamed from: e */
    public long f12983e;

    /* renamed from: f */
    public long f12984f;

    /* renamed from: g */
    public long f12985g;

    /* renamed from: h */
    public String f12986h;

    /* renamed from: i */
    public long f12987i;

    public CheckCRC64DownloadInputStream(InputStream inputStream, Checksum checksum, long j, long j2, String str) {
        super(inputStream, checksum);
        this.f12984f = j;
        this.f12985g = j2;
        this.f12986h = str;
    }

    /* renamed from: f */
    public final void m7674f(int i) throws IOException {
        long j = this.f12983e + i;
        this.f12983e = j;
        if (j >= this.f12984f) {
            long value = getChecksum().getValue();
            this.f12987i = value;
            OSSUtils.checkChecksum(Long.valueOf(value), Long.valueOf(this.f12985g), this.f12986h);
        }
    }

    public long getClientCRC64() {
        return this.f12987i;
    }

    @Override // java.util.zip.CheckedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        m7674f(read);
        return read;
    }

    @Override // java.util.zip.CheckedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        m7674f(read);
        return read;
    }
}
