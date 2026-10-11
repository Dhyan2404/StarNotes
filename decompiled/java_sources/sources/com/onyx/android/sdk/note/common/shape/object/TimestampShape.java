package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.timestamp.ShapeTimestampBean;
import com.onyx.android.sdk.note.common.data.timestamp.TimestampBean;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeTimestampUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\b\u0010\f\u001a\u00020\nH\u0016J \u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\"\u0010\u001e\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/TimestampShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "Landroid/graphics/RectF;", "rect", "", "text", "", "drawTextByCenter", "updateShapeRect", "", "x", "y", "radius", "hitTest", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TimestampShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 38;

    /* renamed from: a */
    public final void m33884a(RenderContext renderContext, RectF rect) {
        Matrix matrix = new Matrix();
        float f = 2;
        matrix.postTranslate(getDownPoint().getX() + (getStrokeWidth() / f), getDownPoint().getY() + (getStrokeWidth() / f));
        matrix.postConcat(getRenderMatrix(renderContext));
        Bitmap backgroundBitmap = ShapeTimestampUtils.INSTANCE.getBackgroundBitmap(rect.width() - getStrokeWidth(), rect.height() - getStrokeWidth());
        if (backgroundBitmap == null) {
            return;
        }
        renderContext.getCanvas().drawBitmap(backgroundBitmap, matrix, renderContext.getPaint());
    }

    public final void drawTextByCenter(@NotNull RenderContext renderContext, @NotNull RectF rect, @NotNull String text) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(text, "text");
        Matrix renderMatrix = getRenderMatrix(renderContext);
        Paint paint = renderContext.getPaint();
        paint.setTextSize(ResManager.INSTANCE.getDimens(C7485R.dimen.timestamp_name_text_size) * MatrixKt.getMaxScale(renderMatrix));
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setStrokeWidth(getStrokeWidth());
        paint.setTextAlign(Paint.Align.CENTER);
        renderMatrix.mapRect(rect);
        renderContext.getCanvas().drawText(text, rect.centerX(), rect.centerY() - ((paint.descent() + paint.ascent()) / 2), paint);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ObjectShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        float[] fArr = {x, y};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        return HitTestUtils.INSTANCE.circleRectHitTest(getOriginRect(), fArr[0], fArr[1], radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        ShapeTimestampBean shapeTimestampBean;
        String formattedStr;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext) || (shapeTimestampBean = ShapeTimestampUtils.INSTANCE.getShapeTimestampBean(this)) == null) {
            return false;
        }
        Paint.Style style = renderContext.getPaint().getStyle();
        Intrinsics.checkNotNullExpressionValue(style, "getStyle(...)");
        float textSize = renderContext.getPaint().getTextSize();
        RectF rectF = new RectF(getOriginRect());
        if (!shapeTimestampBean.getIsNoFrame()) {
            m33884a(renderContext, rectF);
        }
        TimestampBean timestampBean = shapeTimestampBean.getTimestampBean();
        if (timestampBean == null || (formattedStr = timestampBean.getFormattedStr()) == null) {
            return false;
        }
        drawTextByCenter(renderContext, rectF, formattedStr);
        renderContext.getPaint().setStyle(style);
        renderContext.getPaint().setTextSize(textSize);
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
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createImageShape(), embedShapeBean);
        pdfShapeConvertUtils.setTimestampBitmap(initPdfShape, embedShapeBean);
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        if (StringUtils.isBlank(ShapeTimestampUtils.INSTANCE.getFormatStr(this))) {
            return;
        }
        float x = getDownPoint().getX();
        float y = getDownPoint().getY();
        setOriginRect(new RectF(x, y, r0.calculateTimestampWidth(r1, null) + x, r0.getTimestampHeight() + y));
        setBoundingRect(new RectF(getOriginRect()));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }
}
