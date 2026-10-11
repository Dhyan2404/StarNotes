package org.apache.commons.compress.archivers.tar;

import com.sunia.HTREnginev2.s9n;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class TarArchiveInputStream extends ArchiveInputStream {

    /* renamed from: x */
    public static final int f105705x = 256;

    /* renamed from: h */
    public final byte[] f105706h;

    /* renamed from: i */
    public final int f105707i;

    /* renamed from: j */
    public final byte[] f105708j;

    /* renamed from: k */
    public final int f105709k;

    /* renamed from: l */
    public boolean f105710l;

    /* renamed from: m */
    public long f105711m;

    /* renamed from: n */
    public long f105712n;

    /* renamed from: o */
    public final InputStream f105713o;

    /* renamed from: p */
    public List<InputStream> f105714p;

    /* renamed from: q */
    public int f105715q;

    /* renamed from: r */
    public TarArchiveEntry f105716r;

    /* renamed from: s */
    public final ZipEncoding f105717s;

    /* renamed from: t */
    public final String f105718t;

    /* renamed from: u */
    public Map<String, String> f105719u;

    /* renamed from: v */
    public final List<TarArchiveStructSparse> f105720v;

    /* renamed from: w */
    public final boolean f105721w;

    public TarArchiveInputStream(InputStream inputStream) {
        this(inputStream, 10240, 512);
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < 265) {
            return false;
        }
        if (ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6) && ArchiveUtils.matchAsciiBuffer("00", bArr, 263, 2)) {
            return true;
        }
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_GNU, bArr, 257, 6) && (ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_GNU_SPACE, bArr, 263, 2) || ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_GNU_ZERO, bArr, 263, 2))) {
            return true;
        }
        return ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6) && ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_ANT, bArr, 263, 2);
    }

    /* renamed from: H */
    public final long m66335H(long j, long j2, long j3) throws IOException {
        if (this.f105713o instanceof FileInputStream) {
            j2 = Math.min(j2, j);
        }
        if (j2 == j3) {
            return j2;
        }
        throw new IOException("Truncated TAR archive");
    }

    /* renamed from: I */
    public final byte[] m66336I() throws IOException {
        byte[] readRecord = readRecord();
        setAtEOF(isEOFRecord(readRecord));
        if (!isAtEOF() || readRecord == null) {
            return readRecord;
        }
        m66346k0();
        m66347w();
        return null;
    }

    /* renamed from: M */
    public final boolean m66337M() {
        TarArchiveEntry tarArchiveEntry = this.f105716r;
        return tarArchiveEntry != null && tarArchiveEntry.isDirectory();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (m66337M()) {
            return 0;
        }
        if (this.f105716r.getRealSize() - this.f105712n > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) (this.f105716r.getRealSize() - this.f105712n);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        return archiveEntry instanceof TarArchiveEntry;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        List<InputStream> list = this.f105714p;
        if (list != null) {
            Iterator<InputStream> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
        }
        this.f105713o.close();
    }

    /* renamed from: e0 */
    public final void m66338e0() throws IOException {
        ArrayList arrayList = new ArrayList();
        Map<String, String> parsePaxHeaders = TarUtils.parsePaxHeaders(this, arrayList, this.f105719u, this.f105711m);
        if (parsePaxHeaders.containsKey("GNU.sparse.map")) {
            arrayList = new ArrayList(TarUtils.parseFromPAX01SparseHeaders(parsePaxHeaders.get("GNU.sparse.map")));
        }
        getNextEntry();
        if (this.f105716r == null) {
            throw new IOException("premature end of tar archive. Didn't find any entry after PAX header.");
        }
        m66339f(parsePaxHeaders, arrayList);
        if (this.f105716r.isPaxGNU1XSparse()) {
            this.f105716r.setSparseHeaders(TarUtils.parsePAX1XSparseHeaders(this.f105713o, this.f105707i));
        }
        m66344j();
    }

    /* renamed from: f */
    public final void m66339f(Map<String, String> map, List<TarArchiveStructSparse> list) throws IOException {
        this.f105716r.m66332w(map);
        this.f105716r.setSparseHeaders(list);
    }

    /* renamed from: f0 */
    public final void m66340f0() throws IOException {
        this.f105719u = TarUtils.parsePaxHeaders(this, this.f105720v, this.f105719u, this.f105711m);
        getNextEntry();
        if (this.f105716r == null) {
            throw new IOException("Error detected parsing the pax header");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        throw new java.io.IOException("premature end of tar archive. Didn't find extended_header after header with extended flag.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
    
        m66344j();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0032, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0006, code lost:
    
        if (r3.f105716r.isExtended() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
    
        r0 = m66336I();
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
    
        if (r0 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
    
        r1 = new org.apache.commons.compress.archivers.tar.TarArchiveSparseEntry(r0);
        r3.f105716r.getSparseHeaders().addAll(r1.getSparseHeaders());
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0024, code lost:
    
        if (r1.isExtended() != false) goto L15;
     */
    /* renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m66341g0() throws java.io.IOException {
        /*
            r3 = this;
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r0 = r3.f105716r
            boolean r0 = r0.isExtended()
            if (r0 == 0) goto L2f
        L8:
            byte[] r0 = r3.m66336I()
            if (r0 == 0) goto L27
            org.apache.commons.compress.archivers.tar.TarArchiveSparseEntry r1 = new org.apache.commons.compress.archivers.tar.TarArchiveSparseEntry
            r1.<init>(r0)
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r0 = r3.f105716r
            java.util.List r0 = r0.getSparseHeaders()
            java.util.List r2 = r1.getSparseHeaders()
            r0.addAll(r2)
            boolean r0 = r1.isExtended()
            if (r0 != 0) goto L8
            goto L2f
        L27:
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "premature end of tar archive. Didn't find extended_header after header with extended flag."
            r3.<init>(r0)
            throw r3
        L2f:
            r3.m66344j()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.tar.TarArchiveInputStream.m66341g0():void");
    }

    public TarArchiveEntry getCurrentEntry() {
        return this.f105716r;
    }

    public byte[] getLongNameData() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = read(this.f105706h);
            if (read < 0) {
                break;
            }
            byteArrayOutputStream.write(this.f105706h, 0, read);
        }
        getNextEntry();
        if (this.f105716r == null) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (length > 0 && byteArray[length - 1] == 0) {
            length--;
        }
        if (length == byteArray.length) {
            return byteArray;
        }
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 0, bArr, 0, length);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextTarEntry();
    }

    public TarArchiveEntry getNextTarEntry() throws IOException {
        if (isAtEOF()) {
            return null;
        }
        if (this.f105716r != null) {
            IOUtils.skip(this, Long.MAX_VALUE);
            m66343i0();
        }
        byte[] m66336I = m66336I();
        if (m66336I == null) {
            this.f105716r = null;
            return null;
        }
        try {
            TarArchiveEntry tarArchiveEntry = new TarArchiveEntry(this.f105719u, m66336I, this.f105717s, this.f105721w);
            this.f105716r = tarArchiveEntry;
            this.f105712n = 0L;
            this.f105711m = tarArchiveEntry.getSize();
            if (this.f105716r.isGNULongLinkEntry()) {
                byte[] longNameData = getLongNameData();
                if (longNameData == null) {
                    return null;
                }
                this.f105716r.setLinkName(this.f105717s.decode(longNameData));
            }
            if (this.f105716r.isGNULongNameEntry()) {
                byte[] longNameData2 = getLongNameData();
                if (longNameData2 == null) {
                    return null;
                }
                String decode = this.f105717s.decode(longNameData2);
                this.f105716r.setName(decode);
                if (this.f105716r.isDirectory() && !decode.endsWith("/")) {
                    this.f105716r.setName(decode + "/");
                }
            }
            if (this.f105716r.isGlobalPaxHeader()) {
                m66340f0();
            }
            try {
                if (this.f105716r.isPaxHeader()) {
                    m66338e0();
                } else if (!this.f105719u.isEmpty()) {
                    m66339f(this.f105719u, this.f105720v);
                }
                if (this.f105716r.isOldGNUSparse()) {
                    m66341g0();
                }
                this.f105711m = this.f105716r.getSize();
                return this.f105716r;
            } catch (NumberFormatException e) {
                throw new IOException("Error detected parsing the pax header", e);
            }
        } catch (IllegalArgumentException e2) {
            throw new IOException("Error detected parsing the header", e2);
        }
    }

    public int getRecordSize() {
        return this.f105707i;
    }

    /* renamed from: h0 */
    public final int m66342h0(byte[] bArr, int i, int i2) throws IOException {
        List<InputStream> list = this.f105714p;
        if (list == null || list.isEmpty()) {
            return this.f105713o.read(bArr, i, i2);
        }
        if (this.f105715q >= this.f105714p.size()) {
            return -1;
        }
        int read = this.f105714p.get(this.f105715q).read(bArr, i, i2);
        if (this.f105715q == this.f105714p.size() - 1) {
            return read;
        }
        if (read == -1) {
            this.f105715q++;
            return m66342h0(bArr, i, i2);
        }
        if (read >= i2) {
            return read;
        }
        this.f105715q++;
        int m66342h0 = m66342h0(bArr, i + read, i2 - read);
        return m66342h0 == -1 ? read : read + m66342h0;
    }

    /* renamed from: i0 */
    public final void m66343i0() throws IOException {
        if (m66337M()) {
            return;
        }
        long j = this.f105711m;
        if (j <= 0 || j % this.f105707i == 0) {
            return;
        }
        long available = this.f105713o.available();
        long j2 = this.f105711m;
        int i = this.f105707i;
        long j3 = (((j2 / i) + 1) * i) - j2;
        count(m66335H(available, IOUtils.skip(this.f105713o, j3), j3));
    }

    public final boolean isAtEOF() {
        return this.f105710l;
    }

    public boolean isEOFRecord(byte[] bArr) {
        return bArr == null || ArchiveUtils.isArrayZero(bArr, this.f105707i);
    }

    /* renamed from: j */
    public final void m66344j() throws IOException {
        this.f105715q = -1;
        this.f105714p = new ArrayList();
        List<TarArchiveStructSparse> orderedSparseHeaders = this.f105716r.getOrderedSparseHeaders();
        s9n s9nVar = new s9n();
        long j = 0;
        for (TarArchiveStructSparse tarArchiveStructSparse : orderedSparseHeaders) {
            long offset = tarArchiveStructSparse.getOffset() - j;
            if (offset < 0) {
                throw new IOException("Corrupted struct sparse detected");
            }
            if (offset > 0) {
                this.f105714p.add(new BoundedInputStream(s9nVar, tarArchiveStructSparse.getOffset() - j));
            }
            if (tarArchiveStructSparse.getNumbytes() > 0) {
                this.f105714p.add(new BoundedInputStream(this.f105713o, tarArchiveStructSparse.getNumbytes()));
            }
            j = tarArchiveStructSparse.getOffset() + tarArchiveStructSparse.getNumbytes();
        }
        if (this.f105714p.isEmpty()) {
            return;
        }
        this.f105715q = 0;
    }

    /* renamed from: j0 */
    public final long m66345j0(long j) throws IOException {
        List<InputStream> list = this.f105714p;
        if (list == null || list.isEmpty()) {
            return this.f105713o.skip(j);
        }
        long j2 = 0;
        while (j2 < j && this.f105715q < this.f105714p.size()) {
            j2 += this.f105714p.get(this.f105715q).skip(j - j2);
            if (j2 < j) {
                this.f105715q++;
            }
        }
        return j2;
    }

    /* renamed from: k0 */
    public final void m66346k0() throws IOException {
        boolean markSupported = this.f105713o.markSupported();
        if (markSupported) {
            this.f105713o.mark(this.f105707i);
        }
        try {
            if ((!isEOFRecord(readRecord())) && markSupported) {
            }
        } finally {
            if (markSupported) {
                pushedBackBytes(this.f105707i);
                this.f105713o.reset();
            }
        }
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (isAtEOF() || m66337M()) {
            return -1;
        }
        TarArchiveEntry tarArchiveEntry = this.f105716r;
        if (tarArchiveEntry == null) {
            throw new IllegalStateException("No current tar entry");
        }
        if (this.f105712n >= tarArchiveEntry.getRealSize()) {
            return -1;
        }
        int min = Math.min(i2, available());
        int m66342h0 = this.f105716r.isSparse() ? m66342h0(bArr, i, min) : this.f105713o.read(bArr, i, min);
        if (m66342h0 != -1) {
            count(m66342h0);
            this.f105712n += m66342h0;
        } else {
            if (min > 0) {
                throw new IOException("Truncated TAR archive");
            }
            setAtEOF(true);
        }
        return m66342h0;
    }

    public byte[] readRecord() throws IOException {
        int readFully = IOUtils.readFully(this.f105713o, this.f105708j);
        count(readFully);
        if (readFully != this.f105707i) {
            return null;
        }
        return this.f105708j;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
    }

    public final void setAtEOF(boolean z) {
        this.f105710l = z;
    }

    public final void setCurrentEntry(TarArchiveEntry tarArchiveEntry) {
        this.f105716r = tarArchiveEntry;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0 || m66337M()) {
            return 0L;
        }
        long available = this.f105713o.available();
        long min = Math.min(j, this.f105716r.getRealSize() - this.f105712n);
        long m66335H = !this.f105716r.isSparse() ? m66335H(available, IOUtils.skip(this.f105713o, min), min) : m66345j0(min);
        count(m66335H);
        this.f105712n += m66335H;
        return m66335H;
    }

    /* renamed from: w */
    public final void m66347w() throws IOException {
        long bytesRead = getBytesRead();
        int i = this.f105709k;
        long j = bytesRead % i;
        if (j > 0) {
            count(IOUtils.skip(this.f105713o, i - j));
        }
    }

    public TarArchiveInputStream(InputStream inputStream, boolean z) {
        this(inputStream, 10240, 512, null, z);
    }

    public TarArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, 10240, 512, str);
    }

    public TarArchiveInputStream(InputStream inputStream, int i) {
        this(inputStream, i, 512);
    }

    public TarArchiveInputStream(InputStream inputStream, int i, String str) {
        this(inputStream, i, 512, str);
    }

    public TarArchiveInputStream(InputStream inputStream, int i, int i2) {
        this(inputStream, i, i2, null);
    }

    public TarArchiveInputStream(InputStream inputStream, int i, int i2, String str) {
        this(inputStream, i, i2, str, false);
    }

    public TarArchiveInputStream(InputStream inputStream, int i, int i2, String str, boolean z) {
        this.f105706h = new byte[256];
        this.f105719u = new HashMap();
        this.f105720v = new ArrayList();
        this.f105713o = inputStream;
        this.f105710l = false;
        this.f105718t = str;
        this.f105717s = ZipEncodingHelper.getZipEncoding(str);
        this.f105707i = i2;
        this.f105708j = new byte[i2];
        this.f105709k = i;
        this.f105721w = z;
    }
}
