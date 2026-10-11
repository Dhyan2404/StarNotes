package com.onyx.android.sdk.note.common.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.note.common.data.render.NeoPenRender;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.note.common.utils.ShapeRenderUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.pen.PenResult;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.data.line.LineStyle;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b)\u0010*J\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u0012\u0010\t\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u0014\u0010\u000b\u001a\u00020\n*\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003J\u0012\u0010\r\u001a\u00020\n*\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\u000e\u001a\u00020\n*\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003J\u0012\u0010\u000f\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u0012\u0010\u0010\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u0011*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u0011*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u0011*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u0012\u0010\u0015\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\n\u0010\u0017\u001a\u00020\u0016*\u00020\u0002J\u0012\u0010\u0018\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u001a\u0010\u001a\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0011J\n\u0010\u001c\u001a\u00020\u001b*\u00020\u0002J2\u0010#\u001a\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u0018\u00010 *\u00020\f2\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001dJ2\u0010%\u001a\u00020\u0005*\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00032\u001e\u0010$\u001a\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010\"0!\u0018\u00010 R\u0014\u0010(\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "applyStrokeStyle", "Landroid/graphics/Paint;", "paint", "updateBitmapRenderPaint", "", "getRenderStrokeWidth", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "getPrecisionScale", "getDisplayScale", "applyShapeLineStyle", "drawPath", "Landroid/graphics/Path;", "generateFreeDrawPath", "generateLineDrawPath", "generateRectDrawPath", "getRenderPath", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getRenderPoints", "getScaleStrokeWidth", "path", "renderFillColor", "", "isIgnoreFill", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "createPenRender", "", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "preparePenResults", "penResults", "renderPenResults", "a", "F", "ERASE_EXTRA_STROKE_WIDTH", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeRenders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeRenders.kt\ncom/onyx/android/sdk/note/common/shape/ShapeRenders\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,172:1\n1#2:173\n121#3,8:174\n*S KotlinDebug\n*F\n+ 1 ShapeRenders.kt\ncom/onyx/android/sdk/note/common/shape/ShapeRenders\n*L\n168#1:174,8\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeRenders {

    @NotNull
    public static final ShapeRenders INSTANCE = new ShapeRenders();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float ERASE_EXTRA_STROKE_WIDTH;

    static {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        ERASE_EXTRA_STROKE_WIDTH = FLOAT_ONE.floatValue();
    }

    public final void applyShapeLineStyle(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        ShapeLineStyle shapeLineStyle;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (renderContext.isUseLineStyle() && (shapeLineStyle = ShapeOptions.INSTANCE.getShapeLineStyle(shape)) != null) {
            LineStyle.INSTANCE.applyStyle(shapeLineStyle.getLineStyle(), renderContext.getPaint(), shape.getStrokeWidth(), renderContext.getDisplayScaleAndShapeScale(shape));
        }
    }

    public final void applyStrokeStyle(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Paint paint = renderContext.getPaint();
        paint.setStrokeWidth(getRenderStrokeWidth(shape, renderContext));
        paint.setColor(renderContext.getRenderColor(shape.getStrokeColor()));
        paint.setAntiAlias(renderContext.isAntiAlias(shape.getStrokeWidth()));
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        paint.setStyle(shapeOptions.getPaintStyle(shape));
        paint.setDither(renderContext.isDither());
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeMiter(4.0f);
        paint.setPathEffect(null);
        applyShapeLineStyle(shape, renderContext);
        if (shapeOptions.isTransparent(shape)) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        } else {
            paint.setXfermode(null);
        }
    }

    public final void drawPath(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Path generateFreeDrawPath = generateFreeDrawPath(shape, renderContext);
        if (generateFreeDrawPath == null) {
            return;
        }
        renderContext.getCanvas().drawPath(generateFreeDrawPath, renderContext.getPaint());
    }

    @Nullable
    public final Path generateFreeDrawPath(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return ShapeRenderUtils.INSTANCE.renderShape(shape.getRenderMatrix(renderContext), shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String());
    }

    @Nullable
    public final Path generateLineDrawPath(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Object firstOrNull;
        Object last;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return null;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints());
        TouchPoint touchPoint2 = (TouchPoint) last;
        Path path = new Path();
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        path.lineTo(touchPoint2.getX(), touchPoint2.getY());
        path.transform(shape.getRenderMatrix(renderContext));
        return path;
    }

    @Nullable
    public final Path generateRectDrawPath(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Object firstOrNull;
        Object last;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return null;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints());
        TouchPoint touchPoint2 = (TouchPoint) last;
        Path path = new Path();
        path.addRect(new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()), Path.Direction.CW);
        path.transform(shape.getRenderMatrix(renderContext));
        return path;
    }

    public final float getDisplayScale(@NotNull Shape shape, @Nullable RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        if (renderContext != null) {
            return renderContext.getStrokeWidthDisplayScale(shape);
        }
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return FLOAT_ONE.floatValue();
    }

    public final float getPrecisionScale(@NotNull PenShape penShape, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(penShape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        PageInfo pageInfo = renderContext.getPageInfo();
        return (((Number) AnyKt.getOrElse(pageInfo != null ? Integer.valueOf(pageInfo.getWidth()) : null, new Function0<Integer>() { // from class: com.onyx.android.sdk.note.common.shape.ShapeRenders$getPrecisionScale$pageBaseScale$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(SizeFormat.f45503A4.getSize().getWidth());
            }
        })).floatValue() / ((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(SizeFormat.f45503A4.getSize().getWidth()), Float.valueOf(1.0f))).floatValue()) * MatrixKt.getAverageScale(renderContext.getMatrix()) * MatrixKt.getAverageScale(penShape.getShapeMatrix());
    }

    @NotNull
    public final Path getRenderPath(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Path path = shape.getPath();
        path.transform(renderContext.getMatrix());
        return path;
    }

    @NotNull
    public final TouchPointList getRenderPoints(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        TouchPointList m72175clone = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().m72175clone();
        m72175clone.applyMatrix(shape.getShapeMatrix());
        return m72175clone;
    }

    public final float getRenderStrokeWidth(@NotNull Shape shape, @Nullable RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        float strokeWidth = shape.getStrokeWidth() * getDisplayScale(shape, renderContext);
        return ShapeOptions.INSTANCE.isTransparent(shape) ? strokeWidth + ERASE_EXTRA_STROKE_WIDTH : strokeWidth;
    }

    public final float getScaleStrokeWidth(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return shape.getStrokeWidth() * renderContext.getViewPortScale();
    }

    public final boolean isIgnoreFill(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return ShapeUtils.INSTANCE.isIgnoreFill(shape.getFillColor());
    }

    @Nullable
    public final List<Pair<PenResult, PenResult>> preparePenResults(@NotNull PenShape penShape, @NotNull Function0<? extends NeoPenRender> createPenRender) {
        Intrinsics.checkNotNullParameter(penShape, "<this>");
        Intrinsics.checkNotNullParameter(createPenRender, "createPenRender");
        List<TouchPoint> points = penShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        NeoPenRender neoPenRender = null;
        if (points.isEmpty()) {
            return null;
        }
        try {
            NeoPenRender invoke = createPenRender.invoke();
            if (invoke == null) {
                return null;
            }
            try {
                invoke.onTouchPointList(TouchPoint.INSTANCE.renderPointArray(new Matrix(), points));
                ArrayList<Pair<PenResult, PenResult>> penResults = invoke.getPenResults();
                ArrayList<Pair<PenResult, PenResult>> arrayList = penResults.isEmpty() ^ true ? penResults : null;
                invoke.destroyPen();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                neoPenRender = invoke;
                if (neoPenRender != null) {
                    neoPenRender.destroyPen();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void renderFillColor(@NotNull Shape shape, @NotNull RenderContext renderContext, @NotNull Path path) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(path, "path");
        if (isIgnoreFill(shape) || !shape.isClosedShape()) {
            return;
        }
        float strokeWidth = renderContext.getPaint().getStrokeWidth();
        Matrix matrix = new Matrix();
        matrix.setTranslate(strokeWidth, strokeWidth);
        path.transform(matrix);
        float f = -strokeWidth;
        path.offset(f, f);
        renderContext.getPaint().setStyle(Paint.Style.FILL);
        renderContext.getPaint().setColor(shape.getFillColor());
        renderContext.getCanvas().drawPath(path, renderContext.getPaint());
    }

    public final void renderPenResults(@NotNull PenShape penShape, @NotNull RenderContext renderContext, @Nullable List<? extends Pair<? extends PenResult, ? extends PenResult>> list) {
        Intrinsics.checkNotNullParameter(penShape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        Canvas canvas = renderContext.getCanvas();
        Matrix renderMatrix = penShape.getRenderMatrix(renderContext);
        int save = canvas.save();
        canvas.concat(renderMatrix);
        try {
            PenResult.INSTANCE.render(list, canvas, renderContext.getPaint());
        } finally {
            canvas.restoreToCount(save);
        }
    }

    public final void updateBitmapRenderPaint(@NotNull Shape shape, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(paint, "paint");
        paint.setStyle(Paint.Style.FILL);
    }
}
