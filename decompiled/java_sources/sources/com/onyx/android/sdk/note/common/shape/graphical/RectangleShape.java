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

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0016\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J(\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\"\u0010\u001a\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "", "isClosedShape", "", "x", "y", "radius", "hitTest", "x1", "y1", "x2", "y2", "Landroid/graphics/Path;", "getPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRectangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectangleShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/RectangleShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"})
/* loaded from: classes8.dex */
public class RectangleShape extends GraphicalShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 1;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;", "", "()V", "createPdfShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "embedShapeBean", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfShapeInfo createPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
            PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createSquareShape(), embedShapeBean);
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
        path.addRect(rectF, Path.Direction.CW);
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
        HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
        float f = fArr[0];
        if (!hitTestUtils.hitTestLine(f, fArr[1], f, fArr[3], x, y, radius)) {
            float f2 = fArr[0];
            float f3 = fArr[1];
            if (!hitTestUtils.hitTestLine(f2, f3, fArr[2], f3, x, y, radius)) {
                float f4 = fArr[0];
                float f5 = fArr[3];
                if (!hitTestUtils.hitTestLine(f4, f5, fArr[2], f5, x, y, radius)) {
                    float f6 = fArr[2];
                    if (!hitTestUtils.hitTestLine(f6, fArr[1], f6, fArr[3], x, y, radius)) {
                        return false;
                    }
                }
            }
        }
        return true;
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

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x1, float y1, float x2, float y2) {
        float[] fArr = {getDownPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY(), getDownPoint().getX(), getCurrentPoint().getY()};
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapPoints(fArr);
        }
        HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
        return hitTestUtils.hitTestLine(fArr[0], fArr[1], fArr[2], fArr[3], x1, y1, x2, y2) || hitTestUtils.hitTestLine(fArr[2], fArr[3], fArr[4], fArr[5], x1, y1, x2, y2) || hitTestUtils.hitTestLine(fArr[4], fArr[5], fArr[6], fArr[7], x1, y1, x2, y2) || hitTestUtils.hitTestLine(fArr[6], fArr[7], fArr[0], fArr[1], x1, y1, x2, y2);
    }
}
