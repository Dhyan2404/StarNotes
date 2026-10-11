package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0016\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J(\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\"\u0010\u0019\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "", "x", "y", "radius", "", "hitTest", "x1", "y1", "x2", "y2", "Landroid/graphics/Path;", "getPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLineShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/LineShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
/* loaded from: classes8.dex */
public class LineShape extends GraphicalShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 7;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape$Companion;", "", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "createPdfShape", "", PointConstant.POINT_FILE_END, "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final float[] m33816a(float[] points) {
            int length = points.length;
            return length <= 4 ? points : new float[]{points[0], points[1], points[length - 2], points[length - 1]};
        }

        @NotNull
        public final PdfShapeInfo createPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
            PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createLineShape(), embedShapeBean);
            initPdfShape.setVertices(LineShape.INSTANCE.m33816a(pdfShapeConvertUtils.getPolyLineVertices(embedShapeBean)));
            return initPdfShape;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        Path path = new Path();
        path.moveTo(getDownPoint().getX(), getDownPoint().getY());
        path.lineTo(getCurrentPoint().getX(), getCurrentPoint().getY());
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
        TouchPointList renderPoints = getRenderPoints();
        return HitTestUtils.INSTANCE.hitTestLine(renderPoints.get(0).getX(), renderPoints.get(0).getY(), renderPoints.get(1).getX(), renderPoints.get(1).getY(), x, y, radius);
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
        TouchPointList renderPoints = getRenderPoints();
        return HitTestUtils.INSTANCE.hitTestLine(renderPoints.get(0).getX(), renderPoints.get(0).getY(), renderPoints.get(1).getX(), renderPoints.get(1).getY(), x1, y1, x2, y2);
    }
}
