package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.base.ParserBase;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes4.dex */
public final class NumberOutput {

    /* renamed from: a */
    public static final char f21255a = 0;

    /* renamed from: b */
    public static int f21256b = 1000000;

    /* renamed from: c */
    public static int f21257c = 1000000000;

    /* renamed from: d */
    public static long f21258d = 10000000000L;

    /* renamed from: e */
    public static long f21259e = 1000;

    /* renamed from: f */
    public static long f21260f = -2147483648L;

    /* renamed from: g */
    public static long f21261g = 2147483647L;

    /* renamed from: h */
    public static final String f21262h = String.valueOf(Long.MIN_VALUE);

    /* renamed from: i */
    public static final char[] f21263i = new char[4000];

    /* renamed from: j */
    public static final char[] f21264j = new char[4000];

    /* renamed from: k */
    public static final byte[] f21265k;

    /* renamed from: l */
    public static final String[] f21266l;

    /* renamed from: m */
    public static final String[] f21267m;

    static {
        int i = 0;
        int i2 = 0;
        while (i < 10) {
            char c = (char) (i + 48);
            char c2 = i == 0 ? (char) 0 : c;
            int i3 = 0;
            while (i3 < 10) {
                char c3 = (char) (i3 + 48);
                char c4 = (i == 0 && i3 == 0) ? (char) 0 : c3;
                for (int i4 = 0; i4 < 10; i4++) {
                    char c5 = (char) (i4 + 48);
                    char[] cArr = f21263i;
                    cArr[i2] = c2;
                    int i5 = i2 + 1;
                    cArr[i5] = c4;
                    int i6 = i2 + 2;
                    cArr[i6] = c5;
                    char[] cArr2 = f21264j;
                    cArr2[i2] = c;
                    cArr2[i5] = c3;
                    cArr2[i6] = c5;
                    i2 += 4;
                }
                i3++;
            }
            i++;
        }
        f21265k = new byte[4000];
        for (int i7 = 0; i7 < 4000; i7++) {
            f21265k[i7] = (byte) f21264j[i7];
        }
        f21266l = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
        f21267m = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    /* renamed from: a */
    public static int m17139a(long j) {
        int i = 10;
        for (long j2 = f21258d; j >= j2 && i != 19; j2 = (j2 << 1) + (j2 << 3)) {
            i++;
        }
        return i;
    }

    /* renamed from: b */
    public static int m17140b(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        byte[] bArr2 = f21265k;
        int i5 = i3 + 1;
        bArr[i2] = bArr2[i3];
        int i6 = i4 + 1;
        bArr[i4] = bArr2[i5];
        int i7 = i6 + 1;
        bArr[i6] = bArr2[i5 + 1];
        return i7;
    }

    /* renamed from: c */
    public static int m17141c(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        char[] cArr2 = f21264j;
        int i5 = i3 + 1;
        cArr[i2] = cArr2[i3];
        int i6 = i4 + 1;
        cArr[i4] = cArr2[i5];
        int i7 = i6 + 1;
        cArr[i6] = cArr2[i5 + 1];
        return i7;
    }

    /* renamed from: d */
    public static int m17142d(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        char[] cArr = f21263i;
        int i4 = i3 + 1;
        char c = cArr[i3];
        if (c != 0) {
            bArr[i2] = (byte) c;
            i2++;
        }
        int i5 = i4 + 1;
        char c2 = cArr[i4];
        if (c2 != 0) {
            bArr[i2] = (byte) c2;
            i2++;
        }
        int i6 = i2 + 1;
        bArr[i2] = (byte) cArr[i5];
        return i6;
    }

    /* renamed from: e */
    public static int m17143e(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        char[] cArr2 = f21263i;
        int i4 = i3 + 1;
        char c = cArr2[i3];
        if (c != 0) {
            cArr[i2] = c;
            i2++;
        }
        int i5 = i4 + 1;
        char c2 = cArr2[i4];
        if (c2 != 0) {
            cArr[i2] = c2;
            i2++;
        }
        int i6 = i2 + 1;
        cArr[i2] = cArr2[i5];
        return i6;
    }

    public static int outputInt(int i, char[] cArr, int i2) {
        int m17143e;
        int i3;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return outputLong(i, cArr, i2);
            }
            cArr[i2] = '-';
            i = -i;
            i2++;
        }
        if (i < f21256b) {
            if (i >= 1000) {
                int i4 = i / 1000;
                return m17141c(i - (i4 * 1000), cArr, m17143e(i4, cArr, i2));
            }
            if (i < 10) {
                int i5 = i2 + 1;
                cArr[i2] = (char) (i + 48);
                return i5;
            }
            return m17143e(i, cArr, i2);
        }
        int i6 = f21257c;
        boolean z = i >= i6;
        if (z) {
            i -= i6;
            if (i >= i6) {
                i -= i6;
                i3 = i2 + 1;
                cArr[i2] = '2';
            } else {
                i3 = i2 + 1;
                cArr[i2] = '1';
            }
            i2 = i3;
        }
        int i7 = i / 1000;
        int i8 = i - (i7 * 1000);
        int i9 = i7 / 1000;
        int i10 = i7 - (i9 * 1000);
        if (z) {
            m17143e = m17141c(i9, cArr, i2);
        } else {
            m17143e = m17143e(i9, cArr, i2);
        }
        return m17141c(i8, cArr, m17141c(i10, cArr, m17143e));
    }

    public static int outputLong(long j, char[] cArr, int i) {
        if (j < 0) {
            if (j > f21260f) {
                return outputInt((int) j, cArr, i);
            }
            if (j == Long.MIN_VALUE) {
                String str = f21262h;
                int length = str.length();
                str.getChars(0, length, cArr, i);
                return i + length;
            }
            cArr[i] = '-';
            j = -j;
            i++;
        } else if (j <= f21261g) {
            return outputInt((int) j, cArr, i);
        }
        int m17139a = m17139a(j) + i;
        int i2 = m17139a;
        while (j > f21261g) {
            i2 -= 3;
            long j2 = f21259e;
            long j3 = j / j2;
            m17141c((int) (j - (j2 * j3)), cArr, i2);
            j = j3;
        }
        int i3 = (int) j;
        while (i3 >= 1000) {
            i2 -= 3;
            int i4 = i3 / 1000;
            m17141c(i3 - (i4 * 1000), cArr, i2);
            i3 = i4;
        }
        m17143e(i3, cArr, i);
        return m17139a;
    }

    public static String toString(int i) {
        String[] strArr = f21266l;
        if (i < strArr.length) {
            if (i >= 0) {
                return strArr[i];
            }
            int i2 = (-i) - 1;
            String[] strArr2 = f21267m;
            if (i2 < strArr2.length) {
                return strArr2[i2];
            }
        }
        return Integer.toString(i);
    }

    public static String toString(long j) {
        if (j <= 2147483647L && j >= ParserBase.f21225q) {
            return toString((int) j);
        }
        return Long.toString(j);
    }

    public static String toString(double d) {
        return Double.toString(d);
    }

    public static String toString(float f) {
        return Float.toString(f);
    }

    public static int outputLong(long j, byte[] bArr, int i) {
        if (j < 0) {
            if (j > f21260f) {
                return outputInt((int) j, bArr, i);
            }
            if (j == Long.MIN_VALUE) {
                int length = f21262h.length();
                int i2 = 0;
                while (i2 < length) {
                    bArr[i] = (byte) f21262h.charAt(i2);
                    i2++;
                    i++;
                }
                return i;
            }
            bArr[i] = 45;
            j = -j;
            i++;
        } else if (j <= f21261g) {
            return outputInt((int) j, bArr, i);
        }
        int m17139a = m17139a(j) + i;
        int i3 = m17139a;
        while (j > f21261g) {
            i3 -= 3;
            long j2 = f21259e;
            long j3 = j / j2;
            m17140b((int) (j - (j2 * j3)), bArr, i3);
            j = j3;
        }
        int i4 = (int) j;
        while (i4 >= 1000) {
            i3 -= 3;
            int i5 = i4 / 1000;
            m17140b(i4 - (i5 * 1000), bArr, i3);
            i4 = i5;
        }
        m17142d(i4, bArr, i);
        return m17139a;
    }

    public static int outputInt(int i, byte[] bArr, int i2) {
        int m17142d;
        int i3;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return outputLong(i, bArr, i2);
            }
            bArr[i2] = 45;
            i = -i;
            i2++;
        }
        if (i < f21256b) {
            if (i >= 1000) {
                int i4 = i / 1000;
                return m17140b(i - (i4 * 1000), bArr, m17142d(i4, bArr, i2));
            }
            if (i < 10) {
                int i5 = i2 + 1;
                bArr[i2] = (byte) (i + 48);
                return i5;
            }
            return m17142d(i, bArr, i2);
        }
        int i6 = f21257c;
        boolean z = i >= i6;
        if (z) {
            i -= i6;
            if (i >= i6) {
                i -= i6;
                i3 = i2 + 1;
                bArr[i2] = TarConstants.LF_SYMLINK;
            } else {
                i3 = i2 + 1;
                bArr[i2] = TarConstants.LF_LINK;
            }
            i2 = i3;
        }
        int i7 = i / 1000;
        int i8 = i - (i7 * 1000);
        int i9 = i7 / 1000;
        int i10 = i7 - (i9 * 1000);
        if (z) {
            m17142d = m17140b(i9, bArr, i2);
        } else {
            m17142d = m17142d(i9, bArr, i2);
        }
        return m17140b(i8, bArr, m17140b(i10, bArr, m17142d));
    }
}
