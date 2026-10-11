package org.apache.commons.compress.compressors.bzip2;

import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sunia.HTREnginev2.InterfaceC13489am;
import com.sunia.HTREnginev2.l20;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* loaded from: classes12.dex */
public class BZip2CompressorOutputStream extends CompressorOutputStream implements InterfaceC13489am {
    public static final int MAX_BLOCKSIZE = 9;
    public static final int MIN_BLOCKSIZE = 1;

    /* renamed from: u */
    public static final int f106032u = 15;

    /* renamed from: v */
    public static final int f106033v = 0;

    /* renamed from: e */
    public int f106034e;

    /* renamed from: f */
    public final int f106035f;

    /* renamed from: g */
    public int f106036g;

    /* renamed from: h */
    public int f106037h;

    /* renamed from: i */
    public final l20 f106038i;

    /* renamed from: j */
    public int f106039j;

    /* renamed from: k */
    public int f106040k;

    /* renamed from: l */
    public int f106041l;

    /* renamed from: m */
    public int f106042m;

    /* renamed from: n */
    public int f106043n;

    /* renamed from: o */
    public int f106044o;

    /* renamed from: p */
    public final int f106045p;

    /* renamed from: q */
    public C18879a f106046q;

    /* renamed from: r */
    public C18880a f106047r;

    /* renamed from: s */
    public OutputStream f106048s;

    /* renamed from: t */
    public volatile boolean f106049t;

    /* renamed from: org.apache.commons.compress.compressors.bzip2.BZip2CompressorOutputStream$a */
    /* loaded from: classes12.dex */
    public static final class C18879a {

        /* renamed from: a */
        public final boolean[] f106050a = new boolean[256];

        /* renamed from: b */
        public final byte[] f106051b = new byte[256];

        /* renamed from: c */
        public final int[] f106052c = new int[258];

        /* renamed from: d */
        public final byte[] f106053d = new byte[InterfaceC13489am.f64827p0];

        /* renamed from: e */
        public final byte[] f106054e = new byte[InterfaceC13489am.f64827p0];

        /* renamed from: f */
        public final byte[] f106055f = new byte[256];

        /* renamed from: g */
        public final byte[][] f106056g = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 6, 258);

        /* renamed from: h */
        public final int[][] f106057h;

        /* renamed from: i */
        public final int[] f106058i;

        /* renamed from: j */
        public final short[] f106059j;

        /* renamed from: k */
        public final int[][] f106060k;

        /* renamed from: l */
        public final byte[] f106061l;

        /* renamed from: m */
        public final boolean[] f106062m;

        /* renamed from: n */
        public final int[] f106063n;

        /* renamed from: o */
        public final int[] f106064o;

        /* renamed from: p */
        public final int[] f106065p;

        /* renamed from: q */
        public final byte[] f106066q;

        /* renamed from: r */
        public final int[] f106067r;

        /* renamed from: s */
        public final char[] f106068s;

        /* renamed from: t */
        public int f106069t;

        public C18879a(int i) {
            Class cls = Integer.TYPE;
            this.f106057h = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.f106058i = new int[6];
            this.f106059j = new short[6];
            this.f106060k = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.f106061l = new byte[6];
            this.f106062m = new boolean[16];
            this.f106063n = new int[DataBinderMapperImpl.f53157Z3];
            this.f106064o = new int[516];
            this.f106065p = new int[516];
            int i2 = i * 100000;
            this.f106066q = new byte[i2 + 1 + 20];
            this.f106067r = new int[i2];
            this.f106068s = new char[i2 * 2];
        }
    }

    public BZip2CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, 9);
    }

    public static int chooseBlockSize(long j) {
        if (j > 0) {
            return (int) Math.min((j / 132000) + 1, 9L);
        }
        return 9;
    }

    /* renamed from: g0 */
    public static void m66633g0(int[] iArr, byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        while (i <= i2) {
            for (int i5 = 0; i5 < i3; i5++) {
                if ((bArr[i5] & 255) == i) {
                    iArr[i5] = i4;
                    i4++;
                }
            }
            i4 <<= 1;
            i++;
        }
    }

    /* renamed from: h0 */
    public static void m66634h0(byte[] bArr, int[] iArr, C18879a c18879a, int i, int i2) {
        int[] iArr2 = c18879a.f106063n;
        int[] iArr3 = c18879a.f106064o;
        int[] iArr4 = c18879a.f106065p;
        int i3 = i;
        while (true) {
            i3--;
            int i4 = 1;
            if (i3 < 0) {
                break;
            }
            int i5 = i3 + 1;
            int i6 = iArr[i3];
            if (i6 != 0) {
                i4 = i6;
            }
            iArr3[i5] = i4 << 8;
        }
        boolean z = true;
        while (z) {
            iArr2[0] = 0;
            iArr3[0] = 0;
            iArr4[0] = -2;
            int i7 = 0;
            for (int i8 = 1; i8 <= i; i8++) {
                iArr4[i8] = -1;
                i7++;
                iArr2[i7] = i8;
                int i9 = i7;
                while (true) {
                    int i10 = iArr3[i8];
                    int i11 = i9 >> 1;
                    int i12 = iArr2[i11];
                    if (i10 < iArr3[i12]) {
                        iArr2[i9] = i12;
                        i9 = i11;
                    }
                }
                iArr2[i9] = i8;
            }
            int i13 = i;
            while (i7 > 1) {
                int i14 = iArr2[1];
                int i15 = iArr2[i7];
                iArr2[1] = i15;
                int i16 = i7 - 1;
                int i17 = 1;
                while (true) {
                    int i18 = i17 << 1;
                    if (i18 > i16) {
                        break;
                    }
                    if (i18 < i16) {
                        int i19 = i18 + 1;
                        if (iArr3[iArr2[i19]] < iArr3[iArr2[i18]]) {
                            i18 = i19;
                        }
                    }
                    int i20 = iArr3[i15];
                    int i21 = iArr2[i18];
                    if (i20 < iArr3[i21]) {
                        break;
                    }
                    iArr2[i17] = i21;
                    i17 = i18;
                }
                iArr2[i17] = i15;
                int i22 = iArr2[1];
                int i23 = iArr2[i16];
                iArr2[1] = i23;
                int i24 = i16 - 1;
                int i25 = 1;
                while (true) {
                    int i26 = i25 << 1;
                    if (i26 > i24) {
                        break;
                    }
                    if (i26 < i24) {
                        int i27 = i26 + 1;
                        if (iArr3[iArr2[i27]] < iArr3[iArr2[i26]]) {
                            i26 = i27;
                        }
                    }
                    int i28 = iArr3[i23];
                    int i29 = iArr2[i26];
                    if (i28 < iArr3[i29]) {
                        break;
                    }
                    iArr2[i25] = i29;
                    i25 = i26;
                }
                iArr2[i25] = i23;
                i13++;
                iArr4[i22] = i13;
                iArr4[i14] = i13;
                int i30 = iArr3[i14];
                int i31 = iArr3[i22];
                iArr3[i13] = (Math.max(i30 & 255, i31 & 255) + 1) | ((i30 & (-256)) + (i31 & (-256)));
                iArr4[i13] = -1;
                i7 = i24 + 1;
                iArr2[i7] = i13;
                int i32 = iArr3[i13];
                int i33 = i7;
                while (true) {
                    int i34 = i33 >> 1;
                    int i35 = iArr2[i34];
                    if (i32 < iArr3[i35]) {
                        iArr2[i33] = i35;
                        i33 = i34;
                    }
                }
                iArr2[i33] = i13;
            }
            z = false;
            for (int i36 = 1; i36 <= i; i36++) {
                int i37 = i36;
                int i38 = 0;
                while (true) {
                    i37 = iArr4[i37];
                    if (i37 < 0) {
                        break;
                    } else {
                        i38++;
                    }
                }
                bArr[i36 - 1] = (byte) i38;
                if (i38 > i2) {
                    z = true;
                }
            }
            if (z) {
                for (int i39 = 1; i39 < i; i39++) {
                    iArr3[i39] = (((iArr3[i39] >> 8) >> 1) + 1) << 8;
                }
            }
        }
    }

    /* renamed from: H */
    public final void m66635H(int i) throws IOException {
        m66636I(8, i);
    }

    /* renamed from: I */
    public final void m66636I(int i, int i2) throws IOException {
        OutputStream outputStream = this.f106048s;
        int i3 = this.f106037h;
        int i4 = this.f106036g;
        while (i3 >= 8) {
            outputStream.write(i4 >> 24);
            i4 <<= 8;
            i3 -= 8;
        }
        this.f106036g = (i2 << ((32 - i3) - i)) | i4;
        this.f106037h = i3 + i;
    }

    /* renamed from: M */
    public final void m66637M() throws IOException {
        int m55367a = this.f106038i.m55367a();
        this.f106043n = m55367a;
        int i = this.f106044o;
        this.f106044o = m55367a ^ ((i >>> 31) | (i << 1));
        if (this.f106034e == -1) {
            return;
        }
        m66639f();
        m66635H(49);
        m66635H(65);
        m66635H(89);
        m66635H(38);
        m66635H(83);
        m66635H(89);
        m66656w(this.f106043n);
        m66636I(1, 0);
        m66644k0();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f106049t) {
            return;
        }
        OutputStream outputStream = this.f106048s;
        try {
            finish();
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: e0 */
    public final void m66638e0() throws IOException {
        m66635H(23);
        m66635H(114);
        m66635H(69);
        m66635H(56);
        m66635H(80);
        m66635H(144);
        m66656w(this.f106044o);
        m66642j();
    }

    /* renamed from: f */
    public final void m66639f() {
        this.f106047r.m66659a(this.f106046q, this.f106034e);
    }

    /* renamed from: f0 */
    public final void m66640f0() {
        int i = this.f106034e;
        C18879a c18879a = this.f106046q;
        boolean[] zArr = c18879a.f106050a;
        byte[] bArr = c18879a.f106066q;
        int[] iArr = c18879a.f106067r;
        char[] cArr = c18879a.f106068s;
        int[] iArr2 = c18879a.f106052c;
        byte[] bArr2 = c18879a.f106051b;
        byte[] bArr3 = c18879a.f106055f;
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            if (zArr[i3]) {
                bArr2[i3] = (byte) i2;
                i2++;
            }
        }
        this.f106039j = i2;
        int i4 = i2 + 1;
        Arrays.fill(iArr2, 0, i4 + 1, 0);
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            } else {
                bArr3[i2] = (byte) i2;
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 <= i; i7++) {
            byte b = bArr2[bArr[iArr[i7]] & 255];
            byte b2 = bArr3[0];
            int i8 = 0;
            while (b != b2) {
                i8++;
                byte b3 = bArr3[i8];
                bArr3[i8] = b2;
                b2 = b3;
            }
            bArr3[0] = b2;
            if (i8 == 0) {
                i5++;
            } else {
                if (i5 > 0) {
                    int i9 = i5 - 1;
                    while (true) {
                        if ((i9 & 1) == 0) {
                            cArr[i6] = 0;
                            i6++;
                            iArr2[0] = iArr2[0] + 1;
                        } else {
                            cArr[i6] = 1;
                            i6++;
                            iArr2[1] = iArr2[1] + 1;
                        }
                        if (i9 < 2) {
                            break;
                        } else {
                            i9 = (i9 - 2) >> 1;
                        }
                    }
                    i5 = 0;
                }
                int i10 = i8 + 1;
                cArr[i6] = (char) i10;
                i6++;
                iArr2[i10] = iArr2[i10] + 1;
            }
        }
        if (i5 > 0) {
            int i11 = i5 - 1;
            while (true) {
                if ((i11 & 1) == 0) {
                    cArr[i6] = 0;
                    i6++;
                    iArr2[0] = iArr2[0] + 1;
                } else {
                    cArr[i6] = 1;
                    i6++;
                    iArr2[1] = iArr2[1] + 1;
                }
                if (i11 < 2) {
                    break;
                } else {
                    i11 = (i11 - 2) >> 1;
                }
            }
        }
        cArr[i6] = (char) i4;
        iArr2[i4] = iArr2[i4] + 1;
        this.f106040k = i6 + 1;
    }

    public void finalize() throws Throwable {
        if (!this.f106049t) {
            System.err.println("Unclosed BZip2CompressorOutputStream detected, will *not* close it");
        }
        super.finalize();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void finish() throws IOException {
        if (this.f106049t) {
            return;
        }
        this.f106049t = true;
        try {
            if (this.f106042m > 0) {
                m66655v0();
            }
            this.f106041l = -1;
            m66637M();
            m66638e0();
        } finally {
            this.f106048s = null;
            this.f106047r = null;
            this.f106046q = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.f106048s;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    public final int getBlockSize() {
        return this.f106035f;
    }

    /* renamed from: i0 */
    public final void m66641i0() throws IOException {
        m66635H(66);
        m66635H(90);
        this.f106046q = new C18879a(this.f106035f);
        this.f106047r = new C18880a(this.f106046q);
        m66635H(104);
        m66635H(this.f106035f + 48);
        this.f106044o = 0;
        m66643j0();
    }

    /* renamed from: j */
    public final void m66642j() throws IOException {
        while (this.f106037h > 0) {
            this.f106048s.write(this.f106036g >> 24);
            this.f106036g <<= 8;
            this.f106037h -= 8;
        }
    }

    /* renamed from: j0 */
    public final void m66643j0() {
        this.f106038i.m55369c();
        this.f106034e = -1;
        boolean[] zArr = this.f106046q.f106050a;
        int i = 256;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                zArr[i] = false;
            }
        }
    }

    /* renamed from: k0 */
    public final void m66644k0() throws IOException {
        m66636I(24, this.f106046q.f106069t);
        m66640f0();
        m66645l0();
    }

    /* renamed from: l0 */
    public final void m66645l0() throws IOException {
        byte[][] bArr = this.f106046q.f106056g;
        int i = this.f106039j + 2;
        int i2 = 6;
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            }
            byte[] bArr2 = bArr[i2];
            int i3 = i;
            while (true) {
                i3--;
                if (i3 >= 0) {
                    bArr2[i3] = 15;
                }
            }
        }
        int i4 = this.f106040k;
        int i5 = i4 >= 200 ? i4 < 600 ? 3 : i4 < 1200 ? 4 : i4 < 2400 ? 5 : 6 : 2;
        m66646m0(i5, i);
        int m66647n0 = m66647n0(i5, i);
        m66648o0(i5, m66647n0);
        m66649p0(i5, i);
        m66650q0();
        m66651r0(i5, m66647n0);
        m66652s0(i5, i);
        m66653t0();
    }

    /* renamed from: m0 */
    public final void m66646m0(int i, int i2) {
        C18879a c18879a = this.f106046q;
        byte[][] bArr = c18879a.f106056g;
        int[] iArr = c18879a.f106052c;
        int i3 = this.f106040k;
        int i4 = 0;
        for (int i5 = i; i5 > 0; i5--) {
            int i6 = i3 / i5;
            int i7 = i4 - 1;
            int i8 = i2 - 1;
            int i9 = 0;
            while (i9 < i6 && i7 < i8) {
                i7++;
                i9 += iArr[i7];
            }
            if (i7 > i4 && i5 != i && i5 != 1 && (1 & (i - i5)) != 0) {
                i9 -= iArr[i7];
                i7--;
            }
            byte[] bArr2 = bArr[i5 - 1];
            int i10 = i2;
            while (true) {
                i10--;
                if (i10 >= 0) {
                    if (i10 < i4 || i10 > i7) {
                        bArr2[i10] = 15;
                    } else {
                        bArr2[i10] = 0;
                    }
                }
            }
            i4 = i7 + 1;
            i3 -= i9;
        }
    }

    /* renamed from: n0 */
    public final int m66647n0(int i, int i2) {
        byte[] bArr;
        int i3;
        BZip2CompressorOutputStream bZip2CompressorOutputStream = this;
        C18879a c18879a = bZip2CompressorOutputStream.f106046q;
        int[][] iArr = c18879a.f106057h;
        int[] iArr2 = c18879a.f106058i;
        short[] sArr = c18879a.f106059j;
        char[] cArr = c18879a.f106068s;
        byte[] bArr2 = c18879a.f106053d;
        byte[][] bArr3 = c18879a.f106056g;
        int i4 = 0;
        byte[] bArr4 = bArr3[0];
        byte[] bArr5 = bArr3[1];
        byte[] bArr6 = bArr3[2];
        byte[] bArr7 = bArr3[3];
        int i5 = 4;
        byte[] bArr8 = bArr3[4];
        byte[] bArr9 = bArr3[5];
        int i6 = bZip2CompressorOutputStream.f106040k;
        int i7 = 0;
        int i8 = 0;
        while (i7 < i5) {
            int i9 = i;
            while (true) {
                i9--;
                if (i9 < 0) {
                    break;
                }
                iArr2[i9] = i4;
                int[] iArr3 = iArr[i9];
                int i10 = i2;
                while (true) {
                    i10--;
                    if (i10 >= 0) {
                        iArr3[i10] = i4;
                    }
                }
            }
            int i11 = i4;
            i8 = i11;
            while (i11 < bZip2CompressorOutputStream.f106040k) {
                int i12 = i11;
                int min = Math.min((i11 + 50) - 1, i6 - 1);
                if (i == 6) {
                    int i13 = i12;
                    short s = 0;
                    short s2 = 0;
                    short s3 = 0;
                    short s4 = 0;
                    short s5 = 0;
                    short s6 = 0;
                    while (i13 <= min) {
                        char c = cArr[i13];
                        int i14 = i6;
                        short s7 = (short) (s + (bArr4[c] & 255));
                        byte[] bArr10 = bArr4;
                        short s8 = (short) (s2 + (bArr5[c] & 255));
                        short s9 = (short) (s3 + (bArr6[c] & 255));
                        short s10 = (short) (s4 + (bArr7[c] & 255));
                        short s11 = (short) (s5 + (bArr8[c] & 255));
                        i13++;
                        s6 = (short) (s6 + (bArr9[c] & 255));
                        s5 = s11;
                        bArr4 = bArr10;
                        s4 = s10;
                        s3 = s9;
                        s2 = s8;
                        s = s7;
                        i6 = i14;
                    }
                    bArr = bArr4;
                    i3 = i6;
                    sArr[0] = s;
                    sArr[1] = s2;
                    sArr[2] = s3;
                    sArr[3] = s4;
                    sArr[4] = s5;
                    sArr[5] = s6;
                } else {
                    bArr = bArr4;
                    i3 = i6;
                    int i15 = i;
                    while (true) {
                        i15--;
                        if (i15 < 0) {
                            break;
                        }
                        sArr[i15] = 0;
                    }
                    for (int i16 = i12; i16 <= min; i16++) {
                        char c2 = cArr[i16];
                        int i17 = i;
                        while (true) {
                            i17--;
                            if (i17 >= 0) {
                                sArr[i17] = (short) (sArr[i17] + (bArr3[i17][c2] & 255));
                            }
                        }
                    }
                }
                short s12 = 999999999;
                int i18 = i;
                int i19 = -1;
                while (true) {
                    i18--;
                    if (i18 < 0) {
                        break;
                    }
                    byte[] bArr11 = bArr5;
                    short s13 = sArr[i18];
                    if (s13 < s12) {
                        s12 = s13;
                        i19 = i18;
                    }
                    bArr5 = bArr11;
                }
                byte[] bArr12 = bArr5;
                iArr2[i19] = iArr2[i19] + 1;
                bArr2[i8] = (byte) i19;
                i8++;
                int[] iArr4 = iArr[i19];
                for (int i20 = i12; i20 <= min; i20++) {
                    char c3 = cArr[i20];
                    iArr4[c3] = iArr4[c3] + 1;
                }
                i11 = min + 1;
                bArr5 = bArr12;
                i6 = i3;
                bArr4 = bArr;
            }
            byte[] bArr13 = bArr4;
            byte[] bArr14 = bArr5;
            int i21 = i6;
            int i22 = 0;
            while (i22 < i) {
                m66634h0(bArr3[i22], iArr[i22], bZip2CompressorOutputStream.f106046q, i2, 20);
                i22++;
                bZip2CompressorOutputStream = this;
            }
            i7++;
            i4 = 0;
            bZip2CompressorOutputStream = this;
            i5 = 4;
            bArr5 = bArr14;
            i6 = i21;
            bArr4 = bArr13;
        }
        return i8;
    }

    /* renamed from: o0 */
    public final void m66648o0(int i, int i2) {
        C18879a c18879a = this.f106046q;
        byte[] bArr = c18879a.f106061l;
        while (true) {
            i--;
            if (i < 0) {
                break;
            } else {
                bArr[i] = (byte) i;
            }
        }
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = c18879a.f106053d[i3];
            byte b2 = bArr[0];
            int i4 = 0;
            while (b != b2) {
                i4++;
                byte b3 = bArr[i4];
                bArr[i4] = b2;
                b2 = b3;
            }
            bArr[0] = b2;
            c18879a.f106054e[i3] = (byte) i4;
        }
    }

    /* renamed from: p0 */
    public final void m66649p0(int i, int i2) {
        C18879a c18879a = this.f106046q;
        int[][] iArr = c18879a.f106060k;
        byte[][] bArr = c18879a.f106056g;
        for (int i3 = 0; i3 < i; i3++) {
            byte[] bArr2 = bArr[i3];
            int i4 = 32;
            int i5 = i2;
            int i6 = 0;
            while (true) {
                i5--;
                if (i5 >= 0) {
                    int i7 = bArr2[i5] & 255;
                    if (i7 > i6) {
                        i6 = i7;
                    }
                    if (i7 < i4) {
                        i4 = i7;
                    }
                }
            }
            m66633g0(iArr[i3], bArr[i3], i4, i6, i2);
        }
    }

    /* renamed from: q0 */
    public final void m66650q0() throws IOException {
        C18879a c18879a = this.f106046q;
        boolean[] zArr = c18879a.f106050a;
        boolean[] zArr2 = c18879a.f106062m;
        int i = 16;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            zArr2[i] = false;
            int i2 = i * 16;
            int i3 = 16;
            while (true) {
                i3--;
                if (i3 >= 0) {
                    if (zArr[i2 + i3]) {
                        zArr2[i] = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        for (int i4 = 0; i4 < 16; i4++) {
            m66636I(1, zArr2[i4] ? 1 : 0);
        }
        OutputStream outputStream = this.f106048s;
        int i5 = this.f106037h;
        int i6 = this.f106036g;
        for (int i7 = 0; i7 < 16; i7++) {
            if (zArr2[i7]) {
                int i8 = i7 * 16;
                for (int i9 = 0; i9 < 16; i9++) {
                    while (i5 >= 8) {
                        outputStream.write(i6 >> 24);
                        i6 <<= 8;
                        i5 -= 8;
                    }
                    if (zArr[i8 + i9]) {
                        i6 |= 1 << ((32 - i5) - 1);
                    }
                    i5++;
                }
            }
        }
        this.f106036g = i6;
        this.f106037h = i5;
    }

    /* renamed from: r0 */
    public final void m66651r0(int i, int i2) throws IOException {
        m66636I(3, i);
        m66636I(15, i2);
        OutputStream outputStream = this.f106048s;
        byte[] bArr = this.f106046q.f106054e;
        int i3 = this.f106037h;
        int i4 = this.f106036g;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = bArr[i5] & 255;
            for (int i7 = 0; i7 < i6; i7++) {
                while (i3 >= 8) {
                    outputStream.write(i4 >> 24);
                    i4 <<= 8;
                    i3 -= 8;
                }
                i4 |= 1 << ((32 - i3) - 1);
                i3++;
            }
            while (i3 >= 8) {
                outputStream.write(i4 >> 24);
                i4 <<= 8;
                i3 -= 8;
            }
            i3++;
        }
        this.f106036g = i4;
        this.f106037h = i3;
    }

    /* renamed from: s0 */
    public final void m66652s0(int i, int i2) throws IOException {
        byte[][] bArr = this.f106046q.f106056g;
        OutputStream outputStream = this.f106048s;
        int i3 = this.f106037h;
        int i4 = this.f106036g;
        for (int i5 = 0; i5 < i; i5++) {
            byte[] bArr2 = bArr[i5];
            int i6 = bArr2[0] & 255;
            while (i3 >= 8) {
                outputStream.write(i4 >> 24);
                i4 <<= 8;
                i3 -= 8;
            }
            i4 |= i6 << ((32 - i3) - 5);
            i3 += 5;
            for (int i7 = 0; i7 < i2; i7++) {
                int i8 = bArr2[i7] & 255;
                while (i6 < i8) {
                    while (i3 >= 8) {
                        outputStream.write(i4 >> 24);
                        i4 <<= 8;
                        i3 -= 8;
                    }
                    i4 |= 2 << ((32 - i3) - 2);
                    i3 += 2;
                    i6++;
                }
                while (i6 > i8) {
                    while (i3 >= 8) {
                        outputStream.write(i4 >> 24);
                        i4 <<= 8;
                        i3 -= 8;
                    }
                    i4 |= 3 << ((32 - i3) - 2);
                    i3 += 2;
                    i6--;
                }
                while (i3 >= 8) {
                    outputStream.write(i4 >> 24);
                    i4 <<= 8;
                    i3 -= 8;
                }
                i3++;
            }
        }
        this.f106036g = i4;
        this.f106037h = i3;
    }

    /* renamed from: t0 */
    public final void m66653t0() throws IOException {
        C18879a c18879a = this.f106046q;
        byte[][] bArr = c18879a.f106056g;
        int[][] iArr = c18879a.f106060k;
        OutputStream outputStream = this.f106048s;
        byte[] bArr2 = c18879a.f106053d;
        char[] cArr = c18879a.f106068s;
        int i = this.f106040k;
        int i2 = this.f106037h;
        int i3 = this.f106036g;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i) {
            int min = Math.min((i4 + 50) - 1, i - 1);
            int i6 = bArr2[i5] & 255;
            int[] iArr2 = iArr[i6];
            byte[] bArr3 = bArr[i6];
            while (i4 <= min) {
                char c = cArr[i4];
                while (i2 >= 8) {
                    outputStream.write(i3 >> 24);
                    i3 <<= 8;
                    i2 -= 8;
                }
                int i7 = bArr3[c] & 255;
                i3 |= iArr2[c] << ((32 - i2) - i7);
                i2 += i7;
                i4++;
            }
            i4 = min + 1;
            i5++;
        }
        this.f106036g = i3;
        this.f106037h = i2;
    }

    /* renamed from: u0 */
    public final void m66654u0(int i) throws IOException {
        int i2 = this.f106041l;
        if (i2 == -1) {
            this.f106041l = i & 255;
            this.f106042m++;
            return;
        }
        int i3 = i & 255;
        if (i2 != i3) {
            m66655v0();
            this.f106042m = 1;
            this.f106041l = i3;
            return;
        }
        int i4 = this.f106042m + 1;
        this.f106042m = i4;
        if (i4 > 254) {
            m66655v0();
            this.f106041l = -1;
            this.f106042m = 0;
        }
    }

    /* renamed from: v0 */
    public final void m66655v0() throws IOException {
        int i = this.f106034e;
        if (i >= this.f106045p) {
            m66637M();
            m66643j0();
            m66655v0();
            return;
        }
        int i2 = this.f106041l;
        C18879a c18879a = this.f106046q;
        c18879a.f106050a[i2] = true;
        byte b = (byte) i2;
        int i3 = this.f106042m;
        this.f106038i.m55372f(i2, i3);
        if (i3 == 1) {
            c18879a.f106066q[i + 2] = b;
            this.f106034e = i + 1;
            return;
        }
        if (i3 == 2) {
            byte[] bArr = c18879a.f106066q;
            int i4 = i + 2;
            bArr[i4] = b;
            bArr[i + 3] = b;
            this.f106034e = i4;
            return;
        }
        if (i3 == 3) {
            byte[] bArr2 = c18879a.f106066q;
            bArr2[i + 2] = b;
            int i5 = i + 3;
            bArr2[i5] = b;
            bArr2[i + 4] = b;
            this.f106034e = i5;
            return;
        }
        int i6 = i3 - 4;
        c18879a.f106050a[i6] = true;
        byte[] bArr3 = c18879a.f106066q;
        bArr3[i + 2] = b;
        bArr3[i + 3] = b;
        bArr3[i + 4] = b;
        int i7 = i + 5;
        bArr3[i7] = b;
        bArr3[i + 6] = (byte) i6;
        this.f106034e = i7;
    }

    /* renamed from: w */
    public final void m66656w(int i) throws IOException {
        m66636I(8, (i >> 24) & 255);
        m66636I(8, (i >> 16) & 255);
        m66636I(8, (i >> 8) & 255);
        m66636I(8, i & 255);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (!this.f106049t) {
            m66654u0(i);
            return;
        }
        throw new IOException("Closed");
    }

    public BZip2CompressorOutputStream(OutputStream outputStream, int i) throws IOException {
        this.f106038i = new l20();
        this.f106041l = -1;
        if (i < 1) {
            throw new IllegalArgumentException("blockSize(" + i + ") < 1");
        }
        if (i <= 9) {
            this.f106035f = i;
            this.f106048s = outputStream;
            this.f106045p = (i * 100000) - 20;
            m66641i0();
            return;
        }
        throw new IllegalArgumentException("blockSize(" + i + ") > 9");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException("offs(" + i + ") < 0.");
        }
        if (i2 >= 0) {
            int i3 = i + i2;
            if (i3 <= bArr.length) {
                if (this.f106049t) {
                    throw new IOException("Stream closed");
                }
                while (i < i3) {
                    m66654u0(bArr[i]);
                    i++;
                }
                return;
            }
            throw new IndexOutOfBoundsException("offs(" + i + ") + len(" + i2 + ") > buf.length(" + bArr.length + ").");
        }
        throw new IndexOutOfBoundsException("len(" + i2 + ") < 0.");
    }
}
