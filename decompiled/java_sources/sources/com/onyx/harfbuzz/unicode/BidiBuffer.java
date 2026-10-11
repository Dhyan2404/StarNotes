package com.onyx.harfbuzz.unicode;

import com.onyx.harfbuzz.internal.JniBridge;

/* loaded from: classes9.dex */
class BidiBuffer {
    static {
        JniBridge.loadLibrary();
    }

    public static native long create(String str);

    public static native void release(long j);

    public static native long retain(long j);
}
