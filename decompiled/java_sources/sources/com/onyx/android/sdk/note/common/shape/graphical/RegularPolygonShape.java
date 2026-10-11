package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.PolygonShapeUtils;
import com.onyx.android.sdk.note.common.utils.ShapeConstant;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0002R\"\u0010\u001a\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0015\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "", "isClosedShape", "", "x", "y", "radius", "hitTest", "", "updateShapeRect", "Landroid/graphics/Path;", "getPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "K", "getSideNum", "setSideNum", "sideNum", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRegularPolygonShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegularPolygonShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/RegularPolygonShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"})
/* loaded from: classes8.dex */
public class RegularPolygonShape extends GraphicalShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 24;

    /* renamed from: K, reason: from kotlin metadata */
    public int sideNum = ShapeConstant.INSTANCE.getSHAPE_REGULAR_POLYGON_SIZE_NUM();

    /* renamed from: a */
    public final TouchPointList m33817a() {
        return PolygonShapeUtils.INSTANCE.calculatePolygonPoints(getDownPoint(), getCurrentPoint(), getSideNum());
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        TouchPointList m33817a = m33817a();
        Path path = new Path();
        path.moveTo(m33817a.get(0).getX(), m33817a.get(0).getY());
        int size = m33817a.size();
        for (int i = 1; i < size; i++) {
            path.lineTo(m33817a.get(i).getX(), m33817a.get(i).getY());
        }
        path.close();
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            path.transform(shapeMatrix);
        }
        return path;
    }

    public int getSideNum() {
        return this.sideNum;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        TouchPointList m33817a = m33817a();
        m33817a.applyMatrix(getShapeMatrix());
        int size = m33817a.size() - 1;
        int i = 0;
        while (i < size) {
            HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
            float x2 = m33817a.get(i).getX();
            float y2 = m33817a.get(i).getY();
            i++;
            if (hitTestUtils.hitTestLine(x2, y2, m33817a.get(i).getX(), m33817a.get(i).getY(), x, y, radius)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTransform
    public boolean isClosedShape() {
        return true;
    }

    public void setSideNum(int i) {
        this.sideNum = i;
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
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createPolygonShape(), embedShapeBean);
        initPdfShape.setVertices(pdfShapeConvertUtils.getPolyLineVertices(PolygonShapeUtils.INSTANCE.calculatePolygonPoints(embedShapeBean.getPointList(), ShapeConstant.INSTANCE.getSHAPE_REGULAR_POLYGON_SIZE_NUM()), embedShapeBean.getMatrixValues()));
        pdfShapeConvertUtils.setGraphicalFillBitmap(initPdfShape, embedShapeBean);
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        RectF rectF = new RectF();
        Path path = getPath();
        path.computeBounds(rectF, false);
        setOriginRect(rectF);
        path.computeBounds(rectF, false);
        setBoundingRect(rectF);
    }
}
