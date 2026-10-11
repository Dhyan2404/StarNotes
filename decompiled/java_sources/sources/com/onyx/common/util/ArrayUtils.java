package com.onyx.common.util;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes8.dex */
public class ArrayUtils {
    public static void checkRange(int i, int i2, int i3) {
        if (i2 >= i || i3 > i || i3 < i2) {
            throw new IllegalArgumentException(String.format("(%d-%d) > arr[%d]", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i)));
        }
    }

    public static int getSum(int[] iArr) {
        if (isNullOrEmpty(iArr)) {
            return 0;
        }
        int i = 0;
        for (int i2 : iArr) {
            i = (int) (i + i2);
        }
        return i;
    }

    public static <T> boolean isNullOrEmpty(T[] tArr) {
        return tArr == null || tArr.length <= 0;
    }

    public static String toString(char[] cArr) {
        if (isNullOrEmpty(cArr)) {
            return "char[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("char[");
        for (char c : cArr) {
            sb.append(c);
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public static boolean isNullOrEmpty(int[] iArr) {
        return iArr == null || iArr.length <= 0;
    }

    public static int getSum(int[] iArr, int i, int i2) {
        int i3 = 0;
        if (isNullOrEmpty(iArr)) {
            return 0;
        }
        checkRange(iArr.length, i, i2);
        while (i < i2) {
            i3 += iArr[i];
            i++;
        }
        return i3;
    }

    public static boolean isNullOrEmpty(float[] fArr) {
        return fArr == null || fArr.length <= 0;
    }

    public static boolean isNullOrEmpty(double[] dArr) {
        return dArr == null || dArr.length <= 0;
    }

    public static boolean isNullOrEmpty(long[] jArr) {
        return jArr == null || jArr.length <= 0;
    }

    public static float getSum(float[] fArr) {
        float f = 0.0f;
        if (isNullOrEmpty(fArr)) {
            return 0.0f;
        }
        for (float f2 : fArr) {
            f += f2;
        }
        return f;
    }

    public static boolean isNullOrEmpty(char[] cArr) {
        return cArr == null || cArr.length <= 0;
    }

    public static float getSum(float[] fArr, int i, int i2) {
        float f = 0.0f;
        if (isNullOrEmpty(fArr)) {
            return 0.0f;
        }
        checkRange(fArr.length, i, i2);
        while (i < i2) {
            f += fArr[i];
            i++;
        }
        return f;
    }

    public static String toString(char[] cArr, int i, int i2) {
        if (isNullOrEmpty(cArr)) {
            return "char[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("char[");
        while (i < i2) {
            sb.append(cArr[i]);
            i++;
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }
}
