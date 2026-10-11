package com.onyx.android.sdk.base.lite.utils;

import kotlin.Metadata;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;", "", "()V", "invertColor", "", "color", "replaceAlphaWithBitwise", "colorInt", "alpha", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ColorUtils {

    @NotNull
    public static final ColorUtils INSTANCE = new ColorUtils();

    public final int invertColor(int color) {
        return ((-16777216) & color) | ((255 - ((color >> 16) & 255)) << 16) | ((255 - ((color >> 8) & 255)) << 8) | (255 - (color & 255));
    }

    public final int replaceAlphaWithBitwise(int colorInt, int alpha) {
        int coerceIn;
        coerceIn = RangesKt___RangesKt.coerceIn(alpha, 0, 255);
        return (coerceIn << 24) | (colorInt & 16777215);
    }
}
