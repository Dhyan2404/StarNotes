package com.onyx.android.sdk.base.data;

import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/ColorTransformMode;", "", "()V", "inverseNoWithAlpha", "", "origin", "loadColorFilter", "Landroid/graphics/ColorFilter;", "colorTransformMode", "(Ljava/lang/Integer;)Landroid/graphics/ColorFilter;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ColorTransformMode {

    @NotNull
    public static final ColorTransformMode INSTANCE = new ColorTransformMode();
    public static final int inverseNoWithAlpha = 1;
    public static final int origin = 0;

    private ColorTransformMode() {
    }

    @Nullable
    public final ColorFilter loadColorFilter(@Nullable Integer colorTransformMode) {
        if (colorTransformMode == null) {
            return null;
        }
        colorTransformMode.intValue();
        int intValue = colorTransformMode.intValue();
        if (intValue == 0 || intValue != 1) {
            return null;
        }
        return new ColorMatrixColorFilter(new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, -1.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, -1.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    }
}
