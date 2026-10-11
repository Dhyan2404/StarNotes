package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.graphics.Region;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRegionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\"\u0010\u0019\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "", "isClosedShape", "", "x", "y", "radius", "hitTest", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "hitTestPoints", "Landroid/graphics/Path;", "getPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCircleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircleShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/CircleShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
/* loaded from: classes8.dex */
public final class CircleShape extends GraphicalShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: K */
    public static final float f43690K = 0.01f;

    /* renamed from: J, reason: from kotlin metadata */
    public int type;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/CircleShape$Companion;", "", "()V", "CIRCLE_LINE_THRESHOLD", "", "createPdfShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "embedShapeBean", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfShapeInfo createPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
            PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createCircleShape(), embedShapeBean);
            pdfShapeConvertUtils.setTransformMatrix(initPdfShape, embedShapeBean);
            pdfShapeConvertUtils.setGraphicalFillBitmap(initPdfShape, embedShapeBean);
            return initPdfShape;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        RectF rectF = new RectF(getDownPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY());
        Path path = new Path();
        path.addOval(rectF, Path.Direction.CW);
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            path.transform(shapeMatrix);
        }
        return path;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        float[] fArr = {getDownPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY()};
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapPoints(fArr);
        }
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        if (Math.abs(f - f3) < 0.01f || Math.abs(f2 - f4) < 0.01f) {
            return HitTestUtils.INSTANCE.hitTestLine(f, f2, f3, f4, x, y, radius);
        }
        float f5 = 2;
        return HitTestUtils.INSTANCE.circleEllipseHitTest(x, y, radius, (f + f3) / f5, (f2 + f4) / f5, Math.abs(f3 - f) / f5, Math.abs(f4 - f2) / f5);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTestPoints(@NotNull TouchPointList pointList, float radius) {
        TouchPoint touchPoint;
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        PathMeasure pathMeasure = new PathMeasure(getPath(), false);
        float length = pathMeasure.getLength();
        float[] fArr = new float[2];
        ArrayList<TouchPoint> arrayList = new ArrayList();
        float f = 0.0f;
        while (true) {
            touchPoint = null;
            if (f >= length) {
                break;
            }
            if (pathMeasure.getPosTan(f, fArr, null)) {
                arrayList.add(new TouchPoint(fArr[0], fArr[1]));
            }
            f += 1.0f;
        }
        TouchPoint touchPoint2 = null;
        for (TouchPoint touchPoint3 : pointList.getPoints()) {
            Path path = new Path();
            path.addOval(new RectF(touchPoint3.getX() - radius, touchPoint3.getY() - radius, touchPoint3.getX() + radius, touchPoint3.getY() + radius), Path.Direction.CW);
            Region createRegionByPath$default = ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, path, null, false, 6, null);
            for (TouchPoint touchPoint4 : arrayList) {
                if (createRegionByPath$default.contains((int) touchPoint4.getX(), (int) touchPoint4.getY())) {
                    return true;
                }
                if (touchPoint != null && touchPoint2 != null && HitTestUtils.INSTANCE.hitTestLine(touchPoint3.getX(), touchPoint3.getY(), touchPoint.getX(), touchPoint.getY(), touchPoint4.getX(), touchPoint4.getY(), touchPoint2.getX(), touchPoint2.getY())) {
                    return true;
                }
                touchPoint2 = touchPoint4;
            }
            touchPoint = touchPoint3;
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTransform
    public boolean isClosedShape() {
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
        return INSTANCE.createPdfShape(embedShapeBean);
    }
}
