package org.apache.commons.compress.archivers.zip;

import com.sunia.HTREnginev2.c2g;
import com.sunia.HTREnginev2.eun;
import com.sunia.HTREnginev2.yji;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToLongFunction;
import java.util.zip.Inflater;
import java.util.zip.ZipException;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.apache.commons.compress.utils.BoundedArchiveInputStream;
import org.apache.commons.compress.utils.BoundedSeekableByteChannelInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class ZipFile implements Closeable {
    static final int BYTE_SHIFT = 8;
    private static final int CFD_DISK_OFFSET = 6;
    private static final int CFD_LOCATOR_OFFSET = 16;
    private static final int CFD_LOCATOR_RELATIVE_OFFSET = 8;
    private static final int CFH_LEN = 42;
    private static final int HASH_SIZE = 509;
    private static final long LFH_OFFSET_FOR_FILENAME_LENGTH = 26;
    private static final int MAX_EOCD_SIZE = 65557;
    static final int MIN_EOCD_SIZE = 22;
    static final int NIBLET_MASK = 15;
    private static final int POS_0 = 0;
    private static final int POS_1 = 1;
    private static final int POS_2 = 2;
    private static final int POS_3 = 3;
    private static final int ZIP64_EOCDL_LENGTH = 20;
    private static final int ZIP64_EOCDL_LOCATOR_OFFSET = 8;
    private static final int ZIP64_EOCD_CFD_DISK_OFFSET = 20;
    private static final int ZIP64_EOCD_CFD_LOCATOR_OFFSET = 48;
    private static final int ZIP64_EOCD_CFD_LOCATOR_RELATIVE_OFFSET = 24;
    private final SeekableByteChannel archive;
    private final String archiveName;
    private long centralDirectoryStartDiskNumber;
    private long centralDirectoryStartOffset;
    private long centralDirectoryStartRelativeOffset;
    private final ByteBuffer cfhBbuf;
    private final byte[] cfhBuf;
    private volatile boolean closed;
    private final ByteBuffer dwordBbuf;
    private final byte[] dwordBuf;
    private final String encoding;
    private final List<ZipArchiveEntry> entries;
    private final boolean isSplitZipArchive;
    private final Map<String, LinkedList<ZipArchiveEntry>> nameMap;
    private final Comparator<ZipArchiveEntry> offsetComparator;
    private final ByteBuffer shortBbuf;
    private final byte[] shortBuf;
    private final boolean useUnicodeExtraFields;
    private final ByteBuffer wordBbuf;
    private final byte[] wordBuf;
    private final ZipEncoding zipEncoding;
    private static final byte[] ONE_ZERO_BYTE = new byte[1];
    private static final long CFH_SIG = ZipLong.getValue(ZipArchiveOutputStream.CFH_SIG);

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$a */
    /* loaded from: classes12.dex */
    public class C18867a extends yji {

        /* renamed from: g */
        public final /* synthetic */ Inflater f105933g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18867a(InputStream inputStream, Inflater inflater, Inflater inflater2) {
            super(inputStream, inflater);
            this.f105933g = inflater2;
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                super.close();
            } finally {
                this.f105933g.end();
            }
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$b */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C18868b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f105935a;

        static {
            int[] iArr = new int[ZipMethod.values().length];
            f105935a = iArr;
            try {
                iArr[ZipMethod.STORED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f105935a[ZipMethod.UNSHRINKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f105935a[ZipMethod.IMPLODING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f105935a[ZipMethod.DEFLATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f105935a[ZipMethod.BZIP2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f105935a[ZipMethod.ENHANCED_DEFLATED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f105935a[ZipMethod.AES_ENCRYPTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f105935a[ZipMethod.EXPANDING_LEVEL_1.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f105935a[ZipMethod.EXPANDING_LEVEL_2.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f105935a[ZipMethod.EXPANDING_LEVEL_3.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f105935a[ZipMethod.EXPANDING_LEVEL_4.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f105935a[ZipMethod.JPEG.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f105935a[ZipMethod.LZMA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f105935a[ZipMethod.PKWARE_IMPLODING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f105935a[ZipMethod.PPMD.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f105935a[ZipMethod.TOKENIZATION.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f105935a[ZipMethod.UNKNOWN.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f105935a[ZipMethod.WAVPACK.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f105935a[ZipMethod.XZ.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$c */
    /* loaded from: classes12.dex */
    public class C18869c extends BoundedArchiveInputStream {

        /* renamed from: h */
        public final FileChannel f105936h;

        public C18869c(long j, long j2) {
            super(j, j2);
            this.f105936h = (FileChannel) ZipFile.this.archive;
        }

        @Override // org.apache.commons.compress.utils.BoundedArchiveInputStream
        public int read(long j, ByteBuffer byteBuffer) throws IOException {
            int read = this.f105936h.read(byteBuffer, j);
            byteBuffer.flip();
            return read;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$d */
    /* loaded from: classes12.dex */
    public static class C18870d extends ZipArchiveEntry {
        @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            C18870d c18870d = (C18870d) obj;
            return getLocalHeaderOffset() == c18870d.getLocalHeaderOffset() && super.getDataOffset() == c18870d.getDataOffset() && super.getDiskNumberStart() == c18870d.getDiskNumberStart();
        }

        @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry, java.util.zip.ZipEntry
        public int hashCode() {
            return (super.hashCode() * 3) + ((int) getLocalHeaderOffset()) + ((int) (getLocalHeaderOffset() >> 32));
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$e */
    /* loaded from: classes12.dex */
    public static final class C18871e {

        /* renamed from: a */
        public final byte[] f105938a;

        /* renamed from: b */
        public final byte[] f105939b;

        public /* synthetic */ C18871e(byte[] bArr, byte[] bArr2, C18867a c18867a) {
            this(bArr, bArr2);
        }

        public C18871e(byte[] bArr, byte[] bArr2) {
            this.f105938a = bArr;
            this.f105939b = bArr2;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipFile$f */
    /* loaded from: classes12.dex */
    public static class C18872f extends CountingInputStream implements InputStreamStatistics {
        public C18872f(InputStream inputStream) {
            super(inputStream);
        }

        @Override // org.apache.commons.compress.utils.InputStreamStatistics
        public long getCompressedCount() {
            return super.getBytesRead();
        }

        @Override // org.apache.commons.compress.utils.InputStreamStatistics
        public long getUncompressedCount() {
            return getCompressedCount();
        }
    }

    public ZipFile(File file) throws IOException {
        this(file, "UTF8");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m66535M(ZipArchiveEntry zipArchiveEntry) {
        this.nameMap.computeIfAbsent(zipArchiveEntry.getName(), new Function() { // from class: com.sunia.HTREnginev2.kxo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                LinkedList m66536e0;
                m66536e0 = ZipFile.m66536e0((String) obj);
                return m66536e0;
            }
        }).addLast(zipArchiveEntry);
    }

    public static void closeQuietly(ZipFile zipFile) {
        IOUtils.closeQuietly(zipFile);
    }

    /* renamed from: e0 */
    public static /* synthetic */ LinkedList m66536e0(String str) {
        return new LinkedList();
    }

    /* renamed from: H */
    public final void m66539H() {
        this.entries.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.lxo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ZipFile.this.m66535M((ZipArchiveEntry) obj);
            }
        });
    }

    /* renamed from: I */
    public final long m66540I(ZipArchiveEntry zipArchiveEntry) throws IOException {
        long dataOffset = zipArchiveEntry.getDataOffset();
        if (dataOffset != -1) {
            return dataOffset;
        }
        m66549n0(zipArchiveEntry);
        return zipArchiveEntry.getDataOffset();
    }

    public boolean canReadEntryData(ZipArchiveEntry zipArchiveEntry) {
        return ZipUtil.m66565b(zipArchiveEntry);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
        this.archive.close();
    }

    public void copyRawEntries(ZipArchiveOutputStream zipArchiveOutputStream, ZipArchiveEntryPredicate zipArchiveEntryPredicate) throws IOException {
        Enumeration<ZipArchiveEntry> entriesInPhysicalOrder = getEntriesInPhysicalOrder();
        while (entriesInPhysicalOrder.hasMoreElements()) {
            ZipArchiveEntry nextElement = entriesInPhysicalOrder.nextElement();
            if (zipArchiveEntryPredicate.test(nextElement)) {
                zipArchiveOutputStream.addRawArchiveEntry(nextElement, getRawInputStream(nextElement));
            }
        }
    }

    /* renamed from: f0 */
    public final Map<ZipArchiveEntry, C18871e> m66541f0() throws IOException {
        HashMap hashMap = new HashMap();
        m66542g0();
        this.centralDirectoryStartOffset = this.archive.position();
        this.wordBbuf.rewind();
        IOUtils.readFully(this.archive, this.wordBbuf);
        long value = ZipLong.getValue(this.wordBuf);
        if (value != CFH_SIG && m66552q0()) {
            throw new IOException("Central directory is empty, can't expand corrupt archive.");
        }
        while (value == CFH_SIG) {
            m66546k0(hashMap);
            this.wordBbuf.rewind();
            IOUtils.readFully(this.archive, this.wordBbuf);
            value = ZipLong.getValue(this.wordBuf);
        }
        return hashMap;
    }

    public void finalize() throws Throwable {
        try {
            if (!this.closed) {
                System.err.println("Cleaning up unclosed ZipFile for archive " + this.archiveName);
                close();
            }
        } finally {
            super.finalize();
        }
    }

    /* renamed from: g0 */
    public final void m66542g0() throws IOException {
        m66545j0();
        boolean z = false;
        boolean z2 = this.archive.position() > 20;
        if (z2) {
            SeekableByteChannel seekableByteChannel = this.archive;
            seekableByteChannel.position(seekableByteChannel.position() - 20);
            this.wordBbuf.rewind();
            IOUtils.readFully(this.archive, this.wordBbuf);
            z = Arrays.equals(ZipArchiveOutputStream.ZIP64_EOCD_LOC_SIG, this.wordBuf);
        }
        if (z) {
            m66544i0();
            return;
        }
        if (z2) {
            m66551p0(16);
        }
        m66543h0();
    }

    public String getEncoding() {
        return this.encoding;
    }

    public Enumeration<ZipArchiveEntry> getEntries() {
        return Collections.enumeration(this.entries);
    }

    public Enumeration<ZipArchiveEntry> getEntriesInPhysicalOrder() {
        ZipArchiveEntry[] zipArchiveEntryArr = (ZipArchiveEntry[]) this.entries.toArray(ZipArchiveEntry.EMPTY_ZIP_ARCHIVE_ENTRY_ARRAY);
        Arrays.sort(zipArchiveEntryArr, this.offsetComparator);
        return Collections.enumeration(Arrays.asList(zipArchiveEntryArr));
    }

    public ZipArchiveEntry getEntry(String str) {
        LinkedList<ZipArchiveEntry> linkedList = this.nameMap.get(str);
        if (linkedList != null) {
            return linkedList.getFirst();
        }
        return null;
    }

    public InputStream getInputStream(ZipArchiveEntry zipArchiveEntry) throws IOException {
        if (!(zipArchiveEntry instanceof C18870d)) {
            return null;
        }
        ZipUtil.m66566c(zipArchiveEntry);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(m66554w(m66540I(zipArchiveEntry), zipArchiveEntry.getCompressedSize()));
        switch (C18868b.f105935a[ZipMethod.getMethodByCode(zipArchiveEntry.getMethod()).ordinal()]) {
            case 1:
                return new C18872f(bufferedInputStream);
            case 2:
                return new eun(bufferedInputStream);
            case 3:
                try {
                    return new c2g(zipArchiveEntry.getGeneralPurposeBit().m66397b(), zipArchiveEntry.getGeneralPurposeBit().m66396a(), bufferedInputStream);
                } catch (IllegalArgumentException e) {
                    throw new IOException("bad IMPLODE data", e);
                }
            case 4:
                Inflater inflater = new Inflater(true);
                return new C18867a(new SequenceInputStream(bufferedInputStream, new ByteArrayInputStream(ONE_ZERO_BYTE)), inflater, inflater);
            case 5:
                return new BZip2CompressorInputStream(bufferedInputStream);
            case 6:
                return new Deflate64CompressorInputStream(bufferedInputStream);
            default:
                throw new UnsupportedZipFeatureException(ZipMethod.getMethodByCode(zipArchiveEntry.getMethod()), zipArchiveEntry);
        }
    }

    public InputStream getRawInputStream(ZipArchiveEntry zipArchiveEntry) {
        if (!(zipArchiveEntry instanceof C18870d)) {
            return null;
        }
        long dataOffset = zipArchiveEntry.getDataOffset();
        if (dataOffset == -1) {
            return null;
        }
        return m66554w(dataOffset, zipArchiveEntry.getCompressedSize());
    }

    public String getUnixSymlink(ZipArchiveEntry zipArchiveEntry) throws IOException {
        if (zipArchiveEntry == null || !zipArchiveEntry.isUnixSymlink()) {
            return null;
        }
        InputStream inputStream = getInputStream(zipArchiveEntry);
        try {
            String decode = this.zipEncoding.decode(IOUtils.toByteArray(inputStream));
            if (inputStream != null) {
                inputStream.close();
            }
            return decode;
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

    /* renamed from: h0 */
    public final void m66543h0() throws IOException {
        if (!this.isSplitZipArchive) {
            m66551p0(16);
            this.wordBbuf.rewind();
            IOUtils.readFully(this.archive, this.wordBbuf);
            this.centralDirectoryStartDiskNumber = 0L;
            long value = ZipLong.getValue(this.wordBuf);
            this.centralDirectoryStartRelativeOffset = value;
            this.archive.position(value);
            return;
        }
        m66551p0(6);
        this.shortBbuf.rewind();
        IOUtils.readFully(this.archive, this.shortBbuf);
        this.centralDirectoryStartDiskNumber = ZipShort.getValue(this.shortBuf);
        m66551p0(8);
        this.wordBbuf.rewind();
        IOUtils.readFully(this.archive, this.wordBbuf);
        long value2 = ZipLong.getValue(this.wordBuf);
        this.centralDirectoryStartRelativeOffset = value2;
        ((ZipSplitReadOnlySeekableByteChannel) this.archive).position(this.centralDirectoryStartDiskNumber, value2);
    }

    /* renamed from: i0 */
    public final void m66544i0() throws IOException {
        if (this.isSplitZipArchive) {
            this.wordBbuf.rewind();
            IOUtils.readFully(this.archive, this.wordBbuf);
            long value = ZipLong.getValue(this.wordBuf);
            this.dwordBbuf.rewind();
            IOUtils.readFully(this.archive, this.dwordBbuf);
            ((ZipSplitReadOnlySeekableByteChannel) this.archive).position(value, ZipEightByteInteger.getLongValue(this.dwordBuf));
        } else {
            m66551p0(4);
            this.dwordBbuf.rewind();
            IOUtils.readFully(this.archive, this.dwordBbuf);
            this.archive.position(ZipEightByteInteger.getLongValue(this.dwordBuf));
        }
        this.wordBbuf.rewind();
        IOUtils.readFully(this.archive, this.wordBbuf);
        if (!Arrays.equals(this.wordBuf, ZipArchiveOutputStream.ZIP64_EOCD_SIG)) {
            throw new ZipException("Archive's ZIP64 end of central directory locator is corrupt.");
        }
        if (!this.isSplitZipArchive) {
            m66551p0(44);
            this.dwordBbuf.rewind();
            IOUtils.readFully(this.archive, this.dwordBbuf);
            this.centralDirectoryStartDiskNumber = 0L;
            long longValue = ZipEightByteInteger.getLongValue(this.dwordBuf);
            this.centralDirectoryStartRelativeOffset = longValue;
            this.archive.position(longValue);
            return;
        }
        m66551p0(16);
        this.wordBbuf.rewind();
        IOUtils.readFully(this.archive, this.wordBbuf);
        this.centralDirectoryStartDiskNumber = ZipLong.getValue(this.wordBuf);
        m66551p0(24);
        this.dwordBbuf.rewind();
        IOUtils.readFully(this.archive, this.dwordBbuf);
        long longValue2 = ZipEightByteInteger.getLongValue(this.dwordBuf);
        this.centralDirectoryStartRelativeOffset = longValue2;
        ((ZipSplitReadOnlySeekableByteChannel) this.archive).position(this.centralDirectoryStartDiskNumber, longValue2);
    }

    /* renamed from: j0 */
    public final void m66545j0() throws IOException {
        if (!m66553r0(22L, 65557L, ZipArchiveOutputStream.EOCD_SIG)) {
            throw new ZipException("Archive is not a ZIP archive");
        }
    }

    /* renamed from: k0 */
    public final void m66546k0(Map<ZipArchiveEntry, C18871e> map) throws IOException {
        this.cfhBbuf.rewind();
        IOUtils.readFully(this.archive, this.cfhBbuf);
        C18870d c18870d = new C18870d();
        int value = ZipShort.getValue(this.cfhBuf, 0);
        c18870d.setVersionMadeBy(value);
        c18870d.setPlatform((value >> 8) & 15);
        c18870d.setVersionRequired(ZipShort.getValue(this.cfhBuf, 2));
        GeneralPurposeBit parse = GeneralPurposeBit.parse(this.cfhBuf, 4);
        boolean usesUTF8ForNames = parse.usesUTF8ForNames();
        ZipEncoding zipEncoding = usesUTF8ForNames ? ZipEncodingHelper.f105932b : this.zipEncoding;
        if (usesUTF8ForNames) {
            c18870d.setNameSource(ZipArchiveEntry.NameSource.NAME_WITH_EFS_FLAG);
        }
        c18870d.setGeneralPurposeBit(parse);
        c18870d.setRawFlag(ZipShort.getValue(this.cfhBuf, 4));
        c18870d.setMethod(ZipShort.getValue(this.cfhBuf, 6));
        c18870d.setTime(ZipUtil.dosToJavaTime(ZipLong.getValue(this.cfhBuf, 8)));
        c18870d.setCrc(ZipLong.getValue(this.cfhBuf, 12));
        long value2 = ZipLong.getValue(this.cfhBuf, 16);
        if (value2 < 0) {
            throw new IOException("broken archive, entry with negative compressed size");
        }
        c18870d.setCompressedSize(value2);
        long value3 = ZipLong.getValue(this.cfhBuf, 20);
        if (value3 < 0) {
            throw new IOException("broken archive, entry with negative size");
        }
        c18870d.setSize(value3);
        int value4 = ZipShort.getValue(this.cfhBuf, 24);
        if (value4 < 0) {
            throw new IOException("broken archive, entry with negative fileNameLen");
        }
        int value5 = ZipShort.getValue(this.cfhBuf, 26);
        if (value5 < 0) {
            throw new IOException("broken archive, entry with negative extraLen");
        }
        int value6 = ZipShort.getValue(this.cfhBuf, 28);
        if (value6 < 0) {
            throw new IOException("broken archive, entry with negative commentLen");
        }
        c18870d.setDiskNumberStart(ZipShort.getValue(this.cfhBuf, 30));
        c18870d.setInternalAttributes(ZipShort.getValue(this.cfhBuf, 32));
        c18870d.setExternalAttributes(ZipLong.getValue(this.cfhBuf, 34));
        byte[] readRange = IOUtils.readRange(this.archive, value4);
        if (readRange.length < value4) {
            throw new EOFException();
        }
        c18870d.setName(zipEncoding.decode(readRange), readRange);
        c18870d.setLocalHeaderOffset(ZipLong.getValue(this.cfhBuf, 38));
        this.entries.add(c18870d);
        byte[] readRange2 = IOUtils.readRange(this.archive, value5);
        if (readRange2.length < value5) {
            throw new EOFException();
        }
        try {
            c18870d.setCentralDirectoryExtra(readRange2);
            m66550o0(c18870d);
            m66548m0(c18870d);
            byte[] readRange3 = IOUtils.readRange(this.archive, value6);
            if (readRange3.length < value6) {
                throw new EOFException();
            }
            c18870d.setComment(zipEncoding.decode(readRange3));
            if (!usesUTF8ForNames && this.useUnicodeExtraFields) {
                map.put(c18870d, new C18871e(readRange, readRange3, null));
            }
            c18870d.setStreamContiguous(true);
        } catch (RuntimeException e) {
            ZipException zipException = new ZipException("Invalid extra data in entry " + c18870d.getName());
            zipException.initCause(e);
            throw zipException;
        }
    }

    /* renamed from: l0 */
    public final void m66547l0(Map<ZipArchiveEntry, C18871e> map) throws IOException {
        Iterator<ZipArchiveEntry> it2 = this.entries.iterator();
        while (it2.hasNext()) {
            C18870d c18870d = (C18870d) it2.next();
            int[] m66549n0 = m66549n0(c18870d);
            int i = m66549n0[0];
            int i2 = m66549n0[1];
            m66551p0(i);
            byte[] readRange = IOUtils.readRange(this.archive, i2);
            if (readRange.length < i2) {
                throw new EOFException();
            }
            try {
                c18870d.setExtra(readRange);
                if (map.containsKey(c18870d)) {
                    C18871e c18871e = map.get(c18870d);
                    ZipUtil.m66571h(c18870d, c18871e.f105938a, c18871e.f105939b);
                }
            } catch (RuntimeException e) {
                ZipException zipException = new ZipException("Invalid extra data in entry " + c18870d.getName());
                zipException.initCause(e);
                throw zipException;
            }
        }
    }

    /* renamed from: m0 */
    public final void m66548m0(ZipArchiveEntry zipArchiveEntry) throws IOException {
        if (zipArchiveEntry.getDiskNumberStart() < 0) {
            throw new IOException("broken archive, entry with negative disk number");
        }
        if (zipArchiveEntry.getLocalHeaderOffset() < 0) {
            throw new IOException("broken archive, entry with negative local file header offset");
        }
        if (!this.isSplitZipArchive) {
            if (zipArchiveEntry.getLocalHeaderOffset() <= this.centralDirectoryStartOffset) {
                return;
            }
            throw new IOException("local file header for " + zipArchiveEntry.getName() + " starts after central directory");
        }
        if (zipArchiveEntry.getDiskNumberStart() > this.centralDirectoryStartDiskNumber) {
            throw new IOException("local file header for " + zipArchiveEntry.getName() + " starts on a later disk than central directory");
        }
        if (zipArchiveEntry.getDiskNumberStart() != this.centralDirectoryStartDiskNumber || zipArchiveEntry.getLocalHeaderOffset() <= this.centralDirectoryStartRelativeOffset) {
            return;
        }
        throw new IOException("local file header for " + zipArchiveEntry.getName() + " starts after central directory");
    }

    /* renamed from: n0 */
    public final int[] m66549n0(ZipArchiveEntry zipArchiveEntry) throws IOException {
        long localHeaderOffset = zipArchiveEntry.getLocalHeaderOffset();
        if (this.isSplitZipArchive) {
            ((ZipSplitReadOnlySeekableByteChannel) this.archive).position(zipArchiveEntry.getDiskNumberStart(), localHeaderOffset + LFH_OFFSET_FOR_FILENAME_LENGTH);
            localHeaderOffset = this.archive.position() - LFH_OFFSET_FOR_FILENAME_LENGTH;
        } else {
            this.archive.position(localHeaderOffset + LFH_OFFSET_FOR_FILENAME_LENGTH);
        }
        this.wordBbuf.rewind();
        IOUtils.readFully(this.archive, this.wordBbuf);
        this.wordBbuf.flip();
        this.wordBbuf.get(this.shortBuf);
        int value = ZipShort.getValue(this.shortBuf);
        this.wordBbuf.get(this.shortBuf);
        int value2 = ZipShort.getValue(this.shortBuf);
        zipArchiveEntry.setDataOffset(localHeaderOffset + LFH_OFFSET_FOR_FILENAME_LENGTH + 2 + 2 + value + value2);
        if (zipArchiveEntry.getDataOffset() + zipArchiveEntry.getCompressedSize() <= this.centralDirectoryStartOffset) {
            return new int[]{value, value2};
        }
        throw new IOException("data for " + zipArchiveEntry.getName() + " overlaps with central directory.");
    }

    /* renamed from: o0 */
    public final void m66550o0(ZipArchiveEntry zipArchiveEntry) throws IOException {
        ZipExtraField extraField = zipArchiveEntry.getExtraField(Zip64ExtendedInformationExtraField.f105872j);
        if (extraField != null && !(extraField instanceof Zip64ExtendedInformationExtraField)) {
            throw new ZipException("archive contains unparseable zip64 extra field");
        }
        Zip64ExtendedInformationExtraField zip64ExtendedInformationExtraField = (Zip64ExtendedInformationExtraField) extraField;
        if (zip64ExtendedInformationExtraField != null) {
            boolean z = zipArchiveEntry.getSize() == 4294967295L;
            boolean z2 = zipArchiveEntry.getCompressedSize() == 4294967295L;
            boolean z3 = zipArchiveEntry.getLocalHeaderOffset() == 4294967295L;
            boolean z4 = zipArchiveEntry.getDiskNumberStart() == WebSocketProtocol.PAYLOAD_SHORT_MAX;
            zip64ExtendedInformationExtraField.reparseCentralDirectoryData(z, z2, z3, z4);
            if (z) {
                long longValue = zip64ExtendedInformationExtraField.getSize().getLongValue();
                if (longValue < 0) {
                    throw new IOException("broken archive, entry with negative size");
                }
                zipArchiveEntry.setSize(longValue);
            } else if (z2) {
                zip64ExtendedInformationExtraField.setSize(new ZipEightByteInteger(zipArchiveEntry.getSize()));
            }
            if (z2) {
                long longValue2 = zip64ExtendedInformationExtraField.getCompressedSize().getLongValue();
                if (longValue2 < 0) {
                    throw new IOException("broken archive, entry with negative compressed size");
                }
                zipArchiveEntry.setCompressedSize(longValue2);
            } else if (z) {
                zip64ExtendedInformationExtraField.setCompressedSize(new ZipEightByteInteger(zipArchiveEntry.getCompressedSize()));
            }
            if (z3) {
                zipArchiveEntry.setLocalHeaderOffset(zip64ExtendedInformationExtraField.getRelativeHeaderOffset().getLongValue());
            }
            if (z4) {
                zipArchiveEntry.setDiskNumberStart(zip64ExtendedInformationExtraField.getDiskStartNumber().getValue());
            }
        }
    }

    /* renamed from: p0 */
    public final void m66551p0(int i) throws IOException {
        long position = this.archive.position() + i;
        if (position > this.archive.size()) {
            throw new EOFException();
        }
        this.archive.position(position);
    }

    /* renamed from: q0 */
    public final boolean m66552q0() throws IOException {
        this.archive.position(0L);
        this.wordBbuf.rewind();
        IOUtils.readFully(this.archive, this.wordBbuf);
        return Arrays.equals(this.wordBuf, ZipArchiveOutputStream.LFH_SIG);
    }

    /* renamed from: r0 */
    public final boolean m66553r0(long j, long j2, byte[] bArr) throws IOException {
        long size = this.archive.size() - j;
        long max = Math.max(0L, this.archive.size() - j2);
        boolean z = false;
        if (size >= 0) {
            while (true) {
                if (size < max) {
                    break;
                }
                this.archive.position(size);
                try {
                    this.wordBbuf.rewind();
                    IOUtils.readFully(this.archive, this.wordBbuf);
                    this.wordBbuf.flip();
                    if (this.wordBbuf.get() == bArr[0] && this.wordBbuf.get() == bArr[1] && this.wordBbuf.get() == bArr[2] && this.wordBbuf.get() == bArr[3]) {
                        z = true;
                        break;
                    }
                    size--;
                } catch (EOFException unused) {
                }
            }
        }
        if (z) {
            this.archive.position(size);
        }
        return z;
    }

    /* renamed from: w */
    public final BoundedArchiveInputStream m66554w(long j, long j2) {
        if (j < 0 || j2 < 0 || j + j2 < j) {
            throw new IllegalArgumentException("Corrupted archive, stream boundaries are out of range");
        }
        return this.archive instanceof FileChannel ? new C18869c(j, j2) : new BoundedSeekableByteChannelInputStream(j, j2, this.archive);
    }

    public ZipFile(Path path) throws IOException {
        this(path, "UTF8");
    }

    public Iterable<ZipArchiveEntry> getEntries(String str) {
        LinkedList<ZipArchiveEntry> linkedList = this.nameMap.get(str);
        return linkedList != null ? linkedList : Collections.emptyList();
    }

    public ZipFile(String str) throws IOException {
        this(new File(str).toPath(), "UTF8");
    }

    public ZipFile(String str, String str2) throws IOException {
        this(new File(str).toPath(), str2, true);
    }

    public Iterable<ZipArchiveEntry> getEntriesInPhysicalOrder(String str) {
        ZipArchiveEntry[] zipArchiveEntryArr = ZipArchiveEntry.EMPTY_ZIP_ARCHIVE_ENTRY_ARRAY;
        if (this.nameMap.containsKey(str)) {
            zipArchiveEntryArr = (ZipArchiveEntry[]) this.nameMap.get(str).toArray(zipArchiveEntryArr);
            Arrays.sort(zipArchiveEntryArr, this.offsetComparator);
        }
        return Arrays.asList(zipArchiveEntryArr);
    }

    public ZipFile(File file, String str) throws IOException {
        this(file.toPath(), str, true);
    }

    public ZipFile(Path path, String str) throws IOException {
        this(path, str, true);
    }

    public ZipFile(File file, String str, boolean z) throws IOException {
        this(file.toPath(), str, z, false);
    }

    public ZipFile(Path path, String str, boolean z) throws IOException {
        this(path, str, z, false);
    }

    public ZipFile(File file, String str, boolean z, boolean z2) throws IOException {
        this(Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.READ), new FileAttribute[0]), file.getAbsolutePath(), str, z, true, z2);
    }

    public ZipFile(Path path, String str, boolean z, boolean z2) throws IOException {
        this(Files.newByteChannel(path, EnumSet.of(StandardOpenOption.READ), new FileAttribute[0]), path.toAbsolutePath().toString(), str, z, true, z2);
    }

    public ZipFile(SeekableByteChannel seekableByteChannel) throws IOException {
        this(seekableByteChannel, SevenZFile.f105624q, "UTF8", true);
    }

    public ZipFile(SeekableByteChannel seekableByteChannel, String str) throws IOException {
        this(seekableByteChannel, SevenZFile.f105624q, str, true);
    }

    public ZipFile(SeekableByteChannel seekableByteChannel, String str, String str2, boolean z) throws IOException {
        this(seekableByteChannel, str, str2, z, false, false);
    }

    public ZipFile(SeekableByteChannel seekableByteChannel, String str, String str2, boolean z, boolean z2) throws IOException {
        this(seekableByteChannel, str, str2, z, false, z2);
    }

    /* JADX WARN: Finally extract failed */
    public ZipFile(SeekableByteChannel seekableByteChannel, String str, String str2, boolean z, boolean z2, boolean z3) throws IOException {
        this.entries = new LinkedList();
        this.nameMap = new HashMap(509);
        this.closed = true;
        byte[] bArr = new byte[8];
        this.dwordBuf = bArr;
        byte[] bArr2 = new byte[4];
        this.wordBuf = bArr2;
        byte[] bArr3 = new byte[42];
        this.cfhBuf = bArr3;
        byte[] bArr4 = new byte[2];
        this.shortBuf = bArr4;
        this.dwordBbuf = ByteBuffer.wrap(bArr);
        this.wordBbuf = ByteBuffer.wrap(bArr2);
        this.cfhBbuf = ByteBuffer.wrap(bArr3);
        this.shortBbuf = ByteBuffer.wrap(bArr4);
        this.offsetComparator = Comparator.comparingLong(new ToLongFunction() { // from class: com.sunia.HTREnginev2.ixo
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((ZipArchiveEntry) obj).getDiskNumberStart();
            }
        }).thenComparingLong(new ToLongFunction() { // from class: com.sunia.HTREnginev2.jxo
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((ZipArchiveEntry) obj).getLocalHeaderOffset();
            }
        });
        this.isSplitZipArchive = seekableByteChannel instanceof ZipSplitReadOnlySeekableByteChannel;
        this.archiveName = str;
        this.encoding = str2;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str2);
        this.useUnicodeExtraFields = z;
        this.archive = seekableByteChannel;
        try {
            try {
                Map<ZipArchiveEntry, C18871e> m66541f0 = m66541f0();
                if (!z3) {
                    m66547l0(m66541f0);
                }
                m66539H();
                this.closed = false;
            } catch (IOException e) {
                throw new IOException("Error on ZipFile " + str, e);
            }
        } catch (Throwable th) {
            this.closed = true;
            if (z2) {
                IOUtils.closeQuietly(this.archive);
            }
            throw th;
        }
    }
}
