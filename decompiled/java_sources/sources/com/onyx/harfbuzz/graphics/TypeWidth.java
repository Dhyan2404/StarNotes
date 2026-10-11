package com.onyx.harfbuzz.graphics;

import androidx.annotation.NonNull;

/* loaded from: classes9.dex */
public enum TypeWidth {
    ULTRA_CONDENSED(1),
    EXTRA_CONDENSED(2),
    CONDENSED(3),
    SEMI_CONDENSED(4),
    NORMAL(5),
    SEMI_EXPANDED(6),
    EXPANDED(7),
    EXTRA_EXPANDED(8),
    ULTRA_EXPANDED(9);

    private static final TypeWidth[] ALL_VALUES = values();
    final int value;

    TypeWidth(int i) {
        this.value = i;
    }

    @NonNull
    public static TypeWidth fromWdth(float f) {
        return valueOf(f < 50.0f ? 1 : f < 125.0f ? (int) (((f - 50.0f) / 12.5d) + 1.0d) : f < 200.0f ? (int) (((f - 125.0f) / 25.0f) + 7.0f) : 9);
    }

    @NonNull
    public static TypeWidth valueOf(int i) {
        return ALL_VALUES[Math.max(0, Math.min(8, i - 1))];
    }
}
