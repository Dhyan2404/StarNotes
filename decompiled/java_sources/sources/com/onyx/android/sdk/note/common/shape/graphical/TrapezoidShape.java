package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0017J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0002R\"\u0010\u001a\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/TrapezoidShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "", "isClosedShape", "", "x", "y", "radius", "hitTest", "", "updateShapeRect", "Landroid/graphics/Path;", "getPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TrapezoidShape extends GraphicalShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 26;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/TrapezoidShape$Companion;", "", "()V", "calculateTrapezoidPoints", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "downPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "upPoint", "pointList", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TouchPointList calculateTrapezoidPoints(@Nullable TouchPointList pointList) {
            TouchPointList touchPointList = new TouchPointList();
            if (pointList == null || pointList.size() < 1) {
                return touchPointList;
            }
            Object first = CollectionKt.getFirst(pointList.getPoints());
            Intrinsics.checkNotNull(first);
            Object last = CollectionKt.getLast(pointList.getPoints());
            Intrinsics.checkNotNull(last);
            return calculateTrapezoidPoints((TouchPoint) first, (TouchPoint) last);
        }

        public Companion() {
        }

        @NotNull
        public final TouchPointList calculateTrapezoidPoints(@NotNull TouchPoint downPoint, @NotNull TouchPoint upPoint) {
            Intrinsics.checkNotNullParameter(downPoint, "downPoint");
            Intrinsics.checkNotNullParameter(upPoint, "upPoint");
            TouchPointList touchPointList = new TouchPointList();
            float x = upPoint.getX() - downPoint.getX();
            float f = x / 2;
            touchPointList.add(new TouchPoint(downPoint.getX() + f, downPoint.getY()));
            touchPointList.add(new TouchPoint(upPoint.getX(), upPoint.getY()));
            touchPointList.add(new TouchPoint(downPoint.getX() - x, upPoint.getY()));
            touchPointList.add(new TouchPoint(downPoint.getX() - f, downPoint.getY()));
            touchPointList.add(new TouchPoint(downPoint.getX() + f, downPoint.getY()));
            return touchPointList;
        }
    }

    /* renamed from: a */
    public final TouchPointList m33818a() {
        return INSTANCE.calculateTrapezoidPoints(getDownPoint(), getCurrentPoint());
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public Path getPath() {
        Path path = new Path();
        TouchPointList m33818a = m33818a();
        path.moveTo(m33818a.get(0).getX(), m33818a.get(0).getY());
        int size = m33818a.size();
        for (int i = 1; i < size; i++) {
            path.lineTo(m33818a.get(i).getX(), m33818a.get(i).getY());
        }
        path.close();
        return path;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        TouchPointList m33818a = m33818a();
        m33818a.applyMatrix(getShapeMatrix());
        int size = m33818a.size() - 1;
        int i = 0;
        while (i < size) {
            HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
            float x2 = m33818a.get(i).getX();
            float y2 = m33818a.get(i).getY();
            i++;
            if (hitTestUtils.hitTestLine(x2, y2, m33818a.get(i).getX(), m33818a.get(i).getY(), x, y, radius)) {
                return true;
            }
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
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createPolygonShape(), embedShapeBean);
        initPdfShape.setVertices(pdfShapeConvertUtils.getPolyLineVertices(INSTANCE.calculateTrapezoidPoints(embedShapeBean.getPointList()), embedShapeBean.getMatrixValues()));
        pdfShapeConvertUtils.setGraphicalFillBitmap(initPdfShape, embedShapeBean);
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(new RectF(getDownPoint().getX() - (getCurrentPoint().getX() - getDownPoint().getX()), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY()));
        RectF rectF = new RectF(getOriginRect());
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(rectF);
        }
        setBoundingRect(rectF);
    }
}
