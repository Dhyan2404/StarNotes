package com.sunia.HTREnginev2;

import java.lang.reflect.Array;

/* loaded from: classes13.dex */
public final class xnd {

    /* renamed from: a */
    public static int f89879a = 10;

    /* renamed from: b */
    public static int f89880b = 0;

    /* renamed from: c */
    public static int f89881c = 0;

    /* renamed from: d */
    public static int f89882d = 64;

    /* renamed from: e */
    public static int[][][] f89883e = null;

    /* renamed from: f */
    public static int f89884f = 1;

    /* renamed from: g */
    public static int f89885g = 2;

    static {
        int i = 1 << 10;
        f89880b = i;
        f89881c = i - 1;
        m58286a();
    }

    /* renamed from: a */
    public static void m58286a() {
        int i;
        f89883e = (int[][][]) Array.newInstance((Class<?>) int[].class, f89882d, f89880b);
        for (int i2 = 0; i2 < 65536; i2++) {
            char c = (char) i2;
            char lowerCase = Character.toLowerCase(c);
            char upperCase = Character.toUpperCase(c);
            if (lowerCase != upperCase || lowerCase != i2) {
                int[] iArr = new int[2];
                if (lowerCase != i2) {
                    iArr[0] = lowerCase;
                    iArr[1] = f89884f;
                    int[] m58292g = m58292g(lowerCase);
                    if (m58292g != null) {
                        iArr = m58294i(i2, iArr, lowerCase, m58292g, f89884f);
                    }
                    i = 2;
                } else {
                    i = 0;
                }
                if (upperCase != i2) {
                    if (i == iArr.length) {
                        iArr = m58290e(iArr, 2);
                    }
                    iArr[i] = upperCase;
                    iArr[i + 1] = f89885g;
                    int[] m58292g2 = m58292g(upperCase);
                    if (m58292g2 != null) {
                        iArr = m58294i(i2, iArr, upperCase, m58292g2, f89885g);
                    }
                }
                m58293h(i2, iArr);
            }
        }
    }

    /* renamed from: b */
    public static boolean m58287b(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2 += 2) {
            if (iArr[i2] == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m58288c(int[] iArr, int i, int i2) {
        for (int i3 = 0; i3 < iArr.length; i3 += 2) {
            if (iArr[i3] == i && iArr[i3 + 1] == i2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static int[] m58289d(int[] iArr, int i, int i2) {
        int length = iArr.length;
        int[] iArr2 = new int[length + 2];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        iArr2[length] = i;
        iArr2[length + 1] = i2;
        return iArr2;
    }

    /* renamed from: e */
    public static int[] m58290e(int[] iArr, int i) {
        int length = iArr.length;
        int[] iArr2 = new int[i + length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    /* renamed from: f */
    public static int[] m58291f(int i) {
        if (i < 65536) {
            return m58292g(i);
        }
        return null;
    }

    /* renamed from: g */
    public static int[] m58292g(int i) {
        int i2 = i >>> f89879a;
        return f89883e[i2][i & f89881c];
    }

    /* renamed from: h */
    public static void m58293h(int i, int[] iArr) {
        int i2 = i >>> f89879a;
        f89883e[i2][i & f89881c] = iArr;
    }

    /* renamed from: i */
    public static int[] m58294i(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        for (int i4 = 0; i4 < iArr2.length; i4 += 2) {
            int i5 = iArr2[i4];
            int[] m58292g = m58292g(i5);
            if (m58292g != null && m58288c(m58292g, i2, i3)) {
                if (!m58287b(m58292g, i)) {
                    m58293h(i5, m58289d(m58292g, i, i3));
                }
                if (!m58287b(iArr, i5)) {
                    iArr = m58289d(iArr, i5, i3);
                }
            }
        }
        if (!m58287b(iArr2, i)) {
            m58293h(i2, m58289d(iArr2, i, i3));
        }
        return iArr;
    }
}
