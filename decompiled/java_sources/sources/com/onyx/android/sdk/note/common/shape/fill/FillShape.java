package com.onyx.android.sdk.note.common.shape.fill;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.ShapeTests;
import com.onyx.android.sdk.note.common.utils.FillShapeSplitter;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeFillUtils;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.replicator.note.data.shape.TransformRectF;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J.\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0016J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\b\u0010!\u001a\u00020 H\u0016J\u0010\u0010\"\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010#\u001a\u00020\u000eH\u0002R\"\u0010+\u001a\u00020$8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "x", "y", "radius", "hitTest", "", "Landroid/graphics/RectF;", "ensureUpdateFillRectList", "", "onRectChanged", "containPoint", "x1", "y1", "x2", "y2", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "hitTestPoint", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "testData", "a", "b", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "K", "Ljava/util/List;", "fillRectList", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FillShape extends BaseShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 37;

    /* renamed from: K, reason: from kotlin metadata */
    @NotNull
    public final List<RectF> fillRectList = new ArrayList();

    /* renamed from: a */
    public final void m33809a(RenderContext renderContext) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(getFillColor());
        paint.setAntiAlias(true);
        paint.setStrokeWidth(ShapeRenders.INSTANCE.getRenderStrokeWidth(this, renderContext));
        if (ShapeOptions.INSTANCE.isTransparent(this)) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        } else {
            paint.setXfermode(null);
        }
        ensureUpdateFillRectList();
        Path path = new Path();
        Matrix renderMatrix = getRenderMatrix(renderContext);
        for (RectF rectF : this.fillRectList) {
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            float floatValue = FLOAT_ONE.floatValue();
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            path.addRoundRect(rectF, floatValue, FLOAT_ONE.floatValue(), Path.Direction.CW);
        }
        path.transform(renderMatrix);
        renderContext.getCanvas().drawPath(path, paint);
    }

    /* renamed from: b */
    public final void m33810b() {
        this.fillRectList.clear();
        this.fillRectList.addAll(ShapeFillUtils.INSTANCE.createFillRectF(getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()));
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean containPoint(float x, float y) {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        if (fastHitTest(x, y, FLOAT_ONE.floatValue())) {
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            if (hitTest(x, y, FLOAT_ONE.floatValue())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<RectF> ensureUpdateFillRectList() {
        if (this.fillRectList.isEmpty()) {
            m33810b();
        }
        return this.fillRectList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        ensureUpdateFillRectList();
        RectF rectF = new RectF(x - radius, y - radius, x + radius, y + radius);
        MatrixKt.invertMatrix(getShapeMatrix()).mapRect(rectF);
        Iterator<RectF> it2 = this.fillRectList.iterator();
        while (it2.hasNext()) {
            if (RectF.intersects(it2.next(), rectF)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public List<TouchPoint> hitTestPoint(float x1, float y1, float x2, float y2) {
        ensureUpdateFillRectList();
        ArrayList arrayList = new ArrayList();
        float[] fArr = {x1, y1, x2, y2};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        for (RectF rectF : this.fillRectList) {
            if (RectF.intersects(rectF, new RectF(fArr[0], fArr[1], fArr[2], fArr[3]))) {
                arrayList.add(new TouchPoint(rectF.left, rectF.top));
                arrayList.add(new TouchPoint(rectF.right, rectF.bottom));
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((TouchPoint) it2.next()).applyMatrix(getShapeMatrix());
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape
    public void onRectChanged() {
        super.onRectChanged();
        m33810b();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        m33809a(renderContext);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return FillShapeSplitter.INSTANCE.split(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTest
    @NotNull
    public Shape testData() {
        ShapeTests.INSTANCE.addTestPoints(this, 100);
        return super.testData();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createStampShape(), embedShapeBean);
        pdfShapeConvertUtils.setFillBitmap(initPdfShape, embedShapeBean);
        Shape shape = EmbedShapeBean.INSTANCE.toShape(embedShapeBean);
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        RectF rectF = new RectF(shape.getOriginRect());
        Matrix shapeMatrix = shape.getShapeMatrix();
        if (shapeMatrix == null) {
            shapeMatrix = new Matrix();
        }
        TransformRectF transformRect = shapeMatrixUtils.getTransformRect(rectF, shapeMatrix);
        initPdfShape.setRect(transformRect.getOriginRectF());
        initPdfShape.setMatrix(MatrixKt.getMatrixValue(pdfShapeConvertUtils.getTransformMatrix(transformRect)));
        return initPdfShape;
    }
}
