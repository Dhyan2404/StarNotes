package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;", "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;", "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DefaultShapeGuideLineHandler implements ShapeGuideLineHandler {

    @NotNull
    public static final DefaultShapeGuideLineHandler INSTANCE = new DefaultShapeGuideLineHandler();

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void onDown(@NotNull TouchPoint touchPoint) {
        ShapeGuideLineHandler.DefaultImpls.onDown(this, touchPoint);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    @NotNull
    public TouchPoint onMove(@NotNull TouchPoint touchPoint) {
        return ShapeGuideLineHandler.DefaultImpls.onMove(this, touchPoint);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void onUp(@NotNull TouchPoint touchPoint) {
        ShapeGuideLineHandler.DefaultImpls.onUp(this, touchPoint);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void render(@NotNull RenderContext renderContext) {
        ShapeGuideLineHandler.DefaultImpls.render(this, renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void updateRenderContext(@Nullable RenderContext renderContext) {
        ShapeGuideLineHandler.DefaultImpls.updateRenderContext(this, renderContext);
    }
}
