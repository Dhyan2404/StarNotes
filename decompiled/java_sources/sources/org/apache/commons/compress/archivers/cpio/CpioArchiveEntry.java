package org.apache.commons.compress.archivers.cpio;

import com.sunia.HTREnginev2.bge;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.utils.ExactMath;

/* loaded from: classes12.dex */
public class CpioArchiveEntry implements CpioConstants, ArchiveEntry {

    /* renamed from: e */
    public final short f105486e;

    /* renamed from: f */
    public final int f105487f;

    /* renamed from: g */
    public final int f105488g;

    /* renamed from: h */
    public long f105489h;

    /* renamed from: i */
    public long f105490i;

    /* renamed from: j */
    public long f105491j;

    /* renamed from: k */
    public long f105492k;

    /* renamed from: l */
    public long f105493l;

    /* renamed from: m */
    public long f105494m;

    /* renamed from: n */
    public long f105495n;

    /* renamed from: o */
    public long f105496o;

    /* renamed from: p */
    public String f105497p;

    /* renamed from: q */
    public long f105498q;

    /* renamed from: r */
    public long f105499r;

    /* renamed from: s */
    public long f105500s;

    /* renamed from: t */
    public long f105501t;

    public CpioArchiveEntry(short s) {
        if (s == 1) {
            this.f105487f = 110;
            this.f105488g = 4;
        } else if (s == 2) {
            this.f105487f = 110;
            this.f105488g = 4;
        } else if (s == 4) {
            this.f105487f = 76;
            this.f105488g = 0;
        } else if (s == 8) {
            this.f105487f = 26;
            this.f105488g = 2;
        } else {
            throw new IllegalArgumentException("Unknown header type " + ((int) s));
        }
        this.f105486e = s;
    }

    /* renamed from: a */
    public final void m66113a() {
        if ((this.f105486e & 3) == 0) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: b */
    public final void m66114b() {
        if ((this.f105486e & 12) == 0) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CpioArchiveEntry cpioArchiveEntry = (CpioArchiveEntry) obj;
        String str = this.f105497p;
        return str == null ? cpioArchiveEntry.f105497p == null : str.equals(cpioArchiveEntry.f105497p);
    }

    public int getAlignmentBoundary() {
        return this.f105488g;
    }

    public long getChksum() {
        m66113a();
        return this.f105489h & 4294967295L;
    }

    public int getDataPadCount() {
        int i;
        int i2 = this.f105488g;
        if (i2 != 0 && (i = (int) (this.f105490i % i2)) > 0) {
            return i2 - i;
        }
        return 0;
    }

    public long getDevice() {
        m66114b();
        return this.f105494m;
    }

    public long getDeviceMaj() {
        m66113a();
        return this.f105493l;
    }

    public long getDeviceMin() {
        m66113a();
        return this.f105494m;
    }

    public short getFormat() {
        return this.f105486e;
    }

    public long getGID() {
        return this.f105491j;
    }

    @Deprecated
    public int getHeaderPadCount() {
        return getHeaderPadCount((Charset) null);
    }

    public int getHeaderSize() {
        return this.f105487f;
    }

    public long getInode() {
        return this.f105492k;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(getTime() * 1000);
    }

    public long getMode() {
        if (this.f105495n != 0 || CpioConstants.CPIO_TRAILER.equals(this.f105497p)) {
            return this.f105495n;
        }
        return 32768L;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.f105497p;
    }

    public long getNumberOfLinks() {
        long j = this.f105498q;
        return j == 0 ? isDirectory() ? 2L : 1L : j;
    }

    public long getRemoteDevice() {
        m66114b();
        return this.f105500s;
    }

    public long getRemoteDeviceMaj() {
        m66113a();
        return this.f105499r;
    }

    public long getRemoteDeviceMin() {
        m66113a();
        return this.f105500s;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.f105490i;
    }

    public long getTime() {
        return this.f105496o;
    }

    public long getUID() {
        return this.f105501t;
    }

    public int hashCode() {
        return Objects.hash(this.f105497p);
    }

    public boolean isBlockDevice() {
        return bge.m53267b(this.f105495n) == 24576;
    }

    public boolean isCharacterDevice() {
        return bge.m53267b(this.f105495n) == 8192;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return bge.m53267b(this.f105495n) == 16384;
    }

    public boolean isNetwork() {
        return bge.m53267b(this.f105495n) == 36864;
    }

    public boolean isPipe() {
        return bge.m53267b(this.f105495n) == 4096;
    }

    public boolean isRegularFile() {
        return bge.m53267b(this.f105495n) == 32768;
    }

    public boolean isSocket() {
        return bge.m53267b(this.f105495n) == 49152;
    }

    public boolean isSymbolicLink() {
        return bge.m53267b(this.f105495n) == 40960;
    }

    public void setChksum(long j) {
        m66113a();
        this.f105489h = j & 4294967295L;
    }

    public void setDevice(long j) {
        m66114b();
        this.f105494m = j;
    }

    public void setDeviceMaj(long j) {
        m66113a();
        this.f105493l = j;
    }

    public void setDeviceMin(long j) {
        m66113a();
        this.f105494m = j;
    }

    public void setGID(long j) {
        this.f105491j = j;
    }

    public void setInode(long j) {
        this.f105492k = j;
    }

    public void setMode(long j) {
        long j2 = 61440 & j;
        switch ((int) j2) {
            case 4096:
            case 8192:
            case 16384:
            case 24576:
            case 32768:
            case 36864:
            case 40960:
            case 49152:
                this.f105495n = j;
                return;
            default:
                throw new IllegalArgumentException("Unknown mode. Full: " + Long.toHexString(j) + " Masked: " + Long.toHexString(j2));
        }
    }

    public void setName(String str) {
        this.f105497p = str;
    }

    public void setNumberOfLinks(long j) {
        this.f105498q = j;
    }

    public void setRemoteDevice(long j) {
        m66114b();
        this.f105500s = j;
    }

    public void setRemoteDeviceMaj(long j) {
        m66113a();
        this.f105499r = j;
    }

    public void setRemoteDeviceMin(long j) {
        m66113a();
        this.f105500s = j;
    }

    public void setSize(long j) {
        if (j >= 0 && j <= 4294967295L) {
            this.f105490i = j;
            return;
        }
        throw new IllegalArgumentException("Invalid entry size <" + j + ">");
    }

    public void setTime(long j) {
        this.f105496o = j;
    }

    public void setUID(long j) {
        this.f105501t = j;
    }

    public int getHeaderPadCount(Charset charset) {
        if (this.f105497p == null) {
            return 0;
        }
        if (charset == null) {
            return getHeaderPadCount(r0.length());
        }
        return getHeaderPadCount(r0.getBytes(charset).length);
    }

    public void setTime(FileTime fileTime) {
        this.f105496o = fileTime.to(TimeUnit.SECONDS);
    }

    public int getHeaderPadCount(long j) {
        if (this.f105488g == 0) {
            return 0;
        }
        int i = this.f105487f + 1;
        if (this.f105497p != null) {
            i = ExactMath.add(i, j);
        }
        int i2 = this.f105488g;
        int i3 = i % i2;
        if (i3 > 0) {
            return i2 - i3;
        }
        return 0;
    }

    public CpioArchiveEntry(String str) {
        this((short) 1, str);
    }

    public CpioArchiveEntry(short s, String str) {
        this(s);
        this.f105497p = str;
    }

    public CpioArchiveEntry(String str, long j) {
        this(str);
        setSize(j);
    }

    public CpioArchiveEntry(short s, String str, long j) {
        this(s, str);
        setSize(j);
    }

    public CpioArchiveEntry(File file, String str) {
        this((short) 1, file, str);
    }

    public CpioArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        this((short) 1, path, str, linkOptionArr);
    }

    public CpioArchiveEntry(short s, File file, String str) {
        this(s, str, file.isFile() ? file.length() : 0L);
        if (file.isDirectory()) {
            setMode(16384L);
        } else if (file.isFile()) {
            setMode(32768L);
        } else {
            throw new IllegalArgumentException("Cannot determine type of file " + file.getName());
        }
        setTime(file.lastModified() / 1000);
    }

    public CpioArchiveEntry(short s, Path path, String str, LinkOption... linkOptionArr) throws IOException {
        this(s, str, Files.isRegularFile(path, linkOptionArr) ? Files.size(path) : 0L);
        if (Files.isDirectory(path, linkOptionArr)) {
            setMode(16384L);
        } else if (Files.isRegularFile(path, linkOptionArr)) {
            setMode(32768L);
        } else {
            throw new IllegalArgumentException("Cannot determine type of file " + path);
        }
        setTime(Files.getLastModifiedTime(path, linkOptionArr));
    }
}
