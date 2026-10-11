package org.apache.commons.compress.archivers.zip;

import com.alibaba.fastjson2.JSONB;
import com.sunia.HTREnginev2.c2g;
import com.sunia.HTREnginev2.eun;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.archivers.zip.UnsupportedZipFeatureException;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class ZipArchiveInputStream extends ArchiveInputStream implements InputStreamStatistics {

    /* renamed from: J */
    public static final int f105882J = 30;

    /* renamed from: O */
    public static final int f105883O = 46;

    /* renamed from: Q */
    public static final long f105884Q = 4294967296L;

    /* renamed from: Z */
    public static final String f105885Z = " while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See http://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile";

    /* renamed from: k0 */
    public static final byte[] f105886k0 = ZipLong.LFH_SIG.getBytes();

    /* renamed from: q0 */
    public static final byte[] f105887q0 = ZipLong.CFH_SIG.getBytes();

    /* renamed from: t0 */
    public static final byte[] f105888t0 = ZipLong.DD_SIG.getBytes();

    /* renamed from: u0 */
    public static final byte[] f105889u0 = {65, FramedLZ4CompressorInputStream.f106197v, TarConstants.LF_GNUTYPE_LONGLINK, 32, TarConstants.LF_GNUTYPE_SPARSE, JSONB.Constants.BC_STR_ASCII_FIX_32, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 32, 66, 108, 111, 99, 107, 32, TarConstants.LF_BLK, TarConstants.LF_SYMLINK};

    /* renamed from: v0 */
    public static final BigInteger f105890v0 = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: h */
    public final ZipEncoding f105891h;

    /* renamed from: i */
    public final String f105892i;

    /* renamed from: j */
    public final boolean f105893j;

    /* renamed from: k */
    public final InputStream f105894k;

    /* renamed from: l */
    public final Inflater f105895l;

    /* renamed from: m */
    public final ByteBuffer f105896m;

    /* renamed from: n */
    public C18863c f105897n;

    /* renamed from: o */
    public boolean f105898o;

    /* renamed from: p */
    public boolean f105899p;

    /* renamed from: q */
    public ByteArrayInputStream f105900q;

    /* renamed from: r */
    public final boolean f105901r;

    /* renamed from: s */
    public long f105902s;

    /* renamed from: t */
    public final boolean f105903t;

    /* renamed from: u */
    public final byte[] f105904u;

    /* renamed from: v */
    public final byte[] f105905v;

    /* renamed from: w */
    public final byte[] f105906w;

    /* renamed from: x */
    public final byte[] f105907x;

    /* renamed from: y */
    public final byte[] f105908y;

    /* renamed from: z */
    public int f105909z;

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipArchiveInputStream$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C18861a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f105910a;

        static {
            int[] iArr = new int[ZipMethod.values().length];
            f105910a = iArr;
            try {
                iArr[ZipMethod.UNSHRINKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f105910a[ZipMethod.IMPLODING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f105910a[ZipMethod.BZIP2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f105910a[ZipMethod.ENHANCED_DEFLATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ZipArchiveInputStream(InputStream inputStream) {
        this(inputStream, "UTF8");
    }

    /* renamed from: M */
    public static boolean m66441M(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean matches(byte[] bArr, int i) {
        byte[] bArr2 = ZipArchiveOutputStream.LFH_SIG;
        if (i < bArr2.length) {
            return false;
        }
        return m66441M(bArr, bArr2) || m66441M(bArr, ZipArchiveOutputStream.EOCD_SIG) || m66441M(bArr, ZipArchiveOutputStream.DD_SIG) || m66441M(bArr, ZipLong.SINGLE_SEGMENT_SPLIT_MARKER.getBytes());
    }

    /* renamed from: A0 */
    public final boolean m66445A0(ZipArchiveEntry zipArchiveEntry) {
        return !zipArchiveEntry.getGeneralPurposeBit().usesDataDescriptor() || (this.f105901r && zipArchiveEntry.getMethod() == 0) || zipArchiveEntry.getMethod() == 8 || zipArchiveEntry.getMethod() == ZipMethod.ENHANCED_DEFLATED.getCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a2 A[SYNTHETIC] */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m66446H(java.io.ByteArrayOutputStream r12, int r13, int r14, int r15) throws java.io.IOException {
        /*
            r11 = this;
            r0 = 0
            r1 = r0
            r2 = r1
        L3:
            if (r1 != 0) goto La6
            int r3 = r13 + r14
            int r4 = r3 + (-4)
            if (r2 >= r4) goto La6
            java.nio.ByteBuffer r4 = r11.f105896m
            byte[] r4 = r4.array()
            r4 = r4[r2]
            byte[] r5 = org.apache.commons.compress.archivers.zip.ZipArchiveInputStream.f105886k0
            r6 = r5[r0]
            if (r4 != r6) goto La2
            java.nio.ByteBuffer r4 = r11.f105896m
            byte[] r4 = r4.array()
            int r6 = r2 + 1
            r4 = r4[r6]
            r6 = 1
            r7 = r5[r6]
            if (r4 != r7) goto La2
            r4 = 2
            r7 = 3
            if (r2 < r15) goto L48
            java.nio.ByteBuffer r8 = r11.f105896m
            byte[] r8 = r8.array()
            int r9 = r2 + 2
            r8 = r8[r9]
            r9 = r5[r4]
            if (r8 != r9) goto L48
            java.nio.ByteBuffer r8 = r11.f105896m
            byte[] r8 = r8.array()
            int r9 = r2 + 3
            r8 = r8[r9]
            r5 = r5[r7]
            if (r8 == r5) goto L66
        L48:
            java.nio.ByteBuffer r5 = r11.f105896m
            byte[] r5 = r5.array()
            int r8 = r2 + 2
            r5 = r5[r8]
            byte[] r9 = org.apache.commons.compress.archivers.zip.ZipArchiveInputStream.f105887q0
            r10 = r9[r4]
            if (r5 != r10) goto L6b
            java.nio.ByteBuffer r5 = r11.f105896m
            byte[] r5 = r5.array()
            int r10 = r2 + 3
            r5 = r5[r10]
            r9 = r9[r7]
            if (r5 != r9) goto L6b
        L66:
            int r1 = r2 - r15
            r4 = r1
        L69:
            r1 = r6
            goto L8a
        L6b:
            java.nio.ByteBuffer r5 = r11.f105896m
            byte[] r5 = r5.array()
            r5 = r5[r8]
            byte[] r8 = org.apache.commons.compress.archivers.zip.ZipArchiveInputStream.f105888t0
            r4 = r8[r4]
            if (r5 != r4) goto L89
            java.nio.ByteBuffer r4 = r11.f105896m
            byte[] r4 = r4.array()
            int r5 = r2 + 3
            r4 = r4[r5]
            r5 = r8[r7]
            if (r4 != r5) goto L89
            r4 = r2
            goto L69
        L89:
            r4 = r2
        L8a:
            if (r1 == 0) goto La2
            java.nio.ByteBuffer r5 = r11.f105896m
            byte[] r5 = r5.array()
            int r3 = r3 - r4
            r11.m66457n0(r5, r4, r3)
            java.nio.ByteBuffer r3 = r11.f105896m
            byte[] r3 = r3.array()
            r12.write(r3, r0, r4)
            r11.m66458o0()
        La2:
            int r2 = r2 + 1
            goto L3
        La6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.zip.ZipArchiveInputStream.m66446H(java.io.ByteArrayOutputStream, int, int, int):boolean");
    }

    /* renamed from: I */
    public final int m66447I(ByteArrayOutputStream byteArrayOutputStream, int i, int i2, int i3) {
        int i4 = i + i2;
        int i5 = (i4 - i3) - 3;
        if (i5 <= 0) {
            return i4;
        }
        byteArrayOutputStream.write(this.f105896m.array(), 0, i5);
        int i6 = i3 + 3;
        System.arraycopy(this.f105896m.array(), i5, this.f105896m.array(), 0, i6);
        return i6;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        if (!(archiveEntry instanceof ZipArchiveEntry)) {
            return false;
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) archiveEntry;
        return ZipUtil.m66565b(zipArchiveEntry) && m66445A0(zipArchiveEntry) && m66469z0(zipArchiveEntry);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f105898o) {
            return;
        }
        this.f105898o = true;
        try {
            this.f105894k.close();
        } finally {
            this.f105895l.end();
        }
    }

    /* renamed from: e0 */
    public final void m66448e0() throws IOException {
        if (this.f105898o) {
            throw new IOException("The stream is closed");
        }
        if (this.f105897n == null) {
            return;
        }
        if (m66449f0()) {
            m66450g0();
        } else {
            skip(Long.MAX_VALUE);
            int m66453j0 = (int) (this.f105897n.f105919e - (this.f105897n.f105915a.getMethod() == 8 ? m66453j0() : this.f105897n.f105918d));
            if (m66453j0 > 0) {
                m66457n0(this.f105896m.array(), this.f105896m.limit() - m66453j0, m66453j0);
                this.f105897n.f105919e -= m66453j0;
            }
            if (m66449f0()) {
                m66450g0();
            }
        }
        if (this.f105900q == null && this.f105897n.f105916b) {
            m66458o0();
        }
        this.f105895l.reset();
        this.f105896m.clear().flip();
        this.f105897n = null;
        this.f105900q = null;
    }

    /* renamed from: f0 */
    public final boolean m66449f0() {
        return this.f105897n.f105919e <= this.f105897n.f105915a.getCompressedSize() && !this.f105897n.f105916b;
    }

    /* renamed from: g0 */
    public final void m66450g0() throws IOException {
        long compressedSize = this.f105897n.f105915a.getCompressedSize() - this.f105897n.f105919e;
        while (compressedSize > 0) {
            long read = this.f105894k.read(this.f105896m.array(), 0, (int) Math.min(this.f105896m.capacity(), compressedSize));
            if (read < 0) {
                throw new EOFException("Truncated ZIP entry: " + ArchiveUtils.sanitize(this.f105897n.f105915a.getName()));
            }
            count(read);
            compressedSize -= read;
        }
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        int method = this.f105897n.f105915a.getMethod();
        if (method == 0) {
            return this.f105897n.f105918d;
        }
        if (method == 8) {
            return m66453j0();
        }
        if (method == ZipMethod.UNSHRINKING.getCode() || method == ZipMethod.IMPLODING.getCode() || method == ZipMethod.ENHANCED_DEFLATED.getCode() || method == ZipMethod.BZIP2.getCode()) {
            return ((InputStreamStatistics) this.f105897n.m66484o()).getCompressedCount();
        }
        return -1L;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextZipEntry();
    }

    public ZipArchiveEntry getNextZipEntry() throws IOException {
        boolean z;
        ZipLong zipLong;
        ZipLong zipLong2;
        this.f105902s = 0L;
        C18861a c18861a = null;
        if (!this.f105898o && !this.f105899p) {
            if (this.f105897n != null) {
                m66448e0();
                z = false;
            } else {
                z = true;
            }
            long bytesRead = getBytesRead();
            try {
                if (z) {
                    m66460q0();
                } else {
                    readFully(this.f105904u);
                }
                ZipLong zipLong3 = new ZipLong(this.f105904u);
                if (!zipLong3.equals(ZipLong.LFH_SIG)) {
                    if (!zipLong3.equals(ZipLong.CFH_SIG) && !zipLong3.equals(ZipLong.AED_SIG) && !m66454k0(this.f105904u)) {
                        throw new ZipException(String.format("Unexpected record signature: 0x%x", Long.valueOf(zipLong3.getValue())));
                    }
                    this.f105899p = true;
                    m66468y0();
                    return null;
                }
                this.f105897n = new C18863c(c18861a);
                this.f105897n.f105915a.setPlatform((ZipShort.getValue(this.f105904u, 4) >> 8) & 15);
                GeneralPurposeBit parse = GeneralPurposeBit.parse(this.f105904u, 6);
                boolean usesUTF8ForNames = parse.usesUTF8ForNames();
                ZipEncoding zipEncoding = usesUTF8ForNames ? ZipEncodingHelper.f105932b : this.f105891h;
                this.f105897n.f105916b = parse.usesDataDescriptor();
                this.f105897n.f105915a.setGeneralPurposeBit(parse);
                this.f105897n.f105915a.setMethod(ZipShort.getValue(this.f105904u, 8));
                this.f105897n.f105915a.setTime(ZipUtil.dosToJavaTime(ZipLong.getValue(this.f105904u, 10)));
                if (this.f105897n.f105916b) {
                    zipLong = null;
                    zipLong2 = null;
                } else {
                    this.f105897n.f105915a.setCrc(ZipLong.getValue(this.f105904u, 14));
                    zipLong = new ZipLong(this.f105904u, 18);
                    zipLong2 = new ZipLong(this.f105904u, 22);
                }
                int value = ZipShort.getValue(this.f105904u, 26);
                int value2 = ZipShort.getValue(this.f105904u, 28);
                byte[] m66464u0 = m66464u0(value);
                this.f105897n.f105915a.setName(zipEncoding.decode(m66464u0), m66464u0);
                if (usesUTF8ForNames) {
                    this.f105897n.f105915a.setNameSource(ZipArchiveEntry.NameSource.NAME_WITH_EFS_FLAG);
                }
                try {
                    this.f105897n.f105915a.setExtra(m66464u0(value2));
                    if (!usesUTF8ForNames && this.f105893j) {
                        ZipUtil.m66571h(this.f105897n.f105915a, m66464u0, null);
                    }
                    m66456m0(zipLong2, zipLong);
                    this.f105897n.f105915a.setLocalHeaderOffset(bytesRead);
                    this.f105897n.f105915a.setDataOffset(getBytesRead());
                    this.f105897n.f105915a.setStreamContiguous(true);
                    ZipMethod methodByCode = ZipMethod.getMethodByCode(this.f105897n.f105915a.getMethod());
                    if (this.f105897n.f105915a.getCompressedSize() != -1) {
                        if (ZipUtil.m66565b(this.f105897n.f105915a) && methodByCode != ZipMethod.STORED && methodByCode != ZipMethod.DEFLATED) {
                            C18862b c18862b = new C18862b(this.f105894k, this.f105897n.f105915a.getCompressedSize());
                            int i = C18861a.f105910a[methodByCode.ordinal()];
                            if (i == 1) {
                                this.f105897n.f105921g = new eun(c18862b);
                            } else if (i == 2) {
                                try {
                                    C18863c c18863c = this.f105897n;
                                    c18863c.f105921g = new c2g(c18863c.f105915a.getGeneralPurposeBit().m66397b(), this.f105897n.f105915a.getGeneralPurposeBit().m66396a(), c18862b);
                                } catch (IllegalArgumentException e) {
                                    throw new IOException("bad IMPLODE data", e);
                                }
                            } else if (i == 3) {
                                this.f105897n.f105921g = new BZip2CompressorInputStream(c18862b);
                            } else if (i == 4) {
                                this.f105897n.f105921g = new Deflate64CompressorInputStream(c18862b);
                            }
                        }
                    } else if (methodByCode == ZipMethod.ENHANCED_DEFLATED) {
                        this.f105897n.f105921g = new Deflate64CompressorInputStream(this.f105894k);
                    }
                    this.f105909z++;
                    return this.f105897n.f105915a;
                } catch (RuntimeException e2) {
                    ZipException zipException = new ZipException("Invalid extra data in entry " + this.f105897n.f105915a.getName());
                    zipException.initCause(e2);
                    throw zipException;
                }
            } catch (EOFException unused) {
            }
        }
        return null;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getUncompressedCount() {
        return this.f105902s;
    }

    /* renamed from: h0 */
    public final int m66451h0() throws IOException {
        if (this.f105898o) {
            throw new IOException("The stream is closed");
        }
        int read = this.f105894k.read(this.f105896m.array());
        if (read > 0) {
            this.f105896m.limit(read);
            count(this.f105896m.limit());
            this.f105895l.setInput(this.f105896m.array(), 0, this.f105896m.limit());
        }
        return read;
    }

    /* renamed from: i0 */
    public final boolean m66452i0() throws IOException {
        int i = -1;
        loop0: while (true) {
            boolean z = false;
            while (true) {
                if (!z) {
                    i = m66463t0();
                    if (i <= -1) {
                        break loop0;
                    }
                }
                if (!m66455l0(i)) {
                    break;
                }
                i = m66463t0();
                byte[] bArr = ZipArchiveOutputStream.EOCD_SIG;
                if (i == bArr[1]) {
                    i = m66463t0();
                    if (i == bArr[2]) {
                        i = m66463t0();
                        if (i == -1) {
                            break loop0;
                        }
                        if (i == bArr[3]) {
                            return true;
                        }
                        z = m66455l0(i);
                    } else {
                        if (i == -1) {
                            break loop0;
                        }
                        z = m66455l0(i);
                    }
                } else {
                    if (i == -1) {
                        break loop0;
                    }
                    z = m66455l0(i);
                }
            }
        }
        return false;
    }

    /* renamed from: j0 */
    public final long m66453j0() {
        long bytesRead = this.f105895l.getBytesRead();
        if (this.f105897n.f105919e >= 4294967296L) {
            while (true) {
                long j = bytesRead + 4294967296L;
                if (j > this.f105897n.f105919e) {
                    break;
                }
                bytesRead = j;
            }
        }
        return bytesRead;
    }

    /* renamed from: k0 */
    public final boolean m66454k0(byte[] bArr) throws IOException {
        BigInteger value = ZipEightByteInteger.getValue(bArr);
        long length = 8 - bArr.length;
        byte[] bArr2 = f105889u0;
        BigInteger add = value.add(BigInteger.valueOf(length - bArr2.length));
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[length2];
        try {
            if (add.signum() < 0) {
                int length3 = bArr.length + add.intValue();
                if (length3 < 8) {
                    return false;
                }
                int abs = Math.abs(add.intValue());
                System.arraycopy(bArr, length3, bArr3, 0, Math.min(abs, length2));
                if (abs < length2) {
                    m66462s0(bArr3, abs);
                }
            } else {
                while (true) {
                    BigInteger bigInteger = f105890v0;
                    if (add.compareTo(bigInteger) <= 0) {
                        break;
                    }
                    m66467x0(Long.MAX_VALUE);
                    add = add.add(bigInteger.negate());
                }
                m66467x0(add.longValue());
                readFully(bArr3);
            }
            return Arrays.equals(bArr3, f105889u0);
        } catch (EOFException unused) {
            return false;
        }
    }

    /* renamed from: l0 */
    public final boolean m66455l0(int i) {
        return i == ZipArchiveOutputStream.EOCD_SIG[0];
    }

    /* renamed from: m0 */
    public final void m66456m0(ZipLong zipLong, ZipLong zipLong2) throws ZipException {
        ZipExtraField extraField = this.f105897n.f105915a.getExtraField(Zip64ExtendedInformationExtraField.f105872j);
        if (extraField != null && !(extraField instanceof Zip64ExtendedInformationExtraField)) {
            throw new ZipException("archive contains unparseable zip64 extra field");
        }
        Zip64ExtendedInformationExtraField zip64ExtendedInformationExtraField = (Zip64ExtendedInformationExtraField) extraField;
        this.f105897n.f105917c = zip64ExtendedInformationExtraField != null;
        if (this.f105897n.f105916b) {
            return;
        }
        if (zip64ExtendedInformationExtraField != null) {
            ZipLong zipLong3 = ZipLong.ZIP64_MAGIC;
            if (zipLong3.equals(zipLong2) || zipLong3.equals(zipLong)) {
                if (zip64ExtendedInformationExtraField.getCompressedSize() == null || zip64ExtendedInformationExtraField.getSize() == null) {
                    throw new ZipException("archive contains corrupted zip64 extra field");
                }
                long longValue = zip64ExtendedInformationExtraField.getCompressedSize().getLongValue();
                if (longValue < 0) {
                    throw new ZipException("broken archive, entry with negative compressed size");
                }
                this.f105897n.f105915a.setCompressedSize(longValue);
                long longValue2 = zip64ExtendedInformationExtraField.getSize().getLongValue();
                if (longValue2 < 0) {
                    throw new ZipException("broken archive, entry with negative size");
                }
                this.f105897n.f105915a.setSize(longValue2);
                return;
            }
        }
        if (zipLong2 == null || zipLong == null) {
            return;
        }
        if (zipLong2.getValue() < 0) {
            throw new ZipException("broken archive, entry with negative compressed size");
        }
        this.f105897n.f105915a.setCompressedSize(zipLong2.getValue());
        if (zipLong.getValue() < 0) {
            throw new ZipException("broken archive, entry with negative size");
        }
        this.f105897n.f105915a.setSize(zipLong.getValue());
    }

    /* renamed from: n0 */
    public final void m66457n0(byte[] bArr, int i, int i2) throws IOException {
        ((PushbackInputStream) this.f105894k).unread(bArr, i, i2);
        pushedBackBytes(i2);
    }

    /* renamed from: o0 */
    public final void m66458o0() throws IOException {
        readFully(this.f105907x);
        ZipLong zipLong = new ZipLong(this.f105907x);
        if (ZipLong.DD_SIG.equals(zipLong)) {
            readFully(this.f105907x);
            zipLong = new ZipLong(this.f105907x);
        }
        this.f105897n.f105915a.setCrc(zipLong.getValue());
        readFully(this.f105908y);
        ZipLong zipLong2 = new ZipLong(this.f105908y, 8);
        if (!zipLong2.equals(ZipLong.CFH_SIG) && !zipLong2.equals(ZipLong.LFH_SIG)) {
            long longValue = ZipEightByteInteger.getLongValue(this.f105908y);
            if (longValue < 0) {
                throw new ZipException("broken archive, entry with negative compressed size");
            }
            this.f105897n.f105915a.setCompressedSize(longValue);
            long longValue2 = ZipEightByteInteger.getLongValue(this.f105908y, 8);
            if (longValue2 < 0) {
                throw new ZipException("broken archive, entry with negative size");
            }
            this.f105897n.f105915a.setSize(longValue2);
            return;
        }
        m66457n0(this.f105908y, 8, 8);
        long value = ZipLong.getValue(this.f105908y);
        if (value < 0) {
            throw new ZipException("broken archive, entry with negative compressed size");
        }
        this.f105897n.f105915a.setCompressedSize(value);
        long value2 = ZipLong.getValue(this.f105908y, 4);
        if (value2 < 0) {
            throw new ZipException("broken archive, entry with negative size");
        }
        this.f105897n.f105915a.setSize(value2);
    }

    /* renamed from: p0 */
    public final int m66459p0(byte[] bArr, int i, int i2) throws IOException {
        int m66461r0 = m66461r0(bArr, i, i2);
        if (m66461r0 <= 0) {
            if (this.f105895l.finished()) {
                return -1;
            }
            if (this.f105895l.needsDictionary()) {
                throw new ZipException("This archive needs a preset dictionary which is not supported by Commons Compress.");
            }
            if (m66461r0 == -1) {
                throw new IOException("Truncated ZIP file");
            }
        }
        return m66461r0;
    }

    /* renamed from: q0 */
    public final void m66460q0() throws IOException {
        readFully(this.f105904u);
        ZipLong zipLong = new ZipLong(this.f105904u);
        if (!this.f105903t && zipLong.equals(ZipLong.DD_SIG)) {
            throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.SPLITTING);
        }
        if (zipLong.equals(ZipLong.SINGLE_SEGMENT_SPLIT_MARKER) || zipLong.equals(ZipLong.DD_SIG)) {
            byte[] bArr = new byte[4];
            readFully(bArr);
            byte[] bArr2 = this.f105904u;
            System.arraycopy(bArr2, 4, bArr2, 0, 26);
            System.arraycopy(bArr, 0, this.f105904u, 26, 4);
        }
    }

    /* renamed from: r0 */
    public final int m66461r0(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (true) {
            if (this.f105895l.needsInput()) {
                int m66451h0 = m66451h0();
                if (m66451h0 > 0) {
                    this.f105897n.f105919e += this.f105896m.limit();
                } else if (m66451h0 == -1) {
                    return -1;
                }
            }
            try {
                i3 = this.f105895l.inflate(bArr, i, i2);
                if (i3 != 0 || !this.f105895l.needsInput()) {
                    break;
                }
            } catch (DataFormatException e) {
                throw ((IOException) new ZipException(e.getMessage()).initCause(e));
            }
        }
        return i3;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read;
        if (i2 == 0) {
            return 0;
        }
        if (this.f105898o) {
            throw new IOException("The stream is closed");
        }
        C18863c c18863c = this.f105897n;
        if (c18863c == null) {
            return -1;
        }
        if (i > bArr.length || i2 < 0 || i < 0 || bArr.length - i < i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        ZipUtil.m66566c(c18863c.f105915a);
        if (!m66445A0(this.f105897n.f105915a)) {
            throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.DATA_DESCRIPTOR, this.f105897n.f105915a);
        }
        if (!m66469z0(this.f105897n.f105915a)) {
            throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.UNKNOWN_COMPRESSED_SIZE, this.f105897n.f105915a);
        }
        if (this.f105897n.f105915a.getMethod() == 0) {
            read = m66465v0(bArr, i, i2);
        } else if (this.f105897n.f105915a.getMethod() == 8) {
            read = m66459p0(bArr, i, i2);
        } else {
            if (this.f105897n.f105915a.getMethod() != ZipMethod.UNSHRINKING.getCode() && this.f105897n.f105915a.getMethod() != ZipMethod.IMPLODING.getCode() && this.f105897n.f105915a.getMethod() != ZipMethod.ENHANCED_DEFLATED.getCode() && this.f105897n.f105915a.getMethod() != ZipMethod.BZIP2.getCode()) {
                throw new UnsupportedZipFeatureException(ZipMethod.getMethodByCode(this.f105897n.f105915a.getMethod()), this.f105897n.f105915a);
            }
            read = this.f105897n.f105921g.read(bArr, i, i2);
        }
        if (read >= 0) {
            this.f105897n.f105920f.update(bArr, i, read);
            this.f105902s += read;
        }
        return read;
    }

    public final void readFully(byte[] bArr) throws IOException {
        m66462s0(bArr, 0);
    }

    /* renamed from: s0 */
    public final void m66462s0(byte[] bArr, int i) throws IOException {
        int length = bArr.length - i;
        int readFully = IOUtils.readFully(this.f105894k, bArr, i, length);
        count(readFully);
        if (readFully < length) {
            throw new EOFException();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        while (j2 < j) {
            long j3 = j - j2;
            byte[] bArr = this.f105905v;
            if (bArr.length <= j3) {
                j3 = bArr.length;
            }
            int read = read(bArr, 0, (int) j3);
            if (read == -1) {
                return j2;
            }
            j2 += read;
        }
        return j2;
    }

    /* renamed from: t0 */
    public final int m66463t0() throws IOException {
        int read = this.f105894k.read();
        if (read != -1) {
            count(1);
        }
        return read;
    }

    /* renamed from: u0 */
    public final byte[] m66464u0(int i) throws IOException {
        byte[] readRange = IOUtils.readRange(this.f105894k, i);
        count(readRange.length);
        if (readRange.length >= i) {
            return readRange;
        }
        throw new EOFException();
    }

    /* renamed from: v0 */
    public final int m66465v0(byte[] bArr, int i, int i2) throws IOException {
        if (this.f105897n.f105916b) {
            if (this.f105900q == null) {
                m66466w0();
            }
            return this.f105900q.read(bArr, i, i2);
        }
        long size = this.f105897n.f105915a.getSize();
        if (this.f105897n.f105918d >= size) {
            return -1;
        }
        if (this.f105896m.position() >= this.f105896m.limit()) {
            this.f105896m.position(0);
            int read = this.f105894k.read(this.f105896m.array());
            if (read == -1) {
                this.f105896m.limit(0);
                throw new IOException("Truncated ZIP file");
            }
            this.f105896m.limit(read);
            count(read);
            this.f105897n.f105919e += read;
        }
        int min = Math.min(this.f105896m.remaining(), i2);
        if (size - this.f105897n.f105918d < min) {
            min = (int) (size - this.f105897n.f105918d);
        }
        this.f105896m.get(bArr, i, min);
        this.f105897n.f105918d += min;
        return min;
    }

    /* renamed from: w0 */
    public final void m66466w0() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = this.f105897n.f105917c ? 20 : 12;
        boolean z = false;
        int i2 = 0;
        while (!z) {
            int read = this.f105894k.read(this.f105896m.array(), i2, 512 - i2);
            if (read <= 0) {
                throw new IOException("Truncated ZIP file");
            }
            int i3 = read + i2;
            if (i3 < 4) {
                i2 = i3;
            } else {
                z = m66446H(byteArrayOutputStream, i2, read, i);
                if (!z) {
                    i2 = m66447I(byteArrayOutputStream, i2, read, i);
                }
            }
        }
        if (this.f105897n.f105915a.getCompressedSize() != this.f105897n.f105915a.getSize()) {
            throw new ZipException("compressed and uncompressed size don't match while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See http://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile");
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length != this.f105897n.f105915a.getSize()) {
            throw new ZipException("actual and claimed size don't match while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See http://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile");
        }
        this.f105900q = new ByteArrayInputStream(byteArray);
    }

    /* renamed from: x0 */
    public final void m66467x0(long j) throws IOException {
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        while (j2 < j) {
            long j3 = j - j2;
            InputStream inputStream = this.f105894k;
            byte[] bArr = this.f105905v;
            if (bArr.length <= j3) {
                j3 = bArr.length;
            }
            int read = inputStream.read(bArr, 0, (int) j3);
            if (read == -1) {
                return;
            }
            count(read);
            j2 += read;
        }
    }

    /* renamed from: y0 */
    public final void m66468y0() throws IOException {
        int i = this.f105909z;
        if (i > 0) {
            m66467x0((i * 46) - 30);
            if (m66452i0()) {
                m66467x0(16L);
                readFully(this.f105906w);
                int value = ZipShort.getValue(this.f105906w);
                if (value >= 0) {
                    m66467x0(value);
                    return;
                }
            }
        }
        throw new IOException("Truncated ZIP file");
    }

    /* renamed from: z0 */
    public final boolean m66469z0(ZipArchiveEntry zipArchiveEntry) {
        return zipArchiveEntry.getCompressedSize() != -1 || zipArchiveEntry.getMethod() == 8 || zipArchiveEntry.getMethod() == ZipMethod.ENHANCED_DEFLATED.getCode() || (zipArchiveEntry.getGeneralPurposeBit().usesDataDescriptor() && this.f105901r && zipArchiveEntry.getMethod() == 0);
    }

    public ZipArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, str, true);
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipArchiveInputStream$c */
    /* loaded from: classes12.dex */
    public static final class C18863c {

        /* renamed from: a */
        public final ZipArchiveEntry f105915a;

        /* renamed from: b */
        public boolean f105916b;

        /* renamed from: c */
        public boolean f105917c;

        /* renamed from: d */
        public long f105918d;

        /* renamed from: e */
        public long f105919e;

        /* renamed from: f */
        public final CRC32 f105920f;

        /* renamed from: g */
        public InputStream f105921g;

        public C18863c() {
            this.f105915a = new ZipArchiveEntry();
            this.f105920f = new CRC32();
        }

        /* renamed from: n */
        public static /* synthetic */ long m66483n(C18863c c18863c) {
            long j = c18863c.f105919e;
            c18863c.f105919e = 1 + j;
            return j;
        }

        /* renamed from: o */
        public final <T extends InputStream> T m66484o() {
            T t = (T) this.f105921g;
            Objects.requireNonNull(t, "inputStream");
            return t;
        }

        public /* synthetic */ C18863c(C18861a c18861a) {
            this();
        }
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z) {
        this(inputStream, str, z, false);
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z, boolean z2) {
        this(inputStream, str, z, z2, false);
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ZipArchiveInputStream$b */
    /* loaded from: classes12.dex */
    public class C18862b extends InputStream {

        /* renamed from: e */
        public final InputStream f105911e;

        /* renamed from: f */
        public final long f105912f;

        /* renamed from: g */
        public long f105913g;

        public C18862b(InputStream inputStream, long j) {
            this.f105912f = j;
            this.f105911e = inputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            long j = this.f105912f;
            if (j < 0 || this.f105913g < j) {
                return this.f105911e.available();
            }
            return 0;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            long j = this.f105912f;
            if (j >= 0 && this.f105913g >= j) {
                return -1;
            }
            int read = this.f105911e.read();
            this.f105913g++;
            ZipArchiveInputStream.this.count(1);
            C18863c.m66483n(ZipArchiveInputStream.this.f105897n);
            return read;
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            long j2 = this.f105912f;
            if (j2 >= 0) {
                j = Math.min(j, j2 - this.f105913g);
            }
            long skip = IOUtils.skip(this.f105911e, j);
            this.f105913g += skip;
            return skip;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            return read(bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            long j = this.f105912f;
            if (j >= 0 && this.f105913g >= j) {
                return -1;
            }
            int read = this.f105911e.read(bArr, i, (int) (j >= 0 ? Math.min(i2, j - this.f105913g) : i2));
            if (read == -1) {
                return -1;
            }
            long j2 = read;
            this.f105913g += j2;
            ZipArchiveInputStream.this.count(read);
            ZipArchiveInputStream.this.f105897n.f105919e += j2;
            return read;
        }
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z, boolean z2, boolean z3) {
        this.f105895l = new Inflater(true);
        ByteBuffer allocate = ByteBuffer.allocate(512);
        this.f105896m = allocate;
        this.f105904u = new byte[30];
        this.f105905v = new byte[1024];
        this.f105906w = new byte[2];
        this.f105907x = new byte[4];
        this.f105908y = new byte[16];
        this.f105892i = str;
        this.f105891h = ZipEncodingHelper.getZipEncoding(str);
        this.f105893j = z;
        this.f105894k = new PushbackInputStream(inputStream, allocate.capacity());
        this.f105901r = z2;
        this.f105903t = z3;
        allocate.limit(0);
    }
}
