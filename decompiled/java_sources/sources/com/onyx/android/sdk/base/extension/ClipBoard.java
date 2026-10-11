package com.onyx.android.sdk.base.extension;

import android.content.ClipData;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.UriUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0005J\n\u0010\b\u001a\u00020\u0007*\u00020\u0005J\n\u0010\t\u001a\u00020\u0007*\u00020\u0005¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/ClipBoard;", "", "()V", "findFirstTextContent", "", "Landroid/content/ClipData;", "hasImageContent", "", "hasTextContent", "hasTextUriList", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClipBoard {

    @NotNull
    public static final ClipBoard INSTANCE = new ClipBoard();

    @NotNull
    public final String findFirstTextContent(@NotNull ClipData clipData) {
        Intrinsics.checkNotNullParameter(clipData, "<this>");
        int itemCount = clipData.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            ClipData.Item itemAt = clipData.getItemAt(i);
            if (StringKt.isNotBlank(itemAt.getText())) {
                return itemAt.getText().toString();
            }
        }
        return "";
    }

    public final boolean hasImageContent(@NotNull ClipData clipData) {
        Intrinsics.checkNotNullParameter(clipData, "<this>");
        int itemCount = clipData.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (UriUtils.INSTANCE.isImageContent(clipData.getItemAt(i).getUri())) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasTextContent(@NotNull ClipData clipData) {
        Intrinsics.checkNotNullParameter(clipData, "<this>");
        return clipData.getDescription().hasMimeType(FileExtensionUtils.DEFAULT_MIMETYPE_TEXT);
    }

    public final boolean hasTextUriList(@NotNull ClipData clipData) {
        Intrinsics.checkNotNullParameter(clipData, "<this>");
        return clipData.getDescription().hasMimeType(FileExtensionUtils.TEXT_URI_LIST);
    }
}
