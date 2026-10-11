package com.sunia.HTREnginev2;

import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes9.dex */
public class m0i {

    /* renamed from: b */
    public static final int[] f77054b = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, b7n.f65480a, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* renamed from: c */
    public static final byte[] f77055c = {13, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, 15, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, 14, 6, 15, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, 15, 11, 14, 13, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, Ascii.SUB, Ascii.SUB, 20, 19, 22, 23, 22, 25, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, 24, 25, 19, 21, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.ESC, 24, 21, 21, Ascii.SUB, Ascii.SUB, 28, Ascii.ESC, Ascii.ESC, Ascii.ESC, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, Ascii.SUB, 23, Ascii.SUB, Ascii.ESC, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, 28, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.SUB};

    /* renamed from: d */
    public static final m0i f77056d = new m0i();

    /* renamed from: a */
    public final C14070a f77057a = new C14070a();

    public m0i() {
        m55530b();
    }

    /* renamed from: f */
    public static m0i m55528f() {
        return f77056d;
    }

    /* renamed from: a */
    public final void m55529a(int i, int i2, byte b) {
        C14070a c14070a = new C14070a(i, b);
        C14070a c14070a2 = this.f77057a;
        while (b > 8) {
            b = (byte) (b - 8);
            int i3 = (i2 >>> b) & 255;
            if (c14070a2.f77058a == null) {
                throw new IllegalStateException("invalid dictionary: prefix not unique");
            }
            if (c14070a2.f77058a[i3] == null) {
                c14070a2.f77058a[i3] = new C14070a();
            }
            c14070a2 = c14070a2.f77058a[i3];
        }
        int i4 = 8 - b;
        int i5 = (i2 << i4) & 255;
        int i6 = 1 << i4;
        for (int i7 = i5; i7 < i5 + i6; i7++) {
            c14070a2.f77058a[i7] = c14070a;
        }
    }

    /* renamed from: b */
    public final void m55530b() {
        int i = 0;
        while (true) {
            byte[] bArr = f77055c;
            if (i >= bArr.length) {
                return;
            }
            m55529a(i, f77054b[i], bArr[i]);
            i++;
        }
    }

    /* renamed from: c */
    public byte[] m55531c(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C14070a c14070a = this.f77057a;
        int i = 0;
        int i2 = 0;
        for (byte b : bArr) {
            i = (i << 8) | (b & 255);
            i2 += 8;
            while (i2 >= 8) {
                c14070a = c14070a.f77058a[(i >>> (i2 - 8)) & 255];
                if (c14070a.f77058a == null) {
                    byteArrayOutputStream.write(c14070a.f77059b);
                    i2 -= c14070a.f77060c;
                    c14070a = this.f77057a;
                } else {
                    i2 -= 8;
                }
            }
        }
        while (i2 > 0) {
            C14070a c14070a2 = c14070a.f77058a[(i << (8 - i2)) & 255];
            if (c14070a2.f77058a != null || c14070a2.f77060c > i2) {
                break;
            }
            byteArrayOutputStream.write(c14070a2.f77059b);
            i2 -= c14070a2.f77060c;
            c14070a = this.f77057a;
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: d */
    public void m55532d(byte[] bArr, OutputStream outputStream) throws IOException {
        long j = 0;
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            int i3 = f77054b[i2];
            byte b2 = f77055c[i2];
            j = (j << b2) | i3;
            i += b2;
            while (i >= 8) {
                i -= 8;
                outputStream.write((int) (j >> i));
            }
        }
        if (i > 0) {
            outputStream.write((int) ((j << (8 - i)) | (255 >>> i)));
        }
    }

    /* renamed from: e */
    public int m55533e(byte[] bArr) {
        long j = 0;
        for (byte b : bArr) {
            j += f77055c[b & 255];
        }
        return (int) ((j + 7) >> 3);
    }

    /* renamed from: com.sunia.HTREnginev2.m0i$a */
    /* loaded from: classes9.dex */
    public static final class C14070a {

        /* renamed from: a */
        public final C14070a[] f77058a;

        /* renamed from: b */
        public final int f77059b;

        /* renamed from: c */
        public final int f77060c;

        public C14070a() {
            this.f77058a = new C14070a[256];
            this.f77059b = 0;
            this.f77060c = 0;
        }

        public C14070a(int i, int i2) {
            this.f77058a = null;
            this.f77059b = i;
            int i3 = i2 & 7;
            this.f77060c = i3 == 0 ? 8 : i3;
        }
    }
}
