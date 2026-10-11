package org.apache.commons.compress.archivers.arj;

import java.io.File;
import java.util.Date;
import java.util.regex.Matcher;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipUtil;

/* loaded from: classes12.dex */
public class ArjArchiveEntry implements ArchiveEntry {

    /* renamed from: e */
    public final C18826a f105398e;

    /* loaded from: classes12.dex */
    public static class HostOs {
        public static final int AMIGA = 3;
        public static final int APPLE_GS = 6;
        public static final int ATARI_ST = 7;
        public static final int DOS = 0;
        public static final int MAC_OS = 4;
        public static final int NEXT = 8;
        public static final int OS_2 = 5;
        public static final int PRIMOS = 1;
        public static final int UNIX = 2;
        public static final int VAX_VMS = 9;
        public static final int WIN32 = 11;
        public static final int WIN95 = 10;
    }

    public ArjArchiveEntry() {
        this.f105398e = new C18826a();
    }

    /* renamed from: a */
    public int m66103a() {
        return this.f105398e.f105410e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f105398e.equals(((ArjArchiveEntry) obj).f105398e);
    }

    public int getHostOs() {
        return this.f105398e.f105408c;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        boolean isHostOsUnix = isHostOsUnix();
        int i = this.f105398e.f105413h;
        return new Date(isHostOsUnix ? i * 1000 : ZipUtil.dosToJavaTime(i & 4294967295L));
    }

    public int getMode() {
        return this.f105398e.f105418m;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        C18826a c18826a = this.f105398e;
        return (c18826a.f105409d & 16) != 0 ? c18826a.f105425t.replaceAll("/", Matcher.quoteReplacement(File.separator)) : c18826a.f105425t;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.f105398e.f105415j;
    }

    public int getUnixMode() {
        if (isHostOsUnix()) {
            return getMode();
        }
        return 0;
    }

    public int hashCode() {
        String name = getName();
        if (name == null) {
            return 0;
        }
        return name.hashCode();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return this.f105398e.f105411f == 3;
    }

    public boolean isHostOsUnix() {
        return getHostOs() == 2 || getHostOs() == 8;
    }

    public ArjArchiveEntry(C18826a c18826a) {
        this.f105398e = c18826a;
    }
}
