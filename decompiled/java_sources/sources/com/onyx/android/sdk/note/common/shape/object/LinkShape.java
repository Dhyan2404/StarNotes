package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeLinkUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J \u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0002R\"\u0010\u0019\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/LinkShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "updateShapeRect", "", "x", "y", "radius", "hitTest", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LinkShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 33;

    /* renamed from: a */
    public final void m33863a() {
        ShapeLinkUtils shapeLinkUtils = ShapeLinkUtils.INSTANCE;
        LinkModel createLinkModel = shapeLinkUtils.createLinkModel(this);
        if (createLinkModel != null) {
            int calculateLinkWidth = shapeLinkUtils.calculateLinkWidth((RenderMeasure) null, createLinkModel.loadDisplayTitle());
            int calculateLinkHeight = shapeLinkUtils.calculateLinkHeight(createLinkModel.isOnlyIconStyle());
            if (calculateLinkWidth != 0) {
                RectF pointsBoundingRect = getPointsBoundingRect();
                TouchPoint touchPoint = new TouchPoint(pointsBoundingRect.left, pointsBoundingRect.top);
                TouchPoint touchPoint2 = new TouchPoint(pointsBoundingRect.left + calculateLinkWidth, pointsBoundingRect.top + calculateLinkHeight);
                getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
                onDown(touchPoint, touchPoint);
                onUp(touchPoint2, touchPoint2);
            }
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ObjectShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        if (ShapeLinkUtils.INSTANCE.isAudioLink(this)) {
            super.hitTest(x, y, radius);
        }
        float[] fArr = {x, y};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        RectF copy = RectFKt.copy(getOriginRect());
        copy.right += ResManager.INSTANCE.getDimens(C7485R.dimen.link_padding) * 2;
        return HitTestUtils.INSTANCE.circleRectHitTest(copy, fArr[0], fArr[1], radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        float width = getOriginRect().width();
        float height = getOriginRect().height();
        if (width <= 0.0f || height <= 0.0f) {
            Debug.INSTANCE.m32044e(LinkShape.class, "origin rect width or height is error.", new Object[0]);
            return false;
        }
        Matrix renderMatrix = getRenderMatrix(renderContext);
        float minScale = MatrixKt.getMinScale(renderMatrix);
        float f = 1 / minScale;
        renderMatrix.postScale(f, f);
        MatrixKt.scaleTranslate(renderMatrix, minScale, minScale);
        Bitmap createLinkBitmap = ShapeLinkUtils.INSTANCE.createLinkBitmap(this, width, height, minScale);
        if (createLinkBitmap == null) {
            return false;
        }
        if (!BitmapKt.isValid(createLinkBitmap)) {
            Debug.INSTANCE.m32044e(LinkShape.class, "bitmap not valid", new Object[0]);
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        Matrix matrix = new Matrix();
        matrix.postTranslate(getDownPoint().getX() * minScale, getDownPoint().getY() * minScale);
        matrix.postConcat(renderMatrix);
        renderContext.getCanvas().drawBitmap(createLinkBitmap, matrix, renderContext.getPaint());
        createLinkBitmap.recycle();
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
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createLinkShape(), embedShapeBean);
        LinkModel createLinkModel = pdfShapeConvertUtils.createLinkModel(EmbedShapeBean.INSTANCE.toShape(embedShapeBean));
        if (createLinkModel == null) {
            return initPdfShape;
        }
        if (Intrinsics.areEqual(createLinkModel.getType(), "AUDIO")) {
            initPdfShape.setType(19);
            pdfShapeConvertUtils.setAudioLinkData(initPdfShape, createLinkModel);
        } else {
            pdfShapeConvertUtils.setLinkData(initPdfShape, createLinkModel);
        }
        pdfShapeConvertUtils.setTransformMatrix(initPdfShape, pdfShapeConvertUtils.getTransformRectF(embedShapeBean, getOriginRect()));
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        m33863a();
        super.updateShapeRect();
    }
}
