package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.text.TextShapeRender;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeTextUtils;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.data.shape.TransformRectF;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002R\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00188V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/EditTextShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "updateShapeRect", "recycle", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "a", "b", "c", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "", "value", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditTextShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 16;

    /* renamed from: a */
    public final boolean m33849a(RenderContext renderContext) {
        Rect contentRect = renderContext.getContentRect();
        if (RectKt.isNullOrEmpty(contentRect)) {
            contentRect.set((Rect) AnyKt.transform(renderContext.getCanvas(), new Function1<Canvas, Rect>() { // from class: com.onyx.android.sdk.note.common.shape.object.EditTextShape$inVisualRect$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Rect invoke(@NotNull Canvas it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new Rect(0, 0, it2.getWidth(), it2.getHeight());
                }
            }));
        }
        RectF rectF = new RectF(getOriginRect());
        getRenderMatrix(renderContext).mapRect(rectF);
        RectUtils rectUtils = RectUtils.INSTANCE;
        return rectUtils.isIntersect(rectF, rectUtils.toRectF(contentRect));
    }

    /* renamed from: b */
    public final PdfShapeInfo m33850b(EmbedShapeBean embedShapeBean) {
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createImageShape(), embedShapeBean);
        pdfShapeConvertUtils.setTextBitmap(initPdfShape, embedShapeBean);
        return initPdfShape;
    }

    /* renamed from: c */
    public final PdfShapeInfo m33851c(EmbedShapeBean embedShapeBean) {
        PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createFreeTextShape(), embedShapeBean);
        Shape shape = EmbedShapeBean.INSTANCE.toShape(embedShapeBean);
        shape.updateShapeRect();
        ShapeTextStyle textStyle = shape.getTextStyle();
        if (textStyle == null) {
            textStyle = new ShapeTextStyle();
        }
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        RectF rectF = new RectF(shape.getOriginRect());
        Matrix shapeMatrix = shape.getShapeMatrix();
        if (shapeMatrix == null) {
            shapeMatrix = new Matrix();
        }
        TransformRectF transformRect = shapeMatrixUtils.getTransformRect(rectF, shapeMatrix);
        initPdfShape.setFontcolor(embedShapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_COLOR java.lang.String());
        initPdfShape.setColor(-1);
        initPdfShape.setRect(transformRect.getOriginRectF());
        initPdfShape.setFontSize(textStyle.getTextSize());
        initPdfShape.setCustomAttr(embedShapeBean.getExtraAttr());
        initPdfShape.setExtraAttr(JSONUtils.INSTANCE.toJson(textStyle));
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public float getStrokeWidth() {
        return 0.0f;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeResAttributes
    public void recycle() {
        super.recycle();
        TextRenderUtil.INSTANCE.recycle(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (isIntersectClipRect(renderContext) && !getOriginRect().isEmpty() && m33849a(renderContext)) {
            return new TextShapeRender(renderContext, this).render();
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setStrokeWidth(float f) {
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return ShapeTextUtils.INSTANCE.hasPdfUnrenderableChars(embedShapeBean.getRenderText()) ? m33850b(embedShapeBean) : m33851c(embedShapeBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        ShapeTextStyle textStyle = getTextStyle();
        if (textStyle == null) {
            return;
        }
        float x = getDownPoint().getX();
        float y = getDownPoint().getY();
        if (getTextStyle() != null) {
            setTextStyle(textStyle.m72374clone());
            if (textStyle.getTextWidth() > 0.0f && textStyle.getTextHeight() > 0.0f) {
                setOriginRect(new RectF(x, y, textStyle.getTextWidth() + x, textStyle.getTextHeight() + y));
            }
            Debug.INSTANCE.m32052i(EditTextShape.class, "text shape: w=" + textStyle.getTextWidth() + ", h=" + textStyle.getTextHeight(), new Object[0]);
        }
        setBoundingRect(new RectF(getOriginRect()));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
        Debug.INSTANCE.m32052i(EditTextShape.class, "shape rect: " + getBoundingRect(), new Object[0]);
    }
}
