package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRenderUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\"\u0010\u001c\u001a\u00020\u00158\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "updateShapeRect", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "x", "y", "radius", "hitTest", "a", "Landroid/graphics/Paint;", "strokePaint", "b", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "K", Constants.HASIDCALL_INDEX_SIG, "showExcerptIndicator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExcerptShape extends ObjectShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 41;

    /* renamed from: K, reason: from kotlin metadata */
    public boolean showExcerptIndicator = true;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;", "", "()V", "createPdfShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "embedShapeBean", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "drawableId", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ PdfShapeInfo createPdfShape$default(Companion companion, Shape shape, EmbedShapeBean embedShapeBean, int i, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                i = C7485R.drawable.excerpt_indicator;
            }
            return companion.createPdfShape(shape, embedShapeBean, i);
        }

        @NotNull
        public final PdfShapeInfo createPdfShape(@NotNull Shape shape, @NotNull EmbedShapeBean embedShapeBean, int drawableId) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            shape.updateShapeRect();
            PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
            PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createImageShape(), embedShapeBean);
            RectF boundingRectWithDrawable$default = ShapeKt.getBoundingRectWithDrawable$default(shape, drawableId, null, 2, null);
            initPdfShape.setBitmap(ShapeRenderUtils.INSTANCE.renderShapeBitmap(shape, boundingRectWithDrawable$default, new ShapeRenderUtils.RenderOptions(embedShapeBean.getShowExcerptIndicator(), 0.0f, 2, null)));
            pdfShapeConvertUtils.setTransformMatrix(initPdfShape, pdfShapeConvertUtils.getTransformRectF(embedShapeBean, boundingRectWithDrawable$default));
            return initPdfShape;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final void m33852a(RenderContext renderContext) {
        if (renderContext.getShowExcerptIndicator()) {
            ShapeKt.renderDrawable$default(this, renderContext, C7485R.drawable.excerpt_indicator, null, 4, null);
        }
    }

    /* renamed from: b */
    public final void m33853b(Paint strokePaint) {
        strokePaint.setPathEffect(new DashPathEffect(new float[]{8.0f, 8.0f}, 0.0f));
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ObjectShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        return !this.showExcerptIndicator ? super.hitTest(x, y, radius) : HitTestUtils.INSTANCE.hitTestShapeDrawable(x, y, radius, this, C7485R.drawable.excerpt_indicator) || super.hitTest(x, y, radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        m33853b(renderContext.getPaint());
        RectF copy = RectFKt.copy(getOriginRect());
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(copy);
        }
        renderContext.getMatrix().mapRect(copy);
        renderContext.getCanvas().drawRect(copy, renderContext.getPaint());
        this.showExcerptIndicator = renderContext.getShowExcerptIndicator();
        m33852a(renderContext);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return Companion.createPdfShape$default(INSTANCE, this, embedShapeBean, 0, 4, null);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(getPointsBoundingRect());
        setBoundingRect(ShapeKt.getBoundingRectWithDrawable$default(this, C7485R.drawable.excerpt_indicator, null, 2, null));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }
}
