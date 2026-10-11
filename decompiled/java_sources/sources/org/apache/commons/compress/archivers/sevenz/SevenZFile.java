package org.apache.commons.compress.archivers.sevenz;

import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.C13535br;
import com.sunia.HTREnginev2.C14182od;
import com.sunia.HTREnginev2.C14319qu;
import com.sunia.HTREnginev2.b5n;
import com.sunia.HTREnginev2.d0n;
import com.sunia.HTREnginev2.rwd;
import com.sunia.HTREnginev2.sog;
import com.sunia.HTREnginev2.vxm;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.channels.Channels;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import org.apache.commons.compress.MemoryLimitException;
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.CRC32VerifyingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class SevenZFile implements Closeable {

    /* renamed from: p */
    public static final int f105623p = 32;

    /* renamed from: q */
    public static final String f105624q = "unknown archive";

    /* renamed from: r */
    public static final byte[] f105625r = {TarConstants.LF_CONTIG, JSONB.Constants.BC_STR_UTF8, JSONB.Constants.BC_INT16, JSONB.Constants.BC_NULL, Cea608Decoder.f26816Y, 28};

    /* renamed from: e */
    public final String f105626e;

    /* renamed from: f */
    public SeekableByteChannel f105627f;

    /* renamed from: g */
    public final C14182od f105628g;

    /* renamed from: h */
    public int f105629h;

    /* renamed from: i */
    public int f105630i;

    /* renamed from: j */
    public InputStream f105631j;

    /* renamed from: k */
    public byte[] f105632k;

    /* renamed from: l */
    public final SevenZFileOptions f105633l;

    /* renamed from: m */
    public long f105634m;

    /* renamed from: n */
    public long f105635n;

    /* renamed from: o */
    public final ArrayList<InputStream> f105636o;

    /* renamed from: org.apache.commons.compress.archivers.sevenz.SevenZFile$b */
    /* loaded from: classes12.dex */
    public class C18843b implements InputStreamStatistics {
        public C18843b() {
        }

        @Override // org.apache.commons.compress.utils.InputStreamStatistics
        public long getCompressedCount() {
            return SevenZFile.this.f105634m;
        }

        @Override // org.apache.commons.compress.utils.InputStreamStatistics
        public long getUncompressedCount() {
            return SevenZFile.this.f105635n;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.SevenZFile$c */
    /* loaded from: classes12.dex */
    public static class C18844c {

        /* renamed from: a */
        public int f105639a;

        /* renamed from: b */
        public long f105640b;

        /* renamed from: c */
        public long f105641c;

        /* renamed from: d */
        public long f105642d;

        /* renamed from: e */
        public long f105643e;

        /* renamed from: f */
        public int f105644f;

        /* renamed from: g */
        public BitSet f105645g;

        /* renamed from: h */
        public int f105646h;

        /* renamed from: i */
        public int f105647i;

        public C18844c() {
        }

        /* renamed from: r */
        public void m66271r(int i) throws IOException {
            int i2 = this.f105647i;
            if (i2 > 0 && this.f105644f == 0) {
                throw new IOException("archive with entries but no folders");
            }
            if (i2 > this.f105643e) {
                throw new IOException("archive doesn't contain enough substreams for entries");
            }
            long m66275v = m66275v() / 1024;
            if (i < m66275v) {
                throw new MemoryLimitException(m66275v, i);
            }
        }

        /* renamed from: s */
        public final long m66272s() {
            return 16L;
        }

        /* renamed from: t */
        public final long m66273t() {
            return 22L;
        }

        public String toString() {
            return "Archive with " + this.f105646h + " entries in " + this.f105644f + " folders. Estimated size " + (m66275v() / 1024) + " kB.";
        }

        /* renamed from: u */
        public final long m66274u() {
            return 100L;
        }

        /* renamed from: v */
        public long m66275v() {
            long m66276w = (this.f105639a * 16) + (r0 / 8) + (this.f105644f * m66276w()) + (this.f105640b * m66273t()) + ((this.f105641c - this.f105644f) * m66272s());
            long j = this.f105642d;
            long j2 = this.f105641c;
            return (m66276w + (((j - j2) + this.f105644f) * 8) + (j2 * 8) + (this.f105646h * m66274u()) + m66277x()) * 2;
        }

        /* renamed from: w */
        public final long m66276w() {
            return 30L;
        }

        /* renamed from: x */
        public final long m66277x() {
            return (this.f105644f * 8) + (this.f105639a * 8) + (this.f105646h * 4);
        }

        public /* synthetic */ C18844c(C18842a c18842a) {
            this();
        }
    }

    public SevenZFile(File file, char[] cArr) throws IOException {
        this(file, cArr, SevenZFileOptions.DEFAULT);
    }

    /* renamed from: D0 */
    public static long m66207D0(ByteBuffer byteBuffer) throws IOException {
        long m66218m0 = m66218m0(byteBuffer);
        int i = 128;
        long j = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            if ((i & m66218m0) == 0) {
                return ((m66218m0 & (i - 1)) << (i2 * 8)) | j;
            }
            j |= m66218m0(byteBuffer) << (i2 * 8);
            i >>>= 1;
        }
        return j;
    }

    /* renamed from: I */
    public static int m66209I(String str, long j) throws IOException {
        if (j <= 2147483647L && j >= 0) {
            return (int) j;
        }
        throw new IOException("Cannot handle " + str + " " + j);
    }

    /* renamed from: O0 */
    public static long m66210O0(ByteBuffer byteBuffer, long j) {
        if (j < 1) {
            return 0L;
        }
        int position = byteBuffer.position();
        long remaining = byteBuffer.remaining();
        if (remaining < j) {
            j = remaining;
        }
        byteBuffer.position(position + ((int) j));
        return j;
    }

    /* renamed from: R0 */
    public static byte[] m66211R0(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        ByteBuffer encode = StandardCharsets.UTF_16LE.encode(CharBuffer.wrap(cArr));
        if (encode.hasArray()) {
            return encode.array();
        }
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }

    /* renamed from: h0 */
    public static void m66213h0(ByteBuffer byteBuffer, byte[] bArr) throws IOException {
        if (byteBuffer.remaining() < bArr.length) {
            throw new EOFException();
        }
        byteBuffer.get(bArr);
    }

    /* renamed from: i0 */
    public static char m66214i0(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 2) {
            return byteBuffer.getChar();
        }
        throw new EOFException();
    }

    /* renamed from: k0 */
    public static int m66216k0(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            return byteBuffer.getInt();
        }
        throw new EOFException();
    }

    /* renamed from: l0 */
    public static long m66217l0(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 8) {
            return byteBuffer.getLong();
        }
        throw new EOFException();
    }

    /* renamed from: m0 */
    public static int m66218m0(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        throw new EOFException();
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < f105625r.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f105625r;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    /* renamed from: p0 */
    public static /* synthetic */ SevenZArchiveEntry[] m66219p0(int i) {
        return new SevenZArchiveEntry[i];
    }

    /* renamed from: A0 */
    public final vxm m66221A0(long j) throws IOException {
        vxm vxmVar = new vxm();
        DataInputStream dataInputStream = new DataInputStream(new CRC32VerifyingInputStream(new C14319qu(this.f105627f, 20L), 20L, j));
        try {
            long reverseBytes = Long.reverseBytes(dataInputStream.readLong());
            vxmVar.f88020a = reverseBytes;
            if (reverseBytes < 0 || reverseBytes + 32 > this.f105627f.size()) {
                throw new IOException("nextHeaderOffset is out of bounds");
            }
            long reverseBytes2 = Long.reverseBytes(dataInputStream.readLong());
            vxmVar.f88021b = reverseBytes2;
            long j2 = vxmVar.f88020a;
            long j3 = reverseBytes2 + j2;
            if (j3 < j2 || j3 + 32 > this.f105627f.size()) {
                throw new IOException("nextHeaderSize is out of bounds");
            }
            vxmVar.f88022c = Integer.reverseBytes(dataInputStream.readInt()) & 4294967295L;
            dataInputStream.close();
            return vxmVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    dataInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: B0 */
    public final void m66222B0(ByteBuffer byteBuffer, C14182od c14182od) throws IOException {
        int m66218m0 = m66218m0(byteBuffer);
        if (m66218m0 == 6) {
            m66252z0(byteBuffer, c14182od);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 7) {
            m66224E0(byteBuffer, c14182od);
            m66218m0 = m66218m0(byteBuffer);
        } else {
            c14182od.f79583e = sog.f84390j;
        }
        if (m66218m0 == 8) {
            m66223C0(byteBuffer, c14182od);
            m66218m0(byteBuffer);
        }
    }

    /* renamed from: C0 */
    public final void m66223C0(ByteBuffer byteBuffer, C14182od c14182od) throws IOException {
        for (sog sogVar : c14182od.f79583e) {
            sogVar.f84399i = 1;
        }
        long length = c14182od.f79583e.length;
        int m66218m0 = m66218m0(byteBuffer);
        if (m66218m0 == 13) {
            long j = 0;
            for (sog sogVar2 : c14182od.f79583e) {
                long m66207D0 = m66207D0(byteBuffer);
                sogVar2.f84399i = (int) m66207D0;
                j += m66207D0;
            }
            m66218m0 = m66218m0(byteBuffer);
            length = j;
        }
        int i = (int) length;
        b5n b5nVar = new b5n();
        b5nVar.f65413a = new long[i];
        b5nVar.f65414b = new BitSet(i);
        b5nVar.f65415c = new long[i];
        int i2 = 0;
        for (sog sogVar3 : c14182od.f79583e) {
            if (sogVar3.f84399i != 0) {
                long j2 = 0;
                if (m66218m0 == 9) {
                    int i3 = 0;
                    while (i3 < sogVar3.f84399i - 1) {
                        long m66207D02 = m66207D0(byteBuffer);
                        b5nVar.f65413a[i2] = m66207D02;
                        j2 += m66207D02;
                        i3++;
                        i2++;
                    }
                }
                if (j2 > sogVar3.m57212d()) {
                    throw new IOException("sum of unpack sizes of folder exceeds total unpack size");
                }
                b5nVar.f65413a[i2] = sogVar3.m57212d() - j2;
                i2++;
            }
        }
        if (m66218m0 == 9) {
            m66218m0 = m66218m0(byteBuffer);
        }
        int i4 = 0;
        for (sog sogVar4 : c14182od.f79583e) {
            int i5 = sogVar4.f84399i;
            if (i5 != 1 || !sogVar4.f84397g) {
                i4 += i5;
            }
        }
        if (m66218m0 == 10) {
            BitSet m66243q0 = m66243q0(byteBuffer, i4);
            long[] jArr = new long[i4];
            for (int i6 = 0; i6 < i4; i6++) {
                if (m66243q0.get(i6)) {
                    jArr[i6] = m66216k0(byteBuffer) & 4294967295L;
                }
            }
            int i7 = 0;
            int i8 = 0;
            for (sog sogVar5 : c14182od.f79583e) {
                if (sogVar5.f84399i == 1 && sogVar5.f84397g) {
                    b5nVar.f65414b.set(i7, true);
                    b5nVar.f65415c[i7] = sogVar5.f84398h;
                    i7++;
                } else {
                    for (int i9 = 0; i9 < sogVar5.f84399i; i9++) {
                        b5nVar.f65414b.set(i7, m66243q0.get(i8));
                        b5nVar.f65415c[i7] = jArr[i8];
                        i7++;
                        i8++;
                    }
                }
            }
            m66218m0(byteBuffer);
        }
        c14182od.f79584f = b5nVar;
    }

    /* renamed from: E0 */
    public final void m66224E0(ByteBuffer byteBuffer, C14182od c14182od) throws IOException {
        m66218m0(byteBuffer);
        int m66207D0 = (int) m66207D0(byteBuffer);
        sog[] sogVarArr = new sog[m66207D0];
        c14182od.f79583e = sogVarArr;
        m66218m0(byteBuffer);
        for (int i = 0; i < m66207D0; i++) {
            sogVarArr[i] = m66248v0(byteBuffer);
        }
        m66218m0(byteBuffer);
        for (int i2 = 0; i2 < m66207D0; i2++) {
            sog sogVar = sogVarArr[i2];
            m66209I("totalOutputStreams", sogVar.f84393c);
            sogVar.f84396f = new long[(int) sogVar.f84393c];
            for (int i3 = 0; i3 < sogVar.f84393c; i3++) {
                sogVar.f84396f[i3] = m66207D0(byteBuffer);
            }
        }
        if (m66218m0(byteBuffer) == 10) {
            BitSet m66243q0 = m66243q0(byteBuffer, m66207D0);
            for (int i4 = 0; i4 < m66207D0; i4++) {
                if (m66243q0.get(i4)) {
                    sog sogVar2 = sogVarArr[i4];
                    sogVar2.f84397g = true;
                    sogVar2.f84398h = m66216k0(byteBuffer) & 4294967295L;
                } else {
                    sogVarArr[i4].f84397g = false;
                }
            }
            m66218m0(byteBuffer);
        }
    }

    /* renamed from: F0 */
    public final void m66225F0(int i, SevenZArchiveEntry sevenZArchiveEntry) throws IOException {
        this.f105636o.clear();
        InputStream inputStream = this.f105631j;
        if (inputStream != null) {
            inputStream.close();
            this.f105631j = null;
        }
        C14182od c14182od = this.f105628g;
        sog sogVar = c14182od.f79583e[i];
        d0n d0nVar = c14182od.f79586h;
        int i2 = d0nVar.f67374a[i];
        this.f105631j = m66232M(sogVar, c14182od.f79579a + 32 + d0nVar.f67375b[i2], i2, sevenZArchiveEntry);
    }

    /* renamed from: G0 */
    public final C18844c m66226G0(ByteBuffer byteBuffer) throws IOException {
        C18844c c18844c = new C18844c(null);
        int m66218m0 = m66218m0(byteBuffer);
        if (m66218m0 == 2) {
            m66227H0(byteBuffer);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 3) {
            throw new IOException("Additional streams unsupported");
        }
        if (m66218m0 == 4) {
            m66231L0(byteBuffer, c18844c);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 5) {
            m66228I0(byteBuffer, c18844c);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 0) {
            return c18844c;
        }
        throw new IOException("Badly terminated header, found " + m66218m0);
    }

    /* renamed from: H0 */
    public final void m66227H0(ByteBuffer byteBuffer) throws IOException {
        int m66218m0 = m66218m0(byteBuffer);
        while (m66218m0 != 0) {
            long m66209I = m66209I("propertySize", m66207D0(byteBuffer));
            if (m66210O0(byteBuffer, m66209I) < m66209I) {
                throw new IOException("invalid property size");
            }
            m66218m0 = m66218m0(byteBuffer);
        }
    }

    /* renamed from: I0 */
    public final void m66228I0(ByteBuffer byteBuffer, C18844c c18844c) throws IOException {
        c18844c.f105646h = m66209I("numFiles", m66207D0(byteBuffer));
        int i = -1;
        while (true) {
            int m66218m0 = m66218m0(byteBuffer);
            if (m66218m0 == 0) {
                c18844c.f105647i = c18844c.f105646h - Math.max(i, 0);
                return;
            }
            long m66207D0 = m66207D0(byteBuffer);
            switch (m66218m0) {
                case 14:
                    i = m66245s0(byteBuffer, c18844c.f105646h).cardinality();
                    break;
                case 15:
                    if (i == -1) {
                        throw new IOException("Header format error: kEmptyStream must appear before kEmptyFile");
                    }
                    m66245s0(byteBuffer, i);
                    break;
                case 16:
                    if (i == -1) {
                        throw new IOException("Header format error: kEmptyStream must appear before kAnti");
                    }
                    m66245s0(byteBuffer, i);
                    break;
                case 17:
                    if (m66218m0(byteBuffer) != 0) {
                        throw new IOException("Not implemented");
                    }
                    int m66209I = m66209I("file names length", m66207D0 - 1);
                    if ((m66209I & 1) != 0) {
                        throw new IOException("File names length invalid");
                    }
                    int i2 = 0;
                    for (int i3 = 0; i3 < m66209I; i3 += 2) {
                        if (m66214i0(byteBuffer) == 0) {
                            i2++;
                        }
                    }
                    if (i2 != c18844c.f105646h) {
                        throw new IOException("Invalid number of file names (" + i2 + " instead of " + c18844c.f105646h + MotionUtils.f31762d);
                    }
                    break;
                case 18:
                    int cardinality = m66243q0(byteBuffer, c18844c.f105646h).cardinality();
                    if (m66218m0(byteBuffer) != 0) {
                        throw new IOException("Not implemented");
                    }
                    long j = cardinality * 8;
                    if (m66210O0(byteBuffer, j) < j) {
                        throw new IOException("invalid creation dates size");
                    }
                    break;
                case 19:
                    int cardinality2 = m66243q0(byteBuffer, c18844c.f105646h).cardinality();
                    if (m66218m0(byteBuffer) != 0) {
                        throw new IOException("Not implemented");
                    }
                    long j2 = cardinality2 * 8;
                    if (m66210O0(byteBuffer, j2) < j2) {
                        throw new IOException("invalid access dates size");
                    }
                    break;
                case 20:
                    int cardinality3 = m66243q0(byteBuffer, c18844c.f105646h).cardinality();
                    if (m66218m0(byteBuffer) != 0) {
                        throw new IOException("Not implemented");
                    }
                    long j3 = cardinality3 * 8;
                    if (m66210O0(byteBuffer, j3) < j3) {
                        throw new IOException("invalid modification dates size");
                    }
                    break;
                case 21:
                    int cardinality4 = m66243q0(byteBuffer, c18844c.f105646h).cardinality();
                    if (m66218m0(byteBuffer) != 0) {
                        throw new IOException("Not implemented");
                    }
                    long j4 = cardinality4 * 4;
                    if (m66210O0(byteBuffer, j4) < j4) {
                        throw new IOException("invalid windows attributes size");
                    }
                    break;
                case 22:
                case 23:
                default:
                    if (m66210O0(byteBuffer, m66207D0) < m66207D0) {
                        throw new IOException("Incomplete property of type " + m66218m0);
                    }
                    break;
                case 24:
                    throw new IOException("kStartPos is unsupported, please report");
                case 25:
                    if (m66210O0(byteBuffer, m66207D0) < m66207D0) {
                        throw new IOException("Incomplete kDummy property");
                    }
                    break;
            }
        }
    }

    /* renamed from: J0 */
    public final int m66229J0(ByteBuffer byteBuffer, C18844c c18844c) throws IOException {
        int m66209I = m66209I("numCoders", m66207D0(byteBuffer));
        if (m66209I == 0) {
            throw new IOException("Folder without coders");
        }
        c18844c.f105640b += m66209I;
        long j = 0;
        long j2 = 0;
        int i = 0;
        while (true) {
            long j3 = 1;
            if (i >= m66209I) {
                m66209I("totalInStreams", j);
                m66209I("totalOutStreams", j2);
                c18844c.f105641c += j2;
                c18844c.f105642d += j;
                if (j2 == 0) {
                    throw new IOException("Total output streams can't be 0");
                }
                int m66209I2 = m66209I("numBindPairs", j2 - 1);
                long j4 = m66209I2;
                if (j < j4) {
                    throw new IOException("Total input streams can't be less than the number of bind pairs");
                }
                BitSet bitSet = new BitSet((int) j);
                for (int i2 = 0; i2 < m66209I2; i2++) {
                    int m66209I3 = m66209I("inIndex", m66207D0(byteBuffer));
                    if (j <= m66209I3) {
                        throw new IOException("inIndex is bigger than number of inStreams");
                    }
                    bitSet.set(m66209I3);
                    if (j2 <= m66209I("outIndex", m66207D0(byteBuffer))) {
                        throw new IOException("outIndex is bigger than number of outStreams");
                    }
                }
                int m66209I4 = m66209I("numPackedStreams", j - j4);
                if (m66209I4 != 1) {
                    for (int i3 = 0; i3 < m66209I4; i3++) {
                        if (m66209I("packedStreamIndex", m66207D0(byteBuffer)) >= j) {
                            throw new IOException("packedStreamIndex is bigger than number of totalInStreams");
                        }
                    }
                } else if (bitSet.nextClearBit(0) == -1) {
                    throw new IOException("Couldn't find stream's bind pair index");
                }
                return (int) j2;
            }
            int m66218m0 = m66218m0(byteBuffer);
            m66213h0(byteBuffer, new byte[m66218m0 & 15]);
            boolean z = (m66218m0 & 16) == 0;
            boolean z2 = (m66218m0 & 32) != 0;
            if ((m66218m0 & 128) != 0) {
                throw new IOException("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
            }
            if (z) {
                j++;
            } else {
                j += m66209I("numInStreams", m66207D0(byteBuffer));
                j3 = m66209I("numOutStreams", m66207D0(byteBuffer));
            }
            j2 += j3;
            if (z2) {
                long m66209I5 = m66209I("propertiesSize", m66207D0(byteBuffer));
                if (m66210O0(byteBuffer, m66209I5) < m66209I5) {
                    throw new IOException("invalid propertiesSize in folder");
                }
            }
            i++;
        }
    }

    /* renamed from: K0 */
    public final void m66230K0(ByteBuffer byteBuffer, C18844c c18844c) throws IOException {
        long m66207D0 = m66207D0(byteBuffer);
        long j = 0;
        if (m66207D0 >= 0) {
            long j2 = 32 + m66207D0;
            if (j2 <= this.f105627f.size() && j2 >= 0) {
                c18844c.f105639a = m66209I("numPackStreams", m66207D0(byteBuffer));
                int m66218m0 = m66218m0(byteBuffer);
                if (m66218m0 == 9) {
                    int i = 0;
                    long j3 = 0;
                    while (i < c18844c.f105639a) {
                        long m66207D02 = m66207D0(byteBuffer);
                        j3 += m66207D02;
                        long j4 = j2 + j3;
                        if (m66207D02 < j || j4 > this.f105627f.size() || j4 < m66207D0) {
                            throw new IOException("packSize (" + m66207D02 + ") is out of range");
                        }
                        i++;
                        j = 0;
                    }
                    m66218m0 = m66218m0(byteBuffer);
                }
                if (m66218m0 == 10) {
                    long cardinality = m66243q0(byteBuffer, c18844c.f105639a).cardinality() * 4;
                    if (m66210O0(byteBuffer, cardinality) < cardinality) {
                        throw new IOException("invalid number of CRCs in PackInfo");
                    }
                    m66218m0 = m66218m0(byteBuffer);
                }
                if (m66218m0 == 0) {
                    return;
                }
                throw new IOException("Badly terminated PackInfo (" + m66218m0 + MotionUtils.f31762d);
            }
        }
        throw new IOException("packPos (" + m66207D0 + ") is out of range");
    }

    /* renamed from: L0 */
    public final void m66231L0(ByteBuffer byteBuffer, C18844c c18844c) throws IOException {
        int m66218m0 = m66218m0(byteBuffer);
        if (m66218m0 == 6) {
            m66230K0(byteBuffer, c18844c);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 7) {
            m66234N0(byteBuffer, c18844c);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 8) {
            m66233M0(byteBuffer, c18844c);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 != 0) {
            throw new IOException("Badly terminated StreamsInfo");
        }
    }

    /* renamed from: M */
    public final InputStream m66232M(sog sogVar, long j, int i, SevenZArchiveEntry sevenZArchiveEntry) throws IOException {
        this.f105627f.position(j);
        C18842a c18842a = new C18842a(new BufferedInputStream(new C14319qu(this.f105627f, this.f105628g.f79580b[i])));
        LinkedList linkedList = new LinkedList();
        InputStream inputStream = c18842a;
        for (rwd rwdVar : sogVar.m57211c()) {
            if (rwdVar.f83568b != 1 || rwdVar.f83569c != 1) {
                throw new IOException("Multi input/output stream coders are not yet supported");
            }
            SevenZMethod byId = SevenZMethod.byId(rwdVar.f83567a);
            inputStream = Coders.m66197a(this.f105626e, inputStream, sogVar.m57213e(rwdVar), rwdVar, this.f105632k, this.f105633l.getMaxMemoryLimitInKb());
            linkedList.addFirst(new SevenZMethodConfiguration(byId, Coders.m66199c(byId).mo56161e(rwdVar, inputStream)));
        }
        sevenZArchiveEntry.setContentMethods(linkedList);
        return sogVar.f84397g ? new CRC32VerifyingInputStream(inputStream, sogVar.m57212d(), sogVar.f84398h) : inputStream;
    }

    /* renamed from: M0 */
    public final void m66233M0(ByteBuffer byteBuffer, C18844c c18844c) throws IOException {
        int i;
        int m66218m0 = m66218m0(byteBuffer);
        LinkedList linkedList = new LinkedList();
        int i2 = 0;
        if (m66218m0 == 13) {
            for (int i3 = 0; i3 < c18844c.f105644f; i3++) {
                linkedList.add(Integer.valueOf(m66209I("numStreams", m66207D0(byteBuffer))));
            }
            c18844c.f105643e = linkedList.stream().mapToLong(new ToLongFunction() { // from class: com.sunia.HTREnginev2.nlm
                @Override // java.util.function.ToLongFunction
                public final long applyAsLong(Object obj) {
                    return ((Integer) obj).longValue();
                }
            }).sum();
            m66218m0 = m66218m0(byteBuffer);
        } else {
            c18844c.f105643e = c18844c.f105644f;
        }
        m66209I("totalUnpackStreams", c18844c.f105643e);
        if (m66218m0 == 9) {
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                int intValue = ((Integer) it2.next()).intValue();
                if (intValue != 0) {
                    for (int i4 = 0; i4 < intValue - 1; i4++) {
                        if (m66207D0(byteBuffer) < 0) {
                            throw new IOException("negative unpackSize");
                        }
                    }
                }
            }
            m66218m0 = m66218m0(byteBuffer);
        }
        if (linkedList.isEmpty()) {
            i = c18844c.f105645g == null ? c18844c.f105644f : c18844c.f105644f - c18844c.f105645g.cardinality();
        } else {
            Iterator it3 = linkedList.iterator();
            int i5 = 0;
            while (it3.hasNext()) {
                int intValue2 = ((Integer) it3.next()).intValue();
                if (intValue2 == 1 && c18844c.f105645g != null) {
                    int i6 = i5 + 1;
                    if (c18844c.f105645g.get(i5)) {
                        i5 = i6;
                    } else {
                        i5 = i6;
                    }
                }
                i2 += intValue2;
            }
            i = i2;
        }
        if (m66218m0 == 10) {
            m66209I("numDigests", i);
            long cardinality = m66243q0(byteBuffer, i).cardinality() * 4;
            if (m66210O0(byteBuffer, cardinality) < cardinality) {
                throw new IOException("invalid number of missing CRCs in SubStreamInfo");
            }
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 != 0) {
            throw new IOException("Badly terminated SubStreamsInfo");
        }
    }

    /* renamed from: N0 */
    public final void m66234N0(ByteBuffer byteBuffer, C18844c c18844c) throws IOException {
        int m66218m0 = m66218m0(byteBuffer);
        if (m66218m0 != 11) {
            throw new IOException("Expected kFolder, got " + m66218m0);
        }
        c18844c.f105644f = m66209I("numFolders", m66207D0(byteBuffer));
        if (m66218m0(byteBuffer) != 0) {
            throw new IOException("External unsupported");
        }
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < c18844c.f105644f; i++) {
            linkedList.add(Integer.valueOf(m66229J0(byteBuffer, c18844c)));
        }
        if (c18844c.f105642d - (c18844c.f105641c - c18844c.f105644f) < c18844c.f105639a) {
            throw new IOException("archive doesn't contain enough packed streams");
        }
        int m66218m02 = m66218m0(byteBuffer);
        if (m66218m02 != 12) {
            throw new IOException("Expected kCodersUnpackSize, got " + m66218m02);
        }
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next()).intValue();
            for (int i2 = 0; i2 < intValue; i2++) {
                if (m66207D0(byteBuffer) < 0) {
                    throw new IllegalArgumentException("negative unpackSize");
                }
            }
        }
        int m66218m03 = m66218m0(byteBuffer);
        if (m66218m03 == 10) {
            c18844c.f105645g = m66243q0(byteBuffer, c18844c.f105644f);
            long cardinality = c18844c.f105645g.cardinality() * 4;
            if (m66210O0(byteBuffer, cardinality) < cardinality) {
                throw new IOException("invalid number of CRCs in UnpackInfo");
            }
            m66218m03 = m66218m0(byteBuffer);
        }
        if (m66218m03 != 0) {
            throw new IOException("Badly terminated UnpackInfo");
        }
    }

    /* renamed from: P0 */
    public final boolean m66235P0(int i, boolean z, int i2) throws IOException {
        SevenZArchiveEntry sevenZArchiveEntry = this.f105628g.f79585g[i];
        if (this.f105629h == i && !m66241n0()) {
            return false;
        }
        int i3 = this.f105628g.f79586h.f67376c[this.f105630i];
        if (z) {
            int i4 = this.f105629h;
            if (i4 < i) {
                i3 = i4 + 1;
            } else {
                m66225F0(i2, sevenZArchiveEntry);
            }
        }
        while (i3 < i) {
            SevenZArchiveEntry sevenZArchiveEntry2 = this.f105628g.f79585g[i3];
            InputStream boundedInputStream = new BoundedInputStream(this.f105631j, sevenZArchiveEntry2.getSize());
            if (sevenZArchiveEntry2.getHasCrc()) {
                boundedInputStream = new CRC32VerifyingInputStream(boundedInputStream, sevenZArchiveEntry2.getSize(), sevenZArchiveEntry2.getCrcValue());
            }
            this.f105636o.add(boundedInputStream);
            sevenZArchiveEntry2.setContentMethods(sevenZArchiveEntry.getContentMethods());
            i3++;
        }
        return true;
    }

    /* renamed from: Q0 */
    public final C14182od m66236Q0(byte[] bArr) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        long position = this.f105627f.position() + 20;
        long position2 = this.f105627f.position() + 1048576 > this.f105627f.size() ? this.f105627f.position() : this.f105627f.size() - 1048576;
        long size = this.f105627f.size() - 1;
        while (size > position2) {
            size--;
            this.f105627f.position(size);
            allocate.rewind();
            if (this.f105627f.read(allocate) < 1) {
                throw new EOFException();
            }
            byte b = allocate.array()[0];
            if (b == 23 || b == 1) {
                try {
                    vxm vxmVar = new vxm();
                    vxmVar.f88020a = size - position;
                    vxmVar.f88021b = this.f105627f.size() - size;
                    C14182od m66242o0 = m66242o0(vxmVar, bArr, false);
                    if (m66242o0.f79580b.length > 0 && m66242o0.f79585g.length > 0) {
                        return m66242o0;
                    }
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        throw new IOException("Start header corrupt and unable to guess end header");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        SeekableByteChannel seekableByteChannel = this.f105627f;
        if (seekableByteChannel != null) {
            try {
                seekableByteChannel.close();
            } finally {
                this.f105627f = null;
                byte[] bArr = this.f105632k;
                if (bArr != null) {
                    Arrays.fill(bArr, (byte) 0);
                }
                this.f105632k = null;
            }
        }
    }

    /* renamed from: e0 */
    public final void m66237e0(int i, boolean z) throws IOException {
        boolean z2;
        C14182od c14182od = this.f105628g;
        d0n d0nVar = c14182od.f79586h;
        if (d0nVar == null) {
            throw new IOException("Archive doesn't contain stream information to read entries");
        }
        int i2 = d0nVar.f67377d[i];
        if (i2 < 0) {
            this.f105636o.clear();
            return;
        }
        SevenZArchiveEntry[] sevenZArchiveEntryArr = c14182od.f79585g;
        SevenZArchiveEntry sevenZArchiveEntry = sevenZArchiveEntryArr[i];
        if (this.f105630i == i2) {
            if (i > 0) {
                sevenZArchiveEntry.setContentMethods(sevenZArchiveEntryArr[i - 1].getContentMethods());
            }
            if (z && sevenZArchiveEntry.getContentMethods() == null) {
                C14182od c14182od2 = this.f105628g;
                sevenZArchiveEntry.setContentMethods(c14182od2.f79585g[c14182od2.f79586h.f67376c[i2]].getContentMethods());
            }
            z2 = true;
        } else {
            this.f105630i = i2;
            m66225F0(i2, sevenZArchiveEntry);
            z2 = false;
        }
        boolean m66235P0 = z ? m66235P0(i, z2, i2) : false;
        if (z && this.f105629h == i && !m66235P0) {
            return;
        }
        InputStream boundedInputStream = new BoundedInputStream(this.f105631j, sevenZArchiveEntry.getSize());
        if (sevenZArchiveEntry.getHasCrc()) {
            boundedInputStream = new CRC32VerifyingInputStream(boundedInputStream, sevenZArchiveEntry.getSize(), sevenZArchiveEntry.getCrcValue());
        }
        this.f105636o.add(boundedInputStream);
    }

    /* renamed from: f0 */
    public final void m66238f0(C14182od c14182od) throws IOException {
        sog[] sogVarArr;
        d0n d0nVar = new d0n();
        sog[] sogVarArr2 = c14182od.f79583e;
        int length = sogVarArr2 != null ? sogVarArr2.length : 0;
        d0nVar.f67374a = new int[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            d0nVar.f67374a[i2] = i;
            i += c14182od.f79583e[i2].f84395e.length;
        }
        int length2 = c14182od.f79580b.length;
        d0nVar.f67375b = new long[length2];
        long j = 0;
        for (int i3 = 0; i3 < length2; i3++) {
            d0nVar.f67375b[i3] = j;
            j += c14182od.f79580b[i3];
        }
        d0nVar.f67376c = new int[length];
        d0nVar.f67377d = new int[c14182od.f79585g.length];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            SevenZArchiveEntry[] sevenZArchiveEntryArr = c14182od.f79585g;
            if (i4 >= sevenZArchiveEntryArr.length) {
                c14182od.f79586h = d0nVar;
                return;
            }
            if (sevenZArchiveEntryArr[i4].hasStream() || i5 != 0) {
                if (i5 == 0) {
                    while (true) {
                        sogVarArr = c14182od.f79583e;
                        if (i6 >= sogVarArr.length) {
                            break;
                        }
                        d0nVar.f67376c[i6] = i4;
                        if (sogVarArr[i6].f84399i > 0) {
                            break;
                        } else {
                            i6++;
                        }
                    }
                    if (i6 >= sogVarArr.length) {
                        throw new IOException("Too few folders in archive");
                    }
                }
                d0nVar.f67377d[i4] = i6;
                if (c14182od.f79585g[i4].hasStream() && (i5 = i5 + 1) >= c14182od.f79583e[i6].f84399i) {
                    i6++;
                    i5 = 0;
                }
            } else {
                d0nVar.f67377d[i4] = -1;
            }
            i4++;
        }
    }

    /* renamed from: g0 */
    public final void m66239g0(Map<Integer, SevenZArchiveEntry> map, int i) {
        if (map.get(Integer.valueOf(i)) == null) {
            map.put(Integer.valueOf(i), new SevenZArchiveEntry());
        }
    }

    public String getDefaultName() {
        if (f105624q.equals(this.f105626e) || this.f105626e == null) {
            return null;
        }
        String name = new File(this.f105626e).getName();
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf > 0) {
            return name.substring(0, lastIndexOf);
        }
        return name + "~";
    }

    public Iterable<SevenZArchiveEntry> getEntries() {
        return new ArrayList(Arrays.asList(this.f105628g.f79585g));
    }

    public InputStream getInputStream(SevenZArchiveEntry sevenZArchiveEntry) throws IOException {
        int i = 0;
        while (true) {
            SevenZArchiveEntry[] sevenZArchiveEntryArr = this.f105628g.f79585g;
            if (i >= sevenZArchiveEntryArr.length) {
                i = -1;
                break;
            }
            if (sevenZArchiveEntry == sevenZArchiveEntryArr[i]) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            m66237e0(i, true);
            this.f105629h = i;
            this.f105630i = this.f105628g.f79586h.f67377d[i];
            return m66240j0();
        }
        throw new IllegalArgumentException("Can not find " + sevenZArchiveEntry.getName() + CloudStorageConstants.OPERATION_IN + this.f105626e);
    }

    public SevenZArchiveEntry getNextEntry() throws IOException {
        int i = this.f105629h;
        SevenZArchiveEntry[] sevenZArchiveEntryArr = this.f105628g.f79585g;
        if (i >= sevenZArchiveEntryArr.length - 1) {
            return null;
        }
        int i2 = i + 1;
        this.f105629h = i2;
        SevenZArchiveEntry sevenZArchiveEntry = sevenZArchiveEntryArr[i2];
        if (sevenZArchiveEntry.getName() == null && this.f105633l.getUseDefaultNameForUnnamedEntries()) {
            sevenZArchiveEntry.setName(getDefaultName());
        }
        m66237e0(this.f105629h, false);
        this.f105634m = 0L;
        this.f105635n = 0L;
        return sevenZArchiveEntry;
    }

    public InputStreamStatistics getStatisticsForCurrentEntry() {
        return new C18843b();
    }

    /* renamed from: j0 */
    public final InputStream m66240j0() throws IOException {
        if (this.f105628g.f79585g[this.f105629h].getSize() == 0) {
            return new ByteArrayInputStream(ByteUtils.EMPTY_BYTE_ARRAY);
        }
        if (this.f105636o.isEmpty()) {
            throw new IllegalStateException("No current 7z entry (call getNextEntry() first).");
        }
        while (this.f105636o.size() > 1) {
            InputStream remove = this.f105636o.remove(0);
            try {
                IOUtils.skip(remove, Long.MAX_VALUE);
                if (remove != null) {
                    remove.close();
                }
                this.f105634m = 0L;
            } finally {
            }
        }
        return this.f105636o.get(0);
    }

    /* renamed from: n0 */
    public final boolean m66241n0() {
        if (this.f105636o.isEmpty()) {
            return false;
        }
        ArrayList<InputStream> arrayList = this.f105636o;
        InputStream inputStream = arrayList.get(arrayList.size() - 1);
        return inputStream instanceof BoundedInputStream ? ((BoundedInputStream) inputStream).getBytesRemaining() != this.f105628g.f79585g[this.f105629h].getSize() : (inputStream instanceof CRC32VerifyingInputStream) && ((CRC32VerifyingInputStream) inputStream).getBytesRemaining() != this.f105628g.f79585g[this.f105629h].getSize();
    }

    /* renamed from: o0 */
    public final C14182od m66242o0(vxm vxmVar, byte[] bArr, boolean z) throws IOException {
        m66209I("nextHeaderSize", vxmVar.f88021b);
        int i = (int) vxmVar.f88021b;
        this.f105627f.position(vxmVar.f88020a + 32);
        if (z) {
            long position = this.f105627f.position();
            CheckedInputStream checkedInputStream = new CheckedInputStream(Channels.newInputStream(this.f105627f), new CRC32());
            long j = i;
            if (checkedInputStream.skip(j) != j) {
                throw new IOException("Problem computing NextHeader CRC-32");
            }
            if (vxmVar.f88022c != checkedInputStream.getChecksum().getValue()) {
                throw new IOException("NextHeader CRC-32 mismatch");
            }
            this.f105627f.position(position);
        }
        C14182od c14182od = new C14182od();
        ByteBuffer order = ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
        m66249w0(order);
        int m66218m0 = m66218m0(order);
        if (m66218m0 == 23) {
            order = m66246t0(order, c14182od, bArr);
            c14182od = new C14182od();
            m66218m0 = m66218m0(order);
        }
        if (m66218m0 != 1) {
            throw new IOException("Broken or unsupported archive: no Header");
        }
        m66250x0(order, c14182od);
        c14182od.f79584f = null;
        return c14182od;
    }

    /* renamed from: q0 */
    public final BitSet m66243q0(ByteBuffer byteBuffer, int i) throws IOException {
        if (m66218m0(byteBuffer) == 0) {
            return m66245s0(byteBuffer, i);
        }
        BitSet bitSet = new BitSet(i);
        for (int i2 = 0; i2 < i; i2++) {
            bitSet.set(i2, true);
        }
        return bitSet;
    }

    /* renamed from: r0 */
    public final void m66244r0(ByteBuffer byteBuffer) throws IOException {
        int m66218m0 = m66218m0(byteBuffer);
        while (m66218m0 != 0) {
            m66213h0(byteBuffer, new byte[(int) m66207D0(byteBuffer)]);
            m66218m0 = m66218m0(byteBuffer);
        }
    }

    public int read() throws IOException {
        int read = m66240j0().read();
        if (read >= 0) {
            this.f105635n++;
        }
        return read;
    }

    /* renamed from: s0 */
    public final BitSet m66245s0(ByteBuffer byteBuffer, int i) throws IOException {
        BitSet bitSet = new BitSet(i);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            if (i2 == 0) {
                i3 = m66218m0(byteBuffer);
                i2 = 128;
            }
            bitSet.set(i4, (i3 & i2) != 0);
            i2 >>>= 1;
        }
        return bitSet;
    }

    /* renamed from: t0 */
    public final ByteBuffer m66246t0(ByteBuffer byteBuffer, C14182od c14182od, byte[] bArr) throws IOException {
        int position = byteBuffer.position();
        C18844c c18844c = new C18844c(null);
        m66231L0(byteBuffer, c18844c);
        c18844c.m66271r(this.f105633l.getMaxMemoryLimitInKb());
        byteBuffer.position(position);
        m66222B0(byteBuffer, c14182od);
        sog[] sogVarArr = c14182od.f79583e;
        if (sogVarArr == null || sogVarArr.length == 0) {
            throw new IOException("no folders, can't read encoded header");
        }
        long[] jArr = c14182od.f79580b;
        if (jArr == null || jArr.length == 0) {
            throw new IOException("no packed streams, can't read encoded header");
        }
        sog sogVar = sogVarArr[0];
        this.f105627f.position(c14182od.f79579a + 32 + 0);
        C14319qu c14319qu = new C14319qu(this.f105627f, c14182od.f79580b[0]);
        InputStream inputStream = c14319qu;
        for (rwd rwdVar : sogVar.m57211c()) {
            if (rwdVar.f83568b != 1 || rwdVar.f83569c != 1) {
                throw new IOException("Multi input/output stream coders are not yet supported");
            }
            inputStream = Coders.m66197a(this.f105626e, inputStream, sogVar.m57213e(rwdVar), rwdVar, bArr, this.f105633l.getMaxMemoryLimitInKb());
        }
        if (sogVar.f84397g) {
            inputStream = new CRC32VerifyingInputStream(inputStream, sogVar.m57212d(), sogVar.f84398h);
        }
        int m66209I = m66209I("unpackSize", sogVar.m57212d());
        byte[] readRange = IOUtils.readRange(inputStream, m66209I);
        if (readRange.length < m66209I) {
            throw new IOException("premature end of stream");
        }
        inputStream.close();
        return ByteBuffer.wrap(readRange).order(ByteOrder.LITTLE_ENDIAN);
    }

    public String toString() {
        return this.f105628g.toString();
    }

    /* renamed from: u0 */
    public final void m66247u0(ByteBuffer byteBuffer, C14182od c14182od) throws IOException {
        C14182od c14182od2 = c14182od;
        int m66207D0 = (int) m66207D0(byteBuffer);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        BitSet bitSet = null;
        BitSet bitSet2 = null;
        BitSet bitSet3 = null;
        while (true) {
            int m66218m0 = m66218m0(byteBuffer);
            int i = 0;
            if (m66218m0 == 0) {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < m66207D0; i4++) {
                    SevenZArchiveEntry sevenZArchiveEntry = linkedHashMap.get(Integer.valueOf(i4));
                    if (sevenZArchiveEntry != null) {
                        sevenZArchiveEntry.setHasStream(bitSet == null || !bitSet.get(i4));
                        if (!sevenZArchiveEntry.hasStream()) {
                            sevenZArchiveEntry.setDirectory(bitSet2 == null || !bitSet2.get(i2));
                            sevenZArchiveEntry.setAntiItem(bitSet3 != null && bitSet3.get(i2));
                            sevenZArchiveEntry.setHasCrc(false);
                            sevenZArchiveEntry.setSize(0L);
                            i2++;
                        } else {
                            if (c14182od2.f79584f == null) {
                                throw new IOException("Archive contains file with streams but no subStreamsInfo");
                            }
                            sevenZArchiveEntry.setDirectory(false);
                            sevenZArchiveEntry.setAntiItem(false);
                            sevenZArchiveEntry.setHasCrc(c14182od2.f79584f.f65414b.get(i3));
                            sevenZArchiveEntry.setCrcValue(c14182od2.f79584f.f65415c[i3]);
                            sevenZArchiveEntry.setSize(c14182od2.f79584f.f65413a[i3]);
                            if (sevenZArchiveEntry.getSize() < 0) {
                                throw new IOException("broken archive, entry with negative size");
                            }
                            i3++;
                        }
                    }
                }
                c14182od2.f79585g = (SevenZArchiveEntry[]) linkedHashMap.values().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.llm
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return Objects.nonNull((SevenZArchiveEntry) obj);
                    }
                }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.mlm
                    @Override // java.util.function.IntFunction
                    public final Object apply(int i5) {
                        SevenZArchiveEntry[] m66219p0;
                        m66219p0 = SevenZFile.m66219p0(i5);
                        return m66219p0;
                    }
                });
                m66238f0(c14182od2);
                return;
            }
            long m66207D02 = m66207D0(byteBuffer);
            if (m66218m0 != 25) {
                switch (m66218m0) {
                    case 14:
                        bitSet = m66245s0(byteBuffer, m66207D0);
                        break;
                    case 15:
                        bitSet2 = m66245s0(byteBuffer, bitSet.cardinality());
                        break;
                    case 16:
                        bitSet3 = m66245s0(byteBuffer, bitSet.cardinality());
                        break;
                    case 17:
                        m66218m0(byteBuffer);
                        int i5 = (int) (m66207D02 - 1);
                        byte[] bArr = new byte[i5];
                        m66213h0(byteBuffer, bArr);
                        int i6 = 0;
                        int i7 = 0;
                        while (i < i5) {
                            if (bArr[i] == 0 && bArr[i + 1] == 0) {
                                m66239g0(linkedHashMap, i7);
                                linkedHashMap.get(Integer.valueOf(i7)).setName(new String(bArr, i6, i - i6, StandardCharsets.UTF_16LE));
                                i7++;
                                i6 = i + 2;
                            }
                            i += 2;
                        }
                        if (i6 == i5 && i7 == m66207D0) {
                            break;
                        }
                        break;
                    case 18:
                        BitSet m66243q0 = m66243q0(byteBuffer, m66207D0);
                        m66218m0(byteBuffer);
                        while (i < m66207D0) {
                            m66239g0(linkedHashMap, i);
                            SevenZArchiveEntry sevenZArchiveEntry2 = linkedHashMap.get(Integer.valueOf(i));
                            sevenZArchiveEntry2.setHasCreationDate(m66243q0.get(i));
                            if (sevenZArchiveEntry2.getHasCreationDate()) {
                                sevenZArchiveEntry2.setCreationDate(m66217l0(byteBuffer));
                            }
                            i++;
                        }
                        break;
                    case 19:
                        BitSet m66243q02 = m66243q0(byteBuffer, m66207D0);
                        m66218m0(byteBuffer);
                        while (i < m66207D0) {
                            m66239g0(linkedHashMap, i);
                            SevenZArchiveEntry sevenZArchiveEntry3 = linkedHashMap.get(Integer.valueOf(i));
                            sevenZArchiveEntry3.setHasAccessDate(m66243q02.get(i));
                            if (sevenZArchiveEntry3.getHasAccessDate()) {
                                sevenZArchiveEntry3.setAccessDate(m66217l0(byteBuffer));
                            }
                            i++;
                        }
                        break;
                    case 20:
                        BitSet m66243q03 = m66243q0(byteBuffer, m66207D0);
                        m66218m0(byteBuffer);
                        while (i < m66207D0) {
                            m66239g0(linkedHashMap, i);
                            SevenZArchiveEntry sevenZArchiveEntry4 = linkedHashMap.get(Integer.valueOf(i));
                            sevenZArchiveEntry4.setHasLastModifiedDate(m66243q03.get(i));
                            if (sevenZArchiveEntry4.getHasLastModifiedDate()) {
                                sevenZArchiveEntry4.setLastModifiedDate(m66217l0(byteBuffer));
                            }
                            i++;
                        }
                        break;
                    case 21:
                        BitSet m66243q04 = m66243q0(byteBuffer, m66207D0);
                        m66218m0(byteBuffer);
                        while (i < m66207D0) {
                            m66239g0(linkedHashMap, i);
                            SevenZArchiveEntry sevenZArchiveEntry5 = linkedHashMap.get(Integer.valueOf(i));
                            sevenZArchiveEntry5.setHasWindowsAttributes(m66243q04.get(i));
                            if (sevenZArchiveEntry5.getHasWindowsAttributes()) {
                                sevenZArchiveEntry5.setWindowsAttributes(m66216k0(byteBuffer));
                            }
                            i++;
                        }
                        break;
                    default:
                        m66210O0(byteBuffer, m66207D02);
                        break;
                }
            } else {
                m66210O0(byteBuffer, m66207D02);
            }
            c14182od2 = c14182od;
        }
        throw new IOException("Error parsing file names");
    }

    /* renamed from: v0 */
    public final sog m66248v0(ByteBuffer byteBuffer) throws IOException {
        sog sogVar = new sog();
        int m66207D0 = (int) m66207D0(byteBuffer);
        rwd[] rwdVarArr = new rwd[m66207D0];
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < m66207D0; i++) {
            rwdVarArr[i] = new rwd();
            int m66218m0 = m66218m0(byteBuffer);
            int i2 = m66218m0 & 15;
            boolean z = (m66218m0 & 16) == 0;
            boolean z2 = (m66218m0 & 32) != 0;
            boolean z3 = (m66218m0 & 128) != 0;
            byte[] bArr = new byte[i2];
            rwdVarArr[i].f83567a = bArr;
            m66213h0(byteBuffer, bArr);
            if (z) {
                rwd rwdVar = rwdVarArr[i];
                rwdVar.f83568b = 1L;
                rwdVar.f83569c = 1L;
            } else {
                rwdVarArr[i].f83568b = m66207D0(byteBuffer);
                rwdVarArr[i].f83569c = m66207D0(byteBuffer);
            }
            rwd rwdVar2 = rwdVarArr[i];
            j += rwdVar2.f83568b;
            j2 += rwdVar2.f83569c;
            if (z2) {
                byte[] bArr2 = new byte[(int) m66207D0(byteBuffer)];
                rwdVarArr[i].f83570d = bArr2;
                m66213h0(byteBuffer, bArr2);
            }
            if (z3) {
                throw new IOException("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
            }
        }
        sogVar.f84391a = rwdVarArr;
        sogVar.f84392b = j;
        sogVar.f84393c = j2;
        long j3 = j2 - 1;
        int i3 = (int) j3;
        C13535br[] c13535brArr = new C13535br[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            C13535br c13535br = new C13535br();
            c13535brArr[i4] = c13535br;
            c13535br.f66042a = m66207D0(byteBuffer);
            c13535brArr[i4].f66043b = m66207D0(byteBuffer);
        }
        sogVar.f84394d = c13535brArr;
        long j4 = j - j3;
        int i5 = (int) j4;
        long[] jArr = new long[i5];
        if (j4 == 1) {
            int i6 = 0;
            while (i6 < ((int) j) && sogVar.m57209a(i6) >= 0) {
                i6++;
            }
            jArr[0] = i6;
        } else {
            for (int i7 = 0; i7 < i5; i7++) {
                jArr[i7] = m66207D0(byteBuffer);
            }
        }
        sogVar.f84395e = jArr;
        return sogVar;
    }

    /* renamed from: w0 */
    public final void m66249w0(ByteBuffer byteBuffer) throws IOException {
        byteBuffer.rewind();
        IOUtils.readFully(this.f105627f, byteBuffer);
        byteBuffer.flip();
    }

    /* renamed from: x0 */
    public final void m66250x0(ByteBuffer byteBuffer, C14182od c14182od) throws IOException {
        int position = byteBuffer.position();
        m66226G0(byteBuffer).m66271r(this.f105633l.getMaxMemoryLimitInKb());
        byteBuffer.position(position);
        int m66218m0 = m66218m0(byteBuffer);
        if (m66218m0 == 2) {
            m66244r0(byteBuffer);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 3) {
            throw new IOException("Additional streams unsupported");
        }
        if (m66218m0 == 4) {
            m66222B0(byteBuffer, c14182od);
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 5) {
            m66247u0(byteBuffer, c14182od);
            m66218m0(byteBuffer);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* renamed from: y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.sunia.HTREnginev2.C14182od m66251y0(byte[] r8) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 12
            java.nio.ByteBuffer r0 = java.nio.ByteBuffer.allocate(r0)
            java.nio.ByteOrder r1 = java.nio.ByteOrder.LITTLE_ENDIAN
            java.nio.ByteBuffer r0 = r0.order(r1)
            r7.m66249w0(r0)
            r1 = 6
            byte[] r1 = new byte[r1]
            r0.get(r1)
            byte[] r2 = org.apache.commons.compress.archivers.sevenz.SevenZFile.f105625r
            boolean r1 = java.util.Arrays.equals(r1, r2)
            if (r1 == 0) goto L95
            byte r1 = r0.get()
            byte r2 = r0.get()
            if (r1 != 0) goto L7d
            int r0 = r0.getInt()
            long r0 = (long) r0
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r2
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r3 = 1
            if (r2 != 0) goto L5c
            java.nio.channels.SeekableByteChannel r2 = r7.f105627f
            long r4 = r2.position()
            r2 = 20
            java.nio.ByteBuffer r2 = java.nio.ByteBuffer.allocate(r2)
            r7.m66249w0(r2)
            java.nio.channels.SeekableByteChannel r6 = r7.f105627f
            r6.position(r4)
        L4d:
            boolean r4 = r2.hasRemaining()
            if (r4 == 0) goto L5a
            byte r4 = r2.get()
            if (r4 == 0) goto L4d
            goto L5c
        L5a:
            r2 = 0
            goto L5d
        L5c:
            r2 = r3
        L5d:
            if (r2 == 0) goto L68
            com.sunia.HTREnginev2.vxm r0 = r7.m66221A0(r0)
            com.sunia.HTREnginev2.od r7 = r7.m66242o0(r0, r8, r3)
            return r7
        L68:
            org.apache.commons.compress.archivers.sevenz.SevenZFileOptions r0 = r7.f105633l
            boolean r0 = r0.getTryToRecoverBrokenArchives()
            if (r0 == 0) goto L75
            com.sunia.HTREnginev2.od r7 = r7.m66236Q0(r8)
            return r7
        L75:
            java.io.IOException r7 = new java.io.IOException
            java.lang.String r8 = "archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely."
            r7.<init>(r8)
            throw r7
        L7d:
            java.io.IOException r7 = new java.io.IOException
            java.lang.Byte r8 = java.lang.Byte.valueOf(r1)
            java.lang.Byte r0 = java.lang.Byte.valueOf(r2)
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r0}
            java.lang.String r0 = "Unsupported 7z version (%d,%d)"
            java.lang.String r8 = java.lang.String.format(r0, r8)
            r7.<init>(r8)
            throw r7
        L95:
            java.io.IOException r7 = new java.io.IOException
            java.lang.String r8 = "Bad 7z signature"
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.sevenz.SevenZFile.m66251y0(byte[]):com.sunia.HTREnginev2.od");
    }

    /* renamed from: z0 */
    public final void m66252z0(ByteBuffer byteBuffer, C14182od c14182od) throws IOException {
        c14182od.f79579a = m66207D0(byteBuffer);
        int m66207D0 = (int) m66207D0(byteBuffer);
        int m66218m0 = m66218m0(byteBuffer);
        if (m66218m0 == 9) {
            c14182od.f79580b = new long[m66207D0];
            int i = 0;
            while (true) {
                long[] jArr = c14182od.f79580b;
                if (i >= jArr.length) {
                    break;
                }
                jArr[i] = m66207D0(byteBuffer);
                i++;
            }
            m66218m0 = m66218m0(byteBuffer);
        }
        if (m66218m0 == 10) {
            c14182od.f79581c = m66243q0(byteBuffer, m66207D0);
            c14182od.f79582d = new long[m66207D0];
            for (int i2 = 0; i2 < m66207D0; i2++) {
                if (c14182od.f79581c.get(i2)) {
                    c14182od.f79582d[i2] = m66216k0(byteBuffer) & 4294967295L;
                }
            }
            m66218m0(byteBuffer);
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.SevenZFile$a */
    /* loaded from: classes12.dex */
    public class C18842a extends FilterInputStream {
        public C18842a(InputStream inputStream) {
            super(inputStream);
        }

        /* renamed from: f */
        public final void m66253f(int i) {
            SevenZFile.this.f105634m += i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = ((FilterInputStream) this).in.read();
            if (read >= 0) {
                m66253f(1);
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            return read(bArr, 0, bArr.length);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i, i2);
            if (read >= 0) {
                m66253f(read);
            }
            return read;
        }
    }

    public SevenZFile(File file, char[] cArr, SevenZFileOptions sevenZFileOptions) throws IOException {
        this(Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.READ), new FileAttribute[0]), file.getAbsolutePath(), m66211R0(cArr), true, sevenZFileOptions);
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int read = m66240j0().read(bArr, i, i2);
        if (read > 0) {
            this.f105635n += read;
        }
        return read;
    }

    @Deprecated
    public SevenZFile(File file, byte[] bArr) throws IOException {
        this(Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.READ), new FileAttribute[0]), file.getAbsolutePath(), bArr, true, SevenZFileOptions.DEFAULT);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel) throws IOException {
        this(seekableByteChannel, SevenZFileOptions.DEFAULT);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, SevenZFileOptions sevenZFileOptions) throws IOException {
        this(seekableByteChannel, f105624q, null, sevenZFileOptions);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, char[] cArr) throws IOException {
        this(seekableByteChannel, cArr, SevenZFileOptions.DEFAULT);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, char[] cArr, SevenZFileOptions sevenZFileOptions) throws IOException {
        this(seekableByteChannel, f105624q, cArr, sevenZFileOptions);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, char[] cArr) throws IOException {
        this(seekableByteChannel, str, cArr, SevenZFileOptions.DEFAULT);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, char[] cArr, SevenZFileOptions sevenZFileOptions) throws IOException {
        this(seekableByteChannel, str, m66211R0(cArr), false, sevenZFileOptions);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str) throws IOException {
        this(seekableByteChannel, str, SevenZFileOptions.DEFAULT);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, SevenZFileOptions sevenZFileOptions) throws IOException {
        this(seekableByteChannel, str, null, false, sevenZFileOptions);
    }

    @Deprecated
    public SevenZFile(SeekableByteChannel seekableByteChannel, byte[] bArr) throws IOException {
        this(seekableByteChannel, f105624q, bArr);
    }

    @Deprecated
    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, byte[] bArr) throws IOException {
        this(seekableByteChannel, str, bArr, false, SevenZFileOptions.DEFAULT);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, byte[] bArr, boolean z, SevenZFileOptions sevenZFileOptions) throws IOException {
        this.f105629h = -1;
        this.f105630i = -1;
        this.f105636o = new ArrayList<>();
        this.f105627f = seekableByteChannel;
        this.f105626e = str;
        this.f105633l = sevenZFileOptions;
        try {
            this.f105628g = m66251y0(bArr);
            if (bArr != null) {
                this.f105632k = Arrays.copyOf(bArr, bArr.length);
            } else {
                this.f105632k = null;
            }
        } catch (Throwable th) {
            if (z) {
                this.f105627f.close();
            }
            throw th;
        }
    }

    public SevenZFile(File file) throws IOException {
        this(file, SevenZFileOptions.DEFAULT);
    }

    public SevenZFile(File file, SevenZFileOptions sevenZFileOptions) throws IOException {
        this(file, (char[]) null, sevenZFileOptions);
    }
}
