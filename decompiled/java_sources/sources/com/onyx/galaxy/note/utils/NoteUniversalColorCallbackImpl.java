package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;", "Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;", "()V", "getBgOverlayColor", "", "getHighlightColor", "getThemeBackgroundColor", "getThemePrimaryColor", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteUniversalColorCallbackImpl implements UniversalThemeUtils.UniversalColorCallback {

    @NotNull
    public static final NoteUniversalColorCallbackImpl INSTANCE = new NoteUniversalColorCallbackImpl();

    @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
    public int getBgOverlayColor() {
        return ThemeUtils.getColorById(C7996R.color.theme_bg_overlay_color_01);
    }

    @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
    public int getHighlightColor() {
        return ThemeUtils.getColorById(C7996R.color.theme_text_color_highlight_02);
    }

    @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
    public int getThemeBackgroundColor() {
        return ThemeUtils.getColorById(C7996R.color.theme_background_color_04);
    }

    @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
    public int getThemePrimaryColor() {
        return ThemeUtils.getThemePrimaryColor();
    }
}
