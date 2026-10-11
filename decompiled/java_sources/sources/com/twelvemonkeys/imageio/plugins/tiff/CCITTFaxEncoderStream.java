package com.twelvemonkeys.imageio.plugins.tiff;

import com.sunia.HTREnginev2.z00;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes10.dex */
public final class CCITTFaxEncoderStream extends OutputStream {

    /* renamed from: w */
    public static final Code[] f94138w = new Code[64];

    /* renamed from: x */
    public static final Code[] f94139x = new Code[40];

    /* renamed from: y */
    public static final Code[] f94140y;

    /* renamed from: z */
    public static final Code[] f94141z;

    /* renamed from: f */
    public final byte[] f94143f;

    /* renamed from: g */
    public final int f94144g;

    /* renamed from: h */
    public int f94145h;

    /* renamed from: i */
    public int f94146i;

    /* renamed from: j */
    public int[] f94147j;

    /* renamed from: k */
    public int[] f94148k;

    /* renamed from: q */
    public int f94154q;

    /* renamed from: r */
    public int f94155r;

    /* renamed from: s */
    public boolean f94156s;

    /* renamed from: t */
    public boolean f94157t;

    /* renamed from: u */
    public boolean f94158u;

    /* renamed from: v */
    public OutputStream f94159v;

    /* renamed from: e */
    public int f94142e = 0;

    /* renamed from: l */
    public int f94149l = 0;

    /* renamed from: m */
    public int f94150m = 0;

    /* renamed from: n */
    public int f94151n = 0;

    /* renamed from: o */
    public byte f94152o = 0;

    /* renamed from: p */
    public byte f94153p = 0;

    /* loaded from: classes10.dex */
    public static class Code {

        /* renamed from: a */
        public final int f94160a;

        /* renamed from: b */
        public final int f94161b;

        public Code(int i, int i2) {
            this.f94160a = i;
            this.f94161b = i2;
        }
    }

    static {
        int i = 0;
        while (true) {
            if (i >= z00.f91253w.length) {
                break;
            }
            int i2 = i + 4;
            int i3 = 0;
            while (true) {
                short[] sArr = z00.f91253w[i];
                if (i3 < sArr.length) {
                    short s = z00.f91254x[i][i3];
                    short s2 = sArr[i3];
                    if (s < 64) {
                        f94138w[s] = new Code(s2, i2);
                    } else {
                        f94139x[(s / 64) - 1] = new Code(s2, i2);
                    }
                    i3++;
                }
            }
            i++;
        }
        f94140y = new Code[64];
        f94141z = new Code[40];
        for (int i4 = 0; i4 < z00.f91250u.length; i4++) {
            int i5 = i4 + 2;
            int i6 = 0;
            while (true) {
                short[] sArr2 = z00.f91250u[i4];
                if (i6 < sArr2.length) {
                    short s3 = z00.f91252v[i4][i6];
                    short s4 = sArr2[i6];
                    if (s3 < 64) {
                        f94140y[s3] = new Code(s4, i5);
                    } else {
                        f94141z[(s3 / 64) - 1] = new Code(s4, i5);
                    }
                    i6++;
                }
            }
        }
    }

    public CCITTFaxEncoderStream(OutputStream outputStream, int i, int i2, int i3, int i4, long j) {
        this.f94159v = outputStream;
        this.f94154q = i3;
        this.f94145h = i;
        this.f94146i = i2;
        this.f94155r = i4;
        this.f94148k = new int[i];
        this.f94147j = new int[i];
        if (i3 == 3) {
            this.f94156s = (1 & j) != 0;
            this.f94157t = (4 & j) != 0;
            this.f94158u = (j & 2) != 0;
        } else if (i3 == 4) {
            this.f94158u = (j & 2) != 0;
        }
        int i5 = (i + 7) / 8;
        this.f94144g = i5;
        this.f94143f = new byte[i5];
        boolean z = this.f94158u;
        Validate.isTrue(!z, Boolean.valueOf(z), "CCITT GROUP 3/4 OPTION UNCOMPRESSED is not supported");
    }

    /* renamed from: H */
    public final void m60578H() throws IOException {
        this.f94149l++;
        int[] iArr = this.f94148k;
        this.f94148k = this.f94147j;
        this.f94147j = iArr;
        this.f94151n = this.f94150m;
        this.f94150m = 0;
        boolean z = true;
        for (int i = 0; i < this.f94145h; i++) {
            if ((((this.f94143f[i / 8] >> (7 - (i % 8))) & 1) == 1) == z) {
                int[] iArr2 = this.f94147j;
                int i2 = this.f94150m;
                iArr2[i2] = i;
                this.f94150m = i2 + 1;
                z = !z;
            }
        }
        int i3 = this.f94154q;
        if (i3 == 2) {
            m60579I();
        } else if (i3 == 3) {
            m60580M();
        } else if (i3 == 4) {
            m60581e0();
        }
        if (this.f94149l == this.f94146i) {
            if (this.f94154q == 4) {
                m60588j0();
                m60588j0();
            }
            m60583f0();
        }
    }

    /* renamed from: I */
    public final void m60579I() throws IOException {
        m60587j();
        m60583f0();
    }

    /* renamed from: M */
    public final void m60580M() throws IOException {
        m60588j0();
        if (!this.f94156s) {
            m60587j();
        } else if (this.f94151n == 0) {
            m60586i0(1, 1);
            m60587j();
        } else {
            m60586i0(0, 1);
            m60590w();
        }
        if (this.f94157t) {
            m60583f0();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f94159v.close();
    }

    /* renamed from: e0 */
    public final void m60581e0() throws IOException {
        m60590w();
    }

    /* renamed from: f */
    public final void m60582f() {
        this.f94152o = (byte) 0;
        this.f94153p = (byte) 0;
    }

    /* renamed from: f0 */
    public final void m60583f0() throws IOException {
        if (this.f94153p != 0) {
            this.f94159v.write(this.f94152o);
        }
        m60582f();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f94159v.flush();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (r2 >= r3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        r0[1] = r4[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        r0[0] = r5;
        r2 = r2 + 1;
     */
    /* renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] m60584g0(int r7, boolean r8) {
        /*
            r6 = this;
            int r0 = r6.f94145h
            int[] r0 = new int[]{r0, r0}
            r1 = 0
            r2 = r1
        L8:
            int r3 = r6.f94150m
            if (r2 >= r3) goto L24
            int[] r4 = r6.f94147j
            r5 = r4[r2]
            if (r7 < r5) goto L1a
            if (r7 != 0) goto L17
            if (r8 == 0) goto L17
            goto L1a
        L17:
            int r2 = r2 + 1
            goto L8
        L1a:
            r0[r1] = r5
            r6 = 1
            int r2 = r2 + r6
            if (r2 >= r3) goto L24
            r7 = r4[r2]
            r0[r6] = r7
        L24:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.tiff.CCITTFaxEncoderStream.m60584g0(int, boolean):int[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (r7 >= r2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        r0[1] = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        r0[0] = r4;
        r7 = r7 + 1;
     */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] m60585h0(int r6, boolean r7) {
        /*
            r5 = this;
            int r0 = r5.f94145h
            int[] r0 = new int[]{r0, r0}
            r1 = 1
            r7 = r7 ^ r1
        L8:
            int r2 = r5.f94151n
            if (r7 >= r2) goto L24
            int[] r3 = r5.f94148k
            r4 = r3[r7]
            if (r4 > r6) goto L1a
            if (r6 != 0) goto L17
            if (r7 != 0) goto L17
            goto L1a
        L17:
            int r7 = r7 + 2
            goto L8
        L1a:
            r5 = 0
            r0[r5] = r4
            int r7 = r7 + r1
            if (r7 >= r2) goto L24
            r5 = r3[r7]
            r0[r1] = r5
        L24:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.tiff.CCITTFaxEncoderStream.m60585h0(int, boolean):int[]");
    }

    /* renamed from: i0 */
    public final void m60586i0(int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            boolean z = ((i >> ((i2 - i3) - 1)) & 1) == 1;
            if (this.f94155r == 1) {
                this.f94152o = (byte) ((z ? 1 << (7 - (this.f94153p % 8)) : 0) | this.f94152o);
            } else {
                this.f94152o = (byte) ((z ? 1 << (this.f94153p % 8) : 0) | this.f94152o);
            }
            byte b = (byte) (this.f94153p + 1);
            this.f94153p = b;
            if (b == 8) {
                this.f94159v.write(this.f94152o);
                m60582f();
            }
        }
    }

    /* renamed from: j */
    public final void m60587j() throws IOException {
        boolean z = true;
        int i = 0;
        while (i < this.f94145h) {
            int i2 = m60584g0(i, z)[0] - i;
            m60589k0(i2, z);
            i += i2;
            z = !z;
        }
    }

    /* renamed from: j0 */
    public final void m60588j0() throws IOException {
        if (this.f94157t) {
            while (this.f94153p != 4) {
                m60586i0(0, 1);
            }
        }
        m60586i0(1, 12);
    }

    /* renamed from: k0 */
    public final void m60589k0(int i, boolean z) throws IOException {
        int i2 = i / 64;
        Code[] codeArr = z ? f94139x : f94141z;
        while (i2 > 0) {
            if (i2 >= codeArr.length) {
                m60586i0(codeArr[codeArr.length - 1].f94160a, codeArr[codeArr.length - 1].f94161b);
                i2 -= codeArr.length;
            } else {
                Code code = codeArr[i2 - 1];
                m60586i0(code.f94160a, code.f94161b);
                i2 = 0;
            }
        }
        Code code2 = z ? f94138w[i % 64] : f94140y[i % 64];
        m60586i0(code2.f94160a, code2.f94161b);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x002b. Please report as an issue. */
    /* renamed from: w */
    public final void m60590w() throws IOException {
        boolean z = true;
        int i = 0;
        while (i < this.f94145h) {
            int[] m60584g0 = m60584g0(i, z);
            int[] m60585h0 = m60585h0(i, z);
            int i2 = m60584g0[0];
            int i3 = i2 - m60585h0[0];
            if (i2 > m60585h0[1]) {
                m60586i0(1, 4);
                i = m60585h0[1];
            } else if (i3 > 3 || i3 < -3) {
                m60586i0(1, 3);
                m60589k0(m60584g0[0] - i, z);
                m60589k0(m60584g0[1] - m60584g0[0], !z);
                i = m60584g0[1];
            } else {
                switch (i3) {
                    case -3:
                        m60586i0(2, 7);
                        break;
                    case -2:
                        m60586i0(2, 6);
                        break;
                    case -1:
                        m60586i0(2, 3);
                        break;
                    case 0:
                        m60586i0(1, 1);
                        break;
                    case 1:
                        m60586i0(3, 3);
                        break;
                    case 2:
                        m60586i0(3, 6);
                        break;
                    case 3:
                        m60586i0(3, 7);
                        break;
                }
                z = !z;
                i = m60585h0[0] + i3;
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f94143f;
        int i2 = this.f94142e;
        bArr[i2] = (byte) i;
        int i3 = i2 + 1;
        this.f94142e = i3;
        if (i3 == this.f94144g) {
            m60578H();
            this.f94142e = 0;
        }
    }
}
