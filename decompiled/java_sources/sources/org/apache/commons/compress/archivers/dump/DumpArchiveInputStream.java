package org.apache.commons.compress.archivers.dump;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.n5f;
import com.sunia.HTREnginev2.yjf;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Stack;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.dump.DumpArchiveConstants;
import org.apache.commons.compress.archivers.dump.DumpArchiveEntry;
import org.apache.commons.compress.archivers.dump.DumpArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class DumpArchiveInputStream extends ArchiveInputStream {

    /* renamed from: h */
    public final DumpArchiveSummary f105553h;

    /* renamed from: i */
    public DumpArchiveEntry f105554i;

    /* renamed from: j */
    public boolean f105555j;

    /* renamed from: k */
    public boolean f105556k;

    /* renamed from: l */
    public long f105557l;

    /* renamed from: m */
    public long f105558m;

    /* renamed from: n */
    public int f105559n;

    /* renamed from: o */
    public final byte[] f105560o;

    /* renamed from: p */
    public byte[] f105561p;

    /* renamed from: q */
    public int f105562q;

    /* renamed from: r */
    public long f105563r;
    protected C18829a raw;

    /* renamed from: s */
    public final Map<Integer, n5f> f105564s;

    /* renamed from: t */
    public final Map<Integer, DumpArchiveEntry> f105565t;

    /* renamed from: u */
    public final Queue<DumpArchiveEntry> f105566u;

    /* renamed from: v */
    public final ZipEncoding f105567v;

    /* renamed from: w */
    public final String f105568w;

    public DumpArchiveInputStream(InputStream inputStream) throws ArchiveException {
        this(inputStream, null);
    }

    /* renamed from: I */
    public static /* synthetic */ int m66156I(DumpArchiveEntry dumpArchiveEntry, DumpArchiveEntry dumpArchiveEntry2) {
        if (dumpArchiveEntry.m66139b() == null || dumpArchiveEntry2.m66139b() == null) {
            return Integer.MAX_VALUE;
        }
        return dumpArchiveEntry.m66139b().compareTo(dumpArchiveEntry2.m66139b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m66157M(Integer num, DumpArchiveEntry dumpArchiveEntry) {
        String m66162H = m66162H(dumpArchiveEntry);
        if (m66162H != null) {
            dumpArchiveEntry.setName(m66162H);
            dumpArchiveEntry.setSimpleName(this.f105564s.get(num).m55710b());
            this.f105566u.add(dumpArchiveEntry);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public /* synthetic */ void m66158e0(DumpArchiveEntry dumpArchiveEntry) {
        this.f105565t.remove(Integer.valueOf(dumpArchiveEntry.getIno()));
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < 32) {
            return false;
        }
        return i >= 1024 ? yjf.m58441g(bArr) : 60012 == yjf.m58437c(bArr, 24);
    }

    /* renamed from: H */
    public final String m66162H(DumpArchiveEntry dumpArchiveEntry) {
        Stack stack = new Stack();
        int ino = dumpArchiveEntry.getIno();
        while (true) {
            if (!this.f105564s.containsKey(Integer.valueOf(ino))) {
                stack.clear();
                break;
            }
            n5f n5fVar = this.f105564s.get(Integer.valueOf(ino));
            stack.push(n5fVar.m55710b());
            if (n5fVar.m55709a() == n5fVar.m55711c()) {
                break;
            }
            ino = n5fVar.m55711c();
        }
        if (stack.isEmpty()) {
            this.f105565t.put(Integer.valueOf(dumpArchiveEntry.getIno()), dumpArchiveEntry);
            return null;
        }
        StringBuilder sb = new StringBuilder((String) stack.pop());
        while (!stack.isEmpty()) {
            sb.append('/');
            sb.append((String) stack.pop());
        }
        return sb.toString();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f105555j) {
            return;
        }
        this.f105555j = true;
        this.raw.close();
    }

    /* renamed from: f0 */
    public final void m66163f0() throws IOException {
        byte[] m66167I = this.raw.m66167I();
        if (!yjf.m58441g(m66167I)) {
            throw new InvalidFormatException();
        }
        DumpArchiveEntry m66137c = DumpArchiveEntry.m66137c(m66167I);
        this.f105554i = m66137c;
        if (DumpArchiveConstants.SEGMENT_TYPE.BITS != m66137c.getHeaderType()) {
            throw new InvalidFormatException();
        }
        if (this.raw.skip(this.f105554i.getHeaderCount() * 1024) == -1) {
            throw new EOFException();
        }
        this.f105559n = this.f105554i.getHeaderCount();
    }

    /* renamed from: g0 */
    public final void m66164g0() throws IOException {
        byte[] m66167I = this.raw.m66167I();
        if (!yjf.m58441g(m66167I)) {
            throw new InvalidFormatException();
        }
        DumpArchiveEntry m66137c = DumpArchiveEntry.m66137c(m66167I);
        this.f105554i = m66137c;
        if (DumpArchiveConstants.SEGMENT_TYPE.CLRI != m66137c.getHeaderType()) {
            throw new InvalidFormatException();
        }
        if (this.raw.skip(this.f105554i.getHeaderCount() * 1024) == -1) {
            throw new EOFException();
        }
        this.f105559n = this.f105554i.getHeaderCount();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public long getBytesRead() {
        return this.raw.m66169f();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    @Deprecated
    public int getCount() {
        return (int) getBytesRead();
    }

    public DumpArchiveEntry getNextDumpEntry() throws IOException {
        return getNextEntry();
    }

    public DumpArchiveSummary getSummary() {
        return this.f105553h;
    }

    /* renamed from: h0 */
    public final void m66165h0(DumpArchiveEntry dumpArchiveEntry) throws IOException {
        long m66138a = dumpArchiveEntry.m66138a();
        boolean z = true;
        while (true) {
            if (!z && DumpArchiveConstants.SEGMENT_TYPE.ADDR != dumpArchiveEntry.getHeaderType()) {
                return;
            }
            if (!z) {
                this.raw.m66167I();
            }
            if (!this.f105564s.containsKey(Integer.valueOf(dumpArchiveEntry.getIno())) && DumpArchiveConstants.SEGMENT_TYPE.INODE == dumpArchiveEntry.getHeaderType()) {
                this.f105565t.put(Integer.valueOf(dumpArchiveEntry.getIno()), dumpArchiveEntry);
            }
            int headerCount = dumpArchiveEntry.getHeaderCount() * 1024;
            byte[] bArr = this.f105561p;
            if (bArr.length < headerCount) {
                byte[] readRange = IOUtils.readRange(this.raw, headerCount);
                this.f105561p = readRange;
                if (readRange.length != headerCount) {
                    throw new EOFException();
                }
            } else if (this.raw.read(bArr, 0, headerCount) != headerCount) {
                throw new EOFException();
            }
            int i = 0;
            while (i < headerCount - 8 && i < m66138a - 8) {
                int m58437c = yjf.m58437c(this.f105561p, i);
                int m58436b = yjf.m58436b(this.f105561p, i + 4);
                byte[] bArr2 = this.f105561p;
                byte b = bArr2[i + 6];
                String m58439e = yjf.m58439e(this.f105567v, bArr2, i + 8, bArr2[i + 7]);
                if (!".".equals(m58439e) && !Constants.ATTRVAL_PARENT.equals(m58439e)) {
                    this.f105564s.put(Integer.valueOf(m58437c), new n5f(m58437c, dumpArchiveEntry.getIno(), b, m58439e));
                    this.f105565t.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.wjf
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            DumpArchiveInputStream.this.m66157M((Integer) obj, (DumpArchiveEntry) obj2);
                        }
                    });
                    this.f105566u.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.xjf
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            DumpArchiveInputStream.this.m66158e0((DumpArchiveEntry) obj);
                        }
                    });
                }
                i += m58436b;
            }
            byte[] m66170j = this.raw.m66170j();
            if (!yjf.m58441g(m66170j)) {
                throw new InvalidFormatException();
            }
            dumpArchiveEntry = DumpArchiveEntry.m66137c(m66170j);
            m66138a -= 1024;
            z = false;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f105556k || this.f105555j) {
            return -1;
        }
        long j = this.f105558m;
        long j2 = this.f105557l;
        if (j >= j2) {
            return -1;
        }
        if (this.f105554i == null) {
            throw new IllegalStateException("No current dump entry");
        }
        if (i2 + j > j2) {
            i2 = (int) (j2 - j);
        }
        int i3 = 0;
        while (i2 > 0) {
            int min = Math.min(i2, this.f105560o.length - this.f105562q);
            int i4 = this.f105562q;
            int i5 = i4 + min;
            byte[] bArr2 = this.f105560o;
            if (i5 <= bArr2.length) {
                System.arraycopy(bArr2, i4, bArr, i, min);
                i3 += min;
                this.f105562q += min;
                i2 -= min;
                i += min;
            }
            if (i2 > 0) {
                if (this.f105559n >= 512) {
                    byte[] m66167I = this.raw.m66167I();
                    if (!yjf.m58441g(m66167I)) {
                        throw new InvalidFormatException();
                    }
                    this.f105554i = DumpArchiveEntry.m66137c(m66167I);
                    this.f105559n = 0;
                }
                DumpArchiveEntry dumpArchiveEntry = this.f105554i;
                int i6 = this.f105559n;
                this.f105559n = i6 + 1;
                if (dumpArchiveEntry.isSparseRecord(i6)) {
                    Arrays.fill(this.f105560o, (byte) 0);
                } else {
                    C18829a c18829a = this.raw;
                    byte[] bArr3 = this.f105560o;
                    if (c18829a.read(bArr3, 0, bArr3.length) != this.f105560o.length) {
                        throw new EOFException();
                    }
                }
                this.f105562q = 0;
            }
        }
        this.f105558m += i3;
        return i3;
    }

    public DumpArchiveInputStream(InputStream inputStream, String str) throws ArchiveException {
        this.f105560o = new byte[1024];
        HashMap hashMap = new HashMap();
        this.f105564s = hashMap;
        this.f105565t = new HashMap();
        this.raw = new C18829a(inputStream);
        this.f105556k = false;
        this.f105568w = str;
        ZipEncoding zipEncoding = ZipEncodingHelper.getZipEncoding(str);
        this.f105567v = zipEncoding;
        try {
            byte[] m66167I = this.raw.m66167I();
            if (yjf.m58441g(m66167I)) {
                DumpArchiveSummary dumpArchiveSummary = new DumpArchiveSummary(m66167I, zipEncoding);
                this.f105553h = dumpArchiveSummary;
                this.raw.m66168M(dumpArchiveSummary.getNTRec(), dumpArchiveSummary.isCompressed());
                this.f105561p = new byte[4096];
                m66164g0();
                m66163f0();
                hashMap.put(2, new n5f(2, 2, 4, "."));
                this.f105566u = new PriorityQueue(10, new Comparator() { // from class: com.sunia.HTREnginev2.vjf
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int m66156I;
                        m66156I = DumpArchiveInputStream.m66156I((DumpArchiveEntry) obj, (DumpArchiveEntry) obj2);
                        return m66156I;
                    }
                });
                return;
            }
            throw new UnrecognizedFormatException();
        } catch (IOException e) {
            throw new ArchiveException(e.getMessage(), e);
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public DumpArchiveEntry getNextEntry() throws IOException {
        if (!this.f105566u.isEmpty()) {
            return this.f105566u.remove();
        }
        DumpArchiveEntry dumpArchiveEntry = null;
        String str = null;
        while (dumpArchiveEntry == null) {
            if (this.f105556k) {
                return null;
            }
            while (this.f105559n < this.f105554i.getHeaderCount()) {
                DumpArchiveEntry dumpArchiveEntry2 = this.f105554i;
                int i = this.f105559n;
                this.f105559n = i + 1;
                if (!dumpArchiveEntry2.isSparseRecord(i) && this.raw.skip(1024L) == -1) {
                    throw new EOFException();
                }
            }
            this.f105559n = 0;
            this.f105563r = this.raw.m66169f();
            byte[] m66167I = this.raw.m66167I();
            if (yjf.m58441g(m66167I)) {
                this.f105554i = DumpArchiveEntry.m66137c(m66167I);
                while (DumpArchiveConstants.SEGMENT_TYPE.ADDR == this.f105554i.getHeaderType()) {
                    if (this.raw.skip((this.f105554i.getHeaderCount() - this.f105554i.getHeaderHoles()) * 1024) != -1) {
                        this.f105563r = this.raw.m66169f();
                        byte[] m66167I2 = this.raw.m66167I();
                        if (yjf.m58441g(m66167I2)) {
                            this.f105554i = DumpArchiveEntry.m66137c(m66167I2);
                        } else {
                            throw new InvalidFormatException();
                        }
                    } else {
                        throw new EOFException();
                    }
                }
                if (DumpArchiveConstants.SEGMENT_TYPE.END == this.f105554i.getHeaderType()) {
                    this.f105556k = true;
                    return null;
                }
                DumpArchiveEntry dumpArchiveEntry3 = this.f105554i;
                if (dumpArchiveEntry3.isDirectory()) {
                    m66165h0(this.f105554i);
                    this.f105558m = 0L;
                    this.f105557l = 0L;
                    this.f105559n = this.f105554i.getHeaderCount();
                } else {
                    this.f105558m = 0L;
                    this.f105557l = this.f105554i.m66138a();
                    this.f105559n = 0;
                }
                this.f105562q = this.f105560o.length;
                String m66162H = m66162H(dumpArchiveEntry3);
                if (m66162H == null) {
                    dumpArchiveEntry3 = null;
                }
                DumpArchiveEntry dumpArchiveEntry4 = dumpArchiveEntry3;
                str = m66162H;
                dumpArchiveEntry = dumpArchiveEntry4;
            } else {
                throw new InvalidFormatException();
            }
        }
        dumpArchiveEntry.setName(str);
        dumpArchiveEntry.setSimpleName(this.f105564s.get(Integer.valueOf(dumpArchiveEntry.getIno())).m55710b());
        dumpArchiveEntry.setOffset(this.f105563r);
        return dumpArchiveEntry;
    }
}
