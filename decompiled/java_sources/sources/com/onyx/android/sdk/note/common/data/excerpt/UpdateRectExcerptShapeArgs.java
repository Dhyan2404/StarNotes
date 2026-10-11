package com.onyx.android.sdk.note.common.data.excerpt;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;", "", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "getRegionInViewport", "()Landroid/graphics/RectF;", "setRegionInViewport", "(Landroid/graphics/RectF;)V", "regionInViewport", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateRectExcerptShapeArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RectF regionInViewport = new RectF();
    public Shape shape;
    public BoxInfo virtualPageBoxInfo;

    @NotNull
    public final RectF getRegionInViewport() {
        return this.regionInViewport;
    }

    @NotNull
    public final Shape getShape() {
        Shape shape = this.shape;
        if (shape != null) {
            return shape;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shape");
        return null;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo != null) {
            return boxInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
        return null;
    }

    public final void setRegionInViewport(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.regionInViewport = rectF;
    }

    public final void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }
}
