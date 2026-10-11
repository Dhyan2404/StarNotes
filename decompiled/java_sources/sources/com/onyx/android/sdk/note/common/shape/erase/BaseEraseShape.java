package com.onyx.android.sdk.note.common.shape.erase;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.ShapeTests;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0017J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/erase/BaseEraseShape;", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "()V", "getRenderStrokeWidth", "", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "selectionRender", "", "testData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class BaseEraseShape extends BaseShape {
    @JSONField(deserialize = false, serialize = false)
    public float getRenderStrokeWidth(@Nullable RenderContext renderContext) {
        return getStrokeWidth() * ShapeRenders.INSTANCE.getDisplayScale(this, renderContext);
    }

    public void selectionRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        ShapeRenders shapeRenders = ShapeRenders.INSTANCE;
        shapeRenders.applyStrokeStyle(this, renderContext);
        renderContext.getPaint().setColor(-1);
        renderContext.getPaint().setXfermode(null);
        shapeRenders.drawPath(this, renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTest
    @NotNull
    public Shape testData() {
        ShapeTests.INSTANCE.addTestPoints(this, 100);
        return super.testData();
    }
}
