package org.apache.commons.compress.compressors.lz4;

import com.fasterxml.jackson.core.base.ParserBase;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.ChecksumCalculatingInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class FramedLZ4CompressorInputStream extends CompressorInputStream implements InputStreamStatistics {

    /* renamed from: J */
    public static final int f106191J = 8;

    /* renamed from: O */
    public static final int f106192O = 4;

    /* renamed from: Q */
    public static final int f106193Q = 112;

    /* renamed from: Z */
    public static final int f106194Z = Integer.MIN_VALUE;

    /* renamed from: t */
    public static final byte[] f106195t = {4, 34, 77, 24};

    /* renamed from: u */
    public static final byte[] f106196u = {42, 77, 24};

    /* renamed from: v */
    public static final byte f106197v = 80;

    /* renamed from: w */
    public static final int f106198w = 192;

    /* renamed from: x */
    public static final int f106199x = 64;

    /* renamed from: y */
    public static final int f106200y = 32;

    /* renamed from: z */
    public static final int f106201z = 16;

    /* renamed from: f */
    public final byte[] f106202f;

    /* renamed from: g */
    public final ByteUtils.ByteSupplier f106203g;

    /* renamed from: h */
    public final CountingInputStream f106204h;

    /* renamed from: i */
    public final boolean f106205i;

    /* renamed from: j */
    public boolean f106206j;

    /* renamed from: k */
    public boolean f106207k;

    /* renamed from: l */
    public boolean f106208l;

    /* renamed from: m */
    public boolean f106209m;

    /* renamed from: n */
    public InputStream f106210n;

    /* renamed from: o */
    public boolean f106211o;

    /* renamed from: p */
    public boolean f106212p;

    /* renamed from: q */
    public final XXHash32 f106213q;

    /* renamed from: r */
    public final XXHash32 f106214r;

    /* renamed from: s */
    public byte[] f106215s;

    public FramedLZ4CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    /* renamed from: H */
    public static boolean m66748H(byte[] bArr) {
        if ((bArr[0] & f106197v) != 80) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (bArr[i] != f106196u[i - 1]) {
                return false;
            }
        }
        return true;
    }

    public static boolean matches(byte[] bArr, int i) {
        byte[] bArr2 = f106195t;
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

    /* renamed from: I */
    public final void m66750I() throws IOException {
        InputStream inputStream = this.f106210n;
        if (inputStream != null) {
            inputStream.close();
            this.f106210n = null;
            if (this.f106206j) {
                m66756i0(this.f106214r, BreakpointSQLiteHelper.f39283i);
                this.f106214r.reset();
            }
        }
    }

    /* renamed from: M */
    public final void m66751M() throws IOException {
        m66750I();
        long fromLittleEndian = ByteUtils.fromLittleEndian(this.f106203g, 4);
        boolean z = (ParserBase.f21225q & fromLittleEndian) != 0;
        int i = (int) (fromLittleEndian & 2147483647L);
        if (i == 0) {
            m66758j0();
            if (this.f106205i) {
                m66759w(false);
                return;
            } else {
                this.f106211o = true;
                return;
            }
        }
        InputStream boundedInputStream = new BoundedInputStream(this.f106204h, i);
        if (this.f106206j) {
            boundedInputStream = new ChecksumCalculatingInputStream(this.f106214r, boundedInputStream);
        }
        if (z) {
            this.f106212p = true;
            this.f106210n = boundedInputStream;
            return;
        }
        this.f106212p = false;
        BlockLZ4CompressorInputStream blockLZ4CompressorInputStream = new BlockLZ4CompressorInputStream(boundedInputStream);
        if (this.f106207k) {
            blockLZ4CompressorInputStream.prefill(this.f106215s);
        }
        this.f106210n = blockLZ4CompressorInputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            InputStream inputStream = this.f106210n;
            if (inputStream != null) {
                inputStream.close();
                this.f106210n = null;
            }
        } finally {
            this.f106204h.close();
        }
    }

    /* renamed from: e0 */
    public final void m66752e0() throws IOException {
        int readOneByte = readOneByte();
        if (readOneByte == -1) {
            throw new IOException("Premature end of stream while reading frame flags");
        }
        this.f106213q.update(readOneByte);
        if ((readOneByte & 192) != 64) {
            throw new IOException("Unsupported version " + (readOneByte >> 6));
        }
        boolean z = (readOneByte & 32) == 0;
        this.f106207k = z;
        if (!z) {
            this.f106215s = null;
        } else if (this.f106215s == null) {
            this.f106215s = new byte[65536];
        }
        this.f106206j = (readOneByte & 16) != 0;
        this.f106208l = (readOneByte & 8) != 0;
        this.f106209m = (readOneByte & 4) != 0;
        int readOneByte2 = readOneByte();
        if (readOneByte2 == -1) {
            throw new IOException("Premature end of stream while reading frame BD byte");
        }
        this.f106213q.update(readOneByte2);
        if (this.f106208l) {
            byte[] bArr = new byte[8];
            int readFully = IOUtils.readFully(this.f106204h, bArr);
            count(readFully);
            if (8 != readFully) {
                throw new IOException("Premature end of stream while reading content size");
            }
            this.f106213q.update(bArr, 0, 8);
        }
        int readOneByte3 = readOneByte();
        if (readOneByte3 == -1) {
            throw new IOException("Premature end of stream while reading frame header checksum");
        }
        int value = (int) ((this.f106213q.getValue() >> 8) & 255);
        this.f106213q.reset();
        if (readOneByte3 != value) {
            throw new IOException("Frame header checksum mismatch");
        }
    }

    /* renamed from: f0 */
    public final int m66753f0(byte[] bArr, int i, int i2) throws IOException {
        if (this.f106212p) {
            int read = this.f106210n.read(bArr, i, i2);
            count(read);
            return read;
        }
        BlockLZ4CompressorInputStream blockLZ4CompressorInputStream = (BlockLZ4CompressorInputStream) this.f106210n;
        long bytesRead = blockLZ4CompressorInputStream.getBytesRead();
        int read2 = this.f106210n.read(bArr, i, i2);
        count(blockLZ4CompressorInputStream.getBytesRead() - bytesRead);
        return read2;
    }

    /* renamed from: g0 */
    public final boolean m66754g0(boolean z) throws IOException {
        String str = z ? "Not a LZ4 frame stream" : "LZ4 frame stream followed by garbage";
        byte[] bArr = new byte[4];
        int readFully = IOUtils.readFully(this.f106204h, bArr);
        count(readFully);
        if (readFully == 0 && !z) {
            this.f106211o = true;
            return false;
        }
        if (4 != readFully) {
            throw new IOException(str);
        }
        int m66755h0 = m66755h0(bArr);
        if (m66755h0 == 0 && !z) {
            this.f106211o = true;
            return false;
        }
        if (4 == m66755h0 && matches(bArr, 4)) {
            return true;
        }
        throw new IOException(str);
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106204h.getBytesRead();
    }

    /* renamed from: h0 */
    public final int m66755h0(byte[] bArr) throws IOException {
        int i = 4;
        while (i == 4 && m66748H(bArr)) {
            long fromLittleEndian = ByteUtils.fromLittleEndian(this.f106203g, 4);
            if (fromLittleEndian < 0) {
                throw new IOException("Found illegal skippable frame with negative size");
            }
            long skip = IOUtils.skip(this.f106204h, fromLittleEndian);
            count(skip);
            if (fromLittleEndian != skip) {
                throw new IOException("Premature end of stream while skipping frame");
            }
            i = IOUtils.readFully(this.f106204h, bArr);
            count(i);
        }
        return i;
    }

    /* renamed from: i0 */
    public final void m66756i0(XXHash32 xXHash32, String str) throws IOException {
        byte[] bArr = new byte[4];
        int readFully = IOUtils.readFully(this.f106204h, bArr);
        count(readFully);
        if (4 != readFully) {
            throw new IOException("Premature end of stream while reading " + str + " checksum");
        }
        if (xXHash32.getValue() == ByteUtils.fromLittleEndian(bArr)) {
            return;
        }
        throw new IOException(str + " checksum mismatch.");
    }

    /* renamed from: j */
    public final void m66757j(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, this.f106215s.length);
        if (min > 0) {
            byte[] bArr2 = this.f106215s;
            int length = bArr2.length - min;
            if (length > 0) {
                System.arraycopy(bArr2, min, bArr2, 0, length);
            }
            System.arraycopy(bArr, i, this.f106215s, length, min);
        }
    }

    /* renamed from: j0 */
    public final void m66758j0() throws IOException {
        if (this.f106209m) {
            m66756i0(this.f106213q, "content");
        }
        this.f106213q.reset();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f106202f, 0, 1) == -1) {
            return -1;
        }
        return this.f106202f[0] & 255;
    }

    public final int readOneByte() throws IOException {
        int read = this.f106204h.read();
        if (read == -1) {
            return -1;
        }
        count(1);
        return read & 255;
    }

    /* renamed from: w */
    public final void m66759w(boolean z) throws IOException {
        if (m66754g0(z)) {
            m66752e0();
            m66751M();
        }
    }

    public FramedLZ4CompressorInputStream(InputStream inputStream, boolean z) throws IOException {
        this.f106202f = new byte[1];
        this.f106203g = new ByteUtils.ByteSupplier() { // from class: com.sunia.HTREnginev2.rvg
            @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
            public final int getAsByte() {
                int readOneByte;
                readOneByte = FramedLZ4CompressorInputStream.this.readOneByte();
                return readOneByte;
            }
        };
        this.f106213q = new XXHash32();
        this.f106214r = new XXHash32();
        this.f106204h = new CountingInputStream(inputStream);
        this.f106205i = z;
        m66759w(true);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f106211o) {
            return -1;
        }
        int m66753f0 = m66753f0(bArr, i, i2);
        if (m66753f0 == -1) {
            m66751M();
            if (!this.f106211o) {
                m66753f0 = m66753f0(bArr, i, i2);
            }
        }
        if (m66753f0 != -1) {
            if (this.f106207k) {
                m66757j(bArr, i, m66753f0);
            }
            if (this.f106209m) {
                this.f106213q.update(bArr, i, m66753f0);
            }
        }
        return m66753f0;
    }
}
