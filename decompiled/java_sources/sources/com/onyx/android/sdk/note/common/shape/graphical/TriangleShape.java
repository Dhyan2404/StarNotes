package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J(\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0002R\"\u0010\u001e\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "", "isClosedShape", "", "x", "y", "radius", "hitTest", "x1", "y1", "x2", "y2", "Landroid/graphics/Path;", "getPath", "", "updateShapeRect", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTriangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TriangleShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/TriangleShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"})
/* loaded from: classes8.dex */
public final class TriangleShape extends GraphicalShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 8;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;", "", "()V", "createPdfShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "embedShapeBean", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfShapeInfo createPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
            PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createPolygonShape(), embedShapeBean);
            initPdfShape.setVertices(pdfShapeConvertUtils.getTriangleVertices(embedShapeBean));
            pdfShapeConvertUtils.setGraphicalFillBitmap(initPdfShape, embedShapeBean);
            return initPdfShape;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final float[] m33819a() {
        float[] fArr = {getDownPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY(), Math.abs((2 * fArr[0]) - fArr[2]), fArr[3]};
        return fArr;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        float[] m33819a = m33819a();
        Path path = new Path();
        path.moveTo(m33819a[0], m33819a[1]);
        path.lineTo(m33819a[2], m33819a[3]);
        path.lineTo(m33819a[4], m33819a[5]);
        path.close();
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
        float[] m33819a = m33819a();
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapPoints(m33819a);
        }
        HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
        return hitTestUtils.hitTestLine(m33819a[0], m33819a[1], m33819a[2], m33819a[3], x, y, radius) || hitTestUtils.hitTestLine(m33819a[0], m33819a[1], m33819a[4], m33819a[5], x, y, radius) || hitTestUtils.hitTestLine(m33819a[4], m33819a[5], m33819a[2], m33819a[3], x, y, radius);
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

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        RectF rectF = new RectF();
        m33819a();
        Path path = getPath();
        path.computeBounds(rectF, false);
        if (getOriginRect().isEmpty()) {
            setOriginRect(new RectF(rectF));
        } else {
            getOriginRect().set(rectF);
        }
        path.computeBounds(rectF, false);
        if (getBoundingRect().isEmpty()) {
            setBoundingRect(new RectF(rectF));
        } else {
            getBoundingRect().set(rectF);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x1, float y1, float x2, float y2) {
        float[] m33819a = m33819a();
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapPoints(m33819a);
        }
        HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
        return hitTestUtils.hitTestLine(m33819a[0], m33819a[1], m33819a[2], m33819a[3], x1, y1, x2, y2) || hitTestUtils.hitTestLine(m33819a[0], m33819a[1], m33819a[4], m33819a[5], x1, y1, x2, y2) || hitTestUtils.hitTestLine(m33819a[4], m33819a[5], m33819a[2], m33819a[3], x1, y1, x2, y2);
    }
}
