package org.apache.commons.compress.archivers;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes12.dex */
public abstract class ArchiveInputStream extends InputStream {

    /* renamed from: g */
    public static final int f105349g = 255;

    /* renamed from: e */
    public final byte[] f105350e = new byte[1];

    /* renamed from: f */
    public long f105351f;

    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        return true;
    }

    public void count(int i) {
        count(i);
    }

    public long getBytesRead() {
        return this.f105351f;
    }

    @Deprecated
    public int getCount() {
        return (int) this.f105351f;
    }

    public abstract ArchiveEntry getNextEntry() throws IOException;

    public void pushedBackBytes(long j) {
        this.f105351f -= j;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f105350e, 0, 1) == -1) {
            return -1;
        }
        return this.f105350e[0] & 255;
    }

    public void count(long j) {
        if (j != -1) {
            this.f105351f += j;
        }
    }
}
