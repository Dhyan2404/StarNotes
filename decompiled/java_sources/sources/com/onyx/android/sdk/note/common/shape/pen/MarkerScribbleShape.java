package com.onyx.android.sdk.note.common.shape.pen;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PaintKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.MarkerPenRenderWrapper;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.GraphicalShapeSplitter;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.pen.NeoMarkerPen;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 S2\u00020\u0001:\u0001SB\u0007¢\u0006\u0004\bQ\u0010RJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002J\u001e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J(\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0011H\u0002J\u0018\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u0018\u0010%\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0005H\u0002J\b\u0010&\u001a\u00020\u0011H\u0016J\u0018\u0010)\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005H\u0016J\u0018\u0010*\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010,\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010-\u001a\u00020\u0007H\u0016J \u0010.\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0016J\b\u0010/\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u0002022\u0006\u00101\u001a\u000200H\u0016J\b\u00104\u001a\u00020\u0013H\u0016J\u0018\u00109\u001a\u00020\u00112\u0006\u00106\u001a\u0002052\u0006\u00108\u001a\u000207H\u0016J\u0006\u0010:\u001a\u00020\u0011J\b\u0010<\u001a\u00020;H\u0016J\u0010\u0010>\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u001eH\u0016J\b\u0010@\u001a\u00020?H\u0016R\"\u0010G\u001a\u00020;8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001b\u0010M\u001a\u00020H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010O¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "", "c", "d", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "l", "", "x", "y", "radius", "", "i", "Landroid/graphics/Path;", C6998g.f39679a, "Lkotlin/Function0;", "render", "b", "a", "first", C6997f.f39671c, "j", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "pdfShape", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "shapeBean", "m", "lastPoint", "currentPoint", "e", "point", C4921e.f26537n, "underContent", "normalizedPoint", "screenPoint", "onMove", "onUp", "lowLatencyRender", "onLowLatencyTouchData", "clearLowLatencyData", "hitTest", "updateShapeRect", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "getPath", "Landroid/graphics/Region;", "region", "Landroid/graphics/Matrix;", "matrix", "intersectRegion", "isFreeSubType", "", "getUsePointCount", "embedShapeBean", "toPdfShape", "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;", "createGuideLineHandler", "J", "I", "getType", "()I", "setType", "(I)V", "type", "Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;", "K", "Lkotlin/Lazy;", C6999h.f39688c, "()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;", "neoPenRender", "L", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "lowLatencyTouchData", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMarkerScribbleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarkerScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n121#2,8:326\n121#2,8:334\n1855#3,2:342\n1747#3,3:344\n1#4:347\n*S KotlinDebug\n*F\n+ 1 MarkerScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape\n*L\n91#1:326,8\n105#1:334,8\n193#1:342,2\n218#1:344,3\n*E\n"})
/* loaded from: classes8.dex */
public final class MarkerScribbleShape extends PenShape {

    /* renamed from: M */
    public static final int f43753M = 3;

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 15;

    /* renamed from: K, reason: from kotlin metadata */
    @NotNull
    public final Lazy neoPenRender;

    /* renamed from: L, reason: from kotlin metadata */
    @Nullable
    public TouchData lowLatencyTouchData;

    public MarkerScribbleShape() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<MarkerPenRenderWrapper>() { // from class: com.onyx.android.sdk.note.common.shape.pen.MarkerScribbleShape$neoPenRender$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MarkerPenRenderWrapper invoke() {
                return new MarkerPenRenderWrapper(new NeoMarkerPen(0L, 1, null), false);
            }
        });
        this.neoPenRender = lazy;
    }

    /* renamed from: a */
    public final void m33908a(RenderContext renderContext) {
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        if (!ShapePersistOptionsKt.isRoundCorner(this)) {
            renderContext.getPaint().setStrokeCap(Paint.Cap.SQUARE);
            renderContext.getPaint().setStrokeJoin(Paint.Join.ROUND);
        }
        if (m33917j()) {
            renderContext.getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
            renderContext.getPaint().setColor(ColorKt.similarWithoutAlpha$default(renderContext.getPaint().getColor(), 0, 1, null));
        }
    }

    /* renamed from: b */
    public final void m33909b(RenderContext renderContext, Function0<Unit> render) {
        Paint copy = PaintKt.copy(renderContext.getPaint());
        m33908a(renderContext);
        render.invoke();
        renderContext.getPaint().set(copy);
    }

    /* renamed from: c */
    public final void m33910c(RenderContext renderContext, List<TouchPoint> points) {
        m33915h().onTouchPointList(points);
        Canvas canvas = renderContext.getCanvas();
        Matrix renderMatrix = getRenderMatrix(renderContext);
        int save = canvas.save();
        canvas.concat(renderMatrix);
        try {
            renderContext.getPaint().setStrokeWidth(getStrokeWidth());
            m33915h().render(canvas, renderContext.getPaint());
            canvas.restoreToCount(save);
            m33915h().reset();
        } catch (Throwable th) {
            canvas.restoreToCount(save);
            throw th;
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearLowLatencyData() {
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public ShapeGuideLineHandler createGuideLineHandler() {
        return new MarkerPenGuideLineHandler(this);
    }

    /* renamed from: d */
    public final void m33911d(RenderContext renderContext, List<TouchPoint> points) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        TouchPoint m33913f = m33913f(touchPoint, null, points);
        Path path = new Path();
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        path.lineTo(m33913f.getX(), m33913f.getY());
        Canvas canvas = renderContext.getCanvas();
        Matrix renderMatrix = getRenderMatrix(renderContext);
        int save = canvas.save();
        canvas.concat(renderMatrix);
        try {
            renderContext.getPaint().setStrokeWidth(getStrokeWidth());
            canvas.drawPath(path, renderContext.getPaint());
        } finally {
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: e */
    public final boolean m33912e(TouchPoint lastPoint, TouchPoint currentPoint) {
        return TouchPoint.INSTANCE.distance(lastPoint, currentPoint) < 3.0d;
    }

    /* renamed from: f */
    public final TouchPoint m33913f(final TouchPoint first, final RenderContext renderContext, List<TouchPoint> points) {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) lastOrNull;
        if (touchPoint == null) {
            touchPoint = getCurrentPoint();
        }
        return (TouchPoint) AnyKt.transform(touchPoint, new Function1<TouchPoint, TouchPoint>() { // from class: com.onyx.android.sdk.note.common.shape.pen.MarkerScribbleShape$getLastPoint$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final TouchPoint invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (Intrinsics.areEqual(it2, TouchPoint.this)) {
                    it2 = this.getCurrentPoint().copy();
                    RenderContext renderContext2 = renderContext;
                    if (renderContext2 != null) {
                        it2.mapMatrix(this.getRenderMatrix(renderContext2));
                    }
                }
                return it2;
            }
        });
    }

    /* renamed from: g */
    public final Path m33914g() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return null;
        }
        TouchPoint m33913f = m33913f(touchPoint, null, getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        Path path = new Path();
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        path.lineTo(m33913f.getX(), m33913f.getY());
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            path.transform(shapeMatrix);
        }
        return path;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        Path m33914g;
        return (ShapePersistOptionsKt.getSubShapeType$default(this, 0, 1, null) != 7 || (m33914g = m33914g()) == null) ? new Path() : m33914g;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.PenShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public int getUsePointCount() {
        return getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size();
    }

    /* renamed from: h */
    public final MarkerPenRenderWrapper m33915h() {
        return (MarkerPenRenderWrapper) this.neoPenRender.getValue();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        return isFreeSubType() ? super.hitTest(x, y, radius) : m33916i(x, y, radius);
    }

    /* renamed from: i */
    public final boolean m33916i(float x, float y, float radius) {
        Object first;
        Object last;
        List<TouchPoint> points = getRenderPoints().getPoints();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) points);
        Object obj = last;
        Object obj2 = first;
        if (getShapeMatrix() != null) {
            TouchPoint copy = ((TouchPoint) first).copy();
            TouchPoint copy2 = ((TouchPoint) last).copy();
            copy.applyMatrix(getShapeMatrix());
            copy2.applyMatrix(getShapeMatrix());
            obj = copy2;
            obj2 = copy;
        }
        TouchPoint touchPoint = (TouchPoint) obj2;
        TouchPoint touchPoint2 = (TouchPoint) obj;
        return HitTestUtils.INSTANCE.hitTestLine(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY(), x, y, radius + (getStrokeWidth() / 2));
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean intersectRegion(@NotNull Region region, @NotNull Matrix matrix) {
        Iterable step;
        boolean z;
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        TouchPointList renderPoints = getRenderPoints();
        int mapRadius = (int) matrix.mapRadius(getStrokeWidth() / 2);
        step = RangesKt___RangesKt.step(new IntRange(-mapRadius, mapRadius), 2);
        Iterator<TouchPoint> it2 = renderPoints.getPoints().iterator();
        do {
            z = false;
            if (!it2.hasNext()) {
                return false;
            }
            TouchPoint next = it2.next();
            float[] fArr = {next.getX(), next.getY()};
            matrix.mapPoints(fArr);
            int i = (int) fArr[0];
            int i2 = (int) fArr[1];
            if (region.contains(i, i2)) {
                return true;
            }
            if (!(step instanceof Collection) || !((Collection) step).isEmpty()) {
                Iterator it3 = step.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    int nextInt = ((IntIterator) it3).nextInt();
                    if (region.contains(i + nextInt, i2) || region.contains(i, nextInt + i2)) {
                        z = true;
                        break;
                    }
                }
            }
        } while (!z);
        return true;
    }

    public final boolean isFreeSubType() {
        return ShapePersistOptionsKt.getSubShapeType(this, 36) != 7;
    }

    /* renamed from: j */
    public final boolean m33917j() {
        return underContent() && ShapePersistOptionsKt.isBottom(this) && !ShapeOptions.INSTANCE.isTransparent(this);
    }

    /* renamed from: k */
    public final TouchPoint m33918k(RenderContext renderContext, TouchPoint point) {
        TouchPoint copy = point.copy();
        copy.applyMatrix(MatrixKt.invertMatrix(renderContext.getMatrix()));
        return copy;
    }

    /* renamed from: l */
    public final void m33919l(RenderContext renderContext, TouchData touchData) {
        TouchPoint touchPoint;
        TouchData touchData2;
        TouchData copy;
        TouchData touchData3 = this.lowLatencyTouchData;
        if (touchData3 == null || (touchPoint = touchData3.getTouchPoint()) == null) {
            touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        }
        boolean isRoundCorner = ShapePersistOptionsKt.isRoundCorner(this);
        if (!isRoundCorner) {
            touchData.setPredictPoint(null);
        }
        if (!isRoundCorner && touchData.isTouchMove() && m33912e(m33918k(renderContext, touchPoint), m33918k(renderContext, touchData.getTouchPoint()))) {
            return;
        }
        if (touchData.isTouchDone() && !isRoundCorner && (touchData2 = this.lowLatencyTouchData) != null && (copy = touchData2.copy(1)) != null) {
            touchData = copy;
        }
        this.lowLatencyTouchData = touchData;
        m33915h().onTouchData(touchData);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (isFreeSubType()) {
            m33915h().render(renderContext.getCanvas(), renderContext.getPaint());
            return true;
        }
        render(renderContext);
        return true;
    }

    /* renamed from: m */
    public final void m33920m(PdfShapeInfo pdfShape, EmbedShapeBean shapeBean) {
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        List<TouchPoint> renderPointArray = companion.renderPointArray(MatrixKt.getMatrixByValues(shapeBean.getMatrixValues()), shapeBean.getPointList().getPoints());
        float revisedDisplayScale = shapeBean.getShapeCreateArgs().getRevisedDisplayScale();
        List<TouchPoint> scalePointList = companion.scalePointList(renderPointArray, revisedDisplayScale);
        pdfShape.setRealPoints(companion.realPointArray(renderPointArray));
        pdfShape.setRenderPoints(PdfShapeConvertUtils.INSTANCE.normalizeRenderPointList(scalePointList, revisedDisplayScale));
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (touchData.isTouchDown()) {
            m33908a(renderContext);
        }
        if (isFreeSubType()) {
            m33919l(renderContext, touchData);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.PenShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public void onMove(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint) {
        Intrinsics.checkNotNullParameter(normalizedPoint, "normalizedPoint");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        if (!isFreeSubType()) {
            setCurrentPoint(new TouchPoint(normalizedPoint));
        } else if (ShapePersistOptionsKt.isRoundCorner(this) || !m33912e(getCurrentPoint(), normalizedPoint)) {
            setCurrentPoint(new TouchPoint(normalizedPoint));
            super.onMove(normalizedPoint, screenPoint);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public void onUp(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint) {
        Intrinsics.checkNotNullParameter(normalizedPoint, "normalizedPoint");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        if (!isFreeSubType() || ShapePersistOptionsKt.isRoundCorner(this)) {
            super.onUp(normalizedPoint, screenPoint);
        } else {
            super.onUp(getCurrentPoint(), getCurrentPoint());
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        final List<TouchPoint> points = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        if (points.isEmpty()) {
            return false;
        }
        m33909b(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.shape.pen.MarkerScribbleShape$render$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (MarkerScribbleShape.this.isFreeSubType()) {
                    MarkerScribbleShape.this.m33910c(renderContext, points);
                } else {
                    MarkerScribbleShape.this.m33911d(renderContext, points);
                }
            }
        });
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.PenShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult split = isFreeSubType() ? super.split(eraseBean) : GraphicalShapeSplitter.INSTANCE.split(this, eraseBean, getType());
        List<Shape> splitShapes = split.getSplitShapes();
        if (splitShapes != null) {
            Iterator<T> it2 = splitShapes.iterator();
            while (it2.hasNext()) {
                ShapePersistOptionsKt.setSubShapeType((Shape) it2.next(), 36);
            }
        }
        return split;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createMarkerStrokeShape(), embedShapeBean);
        initPdfShape.applyMultiplyBlendMode(m33917j());
        m33920m(initPdfShape, embedShapeBean);
        initPdfShape.applyLineCapJoinStyle(ShapePersistOptionsKt.isRoundCorner(this));
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public boolean underContent() {
        return ShapePersistOptionsKt.isUnderContent(this, true);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(getPointsBoundingRect());
        setBoundingRect(new RectF(getOriginRect()));
        if (!ShapePersistOptionsKt.isRoundCorner(this)) {
            RectKt.expand(getBoundingRect(), getStrokeWidth() / 2);
        }
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }
}
