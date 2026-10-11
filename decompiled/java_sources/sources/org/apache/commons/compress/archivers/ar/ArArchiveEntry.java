package org.apache.commons.compress.archivers.ar;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Date;
import java.util.Objects;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* loaded from: classes12.dex */
public class ArArchiveEntry implements ArchiveEntry {
    public static final String HEADER = "!<arch>\n";
    public static final String TRAILER = "`\n";

    /* renamed from: k */
    public static final int f105361k = 33188;

    /* renamed from: e */
    public final String f105362e;

    /* renamed from: f */
    public final int f105363f;

    /* renamed from: g */
    public final int f105364g;

    /* renamed from: h */
    public final int f105365h;

    /* renamed from: i */
    public final long f105366i;

    /* renamed from: j */
    public final long f105367j;

    public ArArchiveEntry(String str, long j) {
        this(str, j, 0, 0, 33188, System.currentTimeMillis() / 1000);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ArArchiveEntry arArchiveEntry = (ArArchiveEntry) obj;
        String str = this.f105362e;
        return str == null ? arArchiveEntry.f105362e == null : str.equals(arArchiveEntry.f105362e);
    }

    public int getGroupId() {
        return this.f105364g;
    }

    public long getLastModified() {
        return this.f105366i;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(getLastModified() * 1000);
    }

    public long getLength() {
        return this.f105367j;
    }

    public int getMode() {
        return this.f105365h;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.f105362e;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return getLength();
    }

    public int getUserId() {
        return this.f105363f;
    }

    public int hashCode() {
        return Objects.hash(this.f105362e);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return false;
    }

    public ArArchiveEntry(String str, long j, int i, int i2, int i3, long j2) {
        this.f105362e = str;
        if (j >= 0) {
            this.f105367j = j;
            this.f105363f = i;
            this.f105364g = i2;
            this.f105365h = i3;
            this.f105366i = j2;
            return;
        }
        throw new IllegalArgumentException("length must not be negative");
    }

    public ArArchiveEntry(File file, String str) {
        this(str, file.isFile() ? file.length() : 0L, 0, 0, 33188, file.lastModified() / 1000);
    }

    public ArArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        this(str, Files.isRegularFile(path, linkOptionArr) ? Files.size(path) : 0L, 0, 0, 33188, Files.getLastModifiedTime(path, linkOptionArr).toMillis() / 1000);
    }
}
