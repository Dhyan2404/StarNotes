package com.sunia.HTREnginev2;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.bcel.internal.Constants;
import com.twelvemonkeys.lang.Validate;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class z00 extends FilterInputStream {

    /* renamed from: J */
    public static final C14738c f91243J;

    /* renamed from: O */
    public static final C14738c f91244O;

    /* renamed from: Q */
    public static final C14738c f91245Q;

    /* renamed from: Z */
    public static final C14738c f91246Z;

    /* renamed from: k0 */
    public static final int f91247k0 = -2000;

    /* renamed from: q0 */
    public static final int f91248q0 = -1000;

    /* renamed from: t0 */
    public static final int f91249t0 = -3000;

    /* renamed from: u0 */
    public static final int f91251u0 = -4000;

    /* renamed from: y */
    public static final C14737b f91255y;

    /* renamed from: z */
    public static final C14737b f91256z;

    /* renamed from: e */
    public final int f91257e;

    /* renamed from: f */
    public final byte[] f91258f;

    /* renamed from: g */
    public int f91259g;

    /* renamed from: h */
    public int f91260h;

    /* renamed from: i */
    public final int f91261i;

    /* renamed from: j */
    public final int f91262j;

    /* renamed from: k */
    public int[] f91263k;

    /* renamed from: l */
    public int[] f91264l;

    /* renamed from: m */
    public int f91265m;

    /* renamed from: n */
    public int f91266n;

    /* renamed from: o */
    public int f91267o;

    /* renamed from: p */
    public boolean f91268p;

    /* renamed from: q */
    public boolean f91269q;

    /* renamed from: r */
    public boolean f91270r;

    /* renamed from: s */
    public int f91271s;

    /* renamed from: t */
    public int f91272t;

    /* renamed from: u */
    public static final short[][] f91250u = {new short[]{2, 3}, new short[]{2, 3}, new short[]{2, 3}, new short[]{3}, new short[]{4, 5}, new short[]{4, 5, 7}, new short[]{4, 7}, new short[]{24}, new short[]{23, 24, 55, 8, 15}, new short[]{23, 24, 40, 55, 103, 104, 108, 8, 12, 13}, new short[]{18, 19, 20, 21, 22, 23, 28, 29, 30, 31, 36, 39, 40, 43, 44, 51, 52, 53, 55, 56, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 200, 201, 202, 203, 204, 205, 210, 211, 212, 213, 214, 215, 218, Constants.INVOKEVIRTUALOBJECT_QUICK}, new short[]{74, 75, 76, 77, 82, 83, 84, 85, 90, 91, 100, 101, 108, 109, 114, 115, 116, 117, 118, 119}};

    /* renamed from: v */
    public static final short[][] f91252v = {new short[]{3, 2}, new short[]{1, 4}, new short[]{6, 5}, new short[]{7}, new short[]{9, 8}, new short[]{10, 11, 12}, new short[]{13, 14}, new short[]{15}, new short[]{16, 17, 0, 18, 64}, new short[]{24, 25, 23, 22, 19, 20, 21, 1792, 1856, 1920}, new short[]{1984, 2048, 2112, 2176, 2240, 2304, 2368, 2432, 2496, 2560, 52, 55, 56, 59, 60, 320, 384, 448, 53, 54, 50, 51, 44, 45, 46, 47, 57, 58, 61, 256, 48, 49, 62, 63, 30, 31, 32, 33, 40, 41, 128, 192, 26, 27, 28, 29, 34, 35, 36, 37, 38, 39, 42, 43}, new short[]{640, 704, 768, 832, 1280, 1344, 1408, 1472, 1536, 1600, 1664, 1728, 512, 576, 896, 960, 1024, 1088, 1152, 1216}};

    /* renamed from: w */
    public static final short[][] f91253w = {new short[]{7, 8, 11, 12, 14, 15}, new short[]{18, 19, 20, 27, 7, 8}, new short[]{23, 24, 42, 43, 3, 52, 53, 7, 8}, new short[]{19, 23, 24, 36, 39, 40, 43, 3, 55, 4, 8, 12}, new short[]{18, 19, 20, 21, 22, 23, 26, 27, 2, 36, 37, 40, 41, 42, 43, 44, 45, 3, 50, 51, 52, 53, 54, 55, 4, 74, 75, 5, 82, 83, 84, 85, 88, 89, 90, 91, 100, 101, 103, 104, 10, 11}, new short[]{152, 153, 154, 155, 204, 205, 210, 211, 212, 213, 214, 215, 216, Constants.INVOKESTATIC_QUICK, 218, Constants.INVOKEVIRTUALOBJECT_QUICK}, new short[0], new short[]{8, 12, 13}, new short[]{18, 19, 20, 21, 22, 23, 28, 29, 30, 31}};

    /* renamed from: x */
    public static final short[][] f91254x = {new short[]{2, 3, 4, 5, 6, 7}, new short[]{128, 8, 9, 64, 10, 11}, new short[]{192, 1664, 16, 17, 13, 14, 15, 1, 12}, new short[]{26, 21, 28, 27, 18, 24, 25, 22, 256, 23, 20, 19}, new short[]{33, 34, 35, 36, 37, 38, 31, 32, 29, 53, 54, 39, 40, 41, 42, 43, 44, 30, 61, 62, 63, 0, 320, 384, 45, 59, 60, 46, 49, 50, 51, 52, 55, 56, 57, 58, 448, 512, 640, 576, 47, 48}, new short[]{1472, 1536, 1600, 1728, 704, 768, 832, 896, 960, 1024, 1088, 1152, 1216, 1280, 1344, 1408}, new short[0], new short[]{1792, 1856, 1920}, new short[]{1984, 2048, 2112, 2176, 2240, 2304, 2368, 2432, 2496, 2560}};

    /* renamed from: com.sunia.HTREnginev2.z00$b */
    /* loaded from: classes10.dex */
    public static final class C14737b {

        /* renamed from: a */
        public C14737b f91273a;

        /* renamed from: b */
        public C14737b f91274b;

        /* renamed from: c */
        public int f91275c;

        /* renamed from: d */
        public boolean f91276d;

        /* renamed from: e */
        public boolean f91277e;

        public C14737b() {
            this.f91276d = false;
            this.f91277e = false;
        }

        /* renamed from: a */
        public void m58595a(boolean z, C14737b c14737b) {
            if (z) {
                this.f91274b = c14737b;
            } else {
                this.f91273a = c14737b;
            }
        }

        /* renamed from: b */
        public C14737b m58596b(boolean z) {
            return z ? this.f91274b : this.f91273a;
        }

        public String toString() {
            return "[leaf=" + this.f91277e + ", value=" + this.f91275c + ", canBeFill=" + this.f91276d + IteratorUtils.f104924b;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.z00$c */
    /* loaded from: classes10.dex */
    public static final class C14738c {

        /* renamed from: a */
        public final C14737b f91278a;

        public C14738c() {
            this.f91278a = new C14737b();
        }

        /* renamed from: a */
        public void m58597a(int i, int i2, int i3) throws IOException {
            C14737b c14737b = this.f91278a;
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = i - 1;
                boolean z = ((i2 >> (i5 - i4)) & 1) == 1;
                C14737b m58596b = c14737b.m58596b(z);
                if (m58596b == null) {
                    m58596b = new C14737b();
                    if (i4 == i5) {
                        m58596b.f91275c = i3;
                        m58596b.f91277e = true;
                    }
                    if (i2 == 0) {
                        m58596b.f91276d = true;
                    }
                    c14737b.m58595a(z, m58596b);
                } else if (m58596b.f91277e) {
                    throw new IOException("node is leaf, no other following");
                }
                c14737b = m58596b;
            }
        }

        /* renamed from: b */
        public void m58598b(int i, int i2, C14737b c14737b) throws IOException {
            C14737b c14737b2 = this.f91278a;
            int i3 = 0;
            while (i3 < i) {
                int i4 = i - 1;
                boolean z = ((i2 >> (i4 - i3)) & 1) == 1;
                C14737b m58596b = c14737b2.m58596b(z);
                if (m58596b == null) {
                    C14737b c14737b3 = i3 == i4 ? c14737b : new C14737b();
                    if (i2 == 0) {
                        c14737b3.f91276d = true;
                    }
                    c14737b2.m58595a(z, c14737b3);
                    c14737b2 = c14737b3;
                } else {
                    if (m58596b.f91277e) {
                        throw new IOException("node is leaf, no other following");
                    }
                    c14737b2 = m58596b;
                }
                i3++;
            }
        }
    }

    static {
        C14737b c14737b = new C14737b();
        f91255y = c14737b;
        c14737b.f91277e = true;
        c14737b.f91275c = f91247k0;
        C14737b c14737b2 = new C14737b();
        f91256z = c14737b2;
        c14737b2.f91275c = -1000;
        c14737b2.f91273a = c14737b2;
        c14737b2.f91274b = c14737b;
        C14738c c14738c = new C14738c();
        f91245Q = c14738c;
        try {
            c14738c.m58598b(12, 0, c14737b2);
            c14738c.m58598b(12, 1, c14737b);
            f91243J = new C14738c();
            for (int i = 0; i < f91250u.length; i++) {
                try {
                    int i2 = 0;
                    while (true) {
                        short[] sArr = f91250u[i];
                        if (i2 < sArr.length) {
                            f91243J.m58597a(i + 2, sArr[i2], f91252v[i][i2]);
                            i2++;
                        }
                    }
                } catch (IOException e) {
                    throw new AssertionError(e);
                }
            }
            C14738c c14738c2 = f91243J;
            c14738c2.m58598b(12, 0, f91256z);
            c14738c2.m58598b(12, 1, f91255y);
            f91244O = new C14738c();
            for (int i3 = 0; i3 < f91253w.length; i3++) {
                try {
                    int i4 = 0;
                    while (true) {
                        short[] sArr2 = f91253w[i3];
                        if (i4 < sArr2.length) {
                            f91244O.m58597a(i3 + 4, sArr2[i4], f91254x[i3][i4]);
                            i4++;
                        }
                    }
                } catch (IOException e2) {
                    throw new AssertionError(e2);
                }
            }
            C14738c c14738c3 = f91244O;
            c14738c3.m58598b(12, 0, f91256z);
            c14738c3.m58598b(12, 1, f91255y);
            C14738c c14738c4 = new C14738c();
            f91246Z = c14738c4;
            try {
                c14738c4.m58597a(4, 1, f91249t0);
                c14738c4.m58597a(3, 1, f91251u0);
                c14738c4.m58597a(1, 1, 0);
                c14738c4.m58597a(3, 3, 1);
                c14738c4.m58597a(6, 3, 2);
                c14738c4.m58597a(7, 3, 3);
                c14738c4.m58597a(3, 2, -1);
                c14738c4.m58597a(6, 2, -2);
                c14738c4.m58597a(7, 2, -3);
            } catch (IOException e3) {
                throw new AssertionError(e3);
            }
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public z00(InputStream inputStream, int i, int i2, int i3, long j) {
        super((InputStream) Validate.notNull(inputStream, "stream"));
        this.f91267o = 0;
        this.f91268p = false;
        this.f91269q = false;
        this.f91270r = false;
        this.f91271s = -1;
        this.f91272t = -1;
        this.f91257e = ((Integer) Validate.isTrue(i > 0, Integer.valueOf(i), "width must be greater than 0")).intValue();
        this.f91258f = new byte[(i + 7) / 8];
        this.f91262j = ((Integer) Validate.isTrue(i2 == 2 || i2 == 3 || i2 == 4, Integer.valueOf(i2), "Only CCITT Modified Huffman RLE compression (2), CCITT T4 (3) or CCITT T6 (4) supported: %s")).intValue();
        this.f91261i = ((Integer) Validate.isTrue(i3 == 1 || i3 == 2, Integer.valueOf(i3), "Expected fill order 1  or 2: %s")).intValue();
        int i4 = i + 1;
        this.f91263k = new int[i4];
        this.f91264l = new int[i4];
        if (i2 == 3) {
            this.f91268p = (1 & j) != 0;
            this.f91269q = (4 & j) != 0;
            this.f91270r = (j & 2) != 0;
        } else if (i2 == 4) {
            this.f91270r = (j & 2) != 0;
        }
        boolean z = this.f91270r;
        Validate.isTrue(!z, Boolean.valueOf(z), "CCITT GROUP 3/4 OPTION UNCOMPRESSED is not supported");
    }

    /* renamed from: H */
    public final void m58584H() throws IOException {
        m58592i0();
        m58588f();
    }

    /* renamed from: I */
    public final void m58585I() throws IOException {
        loop0: while (true) {
            C14737b c14737b = f91245Q.f91278a;
            do {
                c14737b = c14737b.m58596b(m58591h0());
                if (c14737b == null) {
                    break;
                }
            } while (!c14737b.f91277e);
            if (this.f91268p || m58591h0()) {
                m58588f();
            } else {
                m58593j();
                return;
            }
        }
        if (this.f91268p) {
        }
        m58588f();
    }

    /* renamed from: M */
    public final void m58586M() throws IOException {
        m58593j();
    }

    /* renamed from: e0 */
    public final int m58587e0(C14738c c14738c) throws IOException {
        C14737b c14737b = c14738c.f91278a;
        int i = 0;
        while (true) {
            c14737b = c14737b.m58596b(m58591h0());
            if (c14737b == null) {
                throw new IOException("Unknown code in Huffman RLE stream");
            }
            if (c14737b.f91277e) {
                int i2 = c14737b.f91275c;
                i += i2;
                if (i2 < 64) {
                    return i;
                }
                c14737b = c14738c.f91278a;
            }
        }
    }

    /* renamed from: f */
    public final void m58588f() throws IOException {
        int i = 0;
        this.f91266n = 0;
        boolean z = true;
        do {
            i += z ? m58587e0(f91244O) : m58587e0(f91243J);
            int[] iArr = this.f91264l;
            int i2 = this.f91266n;
            this.f91266n = i2 + 1;
            iArr[i2] = i;
            z = !z;
        } while (i < this.f91257e);
    }

    /* renamed from: f0 */
    public final void m58589f0() throws IOException {
        if (this.f91260h >= this.f91259g) {
            this.f91259g = 0;
            try {
                m58594w();
            } catch (EOFException e) {
                if (this.f91259g != 0) {
                    throw e;
                }
                this.f91259g = -1;
            }
            this.f91260h = 0;
        }
    }

    /* renamed from: g0 */
    public final int m58590g0(int i, boolean z) throws IOException {
        int i2 = (this.f91267o & (-2)) + (!z ? 1 : 0);
        if (i2 > 2) {
            i2 -= 2;
        }
        if (i == 0) {
            return i2;
        }
        while (i2 < this.f91265m) {
            if (i < this.f91263k[i2]) {
                this.f91267o = i2;
                return i2;
            }
            i2 += 2;
        }
        return -1;
    }

    /* renamed from: h0 */
    public final boolean m58591h0() throws IOException {
        int i = this.f91272t;
        boolean z = false;
        if (i < 0 || i > 7) {
            int read = ((FilterInputStream) this).in.read();
            this.f91271s = read;
            if (read == -1) {
                throw new EOFException("Unexpected end of Huffman RLE stream");
            }
            this.f91272t = 0;
        }
        if (this.f91261i != 1 ? ((this.f91271s >> this.f91272t) & 1) == 1 : ((this.f91271s >> (7 - this.f91272t)) & 1) == 1) {
            z = true;
        }
        int i2 = this.f91272t + 1;
        this.f91272t = i2;
        if (i2 > 7) {
            this.f91272t = -1;
        }
        return z;
    }

    /* renamed from: i0 */
    public final void m58592i0() throws IOException {
        int i = 0;
        while (true) {
            byte[] bArr = this.f91258f;
            if (i >= bArr.length) {
                break;
            }
            bArr[i] = 0;
            i++;
        }
        while (this.f91272t != -1) {
            m58591h0();
        }
    }

    /* renamed from: j */
    public final void m58593j() throws IOException {
        int i;
        int i2;
        this.f91265m = this.f91266n;
        int[] iArr = this.f91264l;
        this.f91264l = this.f91263k;
        this.f91263k = iArr;
        int i3 = 0;
        this.f91266n = 0;
        boolean z = true;
        while (i3 < this.f91257e) {
            C14737b c14737b = f91246Z.f91278a;
            while (true) {
                c14737b = c14737b.m58596b(m58591h0());
                if (c14737b != null) {
                    if (c14737b.f91277e) {
                        int i4 = c14737b.f91275c;
                        if (i4 == -4000) {
                            int m58587e0 = i3 + m58587e0(z ? f91244O : f91243J);
                            int[] iArr2 = this.f91264l;
                            int i5 = this.f91266n;
                            this.f91266n = i5 + 1;
                            iArr2[i5] = m58587e0;
                            i3 = m58587e0 + m58587e0(z ? f91243J : f91244O);
                            int[] iArr3 = this.f91264l;
                            int i6 = this.f91266n;
                            this.f91266n = i6 + 1;
                            iArr3[i6] = i3;
                        } else if (i4 != -3000) {
                            int m58590g0 = m58590g0(i3, z);
                            if (m58590g0 >= this.f91265m || m58590g0 == -1) {
                                i = this.f91257e;
                                i2 = c14737b.f91275c;
                            } else {
                                i = this.f91263k[m58590g0];
                                i2 = c14737b.f91275c;
                            }
                            i3 = i + i2;
                            int[] iArr4 = this.f91264l;
                            int i7 = this.f91266n;
                            iArr4[i7] = i3;
                            this.f91266n = i7 + 1;
                            z = !z;
                        } else {
                            int m58590g02 = m58590g0(i3, z) + 1;
                            i3 = m58590g02 >= this.f91265m ? this.f91257e : this.f91263k[m58590g02];
                        }
                    }
                }
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = this.f91259g;
        if (i < 0) {
            return 0;
        }
        if (this.f91260h >= i) {
            m58589f0();
            if (this.f91259g < 0) {
                return 0;
            }
        }
        byte[] bArr = this.f91258f;
        int i2 = this.f91260h;
        this.f91260h = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        int i = this.f91259g;
        if (i < 0) {
            return -1L;
        }
        if (this.f91260h >= i) {
            m58589f0();
            if (this.f91259g < 0) {
                return -1L;
            }
        }
        int min = (int) Math.min(this.f91259g - this.f91260h, j);
        this.f91260h += min;
        return min;
    }

    /* renamed from: w */
    public final void m58594w() throws IOException {
        int i;
        int i2 = this.f91262j;
        if (i2 == 2) {
            m58584H();
        } else if (i2 == 3) {
            m58585I();
        } else if (i2 == 4) {
            m58586M();
        }
        this.f91267o = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z = true;
        while (true) {
            int i5 = this.f91266n;
            if (i3 > i5) {
                break;
            }
            int i6 = this.f91257e;
            int i7 = i3 != i5 ? this.f91264l[i3] : i6;
            if (i7 <= i6) {
                i6 = i7;
            }
            int i8 = i4 / 8;
            while (true) {
                i = i4 % 8;
                if (i == 0 || i6 - i4 <= 0) {
                    break;
                }
                byte[] bArr = this.f91258f;
                bArr[i8] = (byte) ((z ? 0 : 1 << (7 - i)) | bArr[i8]);
                i4++;
            }
            if (i == 0) {
                i8 = i4 / 8;
                byte b = (byte) (z ? 0 : 255);
                while (i6 - i4 > 7) {
                    this.f91258f[i8] = b;
                    i4 += 8;
                    i8++;
                }
            }
            while (i6 - i4 > 0) {
                int i9 = i4 % 8;
                if (i9 == 0) {
                    this.f91258f[i8] = 0;
                }
                byte[] bArr2 = this.f91258f;
                bArr2[i8] = (byte) ((z ? 0 : 1 << (7 - i9)) | bArr2[i8]);
                i4++;
            }
            z = !z;
            i3++;
        }
        if (i4 == this.f91257e) {
            this.f91259g = (i4 + 7) / 8;
            return;
        }
        throw new IOException("Sum of run-lengths does not equal scan line width: " + i4 + CloudStorageConstants.OPERATION_GREATER + this.f91257e);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f91259g;
        if (i3 < 0) {
            Arrays.fill(bArr, i, i + i2, (byte) 0);
            return i2;
        }
        if (this.f91260h >= i3) {
            m58589f0();
            if (this.f91259g < 0) {
                Arrays.fill(bArr, i, i + i2, (byte) 0);
                return i2;
            }
        }
        int min = Math.min(this.f91259g - this.f91260h, i2);
        System.arraycopy(this.f91258f, this.f91260h, bArr, i, min);
        this.f91260h += min;
        return min;
    }
}
