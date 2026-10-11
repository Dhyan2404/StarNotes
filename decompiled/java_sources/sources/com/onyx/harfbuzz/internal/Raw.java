package com.onyx.harfbuzz.internal;

import androidx.annotation.NonNull;

/* loaded from: classes9.dex */
public final class Raw {
    public static final int INT16_SIZE = 2;
    public static final int INT32_SIZE = 4;
    public static final int INT8_SIZE = 1;
    public static final int POINTER_SIZE;

    static {
        JniBridge.loadLibrary();
        POINTER_SIZE = sizeOfIntPtr();
    }

    public static native void copyInt8Buffer(long j, @NonNull byte[] bArr, int i, int i2);

    public static native void copyUInt8Buffer(long j, @NonNull int[] iArr, int i, int i2);

    public static native short getInt16Value(long j);

    public static native int getInt32Value(long j);

    public static native byte getInt8Value(long j);

    public static native long getIntPtrValue(long j);

    private static native int sizeOfIntPtr();
}
