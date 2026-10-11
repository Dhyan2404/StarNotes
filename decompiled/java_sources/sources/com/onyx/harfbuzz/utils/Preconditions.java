package com.onyx.harfbuzz.utils;

/* loaded from: classes9.dex */
public final class Preconditions {
    public static void checkArgument(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void checkArrayBounds(byte[] bArr, int i, int i2) {
        if (i < 0 || bArr.length - i < i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void checkElementIndex(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + i2);
        }
    }

    public static void checkIndexRange(int i, int i2, int i3) {
        if (i < 0 || i2 > i3 || i > i2) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static void checkNotNull(Object obj) {
        obj.getClass();
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void checkArrayBounds(int[] iArr, int i, int i2) {
        if (i < 0 || iArr.length - i < i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void checkArrayBounds(float[] fArr, int i, int i2) {
        if (i < 0 || fArr.length - i < i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }
}
