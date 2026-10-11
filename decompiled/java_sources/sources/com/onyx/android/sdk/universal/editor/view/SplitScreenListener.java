package com.onyx.android.sdk.universal.editor.view;

import android.graphics.RectF;
import android.view.View;
import com.onyx.android.sdk.universal.editor.config.SplitScreenPosition;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;", "", "exitSplitScreen", "", "goneView", "Landroid/view/View;", "getSplitScreenSize", "Landroid/graphics/RectF;", "position", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "isEnabledSplitScreen", "", "splitScreen", "editorView", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface SplitScreenListener {
    void exitSplitScreen(@NotNull View goneView);

    @NotNull
    RectF getSplitScreenSize(@NotNull SplitScreenPosition position);

    boolean isEnabledSplitScreen();

    void splitScreen(@NotNull View editorView, @NotNull SplitScreenPosition position);
}
