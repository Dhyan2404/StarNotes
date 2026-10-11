package com.onyx.android.sdk.note.common.shape.pen;

import com.onyx.android.sdk.note.common.data.render.PenShapeRender;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.render.SoftPaintPenShapeRender;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\"\u0010\u0012\u001a\u00020\u000b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0014@\u0014X\u0094\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;", "", "useLowLatencyFlush", "readyToLowLatencyFlush", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", Constants.RESET, "lowLatencyFlush", "", "resetLowLatencyData", "", "L", "I", "getType", "()I", "setType", "(I)V", "type", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "M", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "getShapeRender", "()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "setShapeRender", "(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V", "shapeRender", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SoftPaintScribbleShape extends BrushScribbleShape {

    /* renamed from: L, reason: from kotlin metadata */
    public int type = 49;

    /* renamed from: M, reason: from kotlin metadata */
    @NotNull
    public PenShapeRender shapeRender = new SoftPaintPenShapeRender(this);

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape
    @NotNull
    public PenShapeRender getShapeRender() {
        return this.shapeRender;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyFlush(@NotNull RenderContext renderContext, boolean reset) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getShapeRender().lowLatencyFlush(renderContext, reset);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean readyToLowLatencyFlush() {
        return getShapeRender().readyToLowLatencyFlush();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void resetLowLatencyData() {
        getShapeRender().resetLowLatencyData();
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape
    public void setShapeRender(@NotNull PenShapeRender penShapeRender) {
        Intrinsics.checkNotNullParameter(penShapeRender, "<set-?>");
        this.shapeRender = penShapeRender;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean useLowLatencyFlush() {
        return getShapeRender().useLowLatencyFlush();
    }
}
