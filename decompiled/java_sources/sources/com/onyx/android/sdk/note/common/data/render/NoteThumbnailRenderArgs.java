package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010#\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0013\u0012\b\b\u0002\u0010\"\u001a\u00020\u001b\u0012\u0006\u0010*\u001a\u00020#\u0012\b\b\u0002\u0010.\u001a\u00020\u0002¢\u0006\u0004\b_\u0010`J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u0005\u001a\u0004\b,\u0010\u0007\"\u0004\b-\u0010\tR\"\u00106\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010:\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00101\u001a\u0004\b8\u00103\"\u0004\b9\u00105R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010F\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u00101\u001a\u0004\bD\u00103\"\u0004\bE\u00105R\"\u0010J\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u00101\u001a\u0004\bH\u00103\"\u0004\bI\u00105R*\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010K8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\"\u0010V\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u00101\u001a\u0004\bT\u00103\"\u0004\bU\u00105R\"\u0010^\u001a\u00020W8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]¨\u0006a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;", "", "Landroid/graphics/RectF;", "getClipRectFOrBitmapBoundingRectF", "a", "Landroid/graphics/RectF;", "getDisplayRectF", "()Landroid/graphics/RectF;", "setDisplayRectF", "(Landroid/graphics/RectF;)V", "displayRectF", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualPageBoxInfo", "", "c", Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "", "d", "F", "getScale", "()F", "setScale", "(F)V", "scale", "Landroid/graphics/Bitmap;", "e", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", C6997f.f39671c, "getClipRectF", "setClipRectF", "clipRectF", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getShowExcerptIndicator", Constants.BOOLEAN_VALUE_SIG, "setShowExcerptIndicator", "(Z)V", "showExcerptIndicator", C6999h.f39688c, "getShowTape", "setShowTape", "showTape", "", "i", "I", "getLayerId", "()I", "setLayerId", "(I)V", "layerId", "j", "getRenderPageMarin", "setRenderPageMarin", "renderPageMarin", C4921e.f26537n, "getRenderReferenceShape", "setRenderReferenceShape", "renderReferenceShape", "", "l", "Ljava/util/Set;", "getRenderedShapeIds", "()Ljava/util/Set;", "setRenderedShapeIds", "(Ljava/util/Set;)V", "renderedShapeIds", "m", "getRenderOutOfPageShape", "setRenderOutOfPageShape", "renderOutOfPageShape", "Landroid/graphics/Matrix;", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/Matrix;", "getRotationMatrix", "()Landroid/graphics/Matrix;", "setRotationMatrix", "(Landroid/graphics/Matrix;)V", "rotationMatrix", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;FLandroid/graphics/Bitmap;Landroid/graphics/RectF;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteThumbnailRenderArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RectF displayRectF;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String pageId;

    /* renamed from: d, reason: from kotlin metadata */
    public float scale;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Bitmap bitmap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public RectF clipRectF;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean showExcerptIndicator;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean showTape;

    /* renamed from: i, reason: from kotlin metadata */
    public int layerId;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean renderPageMarin;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean renderReferenceShape;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Set<String> renderedShapeIds;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean renderOutOfPageShape;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Matrix rotationMatrix;

    public NoteThumbnailRenderArgs(@NotNull RectF displayRectF, @NotNull BoxInfo virtualPageBoxInfo, @NotNull String pageId, float f, @NotNull Bitmap bitmap, @NotNull RectF clipRectF) {
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(clipRectF, "clipRectF");
        this.displayRectF = displayRectF;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.pageId = pageId;
        this.scale = f;
        this.bitmap = bitmap;
        this.clipRectF = clipRectF;
        this.showExcerptIndicator = true;
        this.showTape = true;
        this.layerId = -1;
        this.renderPageMarin = true;
        this.renderReferenceShape = true;
        this.renderOutOfPageShape = true;
        this.rotationMatrix = new Matrix();
    }

    @NotNull
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final RectF getClipRectF() {
        return this.clipRectF;
    }

    @NotNull
    public final RectF getClipRectFOrBitmapBoundingRectF() {
        return this.clipRectF.isEmpty() ? BitmapKt.boundingRectF(this.bitmap) : this.clipRectF;
    }

    @NotNull
    public final RectF getDisplayRectF() {
        return this.displayRectF;
    }

    public final int getLayerId() {
        return this.layerId;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    public final boolean getRenderOutOfPageShape() {
        return this.renderOutOfPageShape;
    }

    public final boolean getRenderPageMarin() {
        return this.renderPageMarin;
    }

    public final boolean getRenderReferenceShape() {
        return this.renderReferenceShape;
    }

    @Nullable
    public final Set<String> getRenderedShapeIds() {
        return this.renderedShapeIds;
    }

    @NotNull
    public final Matrix getRotationMatrix() {
        return this.rotationMatrix;
    }

    public final float getScale() {
        return this.scale;
    }

    public final boolean getShowExcerptIndicator() {
        return this.showExcerptIndicator;
    }

    public final boolean getShowTape() {
        return this.showTape;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final void setBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<set-?>");
        this.bitmap = bitmap;
    }

    public final void setClipRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.clipRectF = rectF;
    }

    public final void setDisplayRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.displayRectF = rectF;
    }

    public final void setLayerId(int i) {
        this.layerId = i;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setRenderOutOfPageShape(boolean z) {
        this.renderOutOfPageShape = z;
    }

    public final void setRenderPageMarin(boolean z) {
        this.renderPageMarin = z;
    }

    public final void setRenderReferenceShape(boolean z) {
        this.renderReferenceShape = z;
    }

    public final void setRenderedShapeIds(@Nullable Set<String> set) {
        this.renderedShapeIds = set;
    }

    public final void setRotationMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.rotationMatrix = matrix;
    }

    public final void setScale(float f) {
        this.scale = f;
    }

    public final void setShowExcerptIndicator(boolean z) {
        this.showExcerptIndicator = z;
    }

    public final void setShowTape(boolean z) {
        this.showTape = z;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    public /* synthetic */ NoteThumbnailRenderArgs(RectF rectF, BoxInfo boxInfo, String str, float f, Bitmap bitmap, RectF rectF2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new RectF() : rectF, boxInfo, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? 1.0f : f, bitmap, (i & 32) != 0 ? new RectF() : rectF2);
    }
}
