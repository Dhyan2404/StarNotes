package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.data.line.ArrowStyle;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b*\u0010+J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8V@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "x", "y", "radius", "hitTest", "Landroid/graphics/Path;", "getPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "Landroid/graphics/Matrix;", "renderMatrix", "", "b", "a", "", "K", "I", "getType", "()I", "setType", "(I)V", "type", "Landroid/graphics/RectF;", "L", "Landroid/graphics/RectF;", "getOriginRect", "()Landroid/graphics/RectF;", "setOriginRect", "(Landroid/graphics/RectF;)V", "originRect", "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;", "c", "()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;", "arrowStyle", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ArrowLineShape extends LineShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: K, reason: from kotlin metadata */
    public int type = 28;

    /* renamed from: L, reason: from kotlin metadata */
    @NotNull
    public RectF originRect = new RectF();

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J&\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J.\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J(\u0010\u0014\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "upPoint", "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;", "arrowStyle", "", "Landroid/graphics/Path;", "getArrowsPath", "", "arrowLinePoint", "a", ExtUnits.UNIT_PX, "py", "", "angle", "arrowLen", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final List<Path> m33814a(TouchPoint downPoint, TouchPoint upPoint, float strokeWidth, ArrowStyle arrowStyle) {
            float x = upPoint.getX();
            float y = upPoint.getY();
            float[] arrowLinePoint = arrowLinePoint(downPoint, upPoint, strokeWidth, arrowStyle);
            ArrayList arrayList = new ArrayList();
            Path path = new Path();
            path.moveTo(x, y);
            path.lineTo(arrowLinePoint[0], arrowLinePoint[1]);
            Path path2 = new Path();
            path2.moveTo(x, y);
            path2.lineTo(arrowLinePoint[2], arrowLinePoint[3]);
            arrayList.add(path);
            arrayList.add(path2);
            return arrayList;
        }

        @NotNull
        public final float[] arrowLinePoint(@NotNull TouchPoint downPoint, @NotNull TouchPoint upPoint, float strokeWidth, @NotNull ArrowStyle arrowStyle) {
            Intrinsics.checkNotNullParameter(downPoint, "downPoint");
            Intrinsics.checkNotNullParameter(upPoint, "upPoint");
            Intrinsics.checkNotNullParameter(arrowStyle, "arrowStyle");
            float x = downPoint.getX();
            float y = downPoint.getY();
            float x2 = upPoint.getX();
            float y2 = upPoint.getY();
            float arrowLenFactor = arrowStyle.getArrowLenFactor() * strokeWidth;
            float f = x2 - x;
            float f2 = y2 - y;
            double atan = (float) Math.atan(arrowStyle.getHalfBottomLine() / arrowStyle.getArrowHeight());
            double d = arrowLenFactor;
            float[] m33815b = m33815b(f, f2, atan, d);
            float[] m33815b2 = m33815b(f, f2, -atan, d);
            return new float[]{x2 - m33815b[0], y2 - m33815b[1], x2 - m33815b2[0], y2 - m33815b2[1]};
        }

        /* renamed from: b */
        public final float[] m33815b(float px, float py, double angle, double arrowLen) {
            double d = px;
            double d2 = py;
            double cos = (Math.cos(angle) * d) - (Math.sin(angle) * d2);
            double sin = (d * Math.sin(angle)) + (d2 * Math.cos(angle));
            double sqrt = Math.sqrt((cos * cos) + (sin * sin));
            return new float[]{(float) ((cos / sqrt) * arrowLen), (float) ((sin / sqrt) * arrowLen)};
        }

        @NotNull
        public final List<Path> getArrowsPath(@NotNull TouchPoint downPoint, @NotNull TouchPoint upPoint, float strokeWidth, @NotNull ArrowStyle arrowStyle) {
            List<Path> emptyList;
            Intrinsics.checkNotNullParameter(downPoint, "downPoint");
            Intrinsics.checkNotNullParameter(upPoint, "upPoint");
            Intrinsics.checkNotNullParameter(arrowStyle, "arrowStyle");
            if (arrowStyle.getDirection() == 0) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            int direction = arrowStyle.getDirection();
            if (direction == 1) {
                return m33814a(upPoint, downPoint, strokeWidth, arrowStyle);
            }
            if (direction != 2 && direction == 3) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(m33814a(upPoint, downPoint, strokeWidth, arrowStyle));
                arrayList.addAll(m33814a(downPoint, upPoint, strokeWidth, arrowStyle));
                return arrayList;
            }
            return m33814a(downPoint, upPoint, strokeWidth, arrowStyle);
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final void m33811a(RenderContext renderContext, Matrix renderMatrix) {
        for (Path path : INSTANCE.getArrowsPath(getDownPoint(), getCurrentPoint(), getStrokeWidth(), m33813c())) {
            path.transform(renderMatrix);
            renderContext.getCanvas().drawPath(path, renderContext.getPaint());
        }
    }

    /* renamed from: b */
    public final void m33812b(RenderContext renderContext, Matrix renderMatrix) {
        Path path = new Path();
        path.moveTo(getDownPoint().getX(), getDownPoint().getY());
        path.lineTo(getCurrentPoint().getX(), getCurrentPoint().getY());
        path.transform(renderMatrix);
        renderContext.getCanvas().drawPath(path, renderContext.getPaint());
    }

    /* renamed from: c */
    public final ArrowStyle m33813c() {
        ArrowStyle.Companion companion = ArrowStyle.INSTANCE;
        ArrowStyle arrowStyle = companion.getDEFAULT();
        ShapeLineStyle shapeLineStyle = ShapeOptions.INSTANCE.getShapeLineStyle(this);
        if (shapeLineStyle == null || shapeLineStyle.getArrowStyle() == null) {
            return arrowStyle;
        }
        ArrowStyle arrowStyle2 = shapeLineStyle.getArrowStyle();
        if (arrowStyle2 == null) {
            arrowStyle2 = companion.getDEFAULT();
        }
        return arrowStyle2;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public RectF getOriginRect() {
        float[] arrowLinePoint = INSTANCE.arrowLinePoint(getDownPoint(), getCurrentPoint(), getStrokeWidth(), ArrowStyle.INSTANCE.getDEFAULT());
        this.originRect.union(arrowLinePoint[0], arrowLinePoint[1]);
        this.originRect.union(arrowLinePoint[2], arrowLinePoint[3]);
        return this.originRect;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        ArrayList<Path> arrayList = new ArrayList(INSTANCE.getArrowsPath(getDownPoint(), getCurrentPoint(), getStrokeWidth(), m33813c()));
        for (Path path : arrayList) {
            Matrix shapeMatrix = getShapeMatrix();
            Intrinsics.checkNotNull(shapeMatrix);
            path.transform(shapeMatrix);
        }
        Path path2 = new Path();
        path2.moveTo(getDownPoint().getX(), getDownPoint().getY());
        path2.lineTo(getCurrentPoint().getX(), getCurrentPoint().getY());
        Matrix shapeMatrix2 = getShapeMatrix();
        Intrinsics.checkNotNull(shapeMatrix2);
        path2.transform(shapeMatrix2);
        arrayList.add(path2);
        Path path3 = new Path();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            path3.addPath((Path) it2.next());
        }
        return path3;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        float[] fArr = {getDownPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY()};
        float[] arrowLinePoint = INSTANCE.arrowLinePoint(getDownPoint(), getCurrentPoint(), getStrokeWidth(), ArrowStyle.INSTANCE.getDEFAULT());
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapPoints(fArr);
        }
        Matrix shapeMatrix2 = getShapeMatrix();
        if (shapeMatrix2 != null) {
            shapeMatrix2.mapPoints(arrowLinePoint);
        }
        HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
        if (hitTestUtils.hitTestLine(fArr[0], fArr[1], fArr[2], fArr[3], x, y, radius) || hitTestUtils.hitTestLine(arrowLinePoint[0], arrowLinePoint[1], fArr[2], fArr[3], x, y, radius)) {
            return true;
        }
        return hitTestUtils.hitTestLine(arrowLinePoint[2], arrowLinePoint[3], fArr[2], fArr[3], x, y, radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.GraphicalShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        Matrix renderMatrix = getRenderMatrix(renderContext);
        m33812b(renderContext, renderMatrix);
        m33811a(renderContext, renderMatrix);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setOriginRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.originRect = rectF;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createLineShape(), embedShapeBean);
        initPdfShape.setLineArrowDirection(2);
        initPdfShape.setVertices(pdfShapeConvertUtils.getPolyLineVertices(embedShapeBean));
        return initPdfShape;
    }
}
