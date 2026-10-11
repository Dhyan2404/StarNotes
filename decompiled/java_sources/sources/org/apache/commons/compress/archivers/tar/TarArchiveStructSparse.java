package org.apache.commons.compress.archivers.tar;

import java.util.Objects;

/* loaded from: classes12.dex */
public final class TarArchiveStructSparse {

    /* renamed from: a */
    public final long f105743a;

    /* renamed from: b */
    public final long f105744b;

    public TarArchiveStructSparse(long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("offset must not be negative");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("numbytes must not be negative");
        }
        this.f105743a = j;
        this.f105744b = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TarArchiveStructSparse.class != obj.getClass()) {
            return false;
        }
        TarArchiveStructSparse tarArchiveStructSparse = (TarArchiveStructSparse) obj;
        return this.f105743a == tarArchiveStructSparse.f105743a && this.f105744b == tarArchiveStructSparse.f105744b;
    }

    public long getNumbytes() {
        return this.f105744b;
    }

    public long getOffset() {
        return this.f105743a;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f105743a), Long.valueOf(this.f105744b));
    }

    public String toString() {
        return "TarArchiveStructSparse{offset=" + this.f105743a + ", numbytes=" + this.f105744b + '}';
    }
}
