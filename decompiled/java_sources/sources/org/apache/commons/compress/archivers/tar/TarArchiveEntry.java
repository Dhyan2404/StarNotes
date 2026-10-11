package org.apache.commons.compress.archivers.tar;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import java.io.File;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.math.BigDecimal;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFileAttributes;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;
import java.util.stream.Collectors;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.EntryStreamOffsets;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarArchiveStructSparse;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class TarArchiveEntry implements ArchiveEntry, TarConstants, EntryStreamOffsets {
    public static final int DEFAULT_DIR_MODE = 16877;
    public static final int DEFAULT_FILE_MODE = 33188;
    public static final int MAX_NAMELEN = 31;
    public static final int MILLIS_PER_SECOND = 1000;
    public static final long UNKNOWN = -1;

    /* renamed from: u0 */
    public static final TarArchiveEntry[] f105675u0 = new TarArchiveEntry[0];

    /* renamed from: J */
    public boolean f105676J;

    /* renamed from: O */
    public boolean f105677O;

    /* renamed from: Q */
    public boolean f105678Q;

    /* renamed from: Z */
    public final Path f105679Z;

    /* renamed from: e */
    public String f105680e;

    /* renamed from: f */
    public final boolean f105681f;

    /* renamed from: g */
    public int f105682g;

    /* renamed from: h */
    public long f105683h;

    /* renamed from: i */
    public long f105684i;

    /* renamed from: j */
    public long f105685j;

    /* renamed from: k */
    public FileTime f105686k;

    /* renamed from: k0 */
    public final LinkOption[] f105687k0;

    /* renamed from: l */
    public FileTime f105688l;

    /* renamed from: m */
    public FileTime f105689m;

    /* renamed from: n */
    public FileTime f105690n;

    /* renamed from: o */
    public boolean f105691o;

    /* renamed from: p */
    public byte f105692p;

    /* renamed from: q */
    public String f105693q;

    /* renamed from: q0 */
    public final Map<String, String> f105694q0;

    /* renamed from: r */
    public String f105695r;

    /* renamed from: s */
    public String f105696s;

    /* renamed from: t */
    public String f105697t;

    /* renamed from: t0 */
    public long f105698t0;

    /* renamed from: u */
    public String f105699u;

    /* renamed from: v */
    public int f105700v;

    /* renamed from: w */
    public int f105701w;

    /* renamed from: x */
    public List<TarArchiveStructSparse> f105702x;

    /* renamed from: y */
    public boolean f105703y;

    /* renamed from: z */
    public long f105704z;

    public TarArchiveEntry(boolean z) {
        this.f105680e = "";
        this.f105693q = "";
        this.f105695r = "ustar\u0000";
        this.f105696s = "00";
        this.f105699u = "";
        this.f105694q0 = new HashMap();
        this.f105698t0 = -1L;
        String property = System.getProperty("user.name", "");
        this.f105697t = property.length() > 31 ? property.substring(0, 31) : property;
        this.f105679Z = null;
        this.f105687k0 = IOUtils.EMPTY_LINK_OPTIONS;
        this.f105681f = z;
    }

    /* renamed from: c */
    public static FileTime m66311c(long j) {
        if (j <= 0) {
            return null;
        }
        return FileTime.from(j, TimeUnit.SECONDS);
    }

    /* renamed from: l */
    public static /* synthetic */ boolean m66312l(TarArchiveStructSparse tarArchiveStructSparse) {
        return tarArchiveStructSparse.getOffset() > 0 || tarArchiveStructSparse.getNumbytes() > 0;
    }

    /* renamed from: m */
    public static String m66313m(String str, boolean z) {
        String property;
        int indexOf;
        if (!z && (property = System.getProperty("os.name")) != null) {
            String lowerCase = property.toLowerCase(Locale.ROOT);
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char charAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.contains("netware") && (indexOf = str.indexOf(58)) != -1) {
                str = str.substring(indexOf + 1);
            }
        }
        String replace = str.replace(File.separatorChar, '/');
        while (!z && replace.startsWith("/")) {
            replace = replace.substring(1);
        }
        return replace;
    }

    /* renamed from: n */
    public static Instant m66314n(String str) {
        BigDecimal bigDecimal = new BigDecimal(str);
        return Instant.ofEpochSecond(bigDecimal.longValue(), bigDecimal.remainder(BigDecimal.ONE).movePointRight(9).longValue());
    }

    public void addPaxHeader(String str, String str2) {
        try {
            m66328s(str, str2);
        } catch (IOException e) {
            throw new IllegalArgumentException("Invalid input", e);
        }
    }

    /* renamed from: b */
    public final int m66315b(Map<String, String> map, byte[] bArr) {
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_GNU, bArr, 257, 6)) {
            return 2;
        }
        if (ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6)) {
            return m66323k(map, bArr) ? 4 : 3;
        }
        return 0;
    }

    public void clearExtraPaxHeaders() {
        this.f105694q0.clear();
    }

    /* renamed from: d */
    public final int m66316d(byte b, int i, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i + i3] = b;
        }
        return i + i2;
    }

    /* renamed from: e */
    public final int m66317e(int i, int i2, byte[] bArr, int i3) {
        return m66316d((byte) i, i2, bArr, i3);
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return equals((TarArchiveEntry) obj);
    }

    /* renamed from: f */
    public void m66318f(Map<String, String> map) {
        this.f105676J = true;
        this.f105704z = Integer.parseInt(map.get("GNU.sparse.size"));
        if (map.containsKey("GNU.sparse.name")) {
            this.f105680e = map.get("GNU.sparse.name");
        }
    }

    /* renamed from: g */
    public void m66319g(Map<String, String> map) throws IOException {
        this.f105676J = true;
        this.f105677O = true;
        if (map.containsKey("GNU.sparse.name")) {
            this.f105680e = map.get("GNU.sparse.name");
        }
        if (map.containsKey("GNU.sparse.realsize")) {
            try {
                this.f105704z = Integer.parseInt(map.get("GNU.sparse.realsize"));
            } catch (NumberFormatException unused) {
                throw new IOException("Corrupted TAR archive. GNU.sparse.realsize header for " + this.f105680e + " contains non-numeric value");
            }
        }
    }

    public FileTime getCreationTime() {
        return this.f105690n;
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public long getDataOffset() {
        return this.f105698t0;
    }

    public int getDevMajor() {
        return this.f105700v;
    }

    public int getDevMinor() {
        return this.f105701w;
    }

    public TarArchiveEntry[] getDirectoryEntries() {
        if (this.f105679Z == null || !isDirectory()) {
            return f105675u0;
        }
        ArrayList arrayList = new ArrayList();
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.f105679Z);
            try {
                Iterator<Path> it2 = newDirectoryStream.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new TarArchiveEntry(it2.next()));
                }
                newDirectoryStream.close();
                return (TarArchiveEntry[]) arrayList.toArray(f105675u0);
            } finally {
            }
        } catch (IOException unused) {
            return f105675u0;
        }
    }

    public String getExtraPaxHeader(String str) {
        return this.f105694q0.get(str);
    }

    public Map<String, String> getExtraPaxHeaders() {
        return Collections.unmodifiableMap(this.f105694q0);
    }

    public File getFile() {
        Path path = this.f105679Z;
        if (path == null) {
            return null;
        }
        return path.toFile();
    }

    @Deprecated
    public int getGroupId() {
        return (int) (this.f105684i & (-1));
    }

    public String getGroupName() {
        return this.f105699u;
    }

    public FileTime getLastAccessTime() {
        return this.f105689m;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return getModTime();
    }

    public FileTime getLastModifiedTime() {
        return this.f105686k;
    }

    public String getLinkName() {
        return this.f105693q;
    }

    public long getLongGroupId() {
        return this.f105684i;
    }

    public long getLongUserId() {
        return this.f105683h;
    }

    public Date getModTime() {
        return new Date(this.f105686k.toMillis());
    }

    public int getMode() {
        return this.f105682g;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.f105680e;
    }

    public List<TarArchiveStructSparse> getOrderedSparseHeaders() throws IOException {
        List<TarArchiveStructSparse> list = this.f105702x;
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        List<TarArchiveStructSparse> list2 = (List) this.f105702x.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.p9n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m66312l;
                m66312l = TarArchiveEntry.m66312l((TarArchiveStructSparse) obj);
                return m66312l;
            }
        }).sorted(Comparator.comparingLong(new ToLongFunction() { // from class: com.sunia.HTREnginev2.q9n
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((TarArchiveStructSparse) obj).getOffset();
            }
        })).collect(Collectors.toList());
        int size = list2.size();
        int i = 0;
        while (i < size) {
            TarArchiveStructSparse tarArchiveStructSparse = list2.get(i);
            i++;
            if (i < size && tarArchiveStructSparse.getOffset() + tarArchiveStructSparse.getNumbytes() > list2.get(i).getOffset()) {
                throw new IOException("Corrupted TAR archive. Sparse blocks for " + getName() + " overlap each other.");
            }
            if (tarArchiveStructSparse.getOffset() + tarArchiveStructSparse.getNumbytes() < 0) {
                throw new IOException("Unreadable TAR archive. Offset and numbytes for sparse block in " + getName() + " too large.");
            }
        }
        if (!list2.isEmpty()) {
            TarArchiveStructSparse tarArchiveStructSparse2 = list2.get(size - 1);
            if (tarArchiveStructSparse2.getOffset() + tarArchiveStructSparse2.getNumbytes() > getRealSize()) {
                throw new IOException("Corrupted TAR archive. Sparse block extends beyond real size of the entry");
            }
        }
        return list2;
    }

    public Path getPath() {
        return this.f105679Z;
    }

    public long getRealSize() {
        return !isSparse() ? getSize() : this.f105704z;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.f105685j;
    }

    public List<TarArchiveStructSparse> getSparseHeaders() {
        return this.f105702x;
    }

    public FileTime getStatusChangeTime() {
        return this.f105688l;
    }

    @Deprecated
    public int getUserId() {
        return (int) (this.f105683h & (-1));
    }

    public String getUserName() {
        return this.f105697t;
    }

    /* renamed from: h */
    public void m66320h(Map<String, String> map) throws IOException {
        this.f105678Q = true;
        if (map.containsKey("SCHILY.realsize")) {
            try {
                this.f105704z = Long.parseLong(map.get("SCHILY.realsize"));
            } catch (NumberFormatException unused) {
                throw new IOException("Corrupted TAR archive. SCHILY.realsize header for " + this.f105680e + " contains non-numeric value");
            }
        }
    }

    public int hashCode() {
        return getName().hashCode();
    }

    /* renamed from: i */
    public final boolean m66321i(byte[] bArr) {
        byte b = bArr[475];
        if (b != 0) {
            return bArr[156] != 77 || ((bArr[464] & 128) == 0 && b != 32);
        }
        return false;
    }

    public boolean isBlockDevice() {
        return this.f105692p == 52;
    }

    public boolean isCharacterDevice() {
        return this.f105692p == 51;
    }

    public boolean isCheckSumOK() {
        return this.f105691o;
    }

    public boolean isDescendent(TarArchiveEntry tarArchiveEntry) {
        return tarArchiveEntry.getName().startsWith(getName());
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        Path path = this.f105679Z;
        if (path != null) {
            return Files.isDirectory(path, this.f105687k0);
        }
        if (this.f105692p == 53) {
            return true;
        }
        return (isPaxHeader() || isGlobalPaxHeader() || !getName().endsWith("/")) ? false : true;
    }

    public boolean isExtended() {
        return this.f105703y;
    }

    public boolean isFIFO() {
        return this.f105692p == 54;
    }

    public boolean isFile() {
        Path path = this.f105679Z;
        if (path != null) {
            return Files.isRegularFile(path, this.f105687k0);
        }
        byte b = this.f105692p;
        if (b == 0 || b == 48) {
            return true;
        }
        return !getName().endsWith("/");
    }

    public boolean isGNULongLinkEntry() {
        return this.f105692p == 75;
    }

    public boolean isGNULongNameEntry() {
        return this.f105692p == 76;
    }

    public boolean isGNUSparse() {
        return isOldGNUSparse() || isPaxGNUSparse();
    }

    public boolean isGlobalPaxHeader() {
        return this.f105692p == 103;
    }

    public boolean isLink() {
        return this.f105692p == 49;
    }

    public boolean isOldGNUSparse() {
        return this.f105692p == 83;
    }

    public boolean isPaxGNU1XSparse() {
        return this.f105677O;
    }

    public boolean isPaxGNUSparse() {
        return this.f105676J;
    }

    public boolean isPaxHeader() {
        byte b = this.f105692p;
        return b == 120 || b == 88;
    }

    public boolean isSparse() {
        return isGNUSparse() || isStarSparse();
    }

    public boolean isStarSparse() {
        return this.f105678Q;
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public boolean isStreamContiguous() {
        return true;
    }

    public boolean isSymbolicLink() {
        return this.f105692p == 50;
    }

    /* renamed from: j */
    public final boolean m66322j(byte[] bArr, int i, int i2) {
        if ((bArr[i] & 128) == 0) {
            int i3 = i2 - 1;
            for (int i4 = 0; i4 < i3; i4++) {
                byte b = bArr[i + i4];
                if (b < 48 || b > 55) {
                    return true;
                }
            }
            byte b2 = bArr[i + i3];
            if (b2 != 32 && b2 != 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    public final boolean m66323k(Map<String, String> map, byte[] bArr) {
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_XSTAR, bArr, 508, 4)) {
            return true;
        }
        String str = map.get("SCHILY.archtype");
        return str != null ? "xustar".equals(str) || "exustar".equals(str) : (m66321i(bArr) || m66322j(bArr, TarConstants.XSTAR_ATIME_OFFSET, 12) || m66322j(bArr, TarConstants.XSTAR_CTIME_OFFSET, 12)) ? false : true;
    }

    /* renamed from: o */
    public final long m66324o(byte[] bArr, int i, int i2, boolean z) {
        if (!z) {
            return TarUtils.parseOctalOrBinary(bArr, i, i2);
        }
        try {
            return TarUtils.parseOctalOrBinary(bArr, i, i2);
        } catch (IllegalArgumentException unused) {
            return -1L;
        }
    }

    /* renamed from: p */
    public final void m66325p(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z, boolean z2) throws IOException {
        try {
            m66327r(map, bArr, zipEncoding, z, z2);
        } catch (IllegalArgumentException e) {
            throw new IOException("Corrupted TAR archive.", e);
        }
    }

    public void parseTarHeader(byte[] bArr) {
        try {
            try {
                parseTarHeader(bArr, TarUtils.f105765b);
            } catch (IOException unused) {
                m66326q(bArr, TarUtils.f105765b, true, false);
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    /* renamed from: q */
    public final void m66326q(byte[] bArr, ZipEncoding zipEncoding, boolean z, boolean z2) throws IOException {
        m66325p(Collections.emptyMap(), bArr, zipEncoding, z, z2);
    }

    /* renamed from: r */
    public final void m66327r(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z, boolean z2) throws IOException {
        this.f105680e = z ? TarUtils.parseName(bArr, 0, 100) : TarUtils.parseName(bArr, 0, 100, zipEncoding);
        this.f105682g = (int) m66324o(bArr, 100, 8, z2);
        this.f105683h = (int) m66324o(bArr, 108, 8, z2);
        this.f105684i = (int) m66324o(bArr, 116, 8, z2);
        long parseOctalOrBinary = TarUtils.parseOctalOrBinary(bArr, 124, 12);
        this.f105685j = parseOctalOrBinary;
        if (parseOctalOrBinary < 0) {
            throw new IOException("broken archive, entry with negative size");
        }
        this.f105686k = FileTime.from(m66324o(bArr, 136, 12, z2), TimeUnit.SECONDS);
        this.f105691o = TarUtils.verifyCheckSum(bArr);
        this.f105692p = bArr[156];
        this.f105693q = z ? TarUtils.parseName(bArr, 157, 100) : TarUtils.parseName(bArr, 157, 100, zipEncoding);
        this.f105695r = TarUtils.parseName(bArr, 257, 6);
        this.f105696s = TarUtils.parseName(bArr, 263, 2);
        this.f105697t = z ? TarUtils.parseName(bArr, 265, 32) : TarUtils.parseName(bArr, 265, 32, zipEncoding);
        this.f105699u = z ? TarUtils.parseName(bArr, 297, 32) : TarUtils.parseName(bArr, 297, 32, zipEncoding);
        byte b = this.f105692p;
        if (b == 51 || b == 52) {
            this.f105700v = (int) m66324o(bArr, DataBinderMapperImpl.f53277q5, 8, z2);
            this.f105701w = (int) m66324o(bArr, 337, 8, z2);
        }
        int m66315b = m66315b(map, bArr);
        if (m66315b == 2) {
            this.f105689m = m66311c(m66324o(bArr, 345, 12, z2));
            this.f105688l = m66311c(m66324o(bArr, 357, 12, z2));
            this.f105702x = new ArrayList(TarUtils.m66394g(bArr, StandardNames.XML_SPACE, 4));
            this.f105703y = TarUtils.parseBoolean(bArr, 482);
            this.f105704z = TarUtils.parseOctal(bArr, 483, 12);
            return;
        }
        if (m66315b == 4) {
            String parseName = z ? TarUtils.parseName(bArr, 345, 131) : TarUtils.parseName(bArr, 345, 131, zipEncoding);
            if (!parseName.isEmpty()) {
                this.f105680e = parseName + "/" + this.f105680e;
            }
            this.f105689m = m66311c(m66324o(bArr, TarConstants.XSTAR_ATIME_OFFSET, 12, z2));
            this.f105688l = m66311c(m66324o(bArr, TarConstants.XSTAR_CTIME_OFFSET, 12, z2));
            return;
        }
        String parseName2 = z ? TarUtils.parseName(bArr, 345, 155) : TarUtils.parseName(bArr, 345, 155, zipEncoding);
        if (isDirectory() && !this.f105680e.endsWith("/")) {
            this.f105680e += "/";
        }
        if (parseName2.isEmpty()) {
            return;
        }
        this.f105680e = parseName2 + "/" + this.f105680e;
    }

    /* renamed from: s */
    public final void m66328s(String str, String str2) throws IOException {
        m66329t(str, str2, this.f105694q0);
    }

    public void setCreationTime(FileTime fileTime) {
        this.f105690n = fileTime;
    }

    public void setDataOffset(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("The offset can not be smaller than 0");
        }
        this.f105698t0 = j;
    }

    public void setDevMajor(int i) {
        if (i >= 0) {
            this.f105700v = i;
            return;
        }
        throw new IllegalArgumentException("Major device number is out of range: " + i);
    }

    public void setDevMinor(int i) {
        if (i >= 0) {
            this.f105701w = i;
            return;
        }
        throw new IllegalArgumentException("Minor device number is out of range: " + i);
    }

    public void setGroupId(int i) {
        setGroupId(i);
    }

    public void setGroupName(String str) {
        this.f105699u = str;
    }

    public void setIds(int i, int i2) {
        setUserId(i);
        setGroupId(i2);
    }

    public void setLastAccessTime(FileTime fileTime) {
        this.f105689m = fileTime;
    }

    public void setLastModifiedTime(FileTime fileTime) {
        Objects.requireNonNull(fileTime, "Time must not be null");
        this.f105686k = fileTime;
    }

    public void setLinkName(String str) {
        this.f105693q = str;
    }

    public void setModTime(Date date) {
        setLastModifiedTime(FileTime.fromMillis(date.getTime()));
    }

    public void setMode(int i) {
        this.f105682g = i;
    }

    public void setName(String str) {
        this.f105680e = m66313m(str, this.f105681f);
    }

    public void setNames(String str, String str2) {
        setUserName(str);
        setGroupName(str2);
    }

    public void setSize(long j) {
        if (j >= 0) {
            this.f105685j = j;
            return;
        }
        throw new IllegalArgumentException("Size is out of range: " + j);
    }

    public void setSparseHeaders(List<TarArchiveStructSparse> list) {
        this.f105702x = list;
    }

    public void setStatusChangeTime(FileTime fileTime) {
        this.f105688l = fileTime;
    }

    public void setUserId(int i) {
        setUserId(i);
    }

    public void setUserName(String str) {
        this.f105697t = str;
    }

    /* renamed from: t */
    public final void m66329t(String str, String str2, Map<String, String> map) throws IOException {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1916861932:
                if (str.equals("SCHILY.devmajor")) {
                    c = 0;
                    break;
                }
                break;
            case -1916619760:
                if (str.equals("SCHILY.devminor")) {
                    c = 1;
                    break;
                }
                break;
            case -277496563:
                if (str.equals("GNU.sparse.realsize")) {
                    c = 2;
                    break;
                }
                break;
            case -160380561:
                if (str.equals("GNU.sparse.size")) {
                    c = 3;
                    break;
                }
                break;
            case 102338:
                if (str.equals("gid")) {
                    c = 4;
                    break;
                }
                break;
            case 115792:
                if (str.equals(CouchFieldKey.KEY_UID)) {
                    c = 5;
                    break;
                }
                break;
            case 3433509:
                if (str.equals("path")) {
                    c = 6;
                    break;
                }
                break;
            case 3530753:
                if (str.equals("size")) {
                    c = 7;
                    break;
                }
                break;
            case 93141678:
                if (str.equals("atime")) {
                    c = '\b';
                    break;
                }
                break;
            case 94988720:
                if (str.equals("ctime")) {
                    c = '\t';
                    break;
                }
                break;
            case 98496370:
                if (str.equals("gname")) {
                    c = '\n';
                    break;
                }
                break;
            case 104223930:
                if (str.equals("mtime")) {
                    c = 11;
                    break;
                }
                break;
            case 111425664:
                if (str.equals("uname")) {
                    c = '\f';
                    break;
                }
                break;
            case 304222685:
                if (str.equals("LIBARCHIVE.creationtime")) {
                    c = '\r';
                    break;
                }
                break;
            case 530706950:
                if (str.equals("SCHILY.filetype")) {
                    c = 14;
                    break;
                }
                break;
            case 1195018015:
                if (str.equals("linkpath")) {
                    c = 15;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                int parseInt = Integer.parseInt(str2);
                if (parseInt < 0) {
                    throw new IOException("Corrupted TAR archive. Dev-Major is negative");
                }
                setDevMajor(parseInt);
                return;
            case 1:
                int parseInt2 = Integer.parseInt(str2);
                if (parseInt2 < 0) {
                    throw new IOException("Corrupted TAR archive. Dev-Minor is negative");
                }
                setDevMinor(parseInt2);
                return;
            case 2:
                m66319g(map);
                return;
            case 3:
                m66318f(map);
                return;
            case 4:
                setGroupId(Long.parseLong(str2));
                return;
            case 5:
                setUserId(Long.parseLong(str2));
                return;
            case 6:
                setName(str2);
                return;
            case 7:
                long parseLong = Long.parseLong(str2);
                if (parseLong < 0) {
                    throw new IOException("Corrupted TAR archive. Entry size is negative");
                }
                setSize(parseLong);
                return;
            case '\b':
                setLastAccessTime(FileTime.from(m66314n(str2)));
                return;
            case '\t':
                setStatusChangeTime(FileTime.from(m66314n(str2)));
                return;
            case '\n':
                setGroupName(str2);
                return;
            case 11:
                setLastModifiedTime(FileTime.from(m66314n(str2)));
                return;
            case '\f':
                setUserName(str2);
                return;
            case '\r':
                setCreationTime(FileTime.from(m66314n(str2)));
                return;
            case 14:
                if ("sparse".equals(str2)) {
                    m66320h(map);
                    return;
                }
                return;
            case 15:
                setLinkName(str2);
                return;
            default:
                this.f105694q0.put(str, str2);
                return;
        }
    }

    /* renamed from: u */
    public final void m66330u(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        if (!Files.isDirectory(path, linkOptionArr)) {
            this.f105682g = 33188;
            this.f105692p = (byte) 48;
            this.f105680e = str;
            this.f105685j = Files.size(path);
            return;
        }
        this.f105682g = 16877;
        this.f105692p = TarConstants.LF_DIR;
        int length = str.length();
        if (length != 0 && str.charAt(length - 1) == '/') {
            this.f105680e = str;
            return;
        }
        this.f105680e = str + "/";
    }

    /* renamed from: v */
    public final void m66331v(Path path, LinkOption... linkOptionArr) throws IOException {
        Set<String> supportedFileAttributeViews = path.getFileSystem().supportedFileAttributeViews();
        if (supportedFileAttributeViews.contains("posix")) {
            PosixFileAttributes posixFileAttributes = (PosixFileAttributes) Files.readAttributes(path, PosixFileAttributes.class, linkOptionArr);
            setLastModifiedTime(posixFileAttributes.lastModifiedTime());
            setCreationTime(posixFileAttributes.creationTime());
            setLastAccessTime(posixFileAttributes.lastAccessTime());
            this.f105697t = posixFileAttributes.owner().getName();
            this.f105699u = posixFileAttributes.group().getName();
            if (supportedFileAttributeViews.contains("unix")) {
                this.f105683h = ((Number) Files.getAttribute(path, "unix:uid", linkOptionArr)).longValue();
                this.f105684i = ((Number) Files.getAttribute(path, "unix:gid", linkOptionArr)).longValue();
                try {
                    setStatusChangeTime((FileTime) Files.getAttribute(path, "unix:ctime", linkOptionArr));
                    return;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            }
            return;
        }
        if (supportedFileAttributeViews.contains("dos")) {
            DosFileAttributes dosFileAttributes = (DosFileAttributes) Files.readAttributes(path, DosFileAttributes.class, linkOptionArr);
            setLastModifiedTime(dosFileAttributes.lastModifiedTime());
            setCreationTime(dosFileAttributes.creationTime());
            setLastAccessTime(dosFileAttributes.lastAccessTime());
            this.f105697t = Files.getOwner(path, linkOptionArr).getName();
            return;
        }
        BasicFileAttributes readAttributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, linkOptionArr);
        setLastModifiedTime(readAttributes.lastModifiedTime());
        setCreationTime(readAttributes.creationTime());
        setLastAccessTime(readAttributes.lastAccessTime());
        this.f105697t = Files.getOwner(path, linkOptionArr).getName();
    }

    /* renamed from: w */
    public void m66332w(Map<String, String> map) throws IOException {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            m66329t(entry.getKey(), entry.getValue(), map);
        }
    }

    public void writeEntryHeader(byte[] bArr) {
        try {
            try {
                writeEntryHeader(bArr, TarUtils.f105765b, false);
            } catch (IOException unused) {
                writeEntryHeader(bArr, TarUtils.f105766c, false);
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    /* renamed from: x */
    public final int m66333x(long j, byte[] bArr, int i, int i2, boolean z) {
        return (z || (j >= 0 && j < (1 << ((i2 + (-1)) * 3)))) ? TarUtils.formatLongOctalOrBinaryBytes(j, bArr, i, i2) : TarUtils.formatLongOctalBytes(0L, bArr, i, i2);
    }

    /* renamed from: y */
    public final int m66334y(FileTime fileTime, int i, byte[] bArr, int i2) {
        return fileTime != null ? m66333x(fileTime.to(TimeUnit.SECONDS), bArr, i, i2, true) : m66317e(0, i, bArr, i2);
    }

    public void setGroupId(long j) {
        this.f105684i = j;
    }

    public void setModTime(FileTime fileTime) {
        setLastModifiedTime(fileTime);
    }

    public void setUserId(long j) {
        this.f105683h = j;
    }

    public boolean equals(TarArchiveEntry tarArchiveEntry) {
        return tarArchiveEntry != null && getName().equals(tarArchiveEntry.getName());
    }

    public void setModTime(long j) {
        setLastModifiedTime(FileTime.fromMillis(j));
    }

    public void parseTarHeader(byte[] bArr, ZipEncoding zipEncoding) throws IOException {
        m66326q(bArr, zipEncoding, false, false);
    }

    public void writeEntryHeader(byte[] bArr, ZipEncoding zipEncoding, boolean z) throws IOException {
        int m66333x = m66333x(this.f105686k.to(TimeUnit.SECONDS), bArr, m66333x(this.f105685j, bArr, m66333x(this.f105684i, bArr, m66333x(this.f105683h, bArr, m66333x(this.f105682g, bArr, TarUtils.formatNameBytes(this.f105680e, bArr, 0, 100, zipEncoding), 8, z), 8, z), 8, z), 12, z), 12, z);
        int m66316d = m66316d((byte) 32, m66333x, bArr, 8);
        bArr[m66316d] = this.f105692p;
        int m66333x2 = m66333x(this.f105701w, bArr, m66333x(this.f105700v, bArr, TarUtils.formatNameBytes(this.f105699u, bArr, TarUtils.formatNameBytes(this.f105697t, bArr, TarUtils.formatNameBytes(this.f105696s, bArr, TarUtils.formatNameBytes(this.f105695r, bArr, TarUtils.formatNameBytes(this.f105693q, bArr, m66316d + 1, 100, zipEncoding), 6), 2), 32, zipEncoding), 32, zipEncoding), 8, z), 8, z);
        if (z) {
            m66333x2 = m66317e(0, m66317e(0, m66334y(this.f105688l, m66334y(this.f105689m, m66317e(0, m66333x2, bArr, 131), bArr, 12), bArr, 12), bArr, 8), bArr, 4);
        }
        m66317e(0, m66333x2, bArr, bArr.length - m66333x2);
        TarUtils.formatCheckSumOctalBytes(TarUtils.computeCheckSum(bArr), bArr, m66333x, 8);
    }

    public TarArchiveEntry(byte[] bArr) {
        this(false);
        parseTarHeader(bArr);
    }

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding) throws IOException {
        this(bArr, zipEncoding, false);
    }

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding, boolean z) throws IOException {
        this((Map<String, String>) Collections.emptyMap(), bArr, zipEncoding, z);
    }

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding, boolean z, long j) throws IOException {
        this(bArr, zipEncoding, z);
        setDataOffset(j);
    }

    public TarArchiveEntry(File file) {
        this(file, file.getPath());
    }

    public TarArchiveEntry(File file, String str) {
        this.f105680e = "";
        this.f105693q = "";
        this.f105695r = "ustar\u0000";
        this.f105696s = "00";
        this.f105699u = "";
        this.f105694q0 = new HashMap();
        this.f105698t0 = -1L;
        String m66313m = m66313m(str, false);
        Path path = file.toPath();
        this.f105679Z = path;
        this.f105687k0 = IOUtils.EMPTY_LINK_OPTIONS;
        try {
            m66330u(path, m66313m, new LinkOption[0]);
        } catch (IOException unused) {
            if (!file.isDirectory()) {
                this.f105685j = file.length();
            }
        }
        this.f105697t = "";
        try {
            m66331v(this.f105679Z, new LinkOption[0]);
        } catch (IOException unused2) {
            this.f105686k = FileTime.fromMillis(file.lastModified());
        }
        this.f105681f = false;
    }

    public TarArchiveEntry(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z) throws IOException {
        this(false);
        m66325p(map, bArr, zipEncoding, false, z);
    }

    public TarArchiveEntry(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z, long j) throws IOException {
        this(map, bArr, zipEncoding, z);
        setDataOffset(j);
    }

    public TarArchiveEntry(Path path) throws IOException {
        this(path, path.toString(), new LinkOption[0]);
    }

    public TarArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        this.f105680e = "";
        this.f105693q = "";
        this.f105695r = "ustar\u0000";
        this.f105696s = "00";
        this.f105699u = "";
        this.f105694q0 = new HashMap();
        this.f105698t0 = -1L;
        String m66313m = m66313m(str, false);
        this.f105679Z = path;
        this.f105687k0 = linkOptionArr == null ? IOUtils.EMPTY_LINK_OPTIONS : linkOptionArr;
        m66330u(path, m66313m, linkOptionArr);
        this.f105697t = "";
        m66331v(path, new LinkOption[0]);
        this.f105681f = false;
    }

    public TarArchiveEntry(String str) {
        this(str, false);
    }

    public TarArchiveEntry(String str, boolean z) {
        this(z);
        String m66313m = m66313m(str, z);
        boolean endsWith = m66313m.endsWith("/");
        this.f105680e = m66313m;
        this.f105682g = endsWith ? 16877 : 33188;
        this.f105692p = endsWith ? TarConstants.LF_DIR : (byte) 48;
        this.f105686k = FileTime.from(Instant.now());
        this.f105697t = "";
    }

    public TarArchiveEntry(String str, byte b) {
        this(str, b, false);
    }

    public TarArchiveEntry(String str, byte b, boolean z) {
        this(str, z);
        this.f105692p = b;
        if (b == 76) {
            this.f105695r = TarConstants.MAGIC_GNU;
            this.f105696s = TarConstants.VERSION_GNU_SPACE;
        }
    }
}
