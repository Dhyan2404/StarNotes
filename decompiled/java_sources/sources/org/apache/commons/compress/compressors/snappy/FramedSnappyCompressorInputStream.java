package org.apache.commons.compress.compressors.snappy;

import com.alibaba.fastjson2.JSONB;
import com.sunia.HTREnginev2.fal;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.commons.compress.compressors.snappy.FramedSnappyCompressorInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class FramedSnappyCompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: J */
    public static final byte[] f106323J = {-1, 6, 0, 0, 115, JSONB.Constants.BC_STR_ASCII_FIX_5, 97, FramedLZ4CompressorInputStream.f106197v, 112, 89};

    /* renamed from: s */
    public static final long f106324s = 2726488792L;

    /* renamed from: t */
    public static final int f106325t = 255;

    /* renamed from: u */
    public static final int f106326u = 0;

    /* renamed from: v */
    public static final int f106327v = 1;

    /* renamed from: w */
    public static final int f106328w = 254;

    /* renamed from: x */
    public static final int f106329x = 2;

    /* renamed from: y */
    public static final int f106330y = 127;

    /* renamed from: z */
    public static final int f106331z = 253;

    /* renamed from: f */
    public long f106332f;

    /* renamed from: g */
    public final CountingInputStream f106333g;

    /* renamed from: h */
    public final PushbackInputStream f106334h;

    /* renamed from: i */
    public final FramedSnappyDialect f106335i;

    /* renamed from: j */
    public SnappyCompressorInputStream f106336j;

    /* renamed from: k */
    public final byte[] f106337k;

    /* renamed from: l */
    public boolean f106338l;

    /* renamed from: m */
    public boolean f106339m;

    /* renamed from: n */
    public int f106340n;

    /* renamed from: o */
    public long f106341o;

    /* renamed from: p */
    public final int f106342p;

    /* renamed from: q */
    public final fal f106343q;

    /* renamed from: r */
    public final ByteUtils.ByteSupplier f106344r;

    public FramedSnappyCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, FramedSnappyDialect.STANDARD);
    }

    /* renamed from: f0 */
    public static long m66794f0(long j) {
        long j2 = (j - f106324s) & 4294967295L;
        return ((j2 << 15) | (j2 >> 17)) & 4294967295L;
    }

    public static boolean matches(byte[] bArr, int i) {
        byte[] bArr2 = f106323J;
        if (i < bArr2.length) {
            return false;
        }
        if (bArr.length > bArr2.length) {
            byte[] bArr3 = new byte[bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr2.length);
            bArr = bArr3;
        }
        return Arrays.equals(bArr, bArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m66795H(byte[] r5, int r6, int r7) throws java.io.IOException {
        /*
            r4 = this;
            boolean r0 = r4.f106339m
            r1 = -1
            if (r0 == 0) goto L1f
            int r0 = r4.f106340n
            int r7 = java.lang.Math.min(r0, r7)
            if (r7 != 0) goto Le
            return r1
        Le:
            java.io.PushbackInputStream r0 = r4.f106334h
            int r7 = r0.read(r5, r6, r7)
            if (r7 == r1) goto L42
            int r0 = r4.f106340n
            int r0 = r0 - r7
            r4.f106340n = r0
            r4.count(r7)
            goto L42
        L1f:
            org.apache.commons.compress.compressors.snappy.SnappyCompressorInputStream r0 = r4.f106336j
            if (r0 == 0) goto L43
            long r2 = r0.getBytesRead()
            org.apache.commons.compress.compressors.snappy.SnappyCompressorInputStream r0 = r4.f106336j
            int r7 = r0.read(r5, r6, r7)
            if (r7 != r1) goto L38
            org.apache.commons.compress.compressors.snappy.SnappyCompressorInputStream r0 = r4.f106336j
            r0.close()
            r0 = 0
            r4.f106336j = r0
            goto L42
        L38:
            org.apache.commons.compress.compressors.snappy.SnappyCompressorInputStream r0 = r4.f106336j
            long r0 = r0.getBytesRead()
            long r0 = r0 - r2
            r4.count(r0)
        L42:
            r1 = r7
        L43:
            if (r1 <= 0) goto L4a
            com.sunia.HTREnginev2.fal r4 = r4.f106343q
            r4.update(r5, r6, r1)
        L4a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.compressors.snappy.FramedSnappyCompressorInputStream.m66795H(byte[], int, int):int");
    }

    /* renamed from: I */
    public final int m66796I() throws IOException {
        return (int) ByteUtils.fromLittleEndian(this.f106344r, 3);
    }

    /* renamed from: M */
    public final void m66797M() throws IOException {
        byte[] bArr = new byte[10];
        int readFully = IOUtils.readFully(this.f106334h, bArr);
        count(readFully);
        if (10 != readFully || !matches(bArr, 10)) {
            throw new IOException("Not a framed Snappy stream");
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.f106339m) {
            return Math.min(this.f106340n, this.f106334h.available());
        }
        SnappyCompressorInputStream snappyCompressorInputStream = this.f106336j;
        if (snappyCompressorInputStream != null) {
            return snappyCompressorInputStream.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            SnappyCompressorInputStream snappyCompressorInputStream = this.f106336j;
            if (snappyCompressorInputStream != null) {
                snappyCompressorInputStream.close();
                this.f106336j = null;
            }
        } finally {
            this.f106334h.close();
        }
    }

    /* renamed from: e0 */
    public final void m66798e0() throws IOException {
        int m66796I = m66796I();
        if (m66796I < 0) {
            throw new IOException("Found illegal chunk with negative size");
        }
        long j = m66796I;
        long skip = IOUtils.skip(this.f106334h, j);
        count(skip);
        if (skip != j) {
            throw new IOException("Premature end of stream");
        }
    }

    /* renamed from: g0 */
    public final void m66799g0() throws IOException {
        long j = this.f106341o;
        if (j >= 0 && j != this.f106343q.getValue()) {
            throw new IOException("Checksum verification failed");
        }
        this.f106341o = -1L;
        this.f106343q.reset();
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106333g.getBytesRead() - this.f106332f;
    }

    /* renamed from: j */
    public final long m66800j() throws IOException {
        byte[] bArr = new byte[4];
        int readFully = IOUtils.readFully(this.f106334h, bArr);
        count(readFully);
        if (readFully == 4) {
            return ByteUtils.fromLittleEndian(bArr);
        }
        throw new IOException("Premature end of stream");
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f106337k, 0, 1) == -1) {
            return -1;
        }
        return this.f106337k[0] & 255;
    }

    public final int readOneByte() throws IOException {
        int read = this.f106334h.read();
        if (read == -1) {
            return -1;
        }
        count(1);
        return read & 255;
    }

    /* renamed from: w */
    public final void m66801w() throws IOException {
        m66799g0();
        this.f106339m = false;
        int readOneByte = readOneByte();
        if (readOneByte == -1) {
            this.f106338l = true;
            return;
        }
        if (readOneByte == 255) {
            this.f106334h.unread(readOneByte);
            this.f106332f++;
            pushedBackBytes(1L);
            m66797M();
            m66801w();
            return;
        }
        if (readOneByte == 254 || (readOneByte > 127 && readOneByte <= 253)) {
            m66798e0();
            m66801w();
            return;
        }
        if (readOneByte >= 2 && readOneByte <= 127) {
            throw new IOException("Unskippable chunk with type " + readOneByte + " (hex " + Integer.toHexString(readOneByte) + ") detected.");
        }
        if (readOneByte == 1) {
            this.f106339m = true;
            int m66796I = m66796I() - 4;
            this.f106340n = m66796I;
            if (m66796I < 0) {
                throw new IOException("Found illegal chunk with negative size");
            }
            this.f106341o = m66794f0(m66800j());
            return;
        }
        if (readOneByte != 0) {
            throw new IOException("Unknown chunk type " + readOneByte + " detected.");
        }
        boolean usesChecksumWithCompressedChunks = this.f106335i.usesChecksumWithCompressedChunks();
        long m66796I2 = m66796I() - (usesChecksumWithCompressedChunks ? 4L : 0L);
        if (m66796I2 < 0) {
            throw new IOException("Found illegal chunk with negative size");
        }
        if (usesChecksumWithCompressedChunks) {
            this.f106341o = m66794f0(m66800j());
        } else {
            this.f106341o = -1L;
        }
        SnappyCompressorInputStream snappyCompressorInputStream = new SnappyCompressorInputStream(new BoundedInputStream(this.f106334h, m66796I2), this.f106342p);
        this.f106336j = snappyCompressorInputStream;
        count(snappyCompressorInputStream.getBytesRead());
    }

    public FramedSnappyCompressorInputStream(InputStream inputStream, FramedSnappyDialect framedSnappyDialect) throws IOException {
        this(inputStream, 32768, framedSnappyDialect);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int m66795H = m66795H(bArr, i, i2);
        if (m66795H != -1) {
            return m66795H;
        }
        m66801w();
        if (this.f106338l) {
            return -1;
        }
        return m66795H(bArr, i, i2);
    }

    public FramedSnappyCompressorInputStream(InputStream inputStream, int i, FramedSnappyDialect framedSnappyDialect) throws IOException {
        this.f106337k = new byte[1];
        this.f106341o = -1L;
        this.f106343q = new fal();
        this.f106344r = new ByteUtils.ByteSupplier() { // from class: com.sunia.HTREnginev2.svg
            @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
            public final int getAsByte() {
                int readOneByte;
                readOneByte = FramedSnappyCompressorInputStream.this.readOneByte();
                return readOneByte;
            }
        };
        if (i > 0) {
            CountingInputStream countingInputStream = new CountingInputStream(inputStream);
            this.f106333g = countingInputStream;
            this.f106334h = new PushbackInputStream(countingInputStream, 1);
            this.f106342p = i;
            this.f106335i = framedSnappyDialect;
            if (framedSnappyDialect.hasStreamIdentifier()) {
                m66797M();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("blockSize must be bigger than 0");
    }
}
