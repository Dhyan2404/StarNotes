package com.onyx.harfbuzz.unicode;

import com.onyx.harfbuzz.internal.JniBridge;

/* loaded from: classes9.dex */
class Unicode {
    static {
        JniBridge.loadLibrary();
    }

    public static native int getCodePointBidiClass(int i);

    public static native int getCodePointGeneralCategory(int i);

    public static native int getCodePointMirror(int i);

    public static native int getCodePointScript(int i);

    public static native int getScriptOpenTypeTag(int i);
}
