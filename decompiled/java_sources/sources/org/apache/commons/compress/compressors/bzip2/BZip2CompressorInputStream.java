package org.apache.commons.compress.compressors.bzip2;

import com.sunia.HTREnginev2.InterfaceC13489am;
import com.sunia.HTREnginev2.icl;
import com.sunia.HTREnginev2.l20;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class BZip2CompressorInputStream extends CompressorInputStream implements InterfaceC13489am, InputStreamStatistics {

    /* renamed from: Q */
    public static final int f105986Q = 0;

    /* renamed from: Z */
    public static final int f105987Z = 1;

    /* renamed from: k0 */
    public static final int f105988k0 = 2;

    /* renamed from: q0 */
    public static final int f105989q0 = 3;

    /* renamed from: t0 */
    public static final int f105990t0 = 4;

    /* renamed from: u0 */
    public static final int f105991u0 = 5;

    /* renamed from: v0 */
    public static final int f105992v0 = 6;

    /* renamed from: w0 */
    public static final int f105993w0 = 7;

    /* renamed from: J */
    public char f105994J;

    /* renamed from: O */
    public C18878a f105995O;

    /* renamed from: f */
    public int f105996f;

    /* renamed from: g */
    public int f105997g;

    /* renamed from: h */
    public int f105998h;

    /* renamed from: i */
    public boolean f105999i;

    /* renamed from: j */
    public final l20 f106000j;

    /* renamed from: k */
    public int f106001k;

    /* renamed from: l */
    public BitInputStream f106002l;

    /* renamed from: m */
    public final boolean f106003m;

    /* renamed from: n */
    public int f106004n;

    /* renamed from: o */
    public int f106005o;

    /* renamed from: p */
    public int f106006p;

    /* renamed from: q */
    public int f106007q;

    /* renamed from: r */
    public int f106008r;

    /* renamed from: s */
    public int f106009s;

    /* renamed from: t */
    public int f106010t;

    /* renamed from: u */
    public int f106011u;

    /* renamed from: v */
    public int f106012v;

    /* renamed from: w */
    public int f106013w;

    /* renamed from: x */
    public int f106014x;

    /* renamed from: y */
    public int f106015y;

    /* renamed from: z */
    public int f106016z;

    /* renamed from: org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream$a */
    /* loaded from: classes12.dex */
    public static final class C18878a {

        /* renamed from: a */
        public final boolean[] f106017a = new boolean[256];

        /* renamed from: b */
        public final byte[] f106018b = new byte[256];

        /* renamed from: c */
        public final byte[] f106019c = new byte[InterfaceC13489am.f64827p0];

        /* renamed from: d */
        public final byte[] f106020d = new byte[InterfaceC13489am.f64827p0];

        /* renamed from: e */
        public final int[] f106021e = new int[256];

        /* renamed from: f */
        public final int[][] f106022f;

        /* renamed from: g */
        public final int[][] f106023g;

        /* renamed from: h */
        public final int[][] f106024h;

        /* renamed from: i */
        public final int[] f106025i;

        /* renamed from: j */
        public final int[] f106026j;

        /* renamed from: k */
        public final char[] f106027k;

        /* renamed from: l */
        public final char[][] f106028l;

        /* renamed from: m */
        public final byte[] f106029m;

        /* renamed from: n */
        public int[] f106030n;

        /* renamed from: o */
        public final byte[] f106031o;

        public C18878a(int i) {
            Class cls = Integer.TYPE;
            this.f106022f = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.f106023g = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.f106024h = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.f106025i = new int[6];
            this.f106026j = new int[257];
            this.f106027k = new char[256];
            this.f106028l = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, 258);
            this.f106029m = new byte[6];
            this.f106031o = new byte[i * 100000];
        }

        /* renamed from: a */
        public int[] m66632a(int i) {
            int[] iArr = this.f106030n;
            if (iArr != null && iArr.length >= i) {
                return iArr;
            }
            int[] iArr2 = new int[i];
            this.f106030n = iArr2;
            return iArr2;
        }
    }

    public BZip2CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    /* renamed from: H */
    public static int m66608H(BitInputStream bitInputStream, int i) throws IOException {
        long readBits = bitInputStream.readBits(i);
        if (readBits >= 0) {
            return (int) readBits;
        }
        throw new IOException("Unexpected end of stream");
    }

    /* renamed from: I */
    public static void m66609I(int i, int i2, String str) throws IOException {
        if (i < 0) {
            throw new IOException("Corrupted input, " + str + " value negative");
        }
        if (i < i2) {
            return;
        }
        throw new IOException("Corrupted input, " + str + " value too big");
    }

    /* renamed from: f */
    public static boolean m66610f(BitInputStream bitInputStream) throws IOException {
        return m66608H(bitInputStream, 1) != 0;
    }

    /* renamed from: i0 */
    public static void m66611i0(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) throws IOException {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 <= i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                if (cArr[i7] == i6) {
                    iArr3[i5] = i7;
                    i5++;
                }
            }
        }
        int i8 = 23;
        while (true) {
            i8--;
            if (i8 <= 0) {
                break;
            }
            iArr2[i8] = 0;
            iArr[i8] = 0;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            char c = cArr[i9];
            m66609I(c, 258, "length");
            int i10 = c + 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        int i11 = iArr2[0];
        for (int i12 = 1; i12 < 23; i12++) {
            i11 += iArr2[i12];
            iArr2[i12] = i11;
        }
        int i13 = iArr2[i];
        int i14 = i;
        while (i14 <= i2) {
            int i15 = i14 + 1;
            int i16 = iArr2[i15];
            int i17 = i4 + (i16 - i13);
            iArr[i14] = i17 - 1;
            i4 = i17 << 1;
            i14 = i15;
            i13 = i16;
        }
        for (int i18 = i + 1; i18 <= i2; i18++) {
            iArr2[i18] = ((iArr[i18 - 1] + 1) << 1) - iArr2[i18];
        }
    }

    /* renamed from: j */
    public static int m66612j(BitInputStream bitInputStream) throws IOException {
        return m66608H(bitInputStream, 32);
    }

    public static boolean matches(byte[] bArr, int i) {
        return i >= 3 && bArr[0] == 66 && bArr[1] == 90 && bArr[2] == 104;
    }

    /* renamed from: w */
    public static char m66613w(BitInputStream bitInputStream) throws IOException {
        return (char) m66608H(bitInputStream, 8);
    }

    /* renamed from: M */
    public final boolean m66614M() throws IOException {
        int m66612j = m66612j(this.f106002l);
        this.f106006p = m66612j;
        this.f106004n = 0;
        this.f105995O = null;
        if (m66612j == this.f106008r) {
            return (this.f106003m && m66619j0(false)) ? false : true;
        }
        throw new IOException("BZip2 CRC error");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        BitInputStream bitInputStream = this.f106002l;
        if (bitInputStream != null) {
            try {
                bitInputStream.close();
            } finally {
                this.f105995O = null;
                this.f106002l = null;
            }
        }
    }

    /* renamed from: e0 */
    public final void m66615e0(int i, int i2) throws IOException {
        C18878a c18878a = this.f105995O;
        char[][] cArr = c18878a.f106028l;
        int[] iArr = c18878a.f106025i;
        int[][] iArr2 = c18878a.f106022f;
        int[][] iArr3 = c18878a.f106023g;
        int[][] iArr4 = c18878a.f106024h;
        for (int i3 = 0; i3 < i2; i3++) {
            char[] cArr2 = cArr[i3];
            char c = ' ';
            int i4 = i;
            char c2 = 0;
            while (true) {
                i4--;
                if (i4 >= 0) {
                    char c3 = cArr2[i4];
                    if (c3 > c2) {
                        c2 = c3;
                    }
                    if (c3 < c) {
                        c = c3;
                    }
                }
            }
            m66611i0(iArr2[i3], iArr3[i3], iArr4[i3], cArr[i3], c, c2, i);
            iArr[i3] = c;
        }
    }

    /* renamed from: f0 */
    public final void m66616f0() throws IOException {
        int m55367a = this.f106000j.m55367a();
        this.f106007q = m55367a;
        int i = this.f106005o;
        if (i == m55367a) {
            int i2 = this.f106008r;
            this.f106008r = m55367a ^ ((i2 >>> 31) | (i2 << 1));
        } else {
            int i3 = this.f106006p;
            this.f106008r = ((i3 >>> 31) | (i3 << 1)) ^ i;
            throw new IOException("BZip2 CRC error");
        }
    }

    /* renamed from: g0 */
    public final void m66617g0() throws IOException {
        int i;
        String str;
        char c;
        int i2;
        BZip2CompressorInputStream bZip2CompressorInputStream = this;
        BitInputStream bitInputStream = bZip2CompressorInputStream.f106002l;
        bZip2CompressorInputStream.f105997g = m66608H(bitInputStream, 24);
        m66624o0();
        C18878a c18878a = bZip2CompressorInputStream.f105995O;
        byte[] bArr = c18878a.f106031o;
        int[] iArr = c18878a.f106021e;
        byte[] bArr2 = c18878a.f106019c;
        byte[] bArr3 = c18878a.f106018b;
        char[] cArr = c18878a.f106027k;
        int[] iArr2 = c18878a.f106025i;
        int[][] iArr3 = c18878a.f106022f;
        int[][] iArr4 = c18878a.f106023g;
        int[][] iArr5 = c18878a.f106024h;
        int i3 = bZip2CompressorInputStream.f105998h * 100000;
        int i4 = 256;
        while (true) {
            i4--;
            if (i4 < 0) {
                break;
            }
            cArr[i4] = (char) i4;
            iArr[i4] = 0;
        }
        int i5 = bZip2CompressorInputStream.f106001k + 1;
        int m66618h0 = m66618h0();
        int i6 = bArr2[0] & 255;
        m66609I(i6, 6, "zt");
        int[] iArr6 = iArr4[i6];
        int[] iArr7 = iArr3[i6];
        int[] iArr8 = iArr5[i6];
        int i7 = iArr2[i6];
        int i8 = m66618h0;
        int i9 = 49;
        int i10 = -1;
        int i11 = 0;
        while (i8 != i5) {
            int i12 = i5;
            String str2 = "groupNo";
            BitInputStream bitInputStream2 = bitInputStream;
            if (i8 == 0 || i8 == 1) {
                int[] iArr9 = iArr2;
                int i13 = i8;
                int i14 = i3;
                byte[] bArr4 = bArr;
                i8 = i13;
                int i15 = -1;
                int i16 = i9;
                int i17 = i11;
                int i18 = i7;
                int[] iArr10 = iArr8;
                int[] iArr11 = iArr7;
                int[] iArr12 = iArr6;
                int i19 = 1;
                while (true) {
                    if (i8 != 0) {
                        i = i10;
                        if (i8 != 1) {
                            break;
                        } else {
                            i15 += i19 << 1;
                        }
                    } else {
                        i15 += i19;
                        i = i10;
                    }
                    if (i16 == 0) {
                        int i20 = i17 + 1;
                        m66609I(i20, InterfaceC13489am.f64827p0, str2);
                        int i21 = bArr2[i20] & 255;
                        str = str2;
                        m66609I(i21, 6, "zt");
                        iArr12 = iArr4[i21];
                        iArr11 = iArr3[i21];
                        iArr10 = iArr5[i21];
                        i18 = iArr9[i21];
                        i17 = i20;
                        i16 = 49;
                    } else {
                        str = str2;
                        i16--;
                    }
                    int i22 = i18;
                    m66609I(i22, 258, "zn");
                    int m66608H = m66608H(bitInputStream2, i22);
                    int i23 = i22;
                    while (m66608H > iArr11[i23]) {
                        int i24 = i23 + 1;
                        m66609I(i24, 258, "zn");
                        m66608H = (m66608H << 1) | m66608H(bitInputStream2, 1);
                        i23 = i24;
                        iArr5 = iArr5;
                    }
                    int i25 = m66608H - iArr12[i23];
                    m66609I(i25, 258, "zvec");
                    i19 <<= 1;
                    i8 = iArr10[i25];
                    i18 = i22;
                    i10 = i;
                    str2 = str;
                    iArr5 = iArr5;
                }
                bZip2CompressorInputStream = this;
                int[][] iArr13 = iArr5;
                m66609I(i15, bZip2CompressorInputStream.f105995O.f106031o.length, "s");
                char c2 = cArr[0];
                m66609I(c2, 256, "yy");
                byte b = bArr3[c2];
                int i26 = b & 255;
                iArr[i26] = iArr[i26] + i15 + 1;
                int i27 = i + 1;
                int i28 = i15 + i27;
                m66609I(i28, bZip2CompressorInputStream.f105995O.f106031o.length, "lastShadow");
                Arrays.fill(bArr4, i27, i28 + 1, b);
                if (i28 >= i14) {
                    throw new IOException("Block overrun while expanding RLE in MTF, " + i28 + " exceeds " + i14);
                }
                i10 = i28;
                iArr6 = iArr12;
                iArr7 = iArr11;
                iArr8 = iArr10;
                i7 = i18;
                i11 = i17;
                i5 = i12;
                i9 = i16;
                iArr2 = iArr9;
                bArr = bArr4;
                iArr5 = iArr13;
                i3 = i14;
                bitInputStream = bitInputStream2;
            } else {
                i10++;
                if (i10 >= i3) {
                    throw new IOException("Block overrun in MTF, " + i10 + " exceeds " + i3);
                }
                int i29 = i3;
                m66609I(i8, 257, "nextSym");
                int i30 = i8 - 1;
                char c3 = cArr[i30];
                int[] iArr14 = iArr2;
                m66609I(c3, 256, "yy");
                byte b2 = bArr3[c3];
                int i31 = b2 & 255;
                iArr[i31] = iArr[i31] + 1;
                bArr[i10] = b2;
                if (i8 <= 16) {
                    while (i30 > 0) {
                        int i32 = i30 - 1;
                        cArr[i30] = cArr[i32];
                        i30 = i32;
                    }
                    c = 0;
                } else {
                    c = 0;
                    System.arraycopy(cArr, 0, cArr, 1, i30);
                }
                cArr[c] = c3;
                if (i9 == 0) {
                    int i33 = i11 + 1;
                    m66609I(i33, InterfaceC13489am.f64827p0, "groupNo");
                    int i34 = bArr2[i33] & 255;
                    m66609I(i34, 6, "zt");
                    int[] iArr15 = iArr4[i34];
                    int[] iArr16 = iArr3[i34];
                    int[] iArr17 = iArr5[i34];
                    i2 = iArr14[i34];
                    i11 = i33;
                    iArr6 = iArr15;
                    iArr7 = iArr16;
                    iArr8 = iArr17;
                    i9 = 49;
                } else {
                    i9--;
                    i2 = i7;
                }
                m66609I(i2, 258, "zn");
                int m66608H2 = m66608H(bitInputStream2, i2);
                int i35 = i2;
                while (m66608H2 > iArr7[i35]) {
                    i35++;
                    m66609I(i35, 258, "zn");
                    m66608H2 = (m66608H2 << 1) | m66608H(bitInputStream2, 1);
                }
                int i36 = m66608H2 - iArr6[i35];
                m66609I(i36, 258, "zvec");
                i8 = iArr8[i36];
                i7 = i2;
                bitInputStream = bitInputStream2;
                i5 = i12;
                i3 = i29;
                iArr2 = iArr14;
                bZip2CompressorInputStream = this;
            }
        }
        bZip2CompressorInputStream.f105996f = i10;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f106002l.getBytesRead();
    }

    /* renamed from: h0 */
    public final int m66618h0() throws IOException {
        C18878a c18878a = this.f105995O;
        int i = c18878a.f106019c[0] & 255;
        m66609I(i, 6, "zt");
        int[] iArr = c18878a.f106022f[i];
        int i2 = c18878a.f106025i[i];
        m66609I(i2, 258, "zn");
        int m66608H = m66608H(this.f106002l, i2);
        while (m66608H > iArr[i2]) {
            i2++;
            m66609I(i2, 258, "zn");
            m66608H = (m66608H << 1) | m66608H(this.f106002l, 1);
        }
        int i3 = m66608H - c18878a.f106023g[i][i2];
        m66609I(i3, 258, "zvec");
        return c18878a.f106024h[i][i3];
    }

    /* renamed from: j0 */
    public final boolean m66619j0(boolean z) throws IOException {
        BitInputStream bitInputStream = this.f106002l;
        if (bitInputStream == null) {
            throw new IOException("No InputStream");
        }
        if (!z) {
            bitInputStream.clearBitCache();
        }
        int m66623n0 = m66623n0(this.f106002l);
        if (m66623n0 == -1 && !z) {
            return false;
        }
        int m66623n02 = m66623n0(this.f106002l);
        int m66623n03 = m66623n0(this.f106002l);
        if (m66623n0 != 66 || m66623n02 != 90 || m66623n03 != 104) {
            throw new IOException(z ? "Stream is not in the BZip2 format" : "Garbage after a valid BZip2 stream");
        }
        int m66623n04 = m66623n0(this.f106002l);
        if (m66623n04 < 49 || m66623n04 > 57) {
            throw new IOException("BZip2 block size is invalid");
        }
        this.f105998h = m66623n04 - 48;
        this.f106008r = 0;
        return true;
    }

    /* renamed from: k0 */
    public final void m66620k0() throws IOException {
        BitInputStream bitInputStream = this.f106002l;
        do {
            char m66613w = m66613w(bitInputStream);
            char m66613w2 = m66613w(bitInputStream);
            char m66613w3 = m66613w(bitInputStream);
            char m66613w4 = m66613w(bitInputStream);
            char m66613w5 = m66613w(bitInputStream);
            char m66613w6 = m66613w(bitInputStream);
            if (m66613w != 23 || m66613w2 != 'r' || m66613w3 != 'E' || m66613w4 != '8' || m66613w5 != 'P' || m66613w6 != 144) {
                if (m66613w != '1' || m66613w2 != 'A' || m66613w3 != 'Y' || m66613w4 != '&' || m66613w5 != 'S' || m66613w6 != 'Y') {
                    this.f106004n = 0;
                    throw new IOException("Bad block header");
                }
                this.f106005o = m66612j(bitInputStream);
                this.f105999i = m66608H(bitInputStream, 1) == 1;
                if (this.f105995O == null) {
                    this.f105995O = new C18878a(this.f105998h);
                }
                m66617g0();
                this.f106000j.m55369c();
                this.f106004n = 1;
                return;
            }
        } while (!m66614M());
    }

    /* renamed from: l0 */
    public final void m66621l0() {
        C18878a c18878a = this.f105995O;
        boolean[] zArr = c18878a.f106017a;
        byte[] bArr = c18878a.f106018b;
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (zArr[i2]) {
                bArr[i] = (byte) i2;
                i++;
            }
        }
        this.f106001k = i;
    }

    /* renamed from: m0 */
    public final int m66622m0() throws IOException {
        switch (this.f106004n) {
            case 0:
                return -1;
            case 1:
                return m66625p0();
            case 2:
                throw new IllegalStateException();
            case 3:
                return m66630u0();
            case 4:
                return m66631v0();
            case 5:
                throw new IllegalStateException();
            case 6:
                return m66627r0();
            case 7:
                return m66628s0();
            default:
                throw new IllegalStateException();
        }
    }

    /* renamed from: n0 */
    public final int m66623n0(BitInputStream bitInputStream) throws IOException {
        return (int) bitInputStream.readBits(8);
    }

    /* renamed from: o0 */
    public final void m66624o0() throws IOException {
        BitInputStream bitInputStream = this.f106002l;
        C18878a c18878a = this.f105995O;
        boolean[] zArr = c18878a.f106017a;
        byte[] bArr = c18878a.f106029m;
        byte[] bArr2 = c18878a.f106019c;
        byte[] bArr3 = c18878a.f106020d;
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            if (m66610f(bitInputStream)) {
                i |= 1 << i2;
            }
        }
        Arrays.fill(zArr, false);
        for (int i3 = 0; i3 < 16; i3++) {
            if (((1 << i3) & i) != 0) {
                int i4 = i3 << 4;
                for (int i5 = 0; i5 < 16; i5++) {
                    if (m66610f(bitInputStream)) {
                        zArr[i4 + i5] = true;
                    }
                }
            }
        }
        m66621l0();
        int i6 = this.f106001k + 2;
        int m66608H = m66608H(bitInputStream, 3);
        int m66608H2 = m66608H(bitInputStream, 15);
        if (m66608H2 < 0) {
            throw new IOException("Corrupted input, nSelectors value negative");
        }
        m66609I(i6, 259, "alphaSize");
        m66609I(m66608H, 7, "nGroups");
        for (int i7 = 0; i7 < m66608H2; i7++) {
            int i8 = 0;
            while (m66610f(bitInputStream)) {
                i8++;
            }
            if (i7 < 18002) {
                bArr3[i7] = (byte) i8;
            }
        }
        int min = Math.min(m66608H2, InterfaceC13489am.f64827p0);
        int i9 = m66608H;
        while (true) {
            i9--;
            if (i9 < 0) {
                break;
            } else {
                bArr[i9] = (byte) i9;
            }
        }
        for (int i10 = 0; i10 < min; i10++) {
            int i11 = bArr3[i10] & 255;
            m66609I(i11, 6, "selectorMtf");
            byte b = bArr[i11];
            while (i11 > 0) {
                bArr[i11] = bArr[i11 - 1];
                i11--;
            }
            bArr[0] = b;
            bArr2[i10] = b;
        }
        char[][] cArr = c18878a.f106028l;
        for (int i12 = 0; i12 < m66608H; i12++) {
            int m66608H3 = m66608H(bitInputStream, 5);
            char[] cArr2 = cArr[i12];
            for (int i13 = 0; i13 < i6; i13++) {
                while (m66610f(bitInputStream)) {
                    m66608H3 += m66610f(bitInputStream) ? -1 : 1;
                }
                cArr2[i13] = (char) m66608H3;
            }
        }
        m66615e0(i6, m66608H);
    }

    /* renamed from: p0 */
    public final int m66625p0() throws IOException {
        C18878a c18878a;
        if (this.f106004n == 0 || (c18878a = this.f105995O) == null) {
            return -1;
        }
        int[] iArr = c18878a.f106026j;
        int i = this.f105996f + 1;
        int[] m66632a = c18878a.m66632a(i);
        C18878a c18878a2 = this.f105995O;
        byte[] bArr = c18878a2.f106031o;
        iArr[0] = 0;
        System.arraycopy(c18878a2.f106021e, 0, iArr, 1, 256);
        int i2 = iArr[0];
        for (int i3 = 1; i3 <= 256; i3++) {
            i2 += iArr[i3];
            iArr[i3] = i2;
        }
        int i4 = this.f105996f;
        for (int i5 = 0; i5 <= i4; i5++) {
            int i6 = bArr[i5] & 255;
            int i7 = iArr[i6];
            iArr[i6] = i7 + 1;
            m66609I(i7, i, "tt index");
            m66632a[i7] = i5;
        }
        int i8 = this.f105997g;
        if (i8 < 0 || i8 >= m66632a.length) {
            throw new IOException("Stream corrupted");
        }
        this.f106016z = m66632a[i8];
        this.f106009s = 0;
        this.f106012v = 0;
        this.f106010t = 256;
        if (!this.f105999i) {
            return m66626q0();
        }
        this.f106014x = 0;
        this.f106015y = 0;
        return m66629t0();
    }

    /* renamed from: q0 */
    public final int m66626q0() throws IOException {
        if (this.f106012v > this.f105996f) {
            this.f106004n = 5;
            m66616f0();
            m66620k0();
            return m66625p0();
        }
        this.f106011u = this.f106010t;
        C18878a c18878a = this.f105995O;
        byte[] bArr = c18878a.f106031o;
        int i = this.f106016z;
        int i2 = bArr[i] & 255;
        this.f106010t = i2;
        m66609I(i, c18878a.f106030n.length, "su_tPos");
        this.f106016z = this.f105995O.f106030n[this.f106016z];
        this.f106012v++;
        this.f106004n = 6;
        this.f106000j.m55371e(i2);
        return i2;
    }

    /* renamed from: r0 */
    public final int m66627r0() throws IOException {
        if (this.f106010t != this.f106011u) {
            this.f106009s = 1;
            return m66626q0();
        }
        int i = this.f106009s + 1;
        this.f106009s = i;
        if (i < 4) {
            return m66626q0();
        }
        m66609I(this.f106016z, this.f105995O.f106031o.length, "su_tPos");
        C18878a c18878a = this.f105995O;
        byte[] bArr = c18878a.f106031o;
        int i2 = this.f106016z;
        this.f105994J = (char) (bArr[i2] & 255);
        this.f106016z = c18878a.f106030n[i2];
        this.f106013w = 0;
        return m66628s0();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f106002l != null) {
            int m66622m0 = m66622m0();
            count(m66622m0 < 0 ? -1 : 1);
            return m66622m0;
        }
        throw new IOException("Stream closed");
    }

    /* renamed from: s0 */
    public final int m66628s0() throws IOException {
        if (this.f106013w >= this.f105994J) {
            this.f106012v++;
            this.f106009s = 0;
            return m66626q0();
        }
        int i = this.f106010t;
        this.f106000j.m55371e(i);
        this.f106013w++;
        this.f106004n = 7;
        return i;
    }

    /* renamed from: t0 */
    public final int m66629t0() throws IOException {
        if (this.f106012v > this.f105996f) {
            m66616f0();
            m66620k0();
            return m66625p0();
        }
        this.f106011u = this.f106010t;
        C18878a c18878a = this.f105995O;
        byte[] bArr = c18878a.f106031o;
        int i = this.f106016z;
        int i2 = bArr[i] & 255;
        m66609I(i, c18878a.f106030n.length, "su_tPos");
        this.f106016z = this.f105995O.f106030n[this.f106016z];
        int i3 = this.f106014x;
        if (i3 == 0) {
            this.f106014x = icl.m54701a(this.f106015y) - 1;
            int i4 = this.f106015y + 1;
            this.f106015y = i4;
            if (i4 == 512) {
                this.f106015y = 0;
            }
        } else {
            this.f106014x = i3 - 1;
        }
        int i5 = i2 ^ (this.f106014x == 1 ? 1 : 0);
        this.f106010t = i5;
        this.f106012v++;
        this.f106004n = 3;
        this.f106000j.m55371e(i5);
        return i5;
    }

    /* renamed from: u0 */
    public final int m66630u0() throws IOException {
        if (this.f106010t != this.f106011u) {
            this.f106004n = 2;
            this.f106009s = 1;
            return m66629t0();
        }
        int i = this.f106009s + 1;
        this.f106009s = i;
        if (i < 4) {
            this.f106004n = 2;
            return m66629t0();
        }
        C18878a c18878a = this.f105995O;
        byte[] bArr = c18878a.f106031o;
        int i2 = this.f106016z;
        this.f105994J = (char) (bArr[i2] & 255);
        m66609I(i2, c18878a.f106030n.length, "su_tPos");
        this.f106016z = this.f105995O.f106030n[this.f106016z];
        int i3 = this.f106014x;
        if (i3 == 0) {
            this.f106014x = icl.m54701a(this.f106015y) - 1;
            int i4 = this.f106015y + 1;
            this.f106015y = i4;
            if (i4 == 512) {
                this.f106015y = 0;
            }
        } else {
            this.f106014x = i3 - 1;
        }
        this.f106013w = 0;
        this.f106004n = 4;
        if (this.f106014x == 1) {
            this.f105994J = (char) (this.f105994J ^ 1);
        }
        return m66631v0();
    }

    /* renamed from: v0 */
    public final int m66631v0() throws IOException {
        if (this.f106013w < this.f105994J) {
            this.f106000j.m55371e(this.f106010t);
            this.f106013w++;
            return this.f106010t;
        }
        this.f106004n = 2;
        this.f106012v++;
        this.f106009s = 0;
        return m66629t0();
    }

    public BZip2CompressorInputStream(InputStream inputStream, boolean z) throws IOException {
        this.f106000j = new l20();
        this.f106004n = 1;
        this.f106002l = new BitInputStream(inputStream == System.in ? new CloseShieldFilterInputStream(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        this.f106003m = z;
        m66619j0(true);
        m66620k0();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException("offs(" + i + ") < 0.");
        }
        if (i2 >= 0) {
            int i3 = i + i2;
            if (i3 <= bArr.length) {
                if (this.f106002l == null) {
                    throw new IOException("Stream closed");
                }
                if (i2 == 0) {
                    return 0;
                }
                int i4 = i;
                while (i4 < i3) {
                    int m66622m0 = m66622m0();
                    if (m66622m0 < 0) {
                        break;
                    }
                    bArr[i4] = (byte) m66622m0;
                    count(1);
                    i4++;
                }
                if (i4 == i) {
                    return -1;
                }
                return i4 - i;
            }
            throw new IndexOutOfBoundsException("offs(" + i + ") + len(" + i2 + ") > dest.length(" + bArr.length + ").");
        }
        throw new IndexOutOfBoundsException("len(" + i2 + ") < 0.");
    }
}
