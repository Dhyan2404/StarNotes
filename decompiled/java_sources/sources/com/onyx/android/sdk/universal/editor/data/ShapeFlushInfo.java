package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Matrix;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u001c\u001a\u00020\nJ\b\u0010\u001d\u001a\u00020\u0000H\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0007J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\nJ\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0011\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;", "", "shapeReference", "Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "addVerifyId", "", "getAddVerifyId", Constants.BOOLEAN_VALUE_SIG, "setAddVerifyId", "(Z)V", "isPageHighQualityFlushFinish", "setPageHighQualityFlushFinish", "isPageNormalFlushFinish", "setPageNormalFlushFinish", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "segmentStash", "getSegmentStash", "setSegmentStash", "getShapeReference", "()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "clearShapeCacheDataIf", "cloneSegmentShapeFlushInfo", "createFlushMatrix", "Landroid/graphics/Matrix;", "newVirtualPageBoxInfo", "forceClearShapeCacheData", "", "isCanClearCache", "shapeId", "", "stashShapeFlushInfo", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeFlushInfo {
    private boolean addVerifyId;
    private boolean isPageHighQualityFlushFinish;
    private boolean isPageNormalFlushFinish;

    @NotNull
    private final RenderContext renderContext;
    private boolean segmentStash;

    @NotNull
    private final FlushShapeReference shapeReference;

    @NotNull
    private final BoxInfo virtualPageBoxInfo;

    public ShapeFlushInfo(@NotNull FlushShapeReference shapeReference, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(shapeReference, "shapeReference");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        this.shapeReference = shapeReference;
        this.renderContext = renderContext;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.addVerifyId = true;
    }

    private final ShapeFlushInfo cloneSegmentShapeFlushInfo() {
        Shape deepCopy = ShapeCopyUtils.INSTANCE.deepCopy(this.shapeReference.getShape());
        deepCopy.cloneLowLatencyData(this.shapeReference.getShape());
        ShapeFlushInfo shapeFlushInfo = new ShapeFlushInfo(new FlushShapeReference(deepCopy, 0, 2, null), this.renderContext, this.virtualPageBoxInfo.copy());
        shapeFlushInfo.isPageNormalFlushFinish = this.isPageNormalFlushFinish;
        shapeFlushInfo.isPageHighQualityFlushFinish = this.isPageHighQualityFlushFinish;
        shapeFlushInfo.addVerifyId = this.addVerifyId;
        return shapeFlushInfo;
    }

    public final boolean clearShapeCacheDataIf() {
        if (isCanClearCache()) {
            return this.shapeReference.clearOnPageFlushFinish();
        }
        return false;
    }

    @NotNull
    public final Matrix createFlushMatrix(@NotNull BoxInfo newVirtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(newVirtualPageBoxInfo, "newVirtualPageBoxInfo");
        Matrix matrix = new Matrix();
        float actualScale = newVirtualPageBoxInfo.getActualScale() / this.virtualPageBoxInfo.getActualScale();
        float f = newVirtualPageBoxInfo.getVisibleRect().left - this.virtualPageBoxInfo.getVisibleRect().left;
        float f2 = newVirtualPageBoxInfo.getVisibleRect().top - this.virtualPageBoxInfo.getVisibleRect().top;
        matrix.postScale(actualScale, actualScale);
        matrix.postTranslate(f, f2);
        return matrix;
    }

    public final void forceClearShapeCacheData() {
        this.shapeReference.getShape().clearLowLatencyData();
    }

    public final boolean getAddVerifyId() {
        return this.addVerifyId;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    public final boolean getSegmentStash() {
        return this.segmentStash;
    }

    @NotNull
    public final FlushShapeReference getShapeReference() {
        return this.shapeReference;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final boolean isCanClearCache() {
        return this.isPageNormalFlushFinish && this.isPageHighQualityFlushFinish;
    }

    /* renamed from: isPageHighQualityFlushFinish, reason: from getter */
    public final boolean getIsPageHighQualityFlushFinish() {
        return this.isPageHighQualityFlushFinish;
    }

    /* renamed from: isPageNormalFlushFinish, reason: from getter */
    public final boolean getIsPageNormalFlushFinish() {
        return this.isPageNormalFlushFinish;
    }

    public final void setAddVerifyId(boolean z) {
        this.addVerifyId = z;
    }

    public final void setPageHighQualityFlushFinish(boolean z) {
        this.isPageHighQualityFlushFinish = z;
    }

    public final void setPageNormalFlushFinish(boolean z) {
        this.isPageNormalFlushFinish = z;
    }

    public final void setSegmentStash(boolean z) {
        this.segmentStash = z;
    }

    @NotNull
    public final String shapeId() {
        return this.shapeReference.getShape().getShapeUniqueId();
    }

    @NotNull
    public final ShapeFlushInfo stashShapeFlushInfo() {
        return this.segmentStash ? cloneSegmentShapeFlushInfo() : this;
    }
}
