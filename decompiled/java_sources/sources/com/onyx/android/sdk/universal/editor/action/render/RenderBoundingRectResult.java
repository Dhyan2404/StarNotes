package com.onyx.android.sdk.universal.editor.action.render;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b.\u0010/J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J3\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0007HÆ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\"\u0010\f\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010-\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010%\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;", "", "Landroid/graphics/Bitmap;", "component1", "Landroid/graphics/RectF;", "component2", "component3", "", "component4", "bitmap", "scaleBoundingRect", "originBoundingRectF", "actualScale", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "b", "Landroid/graphics/RectF;", "getScaleBoundingRect", "()Landroid/graphics/RectF;", "setScaleBoundingRect", "(Landroid/graphics/RectF;)V", "c", "getOriginBoundingRectF", "setOriginBoundingRectF", "d", "F", "getActualScale", "()F", "setActualScale", "(F)V", "e", "getViewBitmapScale", "setViewBitmapScale", "viewBitmapScale", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RenderBoundingRectResult {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF scaleBoundingRect;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF originBoundingRectF;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public float actualScale;

    /* renamed from: e, reason: from kotlin metadata */
    public float viewBitmapScale;

    public RenderBoundingRectResult() {
        this(null, null, null, 0.0f, 15, null);
    }

    public static /* synthetic */ RenderBoundingRectResult copy$default(RenderBoundingRectResult renderBoundingRectResult, Bitmap bitmap, RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            bitmap = renderBoundingRectResult.bitmap;
        }
        if ((i & 2) != 0) {
            rectF = renderBoundingRectResult.scaleBoundingRect;
        }
        if ((i & 4) != 0) {
            rectF2 = renderBoundingRectResult.originBoundingRectF;
        }
        if ((i & 8) != 0) {
            f = renderBoundingRectResult.actualScale;
        }
        return renderBoundingRectResult.copy(bitmap, rectF, rectF2, f);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final RectF getScaleBoundingRect() {
        return this.scaleBoundingRect;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final RectF getOriginBoundingRectF() {
        return this.originBoundingRectF;
    }

    /* renamed from: component4, reason: from getter */
    public final float getActualScale() {
        return this.actualScale;
    }

    @NotNull
    public final RenderBoundingRectResult copy(@Nullable Bitmap bitmap, @NotNull RectF scaleBoundingRect, @NotNull RectF originBoundingRectF, float actualScale) {
        Intrinsics.checkNotNullParameter(scaleBoundingRect, "scaleBoundingRect");
        Intrinsics.checkNotNullParameter(originBoundingRectF, "originBoundingRectF");
        return new RenderBoundingRectResult(bitmap, scaleBoundingRect, originBoundingRectF, actualScale);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderBoundingRectResult)) {
            return false;
        }
        RenderBoundingRectResult renderBoundingRectResult = (RenderBoundingRectResult) other;
        return Intrinsics.areEqual(this.bitmap, renderBoundingRectResult.bitmap) && Intrinsics.areEqual(this.scaleBoundingRect, renderBoundingRectResult.scaleBoundingRect) && Intrinsics.areEqual(this.originBoundingRectF, renderBoundingRectResult.originBoundingRectF) && Float.compare(this.actualScale, renderBoundingRectResult.actualScale) == 0;
    }

    public final float getActualScale() {
        return this.actualScale;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final RectF getOriginBoundingRectF() {
        return this.originBoundingRectF;
    }

    @NotNull
    public final RectF getScaleBoundingRect() {
        return this.scaleBoundingRect;
    }

    public final float getViewBitmapScale() {
        return this.viewBitmapScale;
    }

    public int hashCode() {
        Bitmap bitmap = this.bitmap;
        return ((((((bitmap == null ? 0 : bitmap.hashCode()) * 31) + this.scaleBoundingRect.hashCode()) * 31) + this.originBoundingRectF.hashCode()) * 31) + Float.hashCode(this.actualScale);
    }

    public final void setActualScale(float f) {
        this.actualScale = f;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setOriginBoundingRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.originBoundingRectF = rectF;
    }

    public final void setScaleBoundingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.scaleBoundingRect = rectF;
    }

    public final void setViewBitmapScale(float f) {
        this.viewBitmapScale = f;
    }

    @NotNull
    public String toString() {
        return "RenderBoundingRectResult(bitmap=" + this.bitmap + ", scaleBoundingRect=" + this.scaleBoundingRect + ", originBoundingRectF=" + this.originBoundingRectF + ", actualScale=" + this.actualScale + ')';
    }

    public RenderBoundingRectResult(@Nullable Bitmap bitmap, @NotNull RectF scaleBoundingRect, @NotNull RectF originBoundingRectF, float f) {
        Intrinsics.checkNotNullParameter(scaleBoundingRect, "scaleBoundingRect");
        Intrinsics.checkNotNullParameter(originBoundingRectF, "originBoundingRectF");
        this.bitmap = bitmap;
        this.scaleBoundingRect = scaleBoundingRect;
        this.originBoundingRectF = originBoundingRectF;
        this.actualScale = f;
        this.viewBitmapScale = 1.0f;
    }

    public /* synthetic */ RenderBoundingRectResult(Bitmap bitmap, RectF rectF, RectF rectF2, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bitmap, (i & 2) != 0 ? new RectF() : rectF, (i & 4) != 0 ? new RectF() : rectF2, (i & 8) != 0 ? 1.0f : f);
    }
}
