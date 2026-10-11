package org.apache.commons.compress.archivers.dump;

import com.sunia.HTREnginev2.yjf;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.apache.commons.compress.archivers.dump.DumpArchiveConstants;
import org.apache.commons.compress.utils.ExactMath;
import org.apache.commons.compress.utils.IOUtils;

/* renamed from: org.apache.commons.compress.archivers.dump.a */
/* loaded from: classes12.dex */
public class C18829a extends FilterInputStream {

    /* renamed from: k */
    public static final int f105580k = 1024;

    /* renamed from: e */
    public byte[] f105581e;

    /* renamed from: f */
    public int f105582f;

    /* renamed from: g */
    public int f105583g;

    /* renamed from: h */
    public int f105584h;

    /* renamed from: i */
    public boolean f105585i;

    /* renamed from: j */
    public long f105586j;

    /* renamed from: org.apache.commons.compress.archivers.dump.a$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f105587a;

        static {
            int[] iArr = new int[DumpArchiveConstants.COMPRESSION_TYPE.values().length];
            f105587a = iArr;
            try {
                iArr[DumpArchiveConstants.COMPRESSION_TYPE.ZLIB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f105587a[DumpArchiveConstants.COMPRESSION_TYPE.BZLIB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f105587a[DumpArchiveConstants.COMPRESSION_TYPE.LZO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C18829a(InputStream inputStream) {
        super(inputStream);
        this.f105581e = new byte[1024];
        this.f105582f = -1;
        this.f105583g = 1024;
        this.f105584h = 1024;
    }

    /* renamed from: H */
    public final byte[] m66166H(int i) throws IOException {
        byte[] readRange = IOUtils.readRange(((FilterInputStream) this).in, i);
        if (readRange.length >= i) {
            return readRange;
        }
        throw new ShortFileException();
    }

    /* renamed from: I */
    public byte[] m66167I() throws IOException {
        byte[] bArr = new byte[1024];
        if (-1 != read(bArr, 0, 1024)) {
            return bArr;
        }
        throw new ShortFileException();
    }

    /* renamed from: M */
    public void m66168M(int i, boolean z) throws IOException {
        this.f105585i = z;
        if (i < 1) {
            throw new IOException("Block with " + i + " records found, must be at least 1");
        }
        int i2 = i * 1024;
        this.f105583g = i2;
        byte[] bArr = this.f105581e;
        byte[] bArr2 = new byte[i2];
        this.f105581e = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, 1024);
        readFully(this.f105581e, 1024, this.f105583g - 1024);
        this.f105582f = 0;
        this.f105584h = 1024;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.f105584h;
        int i2 = this.f105583g;
        return i < i2 ? i2 - i : ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (((FilterInputStream) this).in == null || ((FilterInputStream) this).in == System.in) {
            return;
        }
        ((FilterInputStream) this).in.close();
    }

    /* renamed from: f */
    public long m66169f() {
        return this.f105586j;
    }

    /* renamed from: j */
    public byte[] m66170j() throws IOException {
        if (this.f105584h == this.f105583g) {
            try {
                m66171w(true);
            } catch (ShortFileException unused) {
                return null;
            }
        }
        byte[] bArr = new byte[1024];
        System.arraycopy(this.f105581e, this.f105584h, bArr, 0, 1024);
        return bArr;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        throw new IllegalArgumentException("All reads must be multiple of record size (1024 bytes.");
    }

    public final void readFully(byte[] bArr, int i, int i2) throws IOException {
        if (IOUtils.readFully(((FilterInputStream) this).in, bArr, i, i2) < i2) {
            throw new ShortFileException();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        if (j % 1024 != 0) {
            throw new IllegalArgumentException("All reads must be multiple of record size (1024 bytes.");
        }
        while (j2 < j) {
            int i = this.f105584h;
            int i2 = this.f105583g;
            if (i == i2) {
                try {
                    m66171w(j - j2 < ((long) i2));
                } catch (ShortFileException unused) {
                    return -1L;
                }
            }
            int i3 = this.f105584h;
            long j3 = j - j2;
            long j4 = i3 + j3;
            int i4 = this.f105583g;
            if (j4 > i4) {
                j3 = i4 - i3;
            }
            this.f105584h = ExactMath.add(i3, j3);
            j2 += j3;
        }
        return j2;
    }

    /* renamed from: w */
    public final void m66171w(boolean z) throws IOException {
        if (((FilterInputStream) this).in == null) {
            throw new IOException("Input buffer is closed");
        }
        if (!this.f105585i || this.f105582f == -1) {
            readFully(this.f105581e, 0, this.f105583g);
            this.f105586j += this.f105583g;
        } else {
            readFully(this.f105581e, 0, 4);
            this.f105586j += 4;
            int m58437c = yjf.m58437c(this.f105581e, 0);
            if ((m58437c & 1) == 1) {
                int i = (m58437c >> 1) & 7;
                int i2 = (m58437c >> 4) & 268435455;
                byte[] m66166H = m66166H(i2);
                this.f105586j += i2;
                if (z) {
                    int i3 = a.f105587a[DumpArchiveConstants.COMPRESSION_TYPE.find(i & 3).ordinal()];
                    if (i3 != 1) {
                        if (i3 == 2) {
                            throw new UnsupportedCompressionAlgorithmException("BZLIB2");
                        }
                        if (i3 == 3) {
                            throw new UnsupportedCompressionAlgorithmException("LZO");
                        }
                        throw new UnsupportedCompressionAlgorithmException();
                    }
                    Inflater inflater = new Inflater();
                    try {
                        try {
                            inflater.setInput(m66166H, 0, m66166H.length);
                            if (inflater.inflate(this.f105581e) != this.f105583g) {
                                throw new ShortFileException();
                            }
                        } catch (DataFormatException e) {
                            throw new DumpArchiveException("Bad data", e);
                        }
                    } finally {
                        inflater.end();
                    }
                } else {
                    Arrays.fill(this.f105581e, (byte) 0);
                }
            } else {
                readFully(this.f105581e, 0, this.f105583g);
                this.f105586j += this.f105583g;
            }
        }
        this.f105582f++;
        this.f105584h = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (i2 % 1024 != 0) {
            throw new IllegalArgumentException("All reads must be multiple of record size (1024 bytes.");
        }
        while (i3 < i2) {
            if (this.f105584h == this.f105583g) {
                try {
                    m66171w(true);
                } catch (ShortFileException unused) {
                    return -1;
                }
            }
            int i4 = this.f105584h;
            int i5 = i2 - i3;
            int i6 = i4 + i5;
            int i7 = this.f105583g;
            if (i6 > i7) {
                i5 = i7 - i4;
            }
            System.arraycopy(this.f105581e, i4, bArr, i, i5);
            this.f105584h += i5;
            i3 += i5;
            i += i5;
        }
        return i3;
    }
}
