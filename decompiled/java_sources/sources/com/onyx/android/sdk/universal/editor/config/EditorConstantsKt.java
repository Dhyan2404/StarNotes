package com.onyx.android.sdk.universal.editor.config;

import android.view.DragEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0004"}, m61528d2 = {"isQuickCopyEvent", "", "Landroid/view/DragEvent;", "isStarSplitScreenEvent", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EditorConstantsKt {
    public static final boolean isQuickCopyEvent(@NotNull DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(dragEvent, "<this>");
        return Intrinsics.areEqual(dragEvent.getLocalState(), EditorConstants.LOCAL_STATE_START_QUICK_COPY);
    }

    public static final boolean isStarSplitScreenEvent(@NotNull DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(dragEvent, "<this>");
        return Intrinsics.areEqual(dragEvent.getLocalState(), EditorConstants.LOCAL_STATE_START_SPLIT_SCREEN);
    }
}
