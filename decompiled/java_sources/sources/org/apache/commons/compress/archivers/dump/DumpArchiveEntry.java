package org.apache.commons.compress.archivers.dump;

import com.sunia.HTREnginev2.yjf;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.dump.DumpArchiveConstants;

/* loaded from: classes12.dex */
public class DumpArchiveEntry implements ArchiveEntry {

    /* renamed from: e */
    public String f105527e;

    /* renamed from: g */
    public int f105529g;

    /* renamed from: i */
    public long f105531i;

    /* renamed from: j */
    public long f105532j;

    /* renamed from: k */
    public long f105533k;

    /* renamed from: l */
    public int f105534l;

    /* renamed from: m */
    public int f105535m;

    /* renamed from: p */
    public String f105538p;

    /* renamed from: q */
    public String f105539q;

    /* renamed from: r */
    public int f105540r;

    /* renamed from: s */
    public long f105541s;

    /* renamed from: t */
    public int f105542t;

    /* renamed from: u */
    public int f105543u;

    /* renamed from: v */
    public long f105544v;

    /* renamed from: w */
    public int f105545w;

    /* renamed from: x */
    public boolean f105546x;

    /* renamed from: f */
    public TYPE f105528f = TYPE.UNKNOWN;

    /* renamed from: h */
    public Set<PERMISSION> f105530h = Collections.emptySet();

    /* renamed from: n */
    public final DumpArchiveSummary f105536n = null;

    /* renamed from: o */
    public final C18828a f105537o = new C18828a();

    /* loaded from: classes12.dex */
    public enum PERMISSION {
        SETUID(2048),
        SETGUI(1024),
        STICKY(512),
        USER_READ(256),
        USER_WRITE(128),
        USER_EXEC(64),
        GROUP_READ(32),
        GROUP_WRITE(16),
        GROUP_EXEC(8),
        WORLD_READ(4),
        WORLD_WRITE(2),
        WORLD_EXEC(1);

        private final int code;

        PERMISSION(int i) {
            this.code = i;
        }

        public static Set<PERMISSION> find(int i) {
            HashSet hashSet = new HashSet();
            for (PERMISSION permission : values()) {
                int i2 = permission.code;
                if ((i & i2) == i2) {
                    hashSet.add(permission);
                }
            }
            return hashSet.isEmpty() ? Collections.emptySet() : EnumSet.copyOf((Collection) hashSet);
        }
    }

    /* loaded from: classes12.dex */
    public enum TYPE {
        WHITEOUT(14),
        SOCKET(12),
        LINK(10),
        FILE(8),
        BLKDEV(6),
        DIRECTORY(4),
        CHRDEV(2),
        FIFO(1),
        UNKNOWN(15);

        private final int code;

        TYPE(int i) {
            this.code = i;
        }

        public static TYPE find(int i) {
            TYPE type = UNKNOWN;
            for (TYPE type2 : values()) {
                if (i == type2.code) {
                    type = type2;
                }
            }
            return type;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.dump.DumpArchiveEntry$a */
    /* loaded from: classes12.dex */
    public static class C18828a {

        /* renamed from: a */
        public DumpArchiveConstants.SEGMENT_TYPE f105547a;

        /* renamed from: b */
        public int f105548b;

        /* renamed from: c */
        public int f105549c;

        /* renamed from: d */
        public int f105550d;

        /* renamed from: e */
        public int f105551e;

        /* renamed from: f */
        public final byte[] f105552f = new byte[512];

        /* renamed from: g */
        public static /* synthetic */ int m66147g(C18828a c18828a) {
            int i = c18828a.f105551e;
            c18828a.f105551e = i + 1;
            return i;
        }

        /* renamed from: i */
        public int m66149i(int i) {
            return this.f105552f[i];
        }

        /* renamed from: j */
        public int m66150j() {
            return this.f105550d;
        }

        /* renamed from: k */
        public int m66151k() {
            return this.f105551e;
        }

        /* renamed from: l */
        public int m66152l() {
            return this.f105549c;
        }

        /* renamed from: m */
        public DumpArchiveConstants.SEGMENT_TYPE m66153m() {
            return this.f105547a;
        }

        /* renamed from: n */
        public int m66154n() {
            return this.f105548b;
        }

        /* renamed from: o */
        public void m66155o(int i) {
            this.f105549c = i;
        }
    }

    public DumpArchiveEntry() {
    }

    /* renamed from: c */
    public static DumpArchiveEntry m66137c(byte[] bArr) {
        DumpArchiveEntry dumpArchiveEntry = new DumpArchiveEntry();
        C18828a c18828a = dumpArchiveEntry.f105537o;
        c18828a.f105547a = DumpArchiveConstants.SEGMENT_TYPE.find(yjf.m58437c(bArr, 0));
        c18828a.f105548b = yjf.m58437c(bArr, 12);
        dumpArchiveEntry.f105542t = c18828a.f105549c = yjf.m58437c(bArr, 20);
        int m58436b = yjf.m58436b(bArr, 32);
        dumpArchiveEntry.setType(TYPE.find((m58436b >> 12) & 15));
        dumpArchiveEntry.setMode(m58436b);
        dumpArchiveEntry.f105543u = yjf.m58436b(bArr, 34);
        dumpArchiveEntry.setSize(yjf.m58438d(bArr, 40));
        dumpArchiveEntry.setAccessTime(new Date((yjf.m58437c(bArr, 48) * 1000) + (yjf.m58437c(bArr, 52) / 1000)));
        dumpArchiveEntry.setLastModifiedDate(new Date((yjf.m58437c(bArr, 56) * 1000) + (yjf.m58437c(bArr, 60) / 1000)));
        dumpArchiveEntry.f105544v = (yjf.m58437c(bArr, 64) * 1000) + (yjf.m58437c(bArr, 68) / 1000);
        dumpArchiveEntry.f105545w = yjf.m58437c(bArr, 140);
        dumpArchiveEntry.setUserId(yjf.m58437c(bArr, 144));
        dumpArchiveEntry.setGroupId(yjf.m58437c(bArr, 148));
        c18828a.f105550d = yjf.m58437c(bArr, 160);
        c18828a.f105551e = 0;
        for (int i = 0; i < 512 && i < c18828a.f105550d; i++) {
            if (bArr[i + 164] == 0) {
                C18828a.m66147g(c18828a);
            }
        }
        System.arraycopy(bArr, 164, c18828a.f105552f, 0, 512);
        dumpArchiveEntry.f105540r = c18828a.m66154n();
        return dumpArchiveEntry;
    }

    /* renamed from: a */
    public long m66138a() {
        return this.f105531i;
    }

    /* renamed from: b */
    public String m66139b() {
        return this.f105539q;
    }

    /* renamed from: d */
    public void m66140d(byte[] bArr) {
        this.f105537o.f105548b = yjf.m58437c(bArr, 16);
        this.f105537o.f105550d = yjf.m58437c(bArr, 160);
        this.f105537o.f105551e = 0;
        for (int i = 0; i < 512 && i < this.f105537o.f105550d; i++) {
            if (bArr[i + 164] == 0) {
                C18828a.m66147g(this.f105537o);
            }
        }
        System.arraycopy(bArr, 164, this.f105537o.f105552f, 0, 512);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DumpArchiveEntry dumpArchiveEntry = (DumpArchiveEntry) obj;
        if (this.f105542t != dumpArchiveEntry.f105542t) {
            return false;
        }
        DumpArchiveSummary dumpArchiveSummary = this.f105536n;
        return (dumpArchiveSummary != null || dumpArchiveEntry.f105536n == null) && (dumpArchiveSummary == null || dumpArchiveSummary.equals(dumpArchiveEntry.f105536n));
    }

    public Date getAccessTime() {
        return new Date(this.f105532j);
    }

    public Date getCreationTime() {
        return new Date(this.f105544v);
    }

    public int getGeneration() {
        return this.f105545w;
    }

    public int getGroupId() {
        return this.f105535m;
    }

    public int getHeaderCount() {
        return this.f105537o.m66150j();
    }

    public int getHeaderHoles() {
        return this.f105537o.m66151k();
    }

    public DumpArchiveConstants.SEGMENT_TYPE getHeaderType() {
        return this.f105537o.m66153m();
    }

    public int getIno() {
        return this.f105537o.m66152l();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(this.f105533k);
    }

    public int getMode() {
        return this.f105529g;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.f105527e;
    }

    public int getNlink() {
        return this.f105543u;
    }

    public long getOffset() {
        return this.f105541s;
    }

    public Set<PERMISSION> getPermissions() {
        return this.f105530h;
    }

    public String getSimpleName() {
        return this.f105538p;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        if (isDirectory()) {
            return -1L;
        }
        return this.f105531i;
    }

    public TYPE getType() {
        return this.f105528f;
    }

    public int getUserId() {
        return this.f105534l;
    }

    public int getVolume() {
        return this.f105540r;
    }

    public int hashCode() {
        return this.f105542t;
    }

    public boolean isBlkDev() {
        return this.f105528f == TYPE.BLKDEV;
    }

    public boolean isChrDev() {
        return this.f105528f == TYPE.CHRDEV;
    }

    public boolean isDeleted() {
        return this.f105546x;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return this.f105528f == TYPE.DIRECTORY;
    }

    public boolean isFifo() {
        return this.f105528f == TYPE.FIFO;
    }

    public boolean isFile() {
        return this.f105528f == TYPE.FILE;
    }

    public boolean isSocket() {
        return this.f105528f == TYPE.SOCKET;
    }

    public boolean isSparseRecord(int i) {
        return (this.f105537o.m66149i(i) & 1) == 0;
    }

    public void setAccessTime(Date date) {
        this.f105532j = date.getTime();
    }

    public void setCreationTime(Date date) {
        this.f105544v = date.getTime();
    }

    public void setDeleted(boolean z) {
        this.f105546x = z;
    }

    public void setGeneration(int i) {
        this.f105545w = i;
    }

    public void setGroupId(int i) {
        this.f105535m = i;
    }

    public void setLastModifiedDate(Date date) {
        this.f105533k = date.getTime();
    }

    public void setMode(int i) {
        this.f105529g = i & 4095;
        this.f105530h = PERMISSION.find(i);
    }

    public final void setName(String str) {
        this.f105539q = str;
        if (str != null) {
            if (isDirectory() && !str.endsWith("/")) {
                str = str + "/";
            }
            if (str.startsWith("./")) {
                str = str.substring(2);
            }
        }
        this.f105527e = str;
    }

    public void setNlink(int i) {
        this.f105543u = i;
    }

    public void setOffset(long j) {
        this.f105541s = j;
    }

    public void setSimpleName(String str) {
        this.f105538p = str;
    }

    public void setSize(long j) {
        this.f105531i = j;
    }

    public void setType(TYPE type) {
        this.f105528f = type;
    }

    public void setUserId(int i) {
        this.f105534l = i;
    }

    public void setVolume(int i) {
        this.f105540r = i;
    }

    public String toString() {
        return getName();
    }

    public DumpArchiveEntry(String str, String str2) {
        setName(str);
        this.f105538p = str2;
    }

    public DumpArchiveEntry(String str, String str2, int i, TYPE type) {
        setType(type);
        setName(str);
        this.f105538p = str2;
        this.f105542t = i;
        this.f105541s = 0L;
    }
}
