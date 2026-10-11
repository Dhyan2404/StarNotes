package com.onyx.harfbuzz.graphics;

import androidx.annotation.NonNull;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes9.dex */
public enum TypeWeight {
    THIN(100),
    EXTRA_LIGHT(200),
    LIGHT(300),
    REGULAR(400),
    MEDIUM(500),
    SEMI_BOLD(600),
    BOLD(700),
    EXTRA_BOLD(CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH),
    HEAVY(900);

    private static final TypeWeight[] ALL_VALUES = values();
    final int value;

    TypeWeight(int i) {
        this.value = i;
    }

    @NonNull
    public static TypeWeight fromWght(float f) {
        return valueOf(f < 1.0f ? 1 : f > 1000.0f ? 1000 : (int) f);
    }

    @NonNull
    public static TypeWeight valueOf(int i) {
        return ALL_VALUES[Math.max(0, Math.min(8, (int) ((i / 100.0f) - 0.5f)))];
    }
}
