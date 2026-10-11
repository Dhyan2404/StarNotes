package com.onyx.android.sdk.base.data;

import com.onyx.android.sdk.base.extension.ColorKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u0015\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u000bJ\n\u0010\b\u001a\u00020\t*\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/ColorTheme;", "", "()V", "DARK", "", "LIGHT", "getThemeFromColor", "color", "isDarkTheme", "", "theme", "(Ljava/lang/Integer;)Z", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ColorTheme {
    public static final int DARK = 1;

    @NotNull
    public static final ColorTheme INSTANCE = new ColorTheme();
    public static final int LIGHT = 0;

    private ColorTheme() {
    }

    public final int getThemeFromColor(int color) {
        return ColorKt.isDarkColor(color) ? 1 : 0;
    }

    public final boolean isDarkTheme(@Nullable Integer theme) {
        return theme != null && theme.intValue() == 1;
    }

    public final boolean isDarkTheme(int i) {
        return isDarkTheme(Integer.valueOf(i));
    }
}
