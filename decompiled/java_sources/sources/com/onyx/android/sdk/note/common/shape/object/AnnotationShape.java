package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PaintKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.graphical.LineShape;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBeanKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b;\u0010<J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\tH\u0016J \u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u001e\u0010\u0017\u001a\u00020\u00072\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010\u001c\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00150\u001aH\u0002J\u001e\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00150\u001aH\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0002J\u001e\u0010 \u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00150\u001aH\u0002J\b\u0010!\u001a\u00020\u0002H\u0002J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010#\u001a\u00020\u000fH\u0002J\u0010\u0010$\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010&\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00150\u001aH\u0002J\u0010\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020\u0015H\u0002J\u0010\u0010,\u001a\u00020*2\u0006\u0010)\u001a\u00020\u0015H\u0002J\u0010\u0010-\u001a\u00020*2\u0006\u0010)\u001a\u00020\u0015H\u0002J\u000e\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002R\"\u00105\u001a\u00020\u001e8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0014\u00108\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u0010:\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b9\u00107¨\u0006="}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "", "underContent", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "render", "", "updateShapeRect", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "toPdfHighlight", "", "x", "y", "radius", "hitTest", "", "Landroid/graphics/RectF;", "textRegionList", "e", "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", PrivilegedApp.f6532i, "", "rectList", "b", "c", "", C6998g.f39679a, "d", "p", C4921e.f26537n, "j", "i", "rectangles", C6997f.f39671c, "Landroid/graphics/Paint;", "a", "rect", "Landroid/graphics/Path;", GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "l", "q", "J", "I", "getType", "()I", "setType", "(I)V", "type", "m", "()F", "wavyLength", C4921e.f26528e, "wavyPeak", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAnnotationShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationShape.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n1549#2:316\n1620#2,3:317\n766#2:320\n857#2,2:321\n1855#2,2:323\n1855#2,2:325\n1855#2,2:327\n1864#2,3:329\n1747#2,3:332\n*S KotlinDebug\n*F\n+ 1 AnnotationShape.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShape\n*L\n76#1:316\n76#1:317,3\n81#1:320\n81#1:321,2\n122#1:323,2\n139#1:325,2\n181#1:327,2\n278#1:329,3\n311#1:332,3\n*E\n"})
/* loaded from: classes8.dex */
public final class AnnotationShape extends BaseShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 9;

    public AnnotationShape() {
        ShapePersistOptionsKt.setBottom(this, true);
    }

    /* renamed from: a */
    public final Paint m33825a(RenderContext renderContext) {
        Paint paint = new Paint();
        paint.setColor(m33831g());
        paint.setStrokeWidth(m33833i(renderContext));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        return paint;
    }

    /* renamed from: b */
    public final void m33826b(AnnotationInfoBean info, RenderContext renderContext, List<? extends RectF> rectList) {
        if (info == null) {
            m33827c(renderContext, rectList);
            return;
        }
        int style = info.getStyle();
        if (style == 0) {
            m33827c(renderContext, rectList);
            return;
        }
        if (style == 1) {
            m33828d(renderContext, rectList);
        } else if (style != 3) {
            m33827c(renderContext, rectList);
        } else {
            m33830f(renderContext, rectList);
        }
    }

    /* renamed from: c */
    public final void m33827c(RenderContext renderContext, List<? extends RectF> rectList) {
        Canvas canvas = renderContext.getCanvas();
        Paint paint = new Paint();
        paint.setColor(m33831g());
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DARKEN));
        Iterator<T> it2 = rectList.iterator();
        while (it2.hasNext()) {
            canvas.drawRect((RectF) it2.next(), paint);
        }
    }

    /* renamed from: d */
    public final void m33828d(RenderContext renderContext, List<? extends RectF> rectList) {
        Path path;
        Paint copy = PaintKt.copy(renderContext.getPaint());
        copy.setColor(m33831g());
        copy.setStrokeWidth(m33833i(renderContext));
        float m33835k = m33835k(renderContext);
        boolean m33840p = m33840p();
        Matrix renderMatrix = getRenderMatrix(renderContext);
        Matrix invertMatrix = MatrixKt.invertMatrix(renderMatrix);
        Iterator<T> it2 = rectList.iterator();
        while (it2.hasNext()) {
            RectF copy2 = RectFKt.copy((RectF) it2.next());
            if (m33840p) {
                copy2.left -= m33835k;
                invertMatrix.mapRect(copy2);
                path = new Path();
                path.moveTo(copy2.left, copy2.top);
                path.lineTo(copy2.left, copy2.bottom);
            } else {
                copy2.bottom += m33835k;
                invertMatrix.mapRect(copy2);
                path = new Path();
                path.moveTo(copy2.left, copy2.bottom);
                path.lineTo(copy2.right, copy2.bottom);
            }
            path.transform(renderMatrix);
            renderContext.getCanvas().drawPath(path, copy);
        }
    }

    /* renamed from: e */
    public final void m33829e(List<RectF> textRegionList, RenderContext renderContext) {
        int collectionSizeOrDefault;
        AnnotationInfoBean annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(this);
        List<RectF> list = textRegionList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            RectF copy = RectFKt.copy((RectF) it2.next());
            Matrix shapeMatrix = getShapeMatrix();
            if (shapeMatrix != null) {
                shapeMatrix.mapRect(copy);
            }
            renderContext.getMatrix().mapRect(copy);
            arrayList.add(copy);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!RectKt.isEmptyOnScreen$default((RectF) obj, 0.0f, 1, null)) {
                arrayList2.add(obj);
            }
        }
        m33826b(annotationInfoBean, renderContext, arrayList2);
    }

    /* renamed from: f */
    public final void m33830f(RenderContext renderContext, List<? extends RectF> rectangles) {
        Matrix renderMatrix = getRenderMatrix(renderContext);
        float m33833i = m33833i(renderContext);
        Matrix invertMatrix = MatrixKt.invertMatrix(renderMatrix);
        Paint m33825a = m33825a(renderContext);
        Iterator<T> it2 = rectangles.iterator();
        while (it2.hasNext()) {
            RectF copy = RectFKt.copy((RectF) it2.next());
            if (m33840p()) {
                copy.left -= m33833i;
            } else {
                copy.bottom += m33833i;
            }
            invertMatrix.mapRect(copy);
            Path m33838n = m33838n(copy);
            m33838n.transform(renderMatrix);
            renderContext.getCanvas().drawPath(m33838n, m33825a);
        }
    }

    /* renamed from: g */
    public final int m33831g() {
        AnnotationInfoBean annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(this);
        return annotationInfoBean != null ? annotationInfoBean.getColor() : getStrokeColor();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    /* renamed from: h */
    public final Path m33832h(RectF rect) {
        float width = rect.width();
        Path path = new Path();
        path.moveTo(rect.left, rect.bottom);
        float m33837m = m33837m();
        float m33839o = m33839o();
        int i = (int) (width / m33837m);
        for (int i2 = 0; i2 < i; i2++) {
            float f = m33837m / 4;
            float f2 = m33837m / 2;
            path.rQuadTo(f, m33839o, f2, 0.0f);
            path.rQuadTo(f, -m33839o, f2, 0.0f);
        }
        float f3 = width - (i * m33837m);
        float f4 = m33837m / 2;
        if (f3 > f4) {
            path.rQuadTo(m33837m / 4, m33839o, f4, 0.0f);
        }
        return path;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        float[] fArr = {x, y};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        List<RectF> m33841q = m33841q();
        if ((m33841q instanceof Collection) && m33841q.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = m33841q.iterator();
        while (it2.hasNext()) {
            if (HitTestUtils.INSTANCE.circleRectHitTest((RectF) it2.next(), fArr[0], fArr[1], radius)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final float m33833i(RenderContext renderContext) {
        return MatrixKt.getScaledFloat(getRenderMatrix(renderContext), ResManager.INSTANCE.getDimension(C7485R.dimen.highlight_line_stroke_width));
    }

    /* renamed from: j */
    public final float m33834j() {
        return ResManager.INSTANCE.getDimension(C7485R.dimen.underline_offset);
    }

    /* renamed from: k */
    public final float m33835k(RenderContext renderContext) {
        return MatrixKt.getScaledFloat(getRenderMatrix(renderContext), m33834j());
    }

    /* renamed from: l */
    public final Path m33836l(RectF rect) {
        float height = rect.height();
        Path path = new Path();
        path.moveTo(rect.left, rect.top);
        float m33837m = m33837m();
        float m33839o = m33839o();
        int i = (int) (height / m33837m);
        for (int i2 = 0; i2 < i; i2++) {
            float f = m33837m / 4;
            float f2 = m33837m / 2;
            path.rQuadTo(m33839o, f, 0.0f, f2);
            path.rQuadTo(-m33839o, f, 0.0f, f2);
        }
        float f3 = height - (i * m33837m);
        float f4 = m33837m / 2;
        if (f3 > f4) {
            path.rQuadTo(m33839o, m33837m / 4, 0.0f, f4);
        }
        return path;
    }

    /* renamed from: m */
    public final float m33837m() {
        return 24.0f;
    }

    /* renamed from: n */
    public final Path m33838n(RectF rect) {
        return m33840p() ? m33836l(rect) : m33832h(rect);
    }

    /* renamed from: o */
    public final float m33839o() {
        return ResManager.INSTANCE.getDimension(C7485R.dimen.highlight_wavy_line_peak);
    }

    /* renamed from: p */
    public final boolean m33840p() {
        return AnnotationInfoBeanKt.isVertical(ShapePersistOptionsKt.getAnnotationInfoBean(this));
    }

    /* renamed from: q */
    public final List<RectF> m33841q() {
        Object orNull;
        List<TouchPoint> points = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, points.size() - 1, 2);
        if (progressionLastElement >= 0) {
            while (true) {
                TouchPoint touchPoint = points.get(i);
                orNull = CollectionsKt___CollectionsKt.getOrNull(points, i + 1);
                TouchPoint touchPoint2 = (TouchPoint) orNull;
                if (touchPoint2 != null) {
                    arrayList.add(new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()));
                    if (i == progressionLastElement) {
                        break;
                    }
                    i += 2;
                } else {
                    break;
                }
            }
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        m33829e(m33841q(), renderContext);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @Nullable
    public PdfHighlightInfo toPdfHighlight(@NotNull EmbedShapeBean embedShapeBean) {
        String str;
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        AnnotationInfoBean annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(this);
        if (annotationInfoBean == null) {
            return null;
        }
        List<RectF> rectFList = annotationInfoBean.getRectFList();
        if (rectFList.isEmpty()) {
            Debug.INSTANCE.m32059w(AnnotationShape.class, "rectangles are empty, create pdf highlight fail.", new Object[0]);
            return null;
        }
        Matrix matrix = embedShapeBean.getMatrix();
        float[] fArr = new float[rectFList.size() * 4];
        int i = 0;
        for (Object obj : rectFList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            RectF copy = RectFKt.copy((RectF) obj);
            matrix.mapRect(copy);
            int i3 = i * 4;
            fArr[i3] = copy.left;
            fArr[i3 + 1] = copy.top;
            fArr[i3 + 2] = copy.right;
            fArr[i3 + 3] = copy.bottom;
            i = i2;
        }
        int color = annotationInfoBean.getColor();
        if (annotationInfoBean.getStyle() == 0) {
            color = annotationInfoBean.getColor();
            str = "Multiply";
        } else {
            str = "";
        }
        PdfHighlightInfo pdfHighlightInfo = new PdfHighlightInfo();
        pdfHighlightInfo.highlightId = annotationInfoBean.getStartPosition();
        pdfHighlightInfo.setStartPosition(annotationInfoBean.getStartPosition());
        pdfHighlightInfo.setEndPosition(annotationInfoBean.getEndPosition());
        pdfHighlightInfo.setNote(annotationInfoBean.getNote());
        pdfHighlightInfo.setQuadPoints(fArr);
        pdfHighlightInfo.setStyle(annotationInfoBean.getStyle());
        pdfHighlightInfo.setVertical(AnnotationInfoBeanKt.isVertical(annotationInfoBean));
        pdfHighlightInfo.setColor(color);
        pdfHighlightInfo.setExtraAttr("");
        pdfHighlightInfo.setLinkType(0);
        pdfHighlightInfo.setBlendMode(str);
        return pdfHighlightInfo;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return LineShape.INSTANCE.createPdfShape(embedShapeBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public boolean underContent() {
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(getPointsBoundingRect());
        RectF copy = RectFKt.copy(getOriginRect());
        copy.bottom += m33834j() + m33839o();
        setBoundingRect(copy);
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }
}
