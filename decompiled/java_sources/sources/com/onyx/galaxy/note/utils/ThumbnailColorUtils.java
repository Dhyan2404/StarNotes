package com.onyx.galaxy.note.utils;

import android.content.res.ColorStateList;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;", "", "()V", "getFolderThumbnailAlphaColor", "Landroid/content/res/ColorStateList;", "color", "", "getFolderThumbnailWhiteAlphaColor", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ThumbnailColorUtils {

    @NotNull
    public static final ThumbnailColorUtils INSTANCE = new ThumbnailColorUtils();

    @NotNull
    public final ColorStateList getFolderThumbnailAlphaColor(int color) {
        ColorStateList withAlpha = ColorStateList.valueOf(color).withAlpha(ResManager.INSTANCE.getInteger(C10651R.integer.folder_thumbnail_color_alpha));
        Intrinsics.checkNotNullExpressionValue(withAlpha, "withAlpha(...)");
        return withAlpha;
    }

    @NotNull
    public final ColorStateList getFolderThumbnailWhiteAlphaColor() {
        ColorStateList withAlpha = ColorStateList.valueOf(-1).withAlpha(ResManager.INSTANCE.getInteger(C10651R.integer.folder_thumbnail_white_color_alpha));
        Intrinsics.checkNotNullExpressionValue(withAlpha, "withAlpha(...)");
        return withAlpha;
    }
}
