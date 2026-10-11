package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRenderUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ImageShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "updateShapeRect", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "c", "", "K", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class QuoteShape extends ImageShape {

    /* renamed from: K, reason: from kotlin metadata */
    public int type = 42;

    /* renamed from: c */
    public final void m33864c(RenderContext renderContext) {
        if (renderContext.getShowExcerptIndicator()) {
            List<ExcerptCollectionModel> excerptCollectionList = ShapeOptions.INSTANCE.getExcerptCollectionList(this);
            if (excerptCollectionList == null || excerptCollectionList.isEmpty()) {
                return;
            }
            RectF copy = RectFKt.copy(getOriginRect());
            RectF quoteIndicatorAnchorRect = ShapePersistOptionsKt.getQuoteIndicatorAnchorRect(this);
            copy.offset(quoteIndicatorAnchorRect.left, quoteIndicatorAnchorRect.top);
            ShapeKt.renderDrawable(this, renderContext, C7485R.drawable.quote_indicator, copy);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ImageShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ImageShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        super.render(renderContext);
        m33864c(renderContext);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ImageShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ImageShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        Matrix matrixByValues = MatrixKt.getMatrixByValues(embedShapeBean.getMatrixValues());
        RectF rectF = new RectF(getPointsBoundingRect());
        RectFKt.scaleRect(rectF, getShapeCreateArgs().getDisplayScale());
        matrixByValues.mapRect(rectF);
        PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createImageShape(), embedShapeBean);
        initPdfShape.setRect(rectF);
        initPdfShape.setBitmap(ShapeRenderUtils.renderShapeBitmap$default(ShapeRenderUtils.INSTANCE, this, null, new ShapeRenderUtils.RenderOptions(embedShapeBean.getShowExcerptIndicator(), 0.0f, 2, null), 2, null));
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(getPointsBoundingRect());
        setBoundingRect(new RectF(getOriginRect()));
        RectFKt.scaleRect(getBoundingRect(), getShapeCreateArgs().getDisplayScale());
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
        RectF drawableRect$default = ShapeKt.getDrawableRect$default(this, getBoundingRect(), C7485R.drawable.quote_indicator, null, 4, null);
        RectKt.expand(getBoundingRect(), Math.max(drawableRect$default.width(), drawableRect$default.height()));
    }
}
