package com.onyx.android.sdk.note.common.shape.pen;

import com.onyx.android.sdk.note.common.data.render.CalligraphyPenShapeRender;
import com.onyx.android.sdk.note.common.data.render.PenShapeRender;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0014@\u0014X\u0094\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;", "", "L", "I", "getType", "()I", "setType", "(I)V", "type", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "M", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "getShapeRender", "()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "setShapeRender", "(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V", "shapeRender", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CalligraphyScribbleShape extends BrushScribbleShape {

    /* renamed from: L, reason: from kotlin metadata */
    public int type = 47;

    /* renamed from: M, reason: from kotlin metadata */
    @NotNull
    public PenShapeRender shapeRender = new CalligraphyPenShapeRender(this);

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape
    @NotNull
    public PenShapeRender getShapeRender() {
        return this.shapeRender;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
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
}
