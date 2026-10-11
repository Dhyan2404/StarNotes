package org.apache.commons.compress.archivers.tar;

import com.sunia.HTREnginev2.s9n;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.BoundedArchiveInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.BoundedSeekableByteChannelInputStream;
import org.apache.commons.compress.utils.SeekableInMemoryByteChannel;

/* loaded from: classes12.dex */
public class TarFile implements Closeable {

    /* renamed from: r */
    public static final int f105745r = 256;

    /* renamed from: e */
    public final byte[] f105746e;

    /* renamed from: f */
    public final SeekableByteChannel f105747f;

    /* renamed from: g */
    public final ZipEncoding f105748g;

    /* renamed from: h */
    public final LinkedList<TarArchiveEntry> f105749h;

    /* renamed from: i */
    public final int f105750i;

    /* renamed from: j */
    public final boolean f105751j;

    /* renamed from: k */
    public final int f105752k;

    /* renamed from: l */
    public final ByteBuffer f105753l;

    /* renamed from: m */
    public final List<TarArchiveStructSparse> f105754m;

    /* renamed from: n */
    public boolean f105755n;

    /* renamed from: o */
    public TarArchiveEntry f105756o;

    /* renamed from: p */
    public Map<String, String> f105757p;

    /* renamed from: q */
    public final Map<String, List<InputStream>> f105758q;

    /* renamed from: org.apache.commons.compress.archivers.tar.TarFile$a */
    /* loaded from: classes12.dex */
    public final class C18848a extends BoundedArchiveInputStream {

        /* renamed from: h */
        public final SeekableByteChannel f105759h;

        /* renamed from: i */
        public final TarArchiveEntry f105760i;

        /* renamed from: j */
        public long f105761j;

        /* renamed from: k */
        public int f105762k;

        public C18848a(TarArchiveEntry tarArchiveEntry, SeekableByteChannel seekableByteChannel) throws IOException {
            super(tarArchiveEntry.getDataOffset(), tarArchiveEntry.getRealSize());
            if (seekableByteChannel.size() - tarArchiveEntry.getSize() < tarArchiveEntry.getDataOffset()) {
                throw new IOException("entry size exceeds archive size");
            }
            this.f105760i = tarArchiveEntry;
            this.f105759h = seekableByteChannel;
        }

        /* renamed from: f */
        public final int m66386f(long j, ByteBuffer byteBuffer) throws IOException {
            this.f105759h.position(j);
            return this.f105759h.read(byteBuffer);
        }

        /* renamed from: j */
        public final int m66387j(long j, ByteBuffer byteBuffer, int i) throws IOException {
            List list = (List) TarFile.this.f105758q.get(this.f105760i.getName());
            if (list == null || list.isEmpty()) {
                return m66386f(this.f105760i.getDataOffset() + j, byteBuffer);
            }
            if (this.f105762k >= list.size()) {
                return -1;
            }
            byte[] bArr = new byte[i];
            int read = ((InputStream) list.get(this.f105762k)).read(bArr);
            if (read != -1) {
                byteBuffer.put(bArr, 0, read);
            }
            if (this.f105762k == list.size() - 1) {
                return read;
            }
            if (read == -1) {
                this.f105762k++;
                return m66387j(j, byteBuffer, i);
            }
            if (read >= i) {
                return read;
            }
            this.f105762k++;
            int m66387j = m66387j(j + read, byteBuffer, i - read);
            return m66387j == -1 ? read : read + m66387j;
        }

        @Override // org.apache.commons.compress.utils.BoundedArchiveInputStream
        public int read(long j, ByteBuffer byteBuffer) throws IOException {
            if (this.f105761j >= this.f105760i.getRealSize()) {
                return -1;
            }
            int m66387j = this.f105760i.isSparse() ? m66387j(this.f105761j, byteBuffer, byteBuffer.limit()) : m66386f(j, byteBuffer);
            if (m66387j != -1) {
                this.f105761j += m66387j;
                byteBuffer.flip();
            } else {
                if (byteBuffer.array().length > 0) {
                    throw new IOException("Truncated TAR archive");
                }
                TarFile.this.setAtEOF(true);
            }
            return m66387j;
        }
    }

    public TarFile(byte[] bArr) throws IOException {
        this(new SeekableInMemoryByteChannel(bArr));
    }

    /* renamed from: H */
    public final void m66369H() throws IOException {
        long position = this.f105747f.position();
        int i = this.f105750i;
        long j = position % i;
        if (j > 0) {
            m66380l0(i - j);
        }
    }

    /* renamed from: I */
    public final byte[] m66370I() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream inputStream = getInputStream(this.f105756o);
        while (true) {
            try {
                int read = inputStream.read(this.f105746e);
                if (read < 0) {
                    break;
                }
                byteArrayOutputStream.write(this.f105746e, 0, read);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        inputStream.close();
        m66371M();
        if (this.f105756o == null) {
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

    /* renamed from: M */
    public final TarArchiveEntry m66371M() throws IOException {
        if (isAtEOF()) {
            return null;
        }
        TarArchiveEntry tarArchiveEntry = this.f105756o;
        if (tarArchiveEntry != null) {
            m66381m0(tarArchiveEntry.getDataOffset() + this.f105756o.getSize());
            m66383o0();
            m66382n0();
        }
        ByteBuffer m66372e0 = m66372e0();
        if (m66372e0 == null) {
            this.f105756o = null;
            return null;
        }
        try {
            TarArchiveEntry tarArchiveEntry2 = new TarArchiveEntry(this.f105757p, m66372e0.array(), this.f105748g, this.f105751j, this.f105747f.position());
            this.f105756o = tarArchiveEntry2;
            if (tarArchiveEntry2.isGNULongLinkEntry()) {
                byte[] m66370I = m66370I();
                if (m66370I == null) {
                    return null;
                }
                this.f105756o.setLinkName(this.f105748g.decode(m66370I));
            }
            if (this.f105756o.isGNULongNameEntry()) {
                byte[] m66370I2 = m66370I();
                if (m66370I2 == null) {
                    return null;
                }
                String decode = this.f105748g.decode(m66370I2);
                this.f105756o.setName(decode);
                if (this.f105756o.isDirectory() && !decode.endsWith("/")) {
                    this.f105756o.setName(decode + "/");
                }
            }
            if (this.f105756o.isGlobalPaxHeader()) {
                m66376i0();
            }
            try {
                if (this.f105756o.isPaxHeader()) {
                    m66375h0();
                } else if (!this.f105757p.isEmpty()) {
                    m66377j(this.f105757p, this.f105754m);
                }
                if (this.f105756o.isOldGNUSparse()) {
                    m66378j0();
                }
                return this.f105756o;
            } catch (NumberFormatException e) {
                throw new IOException("Error detected parsing the pax header", e);
            }
        } catch (IllegalArgumentException e2) {
            throw new IOException("Error detected parsing the header", e2);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f105747f.close();
    }

    /* renamed from: e0 */
    public final ByteBuffer m66372e0() throws IOException {
        ByteBuffer m66379k0 = m66379k0();
        setAtEOF(m66374g0(m66379k0));
        if (!isAtEOF() || m66379k0 == null) {
            return m66379k0;
        }
        m66384p0();
        m66369H();
        return null;
    }

    /* renamed from: f0 */
    public final boolean m66373f0() {
        TarArchiveEntry tarArchiveEntry = this.f105756o;
        return tarArchiveEntry != null && tarArchiveEntry.isDirectory();
    }

    /* renamed from: g0 */
    public final boolean m66374g0(ByteBuffer byteBuffer) {
        return byteBuffer == null || ArchiveUtils.isArrayZero(byteBuffer.array(), this.f105752k);
    }

    public List<TarArchiveEntry> getEntries() {
        return new ArrayList(this.f105749h);
    }

    public InputStream getInputStream(TarArchiveEntry tarArchiveEntry) throws IOException {
        try {
            return new C18848a(tarArchiveEntry, this.f105747f);
        } catch (RuntimeException e) {
            throw new IOException("Corrupted TAR archive. Can't read entry", e);
        }
    }

    /* renamed from: h0 */
    public final void m66375h0() throws IOException {
        ArrayList arrayList = new ArrayList();
        InputStream inputStream = getInputStream(this.f105756o);
        try {
            Map<String, String> parsePaxHeaders = TarUtils.parsePaxHeaders(inputStream, arrayList, this.f105757p, this.f105756o.getSize());
            if (inputStream != null) {
                inputStream.close();
            }
            if (parsePaxHeaders.containsKey("GNU.sparse.map")) {
                arrayList = new ArrayList(TarUtils.parseFromPAX01SparseHeaders(parsePaxHeaders.get("GNU.sparse.map")));
            }
            m66371M();
            if (this.f105756o == null) {
                throw new IOException("premature end of tar archive. Didn't find any entry after PAX header.");
            }
            m66377j(parsePaxHeaders, arrayList);
            if (this.f105756o.isPaxGNU1XSparse()) {
                inputStream = getInputStream(this.f105756o);
                try {
                    List<TarArchiveStructSparse> parsePAX1XSparseHeaders = TarUtils.parsePAX1XSparseHeaders(inputStream, this.f105752k);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    this.f105756o.setSparseHeaders(parsePAX1XSparseHeaders);
                    TarArchiveEntry tarArchiveEntry = this.f105756o;
                    tarArchiveEntry.setDataOffset(tarArchiveEntry.getDataOffset() + this.f105752k);
                } finally {
                }
            }
            m66385w();
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: i0 */
    public final void m66376i0() throws IOException {
        InputStream inputStream = getInputStream(this.f105756o);
        try {
            this.f105757p = TarUtils.parsePaxHeaders(inputStream, this.f105754m, this.f105757p, this.f105756o.getSize());
            if (inputStream != null) {
                inputStream.close();
            }
            m66371M();
            if (this.f105756o == null) {
                throw new IOException("Error detected parsing the pax header");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public final boolean isAtEOF() {
        return this.f105755n;
    }

    /* renamed from: j */
    public final void m66377j(Map<String, String> map, List<TarArchiveStructSparse> list) throws IOException {
        this.f105756o.m66332w(map);
        this.f105756o.setSparseHeaders(list);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
    
        throw new java.io.IOException("premature end of tar archive. Didn't find extended_header after header with extended flag.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
    
        m66385w();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0006, code lost:
    
        if (r6.f105756o.isExtended() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
    
        r0 = m66372e0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
    
        if (r0 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
    
        r1 = new org.apache.commons.compress.archivers.tar.TarArchiveSparseEntry(r0.array());
        r6.f105756o.getSparseHeaders().addAll(r1.getSparseHeaders());
        r0 = r6.f105756o;
        r0.setDataOffset(r0.getDataOffset() + r6.f105752k);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0035, code lost:
    
        if (r1.isExtended() != false) goto L15;
     */
    /* renamed from: j0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m66378j0() throws java.io.IOException {
        /*
            r6 = this;
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r0 = r6.f105756o
            boolean r0 = r0.isExtended()
            if (r0 == 0) goto L40
        L8:
            java.nio.ByteBuffer r0 = r6.m66372e0()
            if (r0 == 0) goto L38
            org.apache.commons.compress.archivers.tar.TarArchiveSparseEntry r1 = new org.apache.commons.compress.archivers.tar.TarArchiveSparseEntry
            byte[] r0 = r0.array()
            r1.<init>(r0)
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r0 = r6.f105756o
            java.util.List r0 = r0.getSparseHeaders()
            java.util.List r2 = r1.getSparseHeaders()
            r0.addAll(r2)
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r0 = r6.f105756o
            long r2 = r0.getDataOffset()
            int r4 = r6.f105752k
            long r4 = (long) r4
            long r2 = r2 + r4
            r0.setDataOffset(r2)
            boolean r0 = r1.isExtended()
            if (r0 != 0) goto L8
            goto L40
        L38:
            java.io.IOException r6 = new java.io.IOException
            java.lang.String r0 = "premature end of tar archive. Didn't find extended_header after header with extended flag."
            r6.<init>(r0)
            throw r6
        L40:
            r6.m66385w()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.tar.TarFile.m66378j0():void");
    }

    /* renamed from: k0 */
    public final ByteBuffer m66379k0() throws IOException {
        this.f105753l.rewind();
        if (this.f105747f.read(this.f105753l) != this.f105752k) {
            return null;
        }
        return this.f105753l;
    }

    /* renamed from: l0 */
    public final void m66380l0(long j) throws IOException {
        m66381m0(this.f105747f.position() + j);
    }

    /* renamed from: m0 */
    public final void m66381m0(long j) throws IOException {
        if (j < this.f105747f.position()) {
            throw new IOException("trying to move backwards inside of the archive");
        }
        this.f105747f.position(j);
    }

    /* renamed from: n0 */
    public final void m66382n0() throws IOException {
        if (m66373f0() || this.f105756o.getSize() <= 0 || this.f105756o.getSize() % this.f105752k == 0) {
            return;
        }
        long size = this.f105756o.getSize();
        int i = this.f105752k;
        m66380l0((((size / i) + 1) * i) - this.f105756o.getSize());
        m66383o0();
    }

    /* renamed from: o0 */
    public final void m66383o0() throws IOException {
        if (this.f105747f.size() < this.f105747f.position()) {
            throw new IOException("Truncated TAR archive");
        }
    }

    /* renamed from: p0 */
    public final void m66384p0() throws IOException {
        try {
            if (!m66374g0(m66379k0())) {
            }
        } finally {
            SeekableByteChannel seekableByteChannel = this.f105747f;
            seekableByteChannel.position(seekableByteChannel.position() - this.f105752k);
        }
    }

    public final void setAtEOF(boolean z) {
        this.f105755n = z;
    }

    /* renamed from: w */
    public final void m66385w() throws IOException {
        ArrayList arrayList = new ArrayList();
        List<TarArchiveStructSparse> orderedSparseHeaders = this.f105756o.getOrderedSparseHeaders();
        s9n s9nVar = new s9n();
        long j = 0;
        long j2 = 0;
        for (TarArchiveStructSparse tarArchiveStructSparse : orderedSparseHeaders) {
            long offset = tarArchiveStructSparse.getOffset() - j;
            if (offset < 0) {
                throw new IOException("Corrupted struct sparse detected");
            }
            if (offset > 0) {
                arrayList.add(new BoundedInputStream(s9nVar, offset));
                j2 += offset;
            }
            if (tarArchiveStructSparse.getNumbytes() > 0) {
                long dataOffset = (this.f105756o.getDataOffset() + tarArchiveStructSparse.getOffset()) - j2;
                if (tarArchiveStructSparse.getNumbytes() + dataOffset < dataOffset) {
                    throw new IOException("Unreadable TAR archive, sparse block offset or length too big");
                }
                arrayList.add(new BoundedSeekableByteChannelInputStream(dataOffset, tarArchiveStructSparse.getNumbytes(), this.f105747f));
            }
            j = tarArchiveStructSparse.getOffset() + tarArchiveStructSparse.getNumbytes();
        }
        this.f105758q.put(this.f105756o.getName(), arrayList);
    }

    public TarFile(byte[] bArr, String str) throws IOException {
        this(new SeekableInMemoryByteChannel(bArr), 10240, 512, str, false);
    }

    public TarFile(byte[] bArr, boolean z) throws IOException {
        this(new SeekableInMemoryByteChannel(bArr), 10240, 512, null, z);
    }

    public TarFile(File file) throws IOException {
        this(file.toPath());
    }

    public TarFile(File file, String str) throws IOException {
        this(file.toPath(), str);
    }

    public TarFile(File file, boolean z) throws IOException {
        this(file.toPath(), z);
    }

    public TarFile(Path path) throws IOException {
        this(Files.newByteChannel(path, new OpenOption[0]), 10240, 512, null, false);
    }

    public TarFile(Path path, String str) throws IOException {
        this(Files.newByteChannel(path, new OpenOption[0]), 10240, 512, str, false);
    }

    public TarFile(Path path, boolean z) throws IOException {
        this(Files.newByteChannel(path, new OpenOption[0]), 10240, 512, null, z);
    }

    public TarFile(SeekableByteChannel seekableByteChannel) throws IOException {
        this(seekableByteChannel, 10240, 512, null, false);
    }

    public TarFile(SeekableByteChannel seekableByteChannel, int i, int i2, String str, boolean z) throws IOException {
        this.f105746e = new byte[256];
        this.f105749h = new LinkedList<>();
        this.f105754m = new ArrayList();
        this.f105757p = new HashMap();
        this.f105758q = new HashMap();
        this.f105747f = seekableByteChannel;
        this.f105755n = false;
        this.f105748g = ZipEncodingHelper.getZipEncoding(str);
        this.f105752k = i2;
        this.f105753l = ByteBuffer.allocate(i2);
        this.f105750i = i;
        this.f105751j = z;
        while (true) {
            TarArchiveEntry m66371M = m66371M();
            if (m66371M == null) {
                return;
            } else {
                this.f105749h.add(m66371M);
            }
        }
    }
}
