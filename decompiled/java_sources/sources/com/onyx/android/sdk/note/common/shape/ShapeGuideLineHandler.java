package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;", "", "onDown", "", "touchPointInPage", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "onMove", "onUp", "render", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "updateRenderContext", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeGuideLineHandler {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static void onDown(@NotNull ShapeGuideLineHandler shapeGuideLineHandler, @NotNull TouchPoint touchPointInPage) {
            Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        }

        @NotNull
        public static TouchPoint onMove(@NotNull ShapeGuideLineHandler shapeGuideLineHandler, @NotNull TouchPoint touchPointInPage) {
            Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
            return touchPointInPage;
        }

        public static void onUp(@NotNull ShapeGuideLineHandler shapeGuideLineHandler, @NotNull TouchPoint touchPointInPage) {
            Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        }

        public static void render(@NotNull ShapeGuideLineHandler shapeGuideLineHandler, @NotNull RenderContext renderContext) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        }

        public static void updateRenderContext(@NotNull ShapeGuideLineHandler shapeGuideLineHandler, @Nullable RenderContext renderContext) {
        }
    }

    void onDown(@NotNull TouchPoint touchPointInPage);

    @NotNull
    TouchPoint onMove(@NotNull TouchPoint touchPointInPage);

    void onUp(@NotNull TouchPoint touchPointInPage);

    void render(@NotNull RenderContext renderContext);

    void updateRenderContext(@Nullable RenderContext renderContext);
}
