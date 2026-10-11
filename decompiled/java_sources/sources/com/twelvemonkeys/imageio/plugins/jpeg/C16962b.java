package com.twelvemonkeys.imageio.plugins.jpeg;

import com.sunia.HTREnginev2.cml;
import com.sunia.HTREnginev2.hal;
import com.sunia.HTREnginev2.n0i;
import com.sunia.HTREnginev2.sdm;
import com.twelvemonkeys.imageio.plugins.jpeg.Frame;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;

/* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.b */
/* loaded from: classes10.dex */
public final class C16962b {

    /* renamed from: A */
    public static final int[] f94106A = {0, 5, 40, 16, 45, 2, 7, 42, 21, 56, 8, 61, 18, 47, 1, 4, 41, 23, 58, 13, 32, 24, 37, 10, 63, 17, 44, 3, 6, 43, 20, 57, 15, 34, 29, 48, 53, 26, 39, 9, 60, 19, 46, 22, 59, 12, 33, 31, 50, 55, 25, 36, 11, 62, 14, 35, 28, 49, 52, 27, 38, 30, 51, 54};

    /* renamed from: B */
    public static final int[] f94107B = {0, 1, 5, 6, 14, 15, 27, 28, 2, 4, 7, 13, 16, 26, 29, 42, 3, 8, 12, 17, 25, 30, 41, 43, 9, 11, 18, 24, 31, 40, 44, 53, 10, 19, 23, 32, 39, 45, 52, 54, 20, 22, 33, 38, 46, 51, 55, 60, 21, 34, 37, 47, 50, 56, 59, 61, 35, 36, 48, 49, 57, 58, 62, 63};

    /* renamed from: C */
    public static final int f94108C = 65488;

    /* renamed from: D */
    public static final int f94109D = 65495;

    /* renamed from: E */
    public static final int f94110E = 50;

    /* renamed from: F */
    public static final int f94111F = Integer.MIN_VALUE;

    /* renamed from: a */
    public final ImageInputStream f94112a;

    /* renamed from: b */
    public final Frame f94113b;

    /* renamed from: c */
    public final n0i f94114c;

    /* renamed from: d */
    public final hal f94115d;

    /* renamed from: e */
    public Scan f94116e;

    /* renamed from: f */
    public final int[][][] f94117f = (int[][][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 2, 12800);

    /* renamed from: g */
    public final int[] f94118g = new int[64];

    /* renamed from: h */
    public final int[] f94119h = new int[10];

    /* renamed from: i */
    public final int[][] f94120i = new int[10];

    /* renamed from: j */
    public final int[][] f94121j = new int[10];

    /* renamed from: k */
    public final int[][] f94122k = new int[10];

    /* renamed from: l */
    public boolean f94123l;

    /* renamed from: m */
    public int f94124m;

    /* renamed from: n */
    public int f94125n;

    /* renamed from: o */
    public int f94126o;

    /* renamed from: p */
    public int f94127p;

    /* renamed from: q */
    public int f94128q;

    /* renamed from: r */
    public int f94129r;

    /* renamed from: s */
    public int f94130s;

    /* renamed from: t */
    public int f94131t;

    /* renamed from: u */
    public int f94132u;

    /* renamed from: v */
    public int f94133v;

    /* renamed from: w */
    public int[] f94134w;

    /* renamed from: x */
    public int[] f94135x;

    /* renamed from: y */
    public int[] f94136y;

    /* renamed from: z */
    public int[] f94137z;

    public C16962b(List<sdm> list, ImageInputStream imageInputStream) {
        Validate.notNull(list);
        this.f94113b = (Frame) m60561e(list, Frame.class);
        this.f94116e = (Scan) m60561e(list, Scan.class);
        hal halVar = (hal) m60561e(list, hal.class);
        this.f94115d = halVar == null ? new hal() : halVar;
        this.f94114c = (n0i) m60561e(list, n0i.class);
        cml cmlVar = (cml) m60561e(list, cml.class);
        this.f94127p = cmlVar != null ? cmlVar.f66973b : 0;
        this.f94112a = imageInputStream;
    }

    /* renamed from: a */
    public final int m60557a(int[] iArr, int[] iArr2, int[] iArr3) throws IOException {
        int i = this.f94126o;
        if (i == 1) {
            return m60560d(iArr, iArr2, iArr3);
        }
        if (i == 3) {
            return m60559c(iArr, iArr2, iArr3);
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int[][] m60558b() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.jpeg.C16962b.m60558b():int[][]");
    }

    /* renamed from: c */
    public final int m60559c(int[] iArr, int[] iArr2, int[] iArr3) throws IOException {
        switch (this.f94128q) {
            case 2:
                iArr[0] = m60570n(this.f94135x);
                iArr[1] = m60570n(this.f94136y);
                iArr[2] = m60570n(this.f94137z);
                break;
            case 3:
                iArr[0] = m60569m(this.f94135x);
                iArr[1] = m60569m(this.f94136y);
                iArr[2] = m60569m(this.f94137z);
                break;
            case 4:
                iArr[0] = (m60568l(this.f94135x) + m60570n(this.f94135x)) - m60569m(this.f94135x);
                iArr[1] = (m60568l(this.f94136y) + m60570n(this.f94136y)) - m60569m(this.f94136y);
                iArr[2] = (m60568l(this.f94137z) + m60570n(this.f94137z)) - m60569m(this.f94137z);
                break;
            case 5:
                iArr[0] = m60568l(this.f94135x) + ((m60570n(this.f94135x) - m60569m(this.f94135x)) >> 1);
                iArr[1] = m60568l(this.f94136y) + ((m60570n(this.f94136y) - m60569m(this.f94136y)) >> 1);
                iArr[2] = m60568l(this.f94137z) + ((m60570n(this.f94137z) - m60569m(this.f94137z)) >> 1);
                break;
            case 6:
                iArr[0] = m60570n(this.f94135x) + ((m60568l(this.f94135x) - m60569m(this.f94135x)) >> 1);
                iArr[1] = m60570n(this.f94136y) + ((m60568l(this.f94136y) - m60569m(this.f94136y)) >> 1);
                iArr[2] = m60570n(this.f94137z) + ((m60568l(this.f94137z) - m60569m(this.f94137z)) >> 1);
                break;
            case 7:
                iArr[0] = (int) ((m60568l(this.f94135x) + m60570n(this.f94135x)) / 2);
                iArr[1] = (int) ((m60568l(this.f94136y) + m60570n(this.f94136y)) / 2);
                iArr[2] = (int) ((m60568l(this.f94137z) + m60570n(this.f94137z)) / 2);
                break;
            default:
                iArr[0] = m60568l(this.f94135x);
                iArr[1] = m60568l(this.f94136y);
                iArr[2] = m60568l(this.f94137z);
                break;
        }
        for (int i = 0; i < this.f94126o; i++) {
            int[] iArr4 = this.f94122k[i];
            int[] iArr5 = this.f94120i[i];
            int[] iArr6 = this.f94121j[i];
            for (int i2 = 0; i2 < this.f94119h[i]; i2++) {
                int i3 = 0;
                while (true) {
                    int[] iArr7 = this.f94118g;
                    if (i3 < iArr7.length) {
                        iArr7[i3] = 0;
                        i3++;
                    } else {
                        int m60565i = m60565i(iArr6, iArr2, iArr3);
                        if (m60565i >= 65280) {
                            return m60565i;
                        }
                        int[] iArr8 = this.f94118g;
                        int m60571o = iArr[i] + m60571o(iArr3, m60565i, iArr2, iArr3);
                        iArr8[0] = m60571o;
                        iArr[i] = m60571o;
                        int[] iArr9 = this.f94118g;
                        iArr9[0] = iArr9[0] * iArr4[0];
                        int i4 = 1;
                        while (i4 < 64) {
                            int m60565i2 = m60565i(iArr5, iArr2, iArr3);
                            if (m60565i2 >= 65280) {
                                return m60565i2;
                            }
                            int i5 = m60565i2 >> 4;
                            int i6 = i4 + i5;
                            int i7 = m60565i2 & 15;
                            if (i7 == 0) {
                                if (i5 == 0) {
                                    break;
                                }
                            } else {
                                this.f94118g[f94106A[i6]] = m60571o(iArr3, i7, iArr2, iArr3) * iArr4[i6];
                            }
                            i4 = i6 + 1;
                        }
                    }
                }
            }
        }
        return 0;
    }

    /* renamed from: d */
    public final int m60560d(int[] iArr, int[] iArr2, int[] iArr3) throws IOException {
        if (!this.f94123l) {
            switch (this.f94128q) {
                case 2:
                    iArr[0] = m60570n(this.f94134w);
                    break;
                case 3:
                    iArr[0] = m60569m(this.f94134w);
                    break;
                case 4:
                    iArr[0] = (m60568l(this.f94134w) + m60570n(this.f94134w)) - m60569m(this.f94134w);
                    break;
                case 5:
                    iArr[0] = m60568l(this.f94134w) + ((m60570n(this.f94134w) - m60569m(this.f94134w)) >> 1);
                    break;
                case 6:
                    iArr[0] = m60570n(this.f94134w) + ((m60568l(this.f94134w) - m60569m(this.f94134w)) >> 1);
                    break;
                case 7:
                    iArr[0] = (int) ((m60568l(this.f94134w) + m60570n(this.f94134w)) / 2);
                    break;
                default:
                    iArr[0] = m60568l(this.f94134w);
                    break;
            }
        } else {
            this.f94123l = false;
            iArr[0] = 1 << (this.f94113b.f94070b - 1);
        }
        for (int i = 0; i < this.f94119h[0]; i++) {
            int m60565i = m60565i(this.f94121j[0], iArr2, iArr3);
            if (m60565i >= 65280) {
                return m60565i;
            }
            int m60571o = m60571o(iArr, m60565i, iArr2, iArr3);
            int i2 = m60571o >> 8;
            if (i2 >= 65488 && i2 <= 65495) {
                return i2;
            }
            iArr[0] = iArr[0] + m60571o;
        }
        return 0;
    }

    /* renamed from: e */
    public final <T> T m60561e(List<sdm> list, Class<T> cls) {
        for (sdm sdmVar : list) {
            if (cls.isInstance(sdmVar)) {
                return cls.cast(sdmVar);
            }
        }
        return null;
    }

    /* renamed from: f */
    public final Frame.Component m60562f(Frame.Component[] componentArr, int i) {
        for (Frame.Component component : componentArr) {
            if (component.f94074a == i) {
                return component;
            }
        }
        throw new IllegalArgumentException("No such component id: " + i);
    }

    /* renamed from: g */
    public int m60563g() {
        return this.f94129r;
    }

    /* renamed from: h */
    public int m60564h() {
        return this.f94130s;
    }

    /* renamed from: i */
    public final int m60565i(int[] iArr, int[] iArr2, int[] iArr3) throws IOException {
        int i = iArr3[0];
        if (i < 8) {
            iArr2[0] = iArr2[0] << 8;
            int readUnsignedByte = this.f94112a.readUnsignedByte();
            if (readUnsignedByte == 255) {
                int readUnsignedByte2 = this.f94112a.readUnsignedByte();
                this.f94124m = readUnsignedByte2;
                if (readUnsignedByte2 != 0) {
                    this.f94125n = 9;
                }
            }
            iArr2[0] = readUnsignedByte | iArr2[0];
        } else {
            iArr3[0] = i - 8;
        }
        int i2 = iArr2[0];
        int i3 = iArr3[0];
        int i4 = iArr[i2 >> i3];
        if ((Integer.MIN_VALUE & i4) != 0) {
            if (this.f94125n != 0) {
                this.f94125n = 0;
                return this.f94124m | 65280;
            }
            int i5 = i2 & (65535 >> (16 - i3));
            iArr2[0] = i5;
            iArr2[0] = i5 << 8;
            int readUnsignedByte3 = this.f94112a.readUnsignedByte();
            if (readUnsignedByte3 == 255) {
                int readUnsignedByte4 = this.f94112a.readUnsignedByte();
                this.f94124m = readUnsignedByte4;
                if (readUnsignedByte4 != 0) {
                    this.f94125n = 9;
                }
            }
            int i6 = readUnsignedByte3 | iArr2[0];
            iArr2[0] = i6;
            int i7 = iArr3[0];
            i4 = iArr[((i4 & 255) * 256) + (i6 >> i7)];
            iArr3[0] = i7 + 8;
        }
        int i8 = iArr3[0] + (8 - (i4 >> 8));
        iArr3[0] = i8;
        if (i8 >= 0) {
            if (i8 < this.f94125n) {
                this.f94125n = 0;
                return this.f94124m | 65280;
            }
            iArr2[0] = iArr2[0] & (65535 >> (16 - i8));
            return i4 & 255;
        }
        throw new IIOException("index=" + iArr3[0] + " temp=" + iArr2[0] + " code=" + i4 + " in HuffmanValue()");
    }

    /* renamed from: j */
    public int m60566j() {
        return this.f94126o;
    }

    /* renamed from: k */
    public int m60567k() {
        return this.f94113b.f94070b;
    }

    /* renamed from: l */
    public final int m60568l(int[] iArr) {
        int i = this.f94131t;
        return i > 0 ? iArr[((this.f94132u * this.f94129r) + i) - 1] : this.f94132u > 0 ? m60570n(iArr) : 1 << (this.f94113b.f94070b - 1);
    }

    /* renamed from: m */
    public final int m60569m(int[] iArr) {
        int i;
        return (this.f94131t <= 0 || (i = this.f94132u) <= 0) ? m60570n(iArr) : iArr[(((i - 1) * this.f94129r) + r0) - 1];
    }

    /* renamed from: n */
    public final int m60570n(int[] iArr) {
        int i = this.f94132u;
        return i > 0 ? iArr[((i - 1) * this.f94129r) + this.f94131t] : m60568l(iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m60571o(int[] r8, int r9, int[] r10, int[] r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.jpeg.C16962b.m60571o(int[], int, int[], int[]):int");
    }

    /* renamed from: p */
    public final boolean m60572p() {
        return this.f94131t == this.f94129r - 1 && this.f94132u == this.f94130s - 1;
    }

    /* renamed from: q */
    public final void m60573q(int[] iArr) {
        if (this.f94126o == 1) {
            m60575s(iArr);
        } else {
            m60574r(iArr);
        }
    }

    /* renamed from: r */
    public final void m60574r(int[] iArr) {
        int i;
        int i2 = this.f94131t;
        int i3 = this.f94129r;
        if (i2 >= i3 || (i = this.f94132u) >= this.f94130s) {
            return;
        }
        this.f94135x[(i * i3) + i2] = iArr[0];
        this.f94136y[(i * i3) + i2] = iArr[1];
        this.f94137z[(i * i3) + i2] = iArr[2];
        int i4 = i2 + 1;
        this.f94131t = i4;
        if (i4 >= i3) {
            this.f94132u = i + 1;
            this.f94131t = 0;
        }
    }

    /* renamed from: s */
    public final void m60575s(int[] iArr) {
        int i;
        int i2 = this.f94131t;
        int i3 = this.f94129r;
        if (i2 >= i3 || (i = this.f94132u) >= this.f94130s) {
            return;
        }
        this.f94134w[(i * i3) + i2] = iArr[0] & this.f94133v;
        int i4 = i2 + 1;
        this.f94131t = i4;
        if (i4 >= i3) {
            this.f94132u = i + 1;
            this.f94131t = 0;
        }
    }

    /* renamed from: t */
    public final int m60576t() throws IOException {
        if (this.f94112a.readUnsignedShort() == 4) {
            return this.f94112a.readUnsignedShort();
        }
        throw new IOException("ERROR: Define number format throw new IOException [Ld!=4]");
    }

    /* renamed from: u */
    public final Scan m60577u() throws IOException {
        return Scan.m60555b(this.f94112a, this.f94112a.readUnsignedShort());
    }
}
