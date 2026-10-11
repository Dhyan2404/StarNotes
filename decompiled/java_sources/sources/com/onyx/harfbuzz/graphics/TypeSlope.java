package com.onyx.harfbuzz.graphics;

import androidx.annotation.NonNull;

/* loaded from: classes9.dex */
public enum TypeSlope {
    PLAIN,
    ITALIC,
    OBLIQUE;

    private static final TypeSlope[] ALL_VALUES = values();

    @NonNull
    public static TypeSlope fromItal(float f) {
        return f >= 1.0f ? ITALIC : PLAIN;
    }

    @NonNull
    public static TypeSlope fromSlnt(float f) {
        return f != 0.0f ? OBLIQUE : PLAIN;
    }

    @NonNull
    public static TypeSlope valueOf(int i) {
        return ALL_VALUES[i];
    }
}
