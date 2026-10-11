package org.apache.commons.compress.compressors;

import java.io.InputStream;

/* loaded from: classes12.dex */
public abstract class CompressorInputStream extends InputStream {

    /* renamed from: e */
    public long f105964e;

    public void count(int i) {
        count(i);
    }

    public long getBytesRead() {
        return this.f105964e;
    }

    @Deprecated
    public int getCount() {
        return (int) this.f105964e;
    }

    public long getUncompressedCount() {
        return getBytesRead();
    }

    public void pushedBackBytes(long j) {
        this.f105964e -= j;
    }

    public void count(long j) {
        if (j != -1) {
            this.f105964e += j;
        }
    }
}
