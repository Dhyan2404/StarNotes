package com.alibaba.fastjson2.util;

import com.fasterxml.jackson.core.base.ParserBase;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import java.io.Closeable;
import java.time.LocalTime;
import java.util.Arrays;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public class IOUtils {
    public static final short[] PACKED_DIGITS;
    public static final int[] PACKED_DIGITS_UTF16;

    /* renamed from: a */
    public static final int[] f12792a = {9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
    public static final int[] DIGITS_K = new int[1000];

    /* renamed from: b */
    public static final byte[] f12793b = "-2147483648".getBytes();

    /* renamed from: c */
    public static final char[] f12794c = "-2147483648".toCharArray();

    /* renamed from: d */
    public static final byte[] f12795d = "-9223372036854775808".getBytes();

    /* renamed from: e */
    public static final char[] f12796e = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    /* renamed from: f */
    public static final int[] f12797f = new int[256];

    static {
        short[] sArr = {12336, 12592, 12848, 13104, 13360, 13616, 13872, 14128, 14384, 14640, 12337, 12593, 12849, 13105, 13361, 13617, 13873, 14129, 14385, 14641, 12338, 12594, 12850, 13106, 13362, 13618, 13874, 14130, 14386, 14642, 12339, 12595, 12851, 13107, 13363, 13619, 13875, 14131, 14387, 14643, 12340, 12596, 12852, 13108, 13364, 13620, 13876, 14132, 14388, 14644, 12341, 12597, 12853, 13109, 13365, 13621, 13877, 14133, 14389, 14645, 12342, 12598, 12854, 13110, 13366, 13622, 13878, 14134, 14390, 14646, 12343, 12599, 12855, 13111, 13367, 13623, 13879, 14135, 14391, 14647, 12344, 12600, 12856, 13112, 13368, 13624, 13880, 14136, 14392, 14648, 12345, 12601, 12857, 13113, 13369, 13625, 13881, 14137, 14393, 14649};
        int[] iArr = {3145776, 3211312, 3276848, 3342384, 3407920, 3473456, 3538992, 3604528, 3670064, 3735600, 3145777, 3211313, 3276849, 3342385, 3407921, 3473457, 3538993, 3604529, 3670065, 3735601, 3145778, 3211314, 3276850, 3342386, 3407922, 3473458, 3538994, 3604530, 3670066, 3735602, 3145779, 3211315, 3276851, 3342387, 3407923, 3473459, 3538995, 3604531, 3670067, 3735603, 3145780, 3211316, 3276852, 3342388, 3407924, 3473460, 3538996, 3604532, 3670068, 3735604, 3145781, 3211317, 3276853, 3342389, 3407925, 3473461, 3538997, 3604533, 3670069, 3735605, 3145782, 3211318, 3276854, 3342390, 3407926, 3473462, 3538998, 3604534, 3670070, 3735606, 3145783, 3211319, 3276855, 3342391, 3407927, 3473463, 3538999, 3604535, 3670071, 3735607, 3145784, 3211320, 3276856, 3342392, 3407928, 3473464, 3539000, 3604536, 3670072, 3735608, 3145785, 3211321, 3276857, 3342393, 3407929, 3473465, 3539001, 3604537, 3670073, 3735609};
        if (JDKUtils.BIG_ENDIAN) {
            for (int i = 0; i < 100; i++) {
                sArr[i] = Short.reverseBytes(sArr[i]);
            }
            for (int i2 = 0; i2 < 100; i2++) {
                iArr[i2] = Integer.reverseBytes(iArr[i2] << 8);
            }
        }
        PACKED_DIGITS = sArr;
        PACKED_DIGITS_UTF16 = iArr;
        Arrays.fill(f12797f, -1);
        int length = f12796e.length;
        for (int i3 = 0; i3 < length; i3++) {
            f12797f[f12796e[i3]] = i3;
        }
        f12797f[61] = 0;
        int i4 = 0;
        while (true) {
            int[] iArr2 = DIGITS_K;
            if (i4 >= iArr2.length) {
                return;
            }
            iArr2[i4] = (i4 < 10 ? 33554432 : i4 < 100 ? 16777216 : 0) + (((i4 / 100) + 48) << 16) + ((((i4 / 10) % 10) + 48) << 8) + (i4 % 10) + 48;
            i4++;
        }
    }

    public static void close(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Exception unused) {
        }
    }

    public static byte[] decodeBase64(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        if (length == 0) {
            return new byte[0];
        }
        int i3 = length - 1;
        int i4 = 0;
        while (i4 < i3 && f12797f[str.charAt(i4) & 255] < 0) {
            i4++;
        }
        while (i3 > 0 && f12797f[str.charAt(i3) & 255] < 0) {
            i3--;
        }
        int i5 = str.charAt(i3) == '=' ? str.charAt(i3 + (-1)) == '=' ? 2 : 1 : 0;
        int i6 = (i3 - i4) + 1;
        if (length > 76) {
            i = (str.charAt(76) == '\r' ? i6 / 78 : 0) << 1;
        } else {
            i = 0;
        }
        int i7 = (((i6 - i) * 6) >> 3) - i5;
        byte[] bArr = new byte[i7];
        int i8 = (i7 / 3) * 3;
        int i9 = 0;
        int i10 = 0;
        while (i9 < i8) {
            int[] iArr = f12797f;
            int i11 = iArr[str.charAt(i4 + 3)] | (iArr[str.charAt(i4)] << 18) | (iArr[str.charAt(i4 + 1)] << 12) | (iArr[str.charAt(i4 + 2)] << 6);
            i4 += 4;
            bArr[i9] = (byte) (i11 >> 16);
            bArr[i9 + 1] = (byte) (i11 >> 8);
            bArr[i9 + 2] = (byte) i11;
            i9 += 3;
            if (i > 0 && (i10 = i10 + 1) == 19) {
                i4 += 2;
                i10 = 0;
            }
        }
        if (i9 < i7) {
            int i12 = 0;
            while (i4 <= i3 - i5) {
                i2 |= f12797f[str.charAt(i4)] << (18 - (i12 * 6));
                i12++;
                i4++;
            }
            int i13 = 16;
            while (i9 < i7) {
                bArr[i9] = (byte) (i2 >> i13);
                i13 -= 8;
                i9++;
            }
        }
        return bArr;
    }

    public static int encodeUTF8(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4;
        int i5 = i2 + i;
        while (i < i5) {
            byte b = bArr[i];
            byte b2 = bArr[i + 1];
            i += 2;
            if (b2 != 0 || b < 0) {
                char c = (char) ((b & 255) | ((b2 & 255) << 8));
                if (c < 2048) {
                    bArr2[i3] = (byte) ((c >> 6) | 192);
                    bArr2[i3 + 1] = (byte) ((c & '?') | 128);
                    i3 += 2;
                } else {
                    if (c >= 55296 && c < 57344) {
                        int i6 = i - 1;
                        int i7 = -1;
                        if (c < 56320) {
                            if (i5 - i6 >= 2) {
                                char c2 = (char) (((bArr[i6 + 2] & 255) << 8) | (bArr[i6 + 1] & 255));
                                if (c2 >= 56320 && c2 < 57344) {
                                    i += 2;
                                    i7 = ((c << '\n') + c2) - 56613888;
                                }
                            }
                            if (i7 < 0) {
                                i4 = i3 + 1;
                                bArr2[i3] = 63;
                            } else {
                                bArr2[i3] = (byte) ((i7 >> 18) | 240);
                                bArr2[i3 + 1] = (byte) (((i7 >> 12) & 63) | 128);
                                bArr2[i3 + 2] = (byte) (((i7 >> 6) & 63) | 128);
                                bArr2[i3 + 3] = (byte) ((i7 & 63) | 128);
                                i4 = i3 + 4;
                            }
                            i3 = i4;
                        }
                        return -1;
                    }
                    bArr2[i3] = (byte) ((c >> '\f') | 224);
                    bArr2[i3 + 1] = (byte) ((63 & (c >> 6)) | 128);
                    bArr2[i3 + 2] = (byte) ((c & '?') | 128);
                    i3 += 3;
                }
            } else {
                bArr2[i3] = b;
                i3++;
            }
        }
        return i3;
    }

    public static void getChars(int i, int i2, byte[] bArr) {
        int i3;
        boolean z = i < 0;
        if (!z) {
            i = -i;
        }
        while (i <= -100) {
            int i4 = i / 100;
            i2 -= 2;
            JDKUtils.UNSAFE.putShort(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2, PACKED_DIGITS[(i4 * 100) - i]);
            i = i4;
        }
        if (i < -9) {
            i3 = i2 - 2;
            JDKUtils.UNSAFE.putShort(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i3, PACKED_DIGITS[-i]);
        } else {
            i3 = i2 - 1;
            bArr[i3] = (byte) (48 - i);
        }
        if (z) {
            bArr[i3 - 1] = 45;
        }
    }

    public static int getInt(byte[] bArr, int i) {
        int i2 = JDKUtils.UNSAFE.getInt(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i);
        return JDKUtils.BIG_ENDIAN ? i2 : Integer.reverseBytes(i2);
    }

    public static boolean isNumber(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '+' || charAt == '-') {
                if (i != 0) {
                    return false;
                }
            } else if (charAt < '0' || charAt > '9') {
                return false;
            }
        }
        return true;
    }

    public static int stringSize(long j) {
        long j2 = 10;
        for (int i = 1; i < 19; i++) {
            if (j < j2) {
                return i;
            }
            j2 *= 10;
        }
        return 19;
    }

    public static int writeDecimal(byte[] bArr, int i, long j, int i2) {
        if (j < 0) {
            bArr[i] = 45;
            j = -j;
            i++;
        }
        if (i2 == 0) {
            return writeInt64(bArr, i, j);
        }
        int stringSize = stringSize(j) - i2;
        if (stringSize == 0) {
            bArr[i] = 48;
            bArr[i + 1] = Cea608Decoder.f26822e0;
            i += 2;
        } else if (stringSize < 0) {
            bArr[i] = 48;
            bArr[i + 1] = Cea608Decoder.f26822e0;
            i += 2;
            int i3 = 0;
            while (i3 < (-stringSize)) {
                bArr[i] = 48;
                i3++;
                i++;
            }
        }
        int writeInt64 = writeInt64(bArr, i, j);
        if (stringSize <= 0) {
            return writeInt64;
        }
        int i4 = writeInt64 - i2;
        System.arraycopy(bArr, i4, bArr, i4 + 1, i2);
        bArr[i4] = Cea608Decoder.f26822e0;
        return writeInt64 + 1;
    }

    public static int writeInt32(byte[] bArr, int i, int i2) {
        int i3;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                byte[] bArr2 = f12793b;
                System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
                return i + bArr2.length;
            }
            i2 = -i2;
            bArr[i] = 45;
            i++;
        }
        if (i2 < 1000) {
            int i4 = DIGITS_K[i2];
            int i5 = i4 >> 24;
            if (i5 == 0) {
                bArr[i] = (byte) (i4 >> 16);
                bArr[i + 1] = (byte) (i4 >> 8);
                i += 2;
            } else if (i5 == 1) {
                bArr[i] = (byte) (i4 >> 8);
                i++;
            }
            int i6 = i + 1;
            bArr[i] = (byte) i4;
            return i6;
        }
        int i7 = i2 / 1000;
        int[] iArr = DIGITS_K;
        int i8 = iArr[i2 - (i7 * 1000)];
        if (i2 < 1000000) {
            int i9 = iArr[i7];
            int i10 = i9 >> 24;
            if (i10 == 0) {
                bArr[i] = (byte) (i9 >> 16);
                bArr[i + 1] = (byte) (i9 >> 8);
                i += 2;
            } else if (i10 == 1) {
                bArr[i] = (byte) (i9 >> 8);
                i++;
            }
            bArr[i] = (byte) i9;
            bArr[i + 1] = (byte) (i8 >> 16);
            bArr[i + 2] = (byte) (i8 >> 8);
            bArr[i + 3] = (byte) i8;
            return i + 4;
        }
        int i11 = i7 / 1000;
        int i12 = i11 / 1000;
        int i13 = iArr[i7 - (i11 * 1000)];
        if (i12 == 0) {
            int i14 = iArr[i11];
            int i15 = i14 >> 24;
            if (i15 == 0) {
                bArr[i] = (byte) (i14 >> 16);
                bArr[i + 1] = (byte) (i14 >> 8);
                i += 2;
            } else if (i15 == 1) {
                bArr[i] = (byte) (i14 >> 8);
                i++;
            }
            i3 = i + 1;
            bArr[i] = (byte) i14;
        } else {
            bArr[i] = (byte) (i12 + 48);
            int i16 = iArr[i11 - (i12 * 1000)];
            bArr[i + 1] = (byte) (i16 >> 16);
            bArr[i + 2] = (byte) (i16 >> 8);
            bArr[i + 3] = (byte) i16;
            i3 = i + 4;
        }
        bArr[i3] = (byte) (i13 >> 16);
        bArr[i3 + 1] = (byte) (i13 >> 8);
        bArr[i3 + 2] = (byte) i13;
        bArr[i3 + 3] = (byte) (i8 >> 16);
        bArr[i3 + 4] = (byte) (i8 >> 8);
        bArr[i3 + 5] = (byte) i8;
        return i3 + 6;
    }

    public static int writeInt64(byte[] bArr, int i, long j) {
        int i2;
        int i3;
        long j2 = j;
        if (j2 >= 0) {
            i2 = i;
        } else {
            if (j2 == Long.MIN_VALUE) {
                byte[] bArr2 = f12795d;
                System.arraycopy(bArr2, 0, bArr, i + 0, bArr2.length);
                return i + bArr2.length;
            }
            j2 = -j2;
            i2 = i + 1;
            bArr[i] = 45;
        }
        if (j2 < 1000) {
            int i4 = DIGITS_K[(int) j2];
            int i5 = i4 >> 24;
            if (i5 == 0) {
                bArr[i2] = (byte) (i4 >> 16);
                bArr[i2 + 1] = (byte) (i4 >> 8);
                i2 += 2;
            } else if (i5 == 1) {
                bArr[i2] = (byte) (i4 >> 8);
                i2++;
            }
            int i6 = i2 + 1;
            bArr[i2] = (byte) i4;
            return i6;
        }
        long j3 = j2 / 1000;
        int[] iArr = DIGITS_K;
        int i7 = iArr[(int) (j2 - (j3 * 1000))];
        if (j2 < 1000000) {
            int i8 = iArr[(int) j3];
            int i9 = i8 >> 24;
            if (i9 == 0) {
                bArr[i2] = (byte) (i8 >> 16);
                bArr[i2 + 1] = (byte) (i8 >> 8);
                i2 += 2;
            } else if (i9 == 1) {
                bArr[i2] = (byte) (i8 >> 8);
                i2++;
            }
            bArr[i2] = (byte) i8;
            bArr[i2 + 1] = (byte) (i7 >> 16);
            bArr[i2 + 2] = (byte) (i7 >> 8);
            bArr[i2 + 3] = (byte) i7;
            return i2 + 4;
        }
        long j4 = j3 / 1000;
        int i10 = iArr[(int) (j3 - (j4 * 1000))];
        if (j2 < 1000000000) {
            int i11 = iArr[(int) j4];
            int i12 = i11 >> 24;
            if (i12 == 0) {
                bArr[i2] = (byte) (i11 >> 16);
                bArr[i2 + 1] = (byte) (i11 >> 8);
                i2 += 2;
            } else if (i12 == 1) {
                bArr[i2] = (byte) (i11 >> 8);
                i2++;
            }
            bArr[i2] = (byte) i11;
            bArr[i2 + 1] = (byte) (i10 >> 16);
            bArr[i2 + 2] = (byte) (i10 >> 8);
            bArr[i2 + 3] = (byte) i10;
            bArr[i2 + 4] = (byte) (i7 >> 16);
            bArr[i2 + 5] = (byte) (i7 >> 8);
            bArr[i2 + 6] = (byte) i7;
            return i2 + 7;
        }
        long j5 = j4 / 1000;
        int i13 = iArr[(int) (j4 - (j5 * 1000))];
        if (j2 < 1000000000000L) {
            int i14 = iArr[(int) j5];
            int i15 = i14 >> 24;
            if (i15 == 0) {
                bArr[i2] = (byte) (i14 >> 16);
                bArr[i2 + 1] = (byte) (i14 >> 8);
                i2 += 2;
            } else if (i15 == 1) {
                bArr[i2] = (byte) (i14 >> 8);
                i2++;
            }
            bArr[i2] = (byte) i14;
            bArr[i2 + 1] = (byte) (i13 >> 16);
            bArr[i2 + 2] = (byte) (i13 >> 8);
            bArr[i2 + 3] = (byte) i13;
            bArr[i2 + 4] = (byte) (i10 >> 16);
            bArr[i2 + 5] = (byte) (i10 >> 8);
            bArr[i2 + 6] = (byte) i10;
            bArr[i2 + 7] = (byte) (i7 >> 16);
            bArr[i2 + 8] = (byte) (i7 >> 8);
            bArr[i2 + 9] = (byte) i7;
            return i2 + 10;
        }
        int i16 = (int) (j5 / 1000);
        int i17 = iArr[(int) (j5 - (i16 * 1000))];
        if (j2 < 1000000000000000L) {
            int i18 = iArr[i16];
            int i19 = i18 >> 24;
            if (i19 == 0) {
                bArr[i2] = (byte) (i18 >> 16);
                bArr[i2 + 1] = (byte) (i18 >> 8);
                i2 += 2;
            } else if (i19 == 1) {
                bArr[i2] = (byte) (i18 >> 8);
                i2++;
            }
            bArr[i2] = (byte) i18;
            bArr[i2 + 1] = (byte) (i17 >> 16);
            bArr[i2 + 2] = (byte) (i17 >> 8);
            bArr[i2 + 3] = (byte) i17;
            bArr[i2 + 4] = (byte) (i13 >> 16);
            bArr[i2 + 5] = (byte) (i13 >> 8);
            bArr[i2 + 6] = (byte) i13;
            bArr[i2 + 7] = (byte) (i10 >> 16);
            bArr[i2 + 8] = (byte) (i10 >> 8);
            bArr[i2 + 9] = (byte) i10;
            bArr[i2 + 10] = (byte) (i7 >> 16);
            bArr[i2 + 11] = (byte) (i7 >> 8);
            bArr[i2 + 12] = (byte) i7;
            return i2 + 13;
        }
        int i20 = i16 / 1000;
        int i21 = i20 / 1000;
        int i22 = iArr[i16 - (i20 * 1000)];
        if (i21 == 0) {
            int i23 = iArr[i20];
            int i24 = i23 >> 24;
            if (i24 == 0) {
                bArr[i2] = (byte) (i23 >> 16);
                bArr[i2 + 1] = (byte) (i23 >> 8);
                i2 += 2;
            } else if (i24 == 1) {
                bArr[i2] = (byte) (i23 >> 8);
                i2++;
            }
            i3 = i2 + 1;
            bArr[i2] = (byte) i23;
        } else {
            bArr[i2] = (byte) (i21 + 48);
            int i25 = iArr[i20 - (i21 * 1000)];
            bArr[i2 + 1] = (byte) (i25 >> 16);
            bArr[i2 + 2] = (byte) (i25 >> 8);
            bArr[i2 + 3] = (byte) i25;
            i3 = i2 + 4;
        }
        bArr[i3] = (byte) (i22 >> 16);
        bArr[i3 + 1] = (byte) (i22 >> 8);
        bArr[i3 + 2] = (byte) i22;
        bArr[i3 + 3] = (byte) (i17 >> 16);
        bArr[i3 + 4] = (byte) (i17 >> 8);
        bArr[i3 + 5] = (byte) i17;
        bArr[i3 + 6] = (byte) (i13 >> 16);
        bArr[i3 + 7] = (byte) (i13 >> 8);
        bArr[i3 + 8] = (byte) i13;
        bArr[i3 + 9] = (byte) (i10 >> 16);
        bArr[i3 + 10] = (byte) (i10 >> 8);
        bArr[i3 + 11] = (byte) i10;
        bArr[i3 + 12] = (byte) (i7 >> 16);
        bArr[i3 + 13] = (byte) (i7 >> 8);
        bArr[i3 + 14] = (byte) i7;
        return i3 + 15;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int writeLocalDate(byte[] r10, int r11, int r12, int r13, int r14) {
        /*
            r0 = 45
            if (r12 >= 0) goto Lb
            int r1 = r11 + 1
            r10[r11] = r0
            int r12 = -r12
        L9:
            r11 = r1
            goto L16
        Lb:
            r1 = 9999(0x270f, float:1.4012E-41)
            if (r12 <= r1) goto L16
            int r1 = r11 + 1
            r2 = 43
            r10[r11] = r2
            goto L9
        L16:
            r1 = 10000(0x2710, float:1.4013E-41)
            if (r12 >= r1) goto L39
            int r1 = r12 / 100
            int r2 = r1 * 100
            int r12 = r12 - r2
            sun.misc.Unsafe r2 = com.alibaba.fastjson2.util.JDKUtils.UNSAFE
            long r3 = com.alibaba.fastjson2.util.JDKUtils.ARRAY_BYTE_BASE_OFFSET
            long r5 = (long) r11
            long r7 = r3 + r5
            short[] r9 = com.alibaba.fastjson2.util.IOUtils.PACKED_DIGITS
            short r1 = r9[r1]
            r2.putShort(r10, r7, r1)
            long r3 = r3 + r5
            r5 = 2
            long r3 = r3 + r5
            short r12 = r9[r12]
            r2.putShort(r10, r3, r12)
            int r11 = r11 + 4
            goto L3d
        L39:
            int r11 = writeInt32(r10, r11, r12)
        L3d:
            r10[r11] = r0
            sun.misc.Unsafe r12 = com.alibaba.fastjson2.util.JDKUtils.UNSAFE
            long r1 = com.alibaba.fastjson2.util.JDKUtils.ARRAY_BYTE_BASE_OFFSET
            long r3 = (long) r11
            long r5 = r1 + r3
            r7 = 1
            long r5 = r5 + r7
            short[] r7 = com.alibaba.fastjson2.util.IOUtils.PACKED_DIGITS
            short r13 = r7[r13]
            r12.putShort(r10, r5, r13)
            int r13 = r11 + 3
            r10[r13] = r0
            long r1 = r1 + r3
            r3 = 4
            long r1 = r1 + r3
            short r13 = r7[r14]
            r12.putShort(r10, r1, r13)
            int r11 = r11 + 6
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.IOUtils.writeLocalDate(byte[], int, int, int, int):int");
    }

    public static int writeLocalTime(byte[] bArr, int i, LocalTime localTime) {
        int i2;
        int[] iArr = DIGITS_K;
        int i3 = iArr[localTime.getHour()];
        bArr[i] = (byte) (i3 >> 8);
        bArr[i + 1] = (byte) i3;
        bArr[i + 2] = 58;
        int i4 = iArr[localTime.getMinute()];
        bArr[i + 3] = (byte) (i4 >> 8);
        bArr[i + 4] = (byte) i4;
        bArr[i + 5] = 58;
        int i5 = iArr[localTime.getSecond()];
        bArr[i + 6] = (byte) (i5 >> 8);
        bArr[i + 7] = (byte) i5;
        int i6 = i + 8;
        int nano = localTime.getNano();
        if (nano == 0) {
            return i6;
        }
        int i7 = nano / 1000;
        int i8 = i7 / 1000;
        int i9 = nano - (i7 * 1000);
        bArr[i6] = Cea608Decoder.f26822e0;
        int i10 = iArr[i8];
        bArr[i6 + 1] = (byte) (i10 >> 16);
        bArr[i6 + 2] = (byte) (i10 >> 8);
        bArr[i6 + 3] = (byte) i10;
        int i11 = i6 + 4;
        if (i9 == 0) {
            int i12 = i7 - (i8 * 1000);
            if (i12 == 0) {
                return i11;
            }
            i2 = iArr[i12];
        } else {
            i2 = iArr[i7 - (i8 * 1000)];
        }
        bArr[i11] = (byte) (i2 >> 16);
        bArr[i11 + 1] = (byte) (i2 >> 8);
        bArr[i11 + 2] = (byte) i2;
        int i13 = i11 + 3;
        if (i9 == 0) {
            return i13;
        }
        int i14 = iArr[i9];
        bArr[i13] = (byte) (i14 >> 16);
        bArr[i13 + 1] = (byte) (i14 >> 8);
        bArr[i13 + 2] = (byte) i14;
        return i13 + 3;
    }

    public static int stringSize(int i) {
        int i2 = 0;
        while (i > f12792a[i2]) {
            i2++;
        }
        return i2 + 1;
    }

    public static boolean isNumber(char[] cArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            char c = cArr[i];
            if (c == '+' || c == '-') {
                if (i != 0) {
                    return false;
                }
            } else if (c < '0' || c > '9') {
                return false;
            }
            i++;
        }
        return true;
    }

    public static boolean isNumber(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            char c = (char) bArr[i];
            if (c == '+' || c == '-') {
                if (i != 0) {
                    return false;
                }
            } else if (c < '0' || c > '9') {
                return false;
            }
            i++;
        }
        return true;
    }

    public static void getChars(int i, int i2, char[] cArr) {
        int i3;
        boolean z = i < 0;
        if (!z) {
            i = -i;
        }
        while (i <= -100) {
            int i4 = i / 100;
            i2 -= 2;
            JDKUtils.UNSAFE.putInt(cArr, JDKUtils.ARRAY_CHAR_BASE_OFFSET + (i2 << 1), PACKED_DIGITS_UTF16[(i4 * 100) - i]);
            i = i4;
        }
        if (i < -9) {
            i3 = i2 - 2;
            JDKUtils.UNSAFE.putInt(cArr, JDKUtils.ARRAY_CHAR_BASE_OFFSET + (i3 << 1), PACKED_DIGITS_UTF16[-i]);
        } else {
            i3 = i2 - 1;
            cArr[i3] = (char) (48 - i);
        }
        if (z) {
            cArr[i3 - 1] = '-';
        }
    }

    public static void getChars(long j, int i, byte[] bArr) {
        int i2;
        boolean z = j < 0;
        if (!z) {
            j = -j;
        }
        while (j <= ParserBase.f21225q) {
            long j2 = j / 100;
            i -= 2;
            JDKUtils.UNSAFE.putShort(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i, PACKED_DIGITS[(int) ((100 * j2) - j)]);
            j = j2;
        }
        int i3 = (int) j;
        while (i3 <= -100) {
            int i4 = i3 / 100;
            i -= 2;
            JDKUtils.UNSAFE.putShort(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i, PACKED_DIGITS[(i4 * 100) - i3]);
            i3 = i4;
        }
        if (i3 < -9) {
            i2 = i - 2;
            JDKUtils.UNSAFE.putShort(bArr, JDKUtils.ARRAY_BYTE_BASE_OFFSET + i2, PACKED_DIGITS[-i3]);
        } else {
            i2 = i - 1;
            bArr[i2] = (byte) (48 - i3);
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int writeLocalDate(char[] r8, int r9, int r10, int r11, int r12) {
        /*
            r0 = 45
            if (r10 >= 0) goto Lb
            int r1 = r9 + 1
            r8[r9] = r0
            int r10 = -r10
        L9:
            r9 = r1
            goto L16
        Lb:
            r1 = 9999(0x270f, float:1.4012E-41)
            if (r10 <= r1) goto L16
            int r1 = r9 + 1
            r2 = 43
            r8[r9] = r2
            goto L9
        L16:
            r1 = 10000(0x2710, float:1.4013E-41)
            if (r10 >= r1) goto L3c
            int r1 = r10 / 100
            int r2 = r1 * 100
            int r10 = r10 - r2
            sun.misc.Unsafe r2 = com.alibaba.fastjson2.util.JDKUtils.UNSAFE
            long r3 = com.alibaba.fastjson2.util.JDKUtils.ARRAY_CHAR_BASE_OFFSET
            int r5 = r9 << 1
            long r5 = (long) r5
            long r5 = r5 + r3
            int[] r7 = com.alibaba.fastjson2.util.IOUtils.PACKED_DIGITS_UTF16
            r1 = r7[r1]
            r2.putInt(r8, r5, r1)
            int r1 = r9 + 2
            int r1 = r1 << 1
            long r5 = (long) r1
            long r3 = r3 + r5
            r10 = r7[r10]
            r2.putInt(r8, r3, r10)
            int r9 = r9 + 4
            goto L40
        L3c:
            int r9 = writeInt32(r8, r9, r10)
        L40:
            r8[r9] = r0
            sun.misc.Unsafe r10 = com.alibaba.fastjson2.util.JDKUtils.UNSAFE
            long r1 = com.alibaba.fastjson2.util.JDKUtils.ARRAY_CHAR_BASE_OFFSET
            int r3 = r9 + 1
            int r3 = r3 << 1
            long r3 = (long) r3
            long r3 = r3 + r1
            int[] r5 = com.alibaba.fastjson2.util.IOUtils.PACKED_DIGITS_UTF16
            r11 = r5[r11]
            r10.putInt(r8, r3, r11)
            int r11 = r9 + 3
            r8[r11] = r0
            int r11 = r9 + 4
            int r11 = r11 << 1
            long r3 = (long) r11
            long r1 = r1 + r3
            r11 = r5[r12]
            r10.putInt(r8, r1, r11)
            int r9 = r9 + 6
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.IOUtils.writeLocalDate(char[], int, int, int, int):int");
    }

    public static int writeDecimal(char[] cArr, int i, long j, int i2) {
        if (j < 0) {
            cArr[i] = '-';
            j = -j;
            i++;
        }
        if (i2 == 0) {
            return writeInt64(cArr, i, j);
        }
        int stringSize = stringSize(j) - i2;
        if (stringSize == 0) {
            cArr[i] = '0';
            cArr[i + 1] = '.';
            i += 2;
        } else if (stringSize < 0) {
            cArr[i] = '0';
            cArr[i + 1] = '.';
            i += 2;
            int i3 = 0;
            while (i3 < (-stringSize)) {
                cArr[i] = '0';
                i3++;
                i++;
            }
        }
        int writeInt64 = writeInt64(cArr, i, j);
        if (stringSize <= 0) {
            return writeInt64;
        }
        int i4 = writeInt64 - i2;
        System.arraycopy(cArr, i4, cArr, i4 + 1, i2);
        cArr[i4] = '.';
        return writeInt64 + 1;
    }

    public static int encodeUTF8(char[] cArr, int i, int i2, byte[] bArr, int i3) {
        int i4;
        int i5;
        char c;
        int i6 = i + i2;
        int min = Math.min(i2, bArr.length) + i3;
        while (i3 < min && (c = cArr[i]) < 128) {
            i++;
            bArr[i3] = (byte) c;
            i3++;
        }
        while (i < i6) {
            int i7 = i + 1;
            char c2 = cArr[i];
            if (c2 < 128) {
                bArr[i3] = (byte) c2;
                i = i7;
                i3++;
            } else {
                if (c2 < 2048) {
                    bArr[i3] = (byte) ((c2 >> 6) | 192);
                    bArr[i3 + 1] = (byte) ((c2 & '?') | 128);
                    i3 += 2;
                } else if (c2 < 55296 || c2 >= 57344) {
                    bArr[i3] = (byte) ((c2 >> '\f') | 224);
                    bArr[i3 + 1] = (byte) ((63 & (c2 >> 6)) | 128);
                    bArr[i3 + 2] = (byte) ((c2 & '?') | 128);
                    i3 += 3;
                } else {
                    int i8 = i7 - 1;
                    if (c2 < 56320) {
                        if (i6 - i8 < 2) {
                            i5 = -1;
                        } else {
                            char c3 = cArr[i8 + 1];
                            if (c3 < 56320 || c3 >= 57344) {
                                i4 = i3 + 1;
                                bArr[i3] = 63;
                            } else {
                                i5 = ((c2 << '\n') + c3) - 56613888;
                            }
                        }
                        if (i5 < 0) {
                            i4 = i3 + 1;
                            bArr[i3] = 63;
                        } else {
                            bArr[i3] = (byte) ((i5 >> 18) | 240);
                            bArr[i3 + 1] = (byte) (((i5 >> 12) & 63) | 128);
                            bArr[i3 + 2] = (byte) ((63 & (i5 >> 6)) | 128);
                            bArr[i3 + 3] = (byte) ((i5 & 63) | 128);
                            i4 = i3 + 4;
                            i7++;
                        }
                    } else {
                        i4 = i3 + 1;
                        bArr[i3] = 63;
                    }
                    i3 = i4;
                }
                i = i7;
            }
        }
        return i3;
    }

    public static void getChars(long j, int i, char[] cArr) {
        int i2;
        boolean z = j < 0;
        if (!z) {
            j = -j;
        }
        while (j <= ParserBase.f21225q) {
            long j2 = j / 100;
            i -= 2;
            JDKUtils.UNSAFE.putInt(cArr, JDKUtils.ARRAY_CHAR_BASE_OFFSET + (i << 1), PACKED_DIGITS_UTF16[(int) ((100 * j2) - j)]);
            j = j2;
        }
        int i3 = (int) j;
        while (i3 <= -100) {
            int i4 = i3 / 100;
            i -= 2;
            JDKUtils.UNSAFE.putInt(cArr, JDKUtils.ARRAY_CHAR_BASE_OFFSET + (i << 1), PACKED_DIGITS_UTF16[(i4 * 100) - i3]);
            i3 = i4;
        }
        if (i3 < -9) {
            i2 = i - 2;
            JDKUtils.UNSAFE.putInt(cArr, JDKUtils.ARRAY_CHAR_BASE_OFFSET + (i2 << 1), PACKED_DIGITS_UTF16[-i3]);
        } else {
            i2 = i - 1;
            cArr[i2] = (char) (48 - i3);
        }
        if (z) {
            cArr[i2 - 1] = '-';
        }
    }

    public static int writeLocalTime(char[] cArr, int i, LocalTime localTime) {
        int i2;
        int[] iArr = DIGITS_K;
        int i3 = iArr[localTime.getHour()];
        cArr[i] = (char) ((byte) (i3 >> 8));
        cArr[i + 1] = (char) ((byte) i3);
        cArr[i + 2] = ':';
        int i4 = iArr[localTime.getMinute()];
        cArr[i + 3] = (char) ((byte) (i4 >> 8));
        cArr[i + 4] = (char) ((byte) i4);
        cArr[i + 5] = ':';
        int i5 = iArr[localTime.getSecond()];
        cArr[i + 6] = (char) ((byte) (i5 >> 8));
        cArr[i + 7] = (char) ((byte) i5);
        int i6 = i + 8;
        int nano = localTime.getNano();
        if (nano == 0) {
            return i6;
        }
        int i7 = nano / 1000;
        int i8 = i7 / 1000;
        int i9 = nano - (i7 * 1000);
        cArr[i6] = '.';
        int i10 = iArr[i8];
        cArr[i6 + 1] = (char) ((byte) (i10 >> 16));
        cArr[i6 + 2] = (char) ((byte) (i10 >> 8));
        cArr[i6 + 3] = (char) ((byte) i10);
        int i11 = i6 + 4;
        if (i9 == 0) {
            int i12 = i7 - (i8 * 1000);
            if (i12 == 0) {
                return i11;
            }
            i2 = iArr[i12];
        } else {
            i2 = iArr[i7 - (i8 * 1000)];
        }
        cArr[i11] = (char) ((byte) (i2 >> 16));
        cArr[i11 + 1] = (char) ((byte) (i2 >> 8));
        cArr[i11 + 2] = (char) ((byte) i2);
        int i13 = i11 + 3;
        if (i9 == 0) {
            return i13;
        }
        int i14 = iArr[i9];
        cArr[i13] = (char) ((byte) (i14 >> 16));
        cArr[i13 + 1] = (char) ((byte) (i14 >> 8));
        cArr[i13 + 2] = (char) ((byte) i14);
        return i13 + 3;
    }

    public static int writeInt32(char[] cArr, int i, int i2) {
        int i3;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                char[] cArr2 = f12794c;
                System.arraycopy(cArr2, 0, cArr, i, cArr2.length);
                return i + cArr2.length;
            }
            i2 = -i2;
            cArr[i] = '-';
            i++;
        }
        if (i2 < 1000) {
            int i4 = DIGITS_K[i2];
            int i5 = i4 >> 24;
            if (i5 == 0) {
                cArr[i] = (char) ((byte) (i4 >> 16));
                cArr[i + 1] = (char) ((byte) (i4 >> 8));
                i += 2;
            } else if (i5 == 1) {
                cArr[i] = (char) ((byte) (i4 >> 8));
                i++;
            }
            int i6 = i + 1;
            cArr[i] = (char) ((byte) i4);
            return i6;
        }
        int i7 = i2 / 1000;
        int[] iArr = DIGITS_K;
        int i8 = iArr[i2 - (i7 * 1000)];
        if (i2 < 1000000) {
            int i9 = iArr[i7];
            int i10 = i9 >> 24;
            if (i10 == 0) {
                cArr[i] = (char) ((byte) (i9 >> 16));
                cArr[i + 1] = (char) ((byte) (i9 >> 8));
                i += 2;
            } else if (i10 == 1) {
                cArr[i] = (char) ((byte) (i9 >> 8));
                i++;
            }
            cArr[i] = (char) ((byte) i9);
            cArr[i + 1] = (char) ((byte) (i8 >> 16));
            cArr[i + 2] = (char) ((byte) (i8 >> 8));
            cArr[i + 3] = (char) ((byte) i8);
            return i + 4;
        }
        int i11 = i7 / 1000;
        int i12 = i11 / 1000;
        int i13 = iArr[i7 - (i11 * 1000)];
        if (i12 == 0) {
            int i14 = iArr[i11];
            int i15 = i14 >> 24;
            if (i15 == 0) {
                cArr[i] = (char) ((byte) (i14 >> 16));
                cArr[i + 1] = (char) ((byte) (i14 >> 8));
                i += 2;
            } else if (i15 == 1) {
                cArr[i] = (char) ((byte) (i14 >> 8));
                i++;
            }
            i3 = i + 1;
            cArr[i] = (char) ((byte) i14);
        } else {
            cArr[i] = (char) ((byte) (i12 + 48));
            int i16 = iArr[i11 - (i12 * 1000)];
            cArr[i + 1] = (char) ((byte) (i16 >> 16));
            cArr[i + 2] = (char) ((byte) (i16 >> 8));
            cArr[i + 3] = (char) ((byte) i16);
            i3 = i + 4;
        }
        cArr[i3] = (char) ((byte) (i13 >> 16));
        cArr[i3 + 1] = (char) ((byte) (i13 >> 8));
        cArr[i3 + 2] = (char) ((byte) i13);
        cArr[i3 + 3] = (char) ((byte) (i8 >> 16));
        cArr[i3 + 4] = (char) ((byte) (i8 >> 8));
        cArr[i3 + 5] = (char) ((byte) i8);
        return i3 + 6;
    }

    public static void writeLocalTime(byte[] bArr, int i, int i2, int i3, int i4) {
        Unsafe unsafe = JDKUtils.UNSAFE;
        long j = JDKUtils.ARRAY_BYTE_BASE_OFFSET;
        long j2 = i;
        short[] sArr = PACKED_DIGITS;
        unsafe.putShort(bArr, j + j2, sArr[i2]);
        bArr[i + 2] = 58;
        unsafe.putShort(bArr, j + j2 + 3, sArr[i3]);
        bArr[i + 5] = 58;
        unsafe.putShort(bArr, j + j2 + 6, sArr[i4]);
    }

    public static void writeLocalTime(char[] cArr, int i, int i2, int i3, int i4) {
        Unsafe unsafe = JDKUtils.UNSAFE;
        long j = JDKUtils.ARRAY_CHAR_BASE_OFFSET;
        int[] iArr = PACKED_DIGITS_UTF16;
        unsafe.putInt(cArr, (i << 1) + j, iArr[i2]);
        cArr[i + 2] = ':';
        unsafe.putInt(cArr, ((i + 3) << 1) + j, iArr[i3]);
        cArr[i + 5] = ':';
        unsafe.putInt(cArr, j + ((i + 6) << 1), iArr[i4]);
    }

    public static int writeInt64(char[] cArr, int i, long j) {
        int i2;
        int i3;
        long j2 = j;
        if (j2 >= 0) {
            i2 = i;
        } else if (j2 == Long.MIN_VALUE) {
            int i4 = 0;
            while (true) {
                byte[] bArr = f12795d;
                if (i4 < bArr.length) {
                    cArr[i + i4] = (char) bArr[i4];
                    i4++;
                } else {
                    return i + bArr.length;
                }
            }
        } else {
            j2 = -j2;
            i2 = i + 1;
            cArr[i] = '-';
        }
        if (j2 < 1000) {
            int i5 = DIGITS_K[(int) j2];
            int i6 = i5 >> 24;
            if (i6 == 0) {
                cArr[i2] = (char) ((byte) (i5 >> 16));
                cArr[i2 + 1] = (char) ((byte) (i5 >> 8));
                i2 += 2;
            } else if (i6 == 1) {
                cArr[i2] = (char) ((byte) (i5 >> 8));
                i2++;
            }
            int i7 = i2 + 1;
            cArr[i2] = (char) ((byte) i5);
            return i7;
        }
        long j3 = j2 / 1000;
        int[] iArr = DIGITS_K;
        int i8 = iArr[(int) (j2 - (j3 * 1000))];
        if (j2 < 1000000) {
            int i9 = iArr[(int) j3];
            int i10 = i9 >> 24;
            if (i10 == 0) {
                cArr[i2] = (char) ((byte) (i9 >> 16));
                cArr[i2 + 1] = (char) ((byte) (i9 >> 8));
                i2 += 2;
            } else if (i10 == 1) {
                cArr[i2] = (char) ((byte) (i9 >> 8));
                i2++;
            }
            cArr[i2] = (char) ((byte) i9);
            cArr[i2 + 1] = (char) ((byte) (i8 >> 16));
            cArr[i2 + 2] = (char) ((byte) (i8 >> 8));
            cArr[i2 + 3] = (char) ((byte) i8);
            return i2 + 4;
        }
        long j4 = j3 / 1000;
        int i11 = iArr[(int) (j3 - (j4 * 1000))];
        if (j2 < 1000000000) {
            int i12 = iArr[(int) j4];
            int i13 = i12 >> 24;
            if (i13 == 0) {
                cArr[i2] = (char) ((byte) (i12 >> 16));
                cArr[i2 + 1] = (char) ((byte) (i12 >> 8));
                i2 += 2;
            } else if (i13 == 1) {
                cArr[i2] = (char) ((byte) (i12 >> 8));
                i2++;
            }
            cArr[i2] = (char) ((byte) i12);
            cArr[i2 + 1] = (char) ((byte) (i11 >> 16));
            cArr[i2 + 2] = (char) ((byte) (i11 >> 8));
            cArr[i2 + 3] = (char) ((byte) i11);
            cArr[i2 + 4] = (char) ((byte) (i8 >> 16));
            cArr[i2 + 5] = (char) ((byte) (i8 >> 8));
            cArr[i2 + 6] = (char) ((byte) i8);
            return i2 + 7;
        }
        long j5 = j4 / 1000;
        int i14 = iArr[(int) (j4 - (j5 * 1000))];
        if (j2 < 1000000000000L) {
            int i15 = iArr[(int) j5];
            int i16 = i15 >> 24;
            if (i16 == 0) {
                cArr[i2] = (char) ((byte) (i15 >> 16));
                cArr[i2 + 1] = (char) ((byte) (i15 >> 8));
                i2 += 2;
            } else if (i16 == 1) {
                cArr[i2] = (char) ((byte) (i15 >> 8));
                i2++;
            }
            cArr[i2] = (char) ((byte) i15);
            cArr[i2 + 1] = (char) ((byte) (i14 >> 16));
            cArr[i2 + 2] = (char) ((byte) (i14 >> 8));
            cArr[i2 + 3] = (char) ((byte) i14);
            cArr[i2 + 4] = (char) ((byte) (i11 >> 16));
            cArr[i2 + 5] = (char) ((byte) (i11 >> 8));
            cArr[i2 + 6] = (char) ((byte) i11);
            cArr[i2 + 7] = (char) ((byte) (i8 >> 16));
            cArr[i2 + 8] = (char) ((byte) (i8 >> 8));
            cArr[i2 + 9] = (char) ((byte) i8);
            return i2 + 10;
        }
        int i17 = (int) (j5 / 1000);
        int i18 = iArr[(int) (j5 - (i17 * 1000))];
        if (j2 < 1000000000000000L) {
            int i19 = iArr[i17];
            int i20 = i19 >> 24;
            if (i20 == 0) {
                cArr[i2] = (char) ((byte) (i19 >> 16));
                cArr[i2 + 1] = (char) ((byte) (i19 >> 8));
                i2 += 2;
            } else if (i20 == 1) {
                cArr[i2] = (char) ((byte) (i19 >> 8));
                i2++;
            }
            cArr[i2] = (char) ((byte) i19);
            cArr[i2 + 1] = (char) ((byte) (i18 >> 16));
            cArr[i2 + 2] = (char) ((byte) (i18 >> 8));
            cArr[i2 + 3] = (char) ((byte) i18);
            cArr[i2 + 4] = (char) ((byte) (i14 >> 16));
            cArr[i2 + 5] = (char) ((byte) (i14 >> 8));
            cArr[i2 + 6] = (char) ((byte) i14);
            cArr[i2 + 7] = (char) ((byte) (i11 >> 16));
            cArr[i2 + 8] = (char) ((byte) (i11 >> 8));
            cArr[i2 + 9] = (char) ((byte) i11);
            cArr[i2 + 10] = (char) ((byte) (i8 >> 16));
            cArr[i2 + 11] = (char) ((byte) (i8 >> 8));
            cArr[i2 + 12] = (char) ((byte) i8);
            return i2 + 13;
        }
        int i21 = i17 / 1000;
        int i22 = i21 / 1000;
        int i23 = iArr[i17 - (i21 * 1000)];
        if (i22 == 0) {
            int i24 = iArr[i21];
            int i25 = i24 >> 24;
            if (i25 == 0) {
                cArr[i2] = (char) ((byte) (i24 >> 16));
                cArr[i2 + 1] = (char) ((byte) (i24 >> 8));
                i2 += 2;
            } else if (i25 == 1) {
                cArr[i2] = (char) ((byte) (i24 >> 8));
                i2++;
            }
            i3 = i2 + 1;
            cArr[i2] = (char) ((byte) i24);
        } else {
            cArr[i2] = (char) ((byte) (i22 + 48));
            int i26 = iArr[i21 - (i22 * 1000)];
            cArr[i2 + 1] = (char) ((byte) (i26 >> 16));
            cArr[i2 + 2] = (char) ((byte) (i26 >> 8));
            cArr[i2 + 3] = (char) ((byte) i26);
            i3 = i2 + 4;
        }
        cArr[i3] = (char) ((byte) (i23 >> 16));
        cArr[i3 + 1] = (char) ((byte) (i23 >> 8));
        cArr[i3 + 2] = (char) ((byte) i23);
        cArr[i3 + 3] = (char) ((byte) (i18 >> 16));
        cArr[i3 + 4] = (char) ((byte) (i18 >> 8));
        cArr[i3 + 5] = (char) ((byte) i18);
        cArr[i3 + 6] = (char) ((byte) (i14 >> 16));
        cArr[i3 + 7] = (char) ((byte) (i14 >> 8));
        cArr[i3 + 8] = (char) ((byte) i14);
        cArr[i3 + 9] = (char) ((byte) (i11 >> 16));
        cArr[i3 + 10] = (char) ((byte) (i11 >> 8));
        cArr[i3 + 11] = (char) ((byte) i11);
        cArr[i3 + 12] = (char) ((byte) (i8 >> 16));
        cArr[i3 + 13] = (char) ((byte) (i8 >> 8));
        cArr[i3 + 14] = (char) ((byte) i8);
        return i3 + 15;
    }
}
