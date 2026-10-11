package org.apache.commons.compress.archivers.zip;

import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.ZipException;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class ZipArchiveOutputStream extends ArchiveOutputStream {
    static final int BUFFER_SIZE = 512;
    private static final int CFH_COMMENT_LENGTH_OFFSET = 32;
    private static final int CFH_COMPRESSED_SIZE_OFFSET = 20;
    private static final int CFH_CRC_OFFSET = 16;
    private static final int CFH_DISK_NUMBER_OFFSET = 34;
    private static final int CFH_EXTERNAL_ATTRIBUTES_OFFSET = 38;
    private static final int CFH_EXTRA_LENGTH_OFFSET = 30;
    private static final int CFH_FILENAME_LENGTH_OFFSET = 28;
    private static final int CFH_FILENAME_OFFSET = 46;
    private static final int CFH_GPB_OFFSET = 8;
    private static final int CFH_INTERNAL_ATTRIBUTES_OFFSET = 36;
    private static final int CFH_LFH_OFFSET = 42;
    private static final int CFH_METHOD_OFFSET = 10;
    private static final int CFH_ORIGINAL_SIZE_OFFSET = 24;
    private static final int CFH_SIG_OFFSET = 0;
    private static final int CFH_TIME_OFFSET = 12;
    private static final int CFH_VERSION_MADE_BY_OFFSET = 4;
    private static final int CFH_VERSION_NEEDED_OFFSET = 6;
    public static final int DEFAULT_COMPRESSION = -1;
    static final String DEFAULT_ENCODING = "UTF8";
    public static final int DEFLATED = 8;

    @Deprecated
    public static final int EFS_FLAG = 2048;
    private static final int LFH_COMPRESSED_SIZE_OFFSET = 18;
    private static final int LFH_CRC_OFFSET = 14;
    private static final int LFH_EXTRA_LENGTH_OFFSET = 28;
    private static final int LFH_FILENAME_LENGTH_OFFSET = 26;
    private static final int LFH_FILENAME_OFFSET = 30;
    private static final int LFH_GPB_OFFSET = 6;
    private static final int LFH_METHOD_OFFSET = 8;
    private static final int LFH_ORIGINAL_SIZE_OFFSET = 22;
    private static final int LFH_SIG_OFFSET = 0;
    private static final int LFH_TIME_OFFSET = 10;
    private static final int LFH_VERSION_NEEDED_OFFSET = 4;
    public static final int STORED = 0;
    private final Calendar calendarInstance;
    private long cdDiskNumberStart;
    private long cdLength;
    private long cdOffset;
    private final SeekableByteChannel channel;
    private String comment;
    private final byte[] copyBuffer;
    private UnicodeExtraFieldPolicy createUnicodeExtraFields;
    protected final Deflater def;
    private String encoding;
    private final List<ZipArchiveEntry> entries;
    private C18865b entry;
    private long eocdLength;
    private boolean fallbackToUTF8;
    protected boolean finished;
    private boolean hasCompressionLevelChanged;
    private boolean hasUsedZip64;
    private final boolean isSplitZip;
    private int level;
    private final Map<ZipArchiveEntry, C18866c> metaData;
    private int method;
    private final Map<Integer, Integer> numberOfCDInDiskData;
    private final OutputStream outputStream;
    private final StreamCompressor streamCompressor;
    private boolean useUTF8Flag;
    private Zip64Mode zip64Mode;
    private ZipEncoding zipEncoding;
    private static final byte[] ZERO = {0, 0};
    private static final byte[] LZERO = {0, 0, 0, 0};
    private static final byte[] ONE = ZipLong.getBytes(1);
    static final byte[] LFH_SIG = ZipLong.LFH_SIG.getBytes();
    static final byte[] DD_SIG = ZipLong.DD_SIG.getBytes();
    static final byte[] CFH_SIG = ZipLong.CFH_SIG.getBytes();
    static final byte[] EOCD_SIG = ZipLong.getBytes(101010256);
    static final byte[] ZIP64_EOCD_SIG = ZipLong.getBytes(101075792);
    static final byte[] ZIP64_EOCD_LOC_SIG = ZipLong.getBytes(117853008);

    /* loaded from: classes12.dex */
    public static final class UnicodeExtraFieldPolicy {
        public static final UnicodeExtraFieldPolicy ALWAYS = new UnicodeExtraFieldPolicy(NotificationDisplayHandler.STRATEGY_ALWAYS);
        public static final UnicodeExtraFieldPolicy NEVER = new UnicodeExtraFieldPolicy(NotificationDisplayHandler.STRATEGY_NEVER);
        public static final UnicodeExtraFieldPolicy NOT_ENCODEABLE = new UnicodeExtraFieldPolicy("not encodeable");

        /* renamed from: a */
        public final String f105922a;

        public UnicodeExtraFieldPolicy(String str) {
            this.f105922a = str;
        }

        public String toString() {
            return this.f105922a;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream$b */
    /* loaded from: classes12.dex */
    public static final class C18865b {

        /* renamed from: a */
        public final ZipArchiveEntry f105923a;

        /* renamed from: b */
        public long f105924b;

        /* renamed from: c */
        public long f105925c;

        /* renamed from: d */
        public long f105926d;

        /* renamed from: e */
        public boolean f105927e;

        /* renamed from: f */
        public boolean f105928f;

        public C18865b(ZipArchiveEntry zipArchiveEntry) {
            this.f105923a = zipArchiveEntry;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream$c */
    /* loaded from: classes12.dex */
    public static final class C18866c {

        /* renamed from: a */
        public final long f105929a;

        /* renamed from: b */
        public final boolean f105930b;

        public C18866c(long j, boolean z) {
            this.f105929a = j;
            this.f105930b = z;
        }
    }

    public ZipArchiveOutputStream(OutputStream outputStream) {
        this.comment = "";
        this.level = -1;
        this.method = 8;
        this.entries = new LinkedList();
        this.metaData = new HashMap();
        this.encoding = "UTF8";
        this.zipEncoding = ZipEncodingHelper.getZipEncoding("UTF8");
        this.useUTF8Flag = true;
        this.createUnicodeExtraFields = UnicodeExtraFieldPolicy.NEVER;
        this.zip64Mode = Zip64Mode.AsNeeded;
        this.copyBuffer = new byte[32768];
        this.calendarInstance = Calendar.getInstance();
        this.numberOfCDInDiskData = new HashMap();
        this.outputStream = outputStream;
        this.channel = null;
        Deflater deflater = new Deflater(this.level, true);
        this.def = deflater;
        this.streamCompressor = StreamCompressor.m66416w(outputStream, deflater);
        this.isSplitZip = false;
    }

    /* renamed from: A0 */
    public final int m66485A0(int i, boolean z, boolean z2) {
        if (z) {
            return 45;
        }
        if (z2) {
            return 20;
        }
        return m66486B0(i);
    }

    /* renamed from: B0 */
    public final int m66486B0(int i) {
        return i == 8 ? 20 : 10;
    }

    /* renamed from: C0 */
    public final void m66487C0() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(CloudNoteException.ONE_DRIVE_INVALID_GRANT);
        Iterator<ZipArchiveEntry> it2 = this.entries.iterator();
        while (true) {
            int i = 0;
            while (it2.hasNext()) {
                byteArrayOutputStream.write(m66492M(it2.next()));
                i++;
                if (i > 1000) {
                    break;
                }
            }
            m66488D0(byteArrayOutputStream.toByteArray());
            return;
            m66488D0(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.reset();
        }
    }

    /* renamed from: D0 */
    public final void m66488D0(byte[] bArr) throws IOException {
        this.streamCompressor.writeCounted(bArr);
    }

    /* renamed from: E0 */
    public final void m66489E0(ZipArchiveEntry zipArchiveEntry, boolean z) throws IOException {
        boolean canEncode = this.zipEncoding.canEncode(zipArchiveEntry.getName());
        ByteBuffer m66501k0 = m66501k0(zipArchiveEntry);
        if (this.createUnicodeExtraFields != UnicodeExtraFieldPolicy.NEVER) {
            m66494f(zipArchiveEntry, canEncode, m66501k0);
        }
        long totalBytesWritten = this.streamCompressor.getTotalBytesWritten();
        if (this.isSplitZip) {
            C18874a c18874a = (C18874a) this.outputStream;
            zipArchiveEntry.setDiskNumberStart(c18874a.m66580w());
            totalBytesWritten = c18874a.m66579j();
        }
        byte[] m66495f0 = m66495f0(zipArchiveEntry, m66501k0, canEncode, z, totalBytesWritten);
        this.metaData.put(zipArchiveEntry, new C18866c(totalBytesWritten, m66515x0(zipArchiveEntry.getMethod(), z)));
        this.entry.f105924b = totalBytesWritten + 14;
        m66488D0(m66495f0);
        this.entry.f105925c = this.streamCompressor.getTotalBytesWritten();
    }

    /* renamed from: H */
    public final void m66490H(boolean z, boolean z2) throws IOException {
        if (!z2 && this.channel != null) {
            m66510t0(z);
        }
        if (!z2) {
            writeDataDescriptor(this.entry.f105923a);
        }
        this.entry = null;
    }

    /* renamed from: I */
    public final void m66491I(InputStream inputStream) throws IOException {
        C18865b c18865b = this.entry;
        if (c18865b == null) {
            throw new IllegalStateException("No current entry");
        }
        ZipUtil.m66566c(c18865b.f105923a);
        this.entry.f105928f = true;
        while (true) {
            int read = inputStream.read(this.copyBuffer);
            if (read < 0) {
                return;
            }
            this.streamCompressor.writeCounted(this.copyBuffer, 0, read);
            count(read);
        }
    }

    /* renamed from: M */
    public final byte[] m66492M(ZipArchiveEntry zipArchiveEntry) throws IOException {
        Zip64Mode zip64Mode;
        C18866c c18866c = this.metaData.get(zipArchiveEntry);
        boolean z = m66505o0(zipArchiveEntry) || zipArchiveEntry.getCompressedSize() >= 4294967295L || zipArchiveEntry.getSize() >= 4294967295L || c18866c.f105929a >= 4294967295L || zipArchiveEntry.getDiskNumberStart() >= WebSocketProtocol.PAYLOAD_SHORT_MAX || (zip64Mode = this.zip64Mode) == Zip64Mode.Always || zip64Mode == Zip64Mode.AlwaysWithCompatibility;
        if (z && this.zip64Mode == Zip64Mode.Never) {
            throw new Zip64RequiredException("Archive's size exceeds the limit of 4GByte.");
        }
        m66504n0(zipArchiveEntry, c18866c.f105929a, z);
        return m66493e0(zipArchiveEntry, m66501k0(zipArchiveEntry), c18866c, z);
    }

    public void addRawArchiveEntry(ZipArchiveEntry zipArchiveEntry, InputStream inputStream) throws IOException {
        ZipArchiveEntry zipArchiveEntry2 = new ZipArchiveEntry(zipArchiveEntry);
        if (m66505o0(zipArchiveEntry2)) {
            zipArchiveEntry2.removeExtraField(Zip64ExtendedInformationExtraField.f105872j);
        }
        boolean z = (zipArchiveEntry2.getCrc() == -1 || zipArchiveEntry2.getSize() == -1 || zipArchiveEntry2.getCompressedSize() == -1) ? false : true;
        m66509s0(zipArchiveEntry2, z);
        m66491I(inputStream);
        m66513w(z);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public boolean canWriteEntryData(ArchiveEntry archiveEntry) {
        if (!(archiveEntry instanceof ZipArchiveEntry)) {
            return false;
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) archiveEntry;
        return (zipArchiveEntry.getMethod() == ZipMethod.IMPLODING.getCode() || zipArchiveEntry.getMethod() == ZipMethod.UNSHRINKING.getCode() || !ZipUtil.m66565b(zipArchiveEntry)) ? false : true;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (!this.finished) {
                finish();
            }
        } finally {
            destroy();
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        m66508r0();
        m66496g0();
        long totalBytesWritten = this.streamCompressor.getTotalBytesWritten() - this.entry.f105925c;
        long crc32 = this.streamCompressor.getCrc32();
        this.entry.f105926d = this.streamCompressor.getBytesRead();
        m66490H(m66503m0(totalBytesWritten, crc32, m66497h0(this.entry.f105923a)), false);
        this.streamCompressor.reset();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (!this.finished) {
            return new ZipArchiveEntry(file, str);
        }
        throw new IOException("Stream has already been finished");
    }

    public final void deflate() throws IOException {
        this.streamCompressor.m66417I();
    }

    public void destroy() throws IOException {
        try {
            SeekableByteChannel seekableByteChannel = this.channel;
            if (seekableByteChannel != null) {
                seekableByteChannel.close();
            }
        } finally {
            OutputStream outputStream = this.outputStream;
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    /* renamed from: e0 */
    public final byte[] m66493e0(ZipArchiveEntry zipArchiveEntry, ByteBuffer byteBuffer, C18866c c18866c, boolean z) throws IOException {
        Zip64Mode zip64Mode;
        if (this.isSplitZip) {
            int m66580w = ((C18874a) this.outputStream).m66580w();
            if (this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)) == null) {
                this.numberOfCDInDiskData.put(Integer.valueOf(m66580w), 1);
            } else {
                this.numberOfCDInDiskData.put(Integer.valueOf(m66580w), Integer.valueOf(this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)).intValue() + 1));
            }
        }
        byte[] centralDirectoryExtra = zipArchiveEntry.getCentralDirectoryExtra();
        int length = centralDirectoryExtra.length;
        String comment = zipArchiveEntry.getComment();
        if (comment == null) {
            comment = "";
        }
        ByteBuffer encode = m66498i0(zipArchiveEntry).encode(comment);
        int limit = byteBuffer.limit() - byteBuffer.position();
        int limit2 = encode.limit() - encode.position();
        int i = limit + 46;
        int i2 = i + length;
        byte[] bArr = new byte[i2 + limit2];
        System.arraycopy(CFH_SIG, 0, bArr, 0, 4);
        ZipShort.putShort((zipArchiveEntry.getPlatform() << 8) | (!this.hasUsedZip64 ? 20 : 45), bArr, 4);
        int method = zipArchiveEntry.getMethod();
        boolean canEncode = this.zipEncoding.canEncode(zipArchiveEntry.getName());
        ZipShort.putShort(m66485A0(method, z, c18866c.f105930b), bArr, 6);
        m66500j0(!canEncode && this.fallbackToUTF8, c18866c.f105930b).encode(bArr, 8);
        ZipShort.putShort(method, bArr, 10);
        ZipUtil.m66574k(this.calendarInstance, zipArchiveEntry.getTime(), bArr, 12);
        ZipLong.putLong(zipArchiveEntry.getCrc(), bArr, 16);
        if (zipArchiveEntry.getCompressedSize() >= 4294967295L || zipArchiveEntry.getSize() >= 4294967295L || (zip64Mode = this.zip64Mode) == Zip64Mode.Always || zip64Mode == Zip64Mode.AlwaysWithCompatibility) {
            ZipLong zipLong = ZipLong.ZIP64_MAGIC;
            zipLong.putLong(bArr, 20);
            zipLong.putLong(bArr, 24);
        } else {
            ZipLong.putLong(zipArchiveEntry.getCompressedSize(), bArr, 20);
            ZipLong.putLong(zipArchiveEntry.getSize(), bArr, 24);
        }
        ZipShort.putShort(limit, bArr, 28);
        ZipShort.putShort(length, bArr, 30);
        ZipShort.putShort(limit2, bArr, 32);
        if (!this.isSplitZip) {
            System.arraycopy(ZERO, 0, bArr, 34, 2);
        } else if (zipArchiveEntry.getDiskNumberStart() >= WebSocketProtocol.PAYLOAD_SHORT_MAX || this.zip64Mode == Zip64Mode.Always) {
            ZipShort.putShort(65535, bArr, 34);
        } else {
            ZipShort.putShort((int) zipArchiveEntry.getDiskNumberStart(), bArr, 34);
        }
        ZipShort.putShort(zipArchiveEntry.getInternalAttributes(), bArr, 36);
        ZipLong.putLong(zipArchiveEntry.getExternalAttributes(), bArr, 38);
        if (c18866c.f105929a >= 4294967295L || this.zip64Mode == Zip64Mode.Always) {
            ZipLong.putLong(4294967295L, bArr, 42);
        } else {
            ZipLong.putLong(Math.min(c18866c.f105929a, 4294967295L), bArr, 42);
        }
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset(), bArr, 46, limit);
        System.arraycopy(centralDirectoryExtra, 0, bArr, i, length);
        System.arraycopy(encode.array(), encode.arrayOffset(), bArr, i2, limit2);
        return bArr;
    }

    /* renamed from: f */
    public final void m66494f(ZipArchiveEntry zipArchiveEntry, boolean z, ByteBuffer byteBuffer) throws IOException {
        UnicodeExtraFieldPolicy unicodeExtraFieldPolicy = this.createUnicodeExtraFields;
        UnicodeExtraFieldPolicy unicodeExtraFieldPolicy2 = UnicodeExtraFieldPolicy.ALWAYS;
        if (unicodeExtraFieldPolicy == unicodeExtraFieldPolicy2 || !z) {
            zipArchiveEntry.addExtraField(new UnicodePathExtraField(zipArchiveEntry.getName(), byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position()));
        }
        String comment = zipArchiveEntry.getComment();
        if (comment == null || comment.isEmpty()) {
            return;
        }
        boolean canEncode = this.zipEncoding.canEncode(comment);
        if (this.createUnicodeExtraFields == unicodeExtraFieldPolicy2 || !canEncode) {
            ByteBuffer encode = m66498i0(zipArchiveEntry).encode(comment);
            zipArchiveEntry.addExtraField(new UnicodeCommentExtraField(comment, encode.array(), encode.arrayOffset(), encode.limit() - encode.position()));
        }
    }

    /* renamed from: f0 */
    public final byte[] m66495f0(ZipArchiveEntry zipArchiveEntry, ByteBuffer byteBuffer, boolean z, boolean z2, long j) {
        ZipShort zipShort = ResourceAlignmentExtraField.f105811ID;
        ZipExtraField extraField = zipArchiveEntry.getExtraField(zipShort);
        if (extraField != null) {
            zipArchiveEntry.removeExtraField(zipShort);
        }
        ResourceAlignmentExtraField resourceAlignmentExtraField = extraField instanceof ResourceAlignmentExtraField ? (ResourceAlignmentExtraField) extraField : null;
        int alignment = zipArchiveEntry.getAlignment();
        if (alignment <= 0 && resourceAlignmentExtraField != null) {
            alignment = resourceAlignmentExtraField.getAlignment();
        }
        if (alignment > 1 || (resourceAlignmentExtraField != null && !resourceAlignmentExtraField.allowMethodChange())) {
            zipArchiveEntry.addExtraField(new ResourceAlignmentExtraField(alignment, resourceAlignmentExtraField != null && resourceAlignmentExtraField.allowMethodChange(), (int) (((((-j) - (((byteBuffer.limit() + 30) - byteBuffer.position()) + zipArchiveEntry.getLocalFileDataExtra().length)) - 4) - 2) & (alignment - 1))));
        }
        byte[] localFileDataExtra = zipArchiveEntry.getLocalFileDataExtra();
        int limit = byteBuffer.limit() - byteBuffer.position();
        int i = limit + 30;
        byte[] bArr = new byte[localFileDataExtra.length + i];
        System.arraycopy(LFH_SIG, 0, bArr, 0, 4);
        int method = zipArchiveEntry.getMethod();
        boolean m66515x0 = m66515x0(method, z2);
        ZipShort.putShort(m66485A0(method, m66505o0(zipArchiveEntry), m66515x0), bArr, 4);
        m66500j0(!z && this.fallbackToUTF8, m66515x0).encode(bArr, 6);
        ZipShort.putShort(method, bArr, 8);
        ZipUtil.m66574k(this.calendarInstance, zipArchiveEntry.getTime(), bArr, 10);
        if (z2 || (method != 8 && this.channel == null)) {
            ZipLong.putLong(zipArchiveEntry.getCrc(), bArr, 14);
        } else {
            System.arraycopy(LZERO, 0, bArr, 14, 4);
        }
        if (m66505o0(this.entry.f105923a)) {
            ZipLong zipLong = ZipLong.ZIP64_MAGIC;
            zipLong.putLong(bArr, 18);
            zipLong.putLong(bArr, 22);
        } else if (z2) {
            ZipLong.putLong(zipArchiveEntry.getCompressedSize(), bArr, 18);
            ZipLong.putLong(zipArchiveEntry.getSize(), bArr, 22);
        } else if (method == 8 || this.channel != null) {
            byte[] bArr2 = LZERO;
            System.arraycopy(bArr2, 0, bArr, 18, 4);
            System.arraycopy(bArr2, 0, bArr, 22, 4);
        } else {
            ZipLong.putLong(zipArchiveEntry.getSize(), bArr, 18);
            ZipLong.putLong(zipArchiveEntry.getSize(), bArr, 22);
        }
        ZipShort.putShort(limit, bArr, 26);
        ZipShort.putShort(localFileDataExtra.length, bArr, 28);
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset(), bArr, 30, limit);
        System.arraycopy(localFileDataExtra, 0, bArr, i, localFileDataExtra.length);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        if (this.finished) {
            throw new IOException("This archive has already been finished");
        }
        if (this.entry != null) {
            throw new IOException("This archive contains unclosed entries.");
        }
        long totalBytesWritten = this.streamCompressor.getTotalBytesWritten();
        this.cdOffset = totalBytesWritten;
        if (this.isSplitZip) {
            this.cdOffset = ((C18874a) this.outputStream).m66579j();
            this.cdDiskNumberStart = r2.m66580w();
        }
        m66487C0();
        this.cdLength = this.streamCompressor.getTotalBytesWritten() - totalBytesWritten;
        ByteBuffer encode = this.zipEncoding.encode(this.comment);
        this.eocdLength = (encode.limit() - encode.position()) + 22;
        writeZip64CentralDirectory();
        writeCentralDirectoryEnd();
        this.metaData.clear();
        this.entries.clear();
        this.streamCompressor.close();
        if (this.isSplitZip) {
            this.outputStream.close();
        }
        this.finished = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.outputStream;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    /* renamed from: g0 */
    public final void m66496g0() throws IOException {
        if (this.entry.f105923a.getMethod() == 8) {
            this.streamCompressor.m66419e0();
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public long getBytesWritten() {
        return this.streamCompressor.getTotalBytesWritten();
    }

    public String getEncoding() {
        return this.encoding;
    }

    /* renamed from: h0 */
    public final Zip64Mode m66497h0(ZipArchiveEntry zipArchiveEntry) {
        return (this.zip64Mode == Zip64Mode.AsNeeded && this.channel == null && zipArchiveEntry.getMethod() == 8 && zipArchiveEntry.getSize() == -1) ? Zip64Mode.Never : this.zip64Mode;
    }

    /* renamed from: i0 */
    public final ZipEncoding m66498i0(ZipArchiveEntry zipArchiveEntry) {
        return (this.zipEncoding.canEncode(zipArchiveEntry.getName()) || !this.fallbackToUTF8) ? this.zipEncoding : ZipEncodingHelper.f105932b;
    }

    public boolean isSeekable() {
        return this.channel != null;
    }

    /* renamed from: j */
    public final boolean m66499j(Zip64Mode zip64Mode) throws ZipException {
        boolean m66507q0 = m66507q0(this.entry.f105923a, zip64Mode);
        if (m66507q0 && zip64Mode == Zip64Mode.Never) {
            throw new Zip64RequiredException(Zip64RequiredException.getEntryTooBigMessage(this.entry.f105923a));
        }
        return m66507q0;
    }

    /* renamed from: j0 */
    public final GeneralPurposeBit m66500j0(boolean z, boolean z2) {
        GeneralPurposeBit generalPurposeBit = new GeneralPurposeBit();
        generalPurposeBit.useUTF8ForNames(this.useUTF8Flag || z);
        if (z2) {
            generalPurposeBit.useDataDescriptor(true);
        }
        return generalPurposeBit;
    }

    /* renamed from: k0 */
    public final ByteBuffer m66501k0(ZipArchiveEntry zipArchiveEntry) throws IOException {
        return m66498i0(zipArchiveEntry).encode(zipArchiveEntry.getName());
    }

    /* renamed from: l0 */
    public final Zip64ExtendedInformationExtraField m66502l0(ZipArchiveEntry zipArchiveEntry) {
        C18865b c18865b = this.entry;
        if (c18865b != null) {
            c18865b.f105927e = !this.hasUsedZip64;
        }
        this.hasUsedZip64 = true;
        ZipExtraField extraField = zipArchiveEntry.getExtraField(Zip64ExtendedInformationExtraField.f105872j);
        Zip64ExtendedInformationExtraField zip64ExtendedInformationExtraField = extraField instanceof Zip64ExtendedInformationExtraField ? (Zip64ExtendedInformationExtraField) extraField : null;
        if (zip64ExtendedInformationExtraField == null) {
            zip64ExtendedInformationExtraField = new Zip64ExtendedInformationExtraField();
        }
        zipArchiveEntry.addAsFirstExtraField(zip64ExtendedInformationExtraField);
        return zip64ExtendedInformationExtraField;
    }

    /* renamed from: m0 */
    public final boolean m66503m0(long j, long j2, Zip64Mode zip64Mode) throws ZipException {
        if (this.entry.f105923a.getMethod() == 8) {
            this.entry.f105923a.setSize(this.entry.f105926d);
            this.entry.f105923a.setCompressedSize(j);
            this.entry.f105923a.setCrc(j2);
        } else if (this.channel != null) {
            this.entry.f105923a.setSize(j);
            this.entry.f105923a.setCompressedSize(j);
            this.entry.f105923a.setCrc(j2);
        } else {
            if (this.entry.f105923a.getCrc() != j2) {
                throw new ZipException("Bad CRC checksum for entry " + this.entry.f105923a.getName() + ": " + Long.toHexString(this.entry.f105923a.getCrc()) + " instead of " + Long.toHexString(j2));
            }
            if (this.entry.f105923a.getSize() != j) {
                throw new ZipException("Bad size for entry " + this.entry.f105923a.getName() + ": " + this.entry.f105923a.getSize() + " instead of " + j);
            }
        }
        return m66499j(zip64Mode);
    }

    /* renamed from: n0 */
    public final void m66504n0(ZipArchiveEntry zipArchiveEntry, long j, boolean z) {
        Zip64Mode zip64Mode;
        if (z) {
            Zip64ExtendedInformationExtraField m66502l0 = m66502l0(zipArchiveEntry);
            if (zipArchiveEntry.getCompressedSize() >= 4294967295L || zipArchiveEntry.getSize() >= 4294967295L || (zip64Mode = this.zip64Mode) == Zip64Mode.Always || zip64Mode == Zip64Mode.AlwaysWithCompatibility) {
                m66502l0.setCompressedSize(new ZipEightByteInteger(zipArchiveEntry.getCompressedSize()));
                m66502l0.setSize(new ZipEightByteInteger(zipArchiveEntry.getSize()));
            } else {
                m66502l0.setCompressedSize(null);
                m66502l0.setSize(null);
            }
            boolean z2 = j >= 4294967295L || this.zip64Mode == Zip64Mode.Always;
            boolean z3 = zipArchiveEntry.getDiskNumberStart() >= WebSocketProtocol.PAYLOAD_SHORT_MAX || this.zip64Mode == Zip64Mode.Always;
            if (z2 || z3) {
                m66502l0.setRelativeHeaderOffset(new ZipEightByteInteger(j));
            }
            if (z3) {
                m66502l0.setDiskStartNumber(new ZipLong(zipArchiveEntry.getDiskNumberStart()));
            }
            zipArchiveEntry.setExtra();
        }
    }

    /* renamed from: o0 */
    public final boolean m66505o0(ZipArchiveEntry zipArchiveEntry) {
        return zipArchiveEntry.getExtraField(Zip64ExtendedInformationExtraField.f105872j) instanceof Zip64ExtendedInformationExtraField;
    }

    /* renamed from: p0 */
    public final boolean m66506p0(ZipArchiveEntry zipArchiveEntry) {
        return zipArchiveEntry.getSize() >= 4294967295L || zipArchiveEntry.getCompressedSize() >= 4294967295L;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        m66509s0(archiveEntry, false);
    }

    /* renamed from: q0 */
    public final boolean m66507q0(ZipArchiveEntry zipArchiveEntry, Zip64Mode zip64Mode) {
        return zip64Mode == Zip64Mode.Always || zip64Mode == Zip64Mode.AlwaysWithCompatibility || m66506p0(zipArchiveEntry);
    }

    /* renamed from: r0 */
    public final void m66508r0() throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        C18865b c18865b = this.entry;
        if (c18865b == null) {
            throw new IOException("No current entry to close");
        }
        if (c18865b.f105928f) {
            return;
        }
        write(ByteUtils.EMPTY_BYTE_ARRAY, 0, 0);
    }

    /* renamed from: s0 */
    public final void m66509s0(ArchiveEntry archiveEntry, boolean z) throws IOException {
        ZipEightByteInteger zipEightByteInteger;
        ZipEightByteInteger zipEightByteInteger2;
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        if (this.entry != null) {
            closeArchiveEntry();
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) archiveEntry;
        C18865b c18865b = new C18865b(zipArchiveEntry);
        this.entry = c18865b;
        this.entries.add(c18865b.f105923a);
        m66511u0(this.entry.f105923a);
        Zip64Mode m66497h0 = m66497h0(this.entry.f105923a);
        m66517z0(m66497h0);
        if (m66512v0(this.entry.f105923a, m66497h0)) {
            Zip64ExtendedInformationExtraField m66502l0 = m66502l0(this.entry.f105923a);
            if (z) {
                zipEightByteInteger = new ZipEightByteInteger(this.entry.f105923a.getSize());
                zipEightByteInteger2 = new ZipEightByteInteger(this.entry.f105923a.getCompressedSize());
            } else {
                zipEightByteInteger = (this.entry.f105923a.getMethod() != 0 || this.entry.f105923a.getSize() == -1) ? ZipEightByteInteger.ZERO : new ZipEightByteInteger(this.entry.f105923a.getSize());
                zipEightByteInteger2 = zipEightByteInteger;
            }
            m66502l0.setSize(zipEightByteInteger);
            m66502l0.setCompressedSize(zipEightByteInteger2);
            this.entry.f105923a.setExtra();
        }
        if (this.entry.f105923a.getMethod() == 8 && this.hasCompressionLevelChanged) {
            this.def.setLevel(this.level);
            this.hasCompressionLevelChanged = false;
        }
        m66489E0(zipArchiveEntry, z);
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public void setCreateUnicodeExtraFields(UnicodeExtraFieldPolicy unicodeExtraFieldPolicy) {
        this.createUnicodeExtraFields = unicodeExtraFieldPolicy;
    }

    public void setEncoding(String str) {
        this.encoding = str;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
        if (!this.useUTF8Flag || ZipEncodingHelper.m66533c(str)) {
            return;
        }
        this.useUTF8Flag = false;
    }

    public void setFallbackToUTF8(boolean z) {
        this.fallbackToUTF8 = z;
    }

    public void setLevel(int i) {
        if (i < -1 || i > 9) {
            throw new IllegalArgumentException("Invalid compression level: " + i);
        }
        if (this.level == i) {
            return;
        }
        this.hasCompressionLevelChanged = true;
        this.level = i;
    }

    public void setMethod(int i) {
        this.method = i;
    }

    public void setUseLanguageEncodingFlag(boolean z) {
        this.useUTF8Flag = z && ZipEncodingHelper.m66533c(this.encoding);
    }

    public void setUseZip64(Zip64Mode zip64Mode) {
        this.zip64Mode = zip64Mode;
    }

    /* renamed from: t0 */
    public final void m66510t0(boolean z) throws IOException {
        long position = this.channel.position();
        this.channel.position(this.entry.f105924b);
        writeOut(ZipLong.getBytes(this.entry.f105923a.getCrc()));
        if (m66505o0(this.entry.f105923a) && z) {
            ZipLong zipLong = ZipLong.ZIP64_MAGIC;
            writeOut(zipLong.getBytes());
            writeOut(zipLong.getBytes());
        } else {
            writeOut(ZipLong.getBytes(this.entry.f105923a.getCompressedSize()));
            writeOut(ZipLong.getBytes(this.entry.f105923a.getSize()));
        }
        if (m66505o0(this.entry.f105923a)) {
            ByteBuffer m66501k0 = m66501k0(this.entry.f105923a);
            this.channel.position(this.entry.f105924b + 12 + 4 + (m66501k0.limit() - m66501k0.position()) + 4);
            writeOut(ZipEightByteInteger.getBytes(this.entry.f105923a.getSize()));
            writeOut(ZipEightByteInteger.getBytes(this.entry.f105923a.getCompressedSize()));
            if (!z) {
                this.channel.position(this.entry.f105924b - 10);
                writeOut(ZipShort.getBytes(m66485A0(this.entry.f105923a.getMethod(), false, false)));
                this.entry.f105923a.removeExtraField(Zip64ExtendedInformationExtraField.f105872j);
                this.entry.f105923a.setExtra();
                if (this.entry.f105927e) {
                    this.hasUsedZip64 = false;
                }
            }
        }
        this.channel.position(position);
    }

    /* renamed from: u0 */
    public final void m66511u0(ZipArchiveEntry zipArchiveEntry) {
        if (zipArchiveEntry.getMethod() == -1) {
            zipArchiveEntry.setMethod(this.method);
        }
        if (zipArchiveEntry.getTime() == -1) {
            zipArchiveEntry.setTime(System.currentTimeMillis());
        }
    }

    /* renamed from: v0 */
    public final boolean m66512v0(ZipArchiveEntry zipArchiveEntry, Zip64Mode zip64Mode) {
        return zip64Mode == Zip64Mode.Always || zip64Mode == Zip64Mode.AlwaysWithCompatibility || zipArchiveEntry.getSize() >= 4294967295L || zipArchiveEntry.getCompressedSize() >= 4294967295L || !(zipArchiveEntry.getSize() != -1 || this.channel == null || zip64Mode == Zip64Mode.Never);
    }

    /* renamed from: w */
    public final void m66513w(boolean z) throws IOException {
        m66508r0();
        C18865b c18865b = this.entry;
        c18865b.f105926d = c18865b.f105923a.getSize();
        m66490H(m66499j(m66497h0(this.entry.f105923a)), z);
    }

    /* renamed from: w0 */
    public final boolean m66514w0() {
        int m66580w = this.isSplitZip ? ((C18874a) this.outputStream).m66580w() : 0;
        return m66580w >= 65535 || this.cdDiskNumberStart >= WebSocketProtocol.PAYLOAD_SHORT_MAX || (this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)) == null ? 0 : this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)).intValue()) >= 65535 || this.entries.size() >= 65535 || this.cdLength >= 4294967295L || this.cdOffset >= 4294967295L;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        C18865b c18865b = this.entry;
        if (c18865b == null) {
            throw new IllegalStateException("No current entry");
        }
        ZipUtil.m66566c(c18865b.f105923a);
        count(this.streamCompressor.m66420f0(bArr, i, i2, this.entry.f105923a.getMethod()));
    }

    public void writeCentralDirectoryEnd() throws IOException {
        if (!this.hasUsedZip64 && this.isSplitZip) {
            ((C18874a) this.outputStream).m66576I(this.eocdLength);
        }
        m66516y0();
        m66488D0(EOCD_SIG);
        int i = 0;
        int m66580w = this.isSplitZip ? ((C18874a) this.outputStream).m66580w() : 0;
        m66488D0(ZipShort.getBytes(m66580w));
        m66488D0(ZipShort.getBytes((int) this.cdDiskNumberStart));
        int size = this.entries.size();
        if (!this.isSplitZip) {
            i = size;
        } else if (this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)) != null) {
            i = this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)).intValue();
        }
        m66488D0(ZipShort.getBytes(Math.min(i, 65535)));
        m66488D0(ZipShort.getBytes(Math.min(size, 65535)));
        m66488D0(ZipLong.getBytes(Math.min(this.cdLength, 4294967295L)));
        m66488D0(ZipLong.getBytes(Math.min(this.cdOffset, 4294967295L)));
        ByteBuffer encode = this.zipEncoding.encode(this.comment);
        int limit = encode.limit() - encode.position();
        m66488D0(ZipShort.getBytes(limit));
        this.streamCompressor.writeCounted(encode.array(), encode.arrayOffset(), limit);
    }

    public void writeCentralFileHeader(ZipArchiveEntry zipArchiveEntry) throws IOException {
        m66488D0(m66492M(zipArchiveEntry));
    }

    public void writeDataDescriptor(ZipArchiveEntry zipArchiveEntry) throws IOException {
        if (m66515x0(zipArchiveEntry.getMethod(), false)) {
            m66488D0(DD_SIG);
            m66488D0(ZipLong.getBytes(zipArchiveEntry.getCrc()));
            if (m66505o0(zipArchiveEntry)) {
                m66488D0(ZipEightByteInteger.getBytes(zipArchiveEntry.getCompressedSize()));
                m66488D0(ZipEightByteInteger.getBytes(zipArchiveEntry.getSize()));
            } else {
                m66488D0(ZipLong.getBytes(zipArchiveEntry.getCompressedSize()));
                m66488D0(ZipLong.getBytes(zipArchiveEntry.getSize()));
            }
        }
    }

    public void writeLocalFileHeader(ZipArchiveEntry zipArchiveEntry) throws IOException {
        m66489E0(zipArchiveEntry, false);
    }

    public final void writeOut(byte[] bArr) throws IOException {
        this.streamCompressor.writeOut(bArr, 0, bArr.length);
    }

    public void writePreamble(byte[] bArr) throws IOException {
        writePreamble(bArr, 0, bArr.length);
    }

    public void writeZip64CentralDirectory() throws IOException {
        long j;
        if (this.zip64Mode == Zip64Mode.Never) {
            return;
        }
        if (!this.hasUsedZip64 && m66514w0()) {
            this.hasUsedZip64 = true;
        }
        if (this.hasUsedZip64) {
            long totalBytesWritten = this.streamCompressor.getTotalBytesWritten();
            if (this.isSplitZip) {
                C18874a c18874a = (C18874a) this.outputStream;
                totalBytesWritten = c18874a.m66579j();
                j = c18874a.m66580w();
            } else {
                j = 0;
            }
            writeOut(ZIP64_EOCD_SIG);
            writeOut(ZipEightByteInteger.getBytes(44L));
            writeOut(ZipShort.getBytes(45));
            writeOut(ZipShort.getBytes(45));
            int i = 0;
            int m66580w = this.isSplitZip ? ((C18874a) this.outputStream).m66580w() : 0;
            writeOut(ZipLong.getBytes(m66580w));
            writeOut(ZipLong.getBytes(this.cdDiskNumberStart));
            if (!this.isSplitZip) {
                i = this.entries.size();
            } else if (this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)) != null) {
                i = this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)).intValue();
            }
            writeOut(ZipEightByteInteger.getBytes(i));
            writeOut(ZipEightByteInteger.getBytes(this.entries.size()));
            writeOut(ZipEightByteInteger.getBytes(this.cdLength));
            writeOut(ZipEightByteInteger.getBytes(this.cdOffset));
            if (this.isSplitZip) {
                ((C18874a) this.outputStream).m66576I(this.eocdLength + 20);
            }
            writeOut(ZIP64_EOCD_LOC_SIG);
            writeOut(ZipLong.getBytes(j));
            writeOut(ZipEightByteInteger.getBytes(totalBytesWritten));
            if (this.isSplitZip) {
                writeOut(ZipLong.getBytes(((C18874a) this.outputStream).m66580w() + 1));
            } else {
                writeOut(ONE);
            }
        }
    }

    /* renamed from: x0 */
    public final boolean m66515x0(int i, boolean z) {
        return !z && i == 8 && this.channel == null;
    }

    /* renamed from: y0 */
    public final void m66516y0() throws Zip64RequiredException {
        if (this.zip64Mode != Zip64Mode.Never) {
            return;
        }
        int m66580w = this.isSplitZip ? ((C18874a) this.outputStream).m66580w() : 0;
        if (m66580w >= 65535) {
            throw new Zip64RequiredException("Number of the disk of End Of Central Directory exceeds the limit of 65535.");
        }
        if (this.cdDiskNumberStart >= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            throw new Zip64RequiredException("Number of the disk with the start of Central Directory exceeds the limit of 65535.");
        }
        if ((this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)) != null ? this.numberOfCDInDiskData.get(Integer.valueOf(m66580w)).intValue() : 0) >= 65535) {
            throw new Zip64RequiredException("Number of entries on this disk exceeds the limit of 65535.");
        }
        if (this.entries.size() >= 65535) {
            throw new Zip64RequiredException("Archive contains more than 65535 entries.");
        }
        if (this.cdLength >= 4294967295L) {
            throw new Zip64RequiredException("The size of the entire central directory exceeds the limit of 4GByte.");
        }
        if (this.cdOffset >= 4294967295L) {
            throw new Zip64RequiredException("Archive's size exceeds the limit of 4GByte.");
        }
    }

    /* renamed from: z0 */
    public final void m66517z0(Zip64Mode zip64Mode) throws ZipException {
        if (this.entry.f105923a.getMethod() == 0 && this.channel == null) {
            if (this.entry.f105923a.getSize() == -1) {
                throw new ZipException("Uncompressed size is required for STORED method when not writing to a file");
            }
            if (this.entry.f105923a.getCrc() == -1) {
                throw new ZipException("CRC checksum is required for STORED method when not writing to a file");
            }
            this.entry.f105923a.setCompressedSize(this.entry.f105923a.getSize());
        }
        if ((this.entry.f105923a.getSize() >= 4294967295L || this.entry.f105923a.getCompressedSize() >= 4294967295L) && zip64Mode == Zip64Mode.Never) {
            throw new Zip64RequiredException(Zip64RequiredException.getEntryTooBigMessage(this.entry.f105923a));
        }
    }

    public final void writeOut(byte[] bArr, int i, int i2) throws IOException {
        this.streamCompressor.writeOut(bArr, i, i2);
    }

    public void writePreamble(byte[] bArr, int i, int i2) throws IOException {
        if (this.entry == null) {
            this.streamCompressor.writeCounted(bArr, i, i2);
            return;
        }
        throw new IllegalStateException("Preamble must be written before creating an entry");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        if (!this.finished) {
            return new ZipArchiveEntry(path, str, new LinkOption[0]);
        }
        throw new IOException("Stream has already been finished");
    }

    public ZipArchiveOutputStream(File file) throws IOException {
        this(file.toPath(), new OpenOption[0]);
    }

    public ZipArchiveOutputStream(Path path, OpenOption... openOptionArr) throws IOException {
        SeekableByteChannel seekableByteChannel;
        StreamCompressor m66416w;
        this.comment = "";
        this.level = -1;
        this.method = 8;
        this.entries = new LinkedList();
        this.metaData = new HashMap();
        this.encoding = "UTF8";
        this.zipEncoding = ZipEncodingHelper.getZipEncoding("UTF8");
        this.useUTF8Flag = true;
        this.createUnicodeExtraFields = UnicodeExtraFieldPolicy.NEVER;
        this.zip64Mode = Zip64Mode.AsNeeded;
        this.copyBuffer = new byte[32768];
        this.calendarInstance = Calendar.getInstance();
        this.numberOfCDInDiskData = new HashMap();
        Deflater deflater = new Deflater(this.level, true);
        this.def = deflater;
        OutputStream outputStream = null;
        try {
            seekableByteChannel = Files.newByteChannel(path, EnumSet.of(StandardOpenOption.CREATE, StandardOpenOption.WRITE, StandardOpenOption.READ, StandardOpenOption.TRUNCATE_EXISTING), new FileAttribute[0]);
        } catch (IOException unused) {
            seekableByteChannel = null;
        }
        try {
            m66416w = StreamCompressor.m66413H(seekableByteChannel, deflater);
        } catch (IOException unused2) {
            IOUtils.closeQuietly(seekableByteChannel);
            OutputStream newOutputStream = Files.newOutputStream(path, openOptionArr);
            seekableByteChannel = null;
            outputStream = newOutputStream;
            m66416w = StreamCompressor.m66416w(newOutputStream, this.def);
            this.outputStream = outputStream;
            this.channel = seekableByteChannel;
            this.streamCompressor = m66416w;
            this.isSplitZip = false;
        }
        this.outputStream = outputStream;
        this.channel = seekableByteChannel;
        this.streamCompressor = m66416w;
        this.isSplitZip = false;
    }

    public ZipArchiveOutputStream(File file, long j) throws IOException {
        this(file.toPath(), j);
    }

    public ZipArchiveOutputStream(Path path, long j) throws IOException {
        this.comment = "";
        this.level = -1;
        this.method = 8;
        this.entries = new LinkedList();
        this.metaData = new HashMap();
        this.encoding = "UTF8";
        this.zipEncoding = ZipEncodingHelper.getZipEncoding("UTF8");
        this.useUTF8Flag = true;
        this.createUnicodeExtraFields = UnicodeExtraFieldPolicy.NEVER;
        this.zip64Mode = Zip64Mode.AsNeeded;
        this.copyBuffer = new byte[32768];
        this.calendarInstance = Calendar.getInstance();
        this.numberOfCDInDiskData = new HashMap();
        Deflater deflater = new Deflater(this.level, true);
        this.def = deflater;
        C18874a c18874a = new C18874a(path, j);
        this.outputStream = c18874a;
        this.streamCompressor = StreamCompressor.m66416w(c18874a, deflater);
        this.channel = null;
        this.isSplitZip = true;
    }

    public ZipArchiveOutputStream(SeekableByteChannel seekableByteChannel) {
        this.comment = "";
        this.level = -1;
        this.method = 8;
        this.entries = new LinkedList();
        this.metaData = new HashMap();
        this.encoding = "UTF8";
        this.zipEncoding = ZipEncodingHelper.getZipEncoding("UTF8");
        this.useUTF8Flag = true;
        this.createUnicodeExtraFields = UnicodeExtraFieldPolicy.NEVER;
        this.zip64Mode = Zip64Mode.AsNeeded;
        this.copyBuffer = new byte[32768];
        this.calendarInstance = Calendar.getInstance();
        this.numberOfCDInDiskData = new HashMap();
        this.channel = seekableByteChannel;
        Deflater deflater = new Deflater(this.level, true);
        this.def = deflater;
        this.streamCompressor = StreamCompressor.m66413H(seekableByteChannel, deflater);
        this.outputStream = null;
        this.isSplitZip = false;
    }
}
