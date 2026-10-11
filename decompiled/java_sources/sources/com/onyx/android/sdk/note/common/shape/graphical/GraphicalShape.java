package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Path;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.ShapeTests;
import com.onyx.android.sdk.note.common.utils.GraphicalShapeSplitter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "()V", "lowLatencyRender", "", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "render", "split", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "testData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class GraphicalShape extends BaseShape {
    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return render(renderContext);
    }

    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeRenders shapeRenders = ShapeRenders.INSTANCE;
        shapeRenders.applyStrokeStyle(this, renderContext);
        Path renderPath = shapeRenders.getRenderPath(this, renderContext);
        renderContext.getCanvas().drawPath(renderPath, renderContext.getPaint());
        shapeRenders.renderFillColor(this, renderContext, renderPath);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return GraphicalShapeSplitter.split$default(GraphicalShapeSplitter.INSTANCE, this, eraseBean, 0, 4, null);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTest
    @NotNull
    public Shape testData() {
        ShapeTests.INSTANCE.addTestPoints(this, 2);
        return super.testData();
    }
}
