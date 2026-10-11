package org.apache.commons.compress.archivers.tar;

import com.google.common.base.Ascii;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.time.Instant;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.tar.TarArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.CountingOutputStream;
import org.apache.commons.compress.utils.ExactMath;
import org.apache.commons.compress.utils.FixedLengthBlockOutputStream;

/* loaded from: classes12.dex */
public class TarArchiveOutputStream extends ArchiveOutputStream {
    public static final int BIGNUMBER_ERROR = 0;
    public static final int BIGNUMBER_POSIX = 2;
    public static final int BIGNUMBER_STAR = 1;
    public static final int LONGFILE_ERROR = 0;
    public static final int LONGFILE_GNU = 2;
    public static final int LONGFILE_POSIX = 3;
    public static final int LONGFILE_TRUNCATE = 1;

    /* renamed from: u */
    public static final int f105722u = 512;

    /* renamed from: v */
    public static final ZipEncoding f105723v = ZipEncodingHelper.getZipEncoding("ASCII");

    /* renamed from: w */
    public static final int f105724w = -511;

    /* renamed from: e */
    public long f105725e;

    /* renamed from: f */
    public String f105726f;

    /* renamed from: g */
    public long f105727g;

    /* renamed from: h */
    public final byte[] f105728h;

    /* renamed from: i */
    public int f105729i;

    /* renamed from: j */
    public int f105730j;

    /* renamed from: k */
    public int f105731k;

    /* renamed from: l */
    public final int f105732l;

    /* renamed from: m */
    public boolean f105733m;

    /* renamed from: n */
    public boolean f105734n;

    /* renamed from: o */
    public boolean f105735o;

    /* renamed from: p */
    public final FixedLengthBlockOutputStream f105736p;

    /* renamed from: q */
    public final CountingOutputStream f105737q;

    /* renamed from: r */
    public final ZipEncoding f105738r;

    /* renamed from: s */
    public final String f105739s;

    /* renamed from: t */
    public boolean f105740t;

    public TarArchiveOutputStream(OutputStream outputStream) {
        this(outputStream, f105724w);
    }

    /* renamed from: k0 */
    public static /* synthetic */ void m66349k0(StringWriter stringWriter, String str, String str2) {
        int length = str.length() + str2.length() + 3 + 2;
        String str3 = length + " " + str + "=" + str2 + "\n";
        int length2 = str3.getBytes(StandardCharsets.UTF_8).length;
        while (length != length2) {
            str3 = length2 + " " + str + "=" + str2 + "\n";
            int i = length2;
            length2 = str3.getBytes(StandardCharsets.UTF_8).length;
            length = i;
        }
        stringWriter.write(str3);
    }

    /* renamed from: H */
    public final void m66350H(Map<String, String> map, String str, long j, int i) {
        map.put(str, BigDecimal.valueOf(j).add(BigDecimal.valueOf(i).movePointLeft(9).setScale(7, RoundingMode.DOWN)).toPlainString());
    }

    /* renamed from: I */
    public final void m66351I(Map<String, String> map, String str, long j, long j2) {
        if (j < 0 || j > j2) {
            map.put(str, String.valueOf(j));
        }
    }

    /* renamed from: M */
    public final void m66352M(Map<String, String> map, TarArchiveEntry tarArchiveEntry) {
        m66351I(map, "size", tarArchiveEntry.getSize(), TarConstants.MAXSIZE);
        m66351I(map, "gid", tarArchiveEntry.getLongGroupId(), 2097151L);
        m66367w(map, "mtime", tarArchiveEntry.getLastModifiedTime(), TarConstants.MAXSIZE);
        m66358j(map, "atime", tarArchiveEntry.getLastAccessTime());
        if (tarArchiveEntry.getStatusChangeTime() != null) {
            m66358j(map, "ctime", tarArchiveEntry.getStatusChangeTime());
        } else {
            m66358j(map, "ctime", tarArchiveEntry.getCreationTime());
        }
        m66351I(map, CouchFieldKey.KEY_UID, tarArchiveEntry.getLongUserId(), 2097151L);
        m66358j(map, "LIBARCHIVE.creationtime", tarArchiveEntry.getCreationTime());
        m66351I(map, "SCHILY.devmajor", tarArchiveEntry.getDevMajor(), 2097151L);
        m66351I(map, "SCHILY.devminor", tarArchiveEntry.getDevMinor(), 2097151L);
        m66354f0(Constants.ATTRNAME_MODE, tarArchiveEntry.getMode(), 2097151L);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (!this.f105735o) {
                finish();
            }
        } finally {
            if (!this.f105733m) {
                this.f105736p.close();
                this.f105733m = true;
            }
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        if (this.f105735o) {
            throw new IOException("Stream has already been finished");
        }
        if (!this.f105734n) {
            throw new IOException("No current entry to close");
        }
        this.f105736p.flushBlock();
        long j = this.f105727g;
        long j2 = this.f105725e;
        if (j >= j2) {
            int add = ExactMath.add(this.f105731k, j2 / 512);
            this.f105731k = add;
            if (0 != this.f105725e % 512) {
                this.f105731k = add + 1;
            }
            this.f105734n = false;
            return;
        }
        throw new IOException("Entry '" + this.f105726f + "' closed at '" + this.f105727g + "' before the '" + this.f105725e + "' bytes specified in the header were written");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (!this.f105735o) {
            return new TarArchiveEntry(file, str);
        }
        throw new IOException("Stream has already been finished");
    }

    /* renamed from: e0 */
    public final byte[] m66353e0(Map<String, String> map) {
        final StringWriter stringWriter = new StringWriter();
        map.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.r9n
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                TarArchiveOutputStream.m66349k0(stringWriter, (String) obj, (String) obj2);
            }
        });
        return stringWriter.toString().getBytes(StandardCharsets.UTF_8);
    }

    /* renamed from: f0 */
    public final void m66354f0(String str, long j, long j2) {
        m66355g0(str, j, j2, "");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        if (this.f105735o) {
            throw new IOException("This archive has already been finished");
        }
        if (this.f105734n) {
            throw new IOException("This archive contains unclosed entries.");
        }
        m66364p0();
        m66364p0();
        m66360l0();
        this.f105736p.flush();
        this.f105735o = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f105736p.flush();
    }

    /* renamed from: g0 */
    public final void m66355g0(String str, long j, long j2, String str2) {
        if (j < 0 || j > j2) {
            throw new IllegalArgumentException(str + " '" + j + "' is too big ( > " + j2 + " )." + str2);
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public long getBytesWritten() {
        return this.f105737q.getBytesWritten();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    @Deprecated
    public int getCount() {
        return (int) getBytesWritten();
    }

    @Deprecated
    public int getRecordSize() {
        return 512;
    }

    /* renamed from: h0 */
    public final void m66356h0(String str, long j, long j2) {
        m66355g0(str, j, j2, " Use STAR or POSIX extensions to overcome this limit");
    }

    /* renamed from: i0 */
    public final void m66357i0(TarArchiveEntry tarArchiveEntry) {
        m66354f0("entry size", tarArchiveEntry.getSize(), TarConstants.MAXSIZE);
        m66356h0("group id", tarArchiveEntry.getLongGroupId(), 2097151L);
        m66354f0("last modification time", tarArchiveEntry.getLastModifiedTime().to(TimeUnit.SECONDS), TarConstants.MAXSIZE);
        m66354f0("user id", tarArchiveEntry.getLongUserId(), 2097151L);
        m66354f0(Constants.ATTRNAME_MODE, tarArchiveEntry.getMode(), 2097151L);
        m66354f0("major device number", tarArchiveEntry.getDevMajor(), 2097151L);
        m66354f0("minor device number", tarArchiveEntry.getDevMinor(), 2097151L);
    }

    /* renamed from: j */
    public final void m66358j(Map<String, String> map, String str, FileTime fileTime) {
        if (fileTime != null) {
            Instant instant = fileTime.toInstant();
            long epochSecond = instant.getEpochSecond();
            int nano = instant.getNano();
            if (nano == 0) {
                map.put(str, String.valueOf(epochSecond));
            } else {
                m66350H(map, str, epochSecond, nano);
            }
        }
    }

    /* renamed from: j0 */
    public final boolean m66359j0(TarArchiveEntry tarArchiveEntry, String str, Map<String, String> map, String str2, byte b, String str3) throws IOException {
        ByteBuffer encode = this.f105738r.encode(str);
        int limit = encode.limit() - encode.position();
        if (limit >= 100) {
            int i = this.f105729i;
            if (i == 3) {
                map.put(str2, str);
                return true;
            }
            if (i == 2) {
                TarArchiveEntry tarArchiveEntry2 = new TarArchiveEntry(TarConstants.GNU_LONGLINK, b);
                tarArchiveEntry2.setSize(limit + 1);
                m66363o0(tarArchiveEntry, tarArchiveEntry2);
                putArchiveEntry(tarArchiveEntry2);
                write(encode.array(), encode.arrayOffset(), limit);
                write(0);
                closeArchiveEntry();
            } else if (i != 1) {
                throw new IllegalArgumentException(str3 + " '" + str + "' is too long ( > 100 bytes)");
            }
        }
        return false;
    }

    /* renamed from: l0 */
    public final void m66360l0() throws IOException {
        int i = this.f105731k % this.f105732l;
        if (i != 0) {
            while (i < this.f105732l) {
                m66364p0();
                i++;
            }
        }
    }

    /* renamed from: m0 */
    public final boolean m66361m0(char c) {
        return c == 0 || c == '/' || c == '\\';
    }

    /* renamed from: n0 */
    public final String m66362n0(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = (char) (str.charAt(i) & Ascii.MAX);
            if (m66361m0(charAt)) {
                sb.append("_");
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: o0 */
    public final void m66363o0(TarArchiveEntry tarArchiveEntry, TarArchiveEntry tarArchiveEntry2) {
        FileTime lastModifiedTime = tarArchiveEntry.getLastModifiedTime();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long j = lastModifiedTime.to(timeUnit);
        if (j < 0 || j > TarConstants.MAXSIZE) {
            j = 0;
        }
        tarArchiveEntry2.setLastModifiedTime(FileTime.from(j, timeUnit));
    }

    /* renamed from: p0 */
    public final void m66364p0() throws IOException {
        Arrays.fill(this.f105728h, (byte) 0);
        m66366r0(this.f105728h);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x008a  */
    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void putArchiveEntry(org.apache.commons.compress.archivers.ArchiveEntry r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.tar.TarArchiveOutputStream.putArchiveEntry(org.apache.commons.compress.archivers.ArchiveEntry):void");
    }

    /* renamed from: q0 */
    public void m66365q0(TarArchiveEntry tarArchiveEntry, String str, Map<String, String> map) throws IOException {
        String str2 = "./PaxHeaders.X/" + m66362n0(str);
        if (str2.length() >= 100) {
            str2 = str2.substring(0, 99);
        }
        TarArchiveEntry tarArchiveEntry2 = new TarArchiveEntry(str2, (byte) 120);
        m66363o0(tarArchiveEntry, tarArchiveEntry2);
        byte[] m66353e0 = m66353e0(map);
        tarArchiveEntry2.setSize(m66353e0.length);
        putArchiveEntry(tarArchiveEntry2);
        write(m66353e0);
        closeArchiveEntry();
    }

    /* renamed from: r0 */
    public final void m66366r0(byte[] bArr) throws IOException {
        if (bArr.length == 512) {
            this.f105736p.write(bArr);
            this.f105731k++;
            return;
        }
        throw new IOException("Record to write has length '" + bArr.length + "' which is not the record size of '512" + CloudStorageConstants.SINGLE_QUOTES);
    }

    public void setAddPaxHeadersForNonAsciiNames(boolean z) {
        this.f105740t = z;
    }

    public void setBigNumberMode(int i) {
        this.f105730j = i;
    }

    public void setLongFileMode(int i) {
        this.f105729i = i;
    }

    /* renamed from: w */
    public final void m66367w(Map<String, String> map, String str, FileTime fileTime, long j) {
        if (fileTime != null) {
            Instant instant = fileTime.toInstant();
            long epochSecond = instant.getEpochSecond();
            int nano = instant.getNano();
            if (nano == 0) {
                m66351I(map, str, epochSecond, j);
            } else {
                m66350H(map, str, epochSecond, nano);
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f105734n) {
            throw new IllegalStateException("No current tar entry");
        }
        long j = i2;
        if (this.f105727g + j <= this.f105725e) {
            this.f105736p.write(bArr, i, i2);
            this.f105727g += j;
            return;
        }
        throw new IOException("Request to write '" + i2 + "' bytes exceeds size in header of '" + this.f105725e + "' bytes for entry '" + this.f105726f + CloudStorageConstants.SINGLE_QUOTES);
    }

    public TarArchiveOutputStream(OutputStream outputStream, String str) {
        this(outputStream, f105724w, str);
    }

    public TarArchiveOutputStream(OutputStream outputStream, int i) {
        this(outputStream, i, (String) null);
    }

    @Deprecated
    public TarArchiveOutputStream(OutputStream outputStream, int i, int i2) {
        this(outputStream, i, i2, null);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        if (!this.f105735o) {
            return new TarArchiveEntry(path, str, linkOptionArr);
        }
        throw new IOException("Stream has already been finished");
    }

    @Deprecated
    public TarArchiveOutputStream(OutputStream outputStream, int i, int i2, String str) {
        this(outputStream, i, str);
        if (i2 == 512) {
            return;
        }
        throw new IllegalArgumentException("Tar record size must always be 512 bytes. Attempt to set size of " + i2);
    }

    public TarArchiveOutputStream(OutputStream outputStream, int i, String str) {
        this.f105729i = 0;
        this.f105730j = 0;
        int i2 = -511 == i ? 512 : i;
        if (i2 > 0 && i2 % 512 == 0) {
            CountingOutputStream countingOutputStream = new CountingOutputStream(outputStream);
            this.f105737q = countingOutputStream;
            this.f105736p = new FixedLengthBlockOutputStream(countingOutputStream, 512);
            this.f105739s = str;
            this.f105738r = ZipEncodingHelper.getZipEncoding(str);
            this.f105728h = new byte[512];
            this.f105732l = i2 / 512;
            return;
        }
        throw new IllegalArgumentException("Block size must be a multiple of 512 bytes. Attempt to use set size of " + i);
    }
}
