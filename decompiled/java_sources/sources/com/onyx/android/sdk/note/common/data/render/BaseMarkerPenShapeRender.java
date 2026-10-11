package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0014J\u001c\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "penShape", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V", "applyStrokeStyle", "", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "render", "Lkotlin/Function0;", "createPenConfig", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "renderMatrix", "Landroid/graphics/Matrix;", "drawFreePath", "drawLinePath", "getLastPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "first", PointConstant.POINT_FILE_END, "", "isApplyBlendMode", "", "isFreeSubType", "lowLatencyRender", "onLowLatencyTouchData", "touchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "prepareRender", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMarkerPenShapeRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarkerPenShapeRender.kt\ncom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,266:1\n121#2,8:267\n*S KotlinDebug\n*F\n+ 1 MarkerPenShapeRender.kt\ncom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender\n*L\n70#1:267,8\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BaseMarkerPenShapeRender extends PenShapeRender {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseMarkerPenShapeRender(@NotNull PenShape penShape) {
        super(penShape);
        Intrinsics.checkNotNullParameter(penShape, "penShape");
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    public void applyStrokeStyle(@NotNull final RenderContext renderContext, @NotNull final Function0<Unit> render) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(render, "render");
        super.applyStrokeStyle(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender$applyStrokeStyle$1
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
                if (BaseMarkerPenShapeRender.this.isApplyBlendMode()) {
                    renderContext.getPaint().setColor(ColorKt.similarWithoutAlpha$default(renderContext.getPaint().getColor(), 0, 1, null));
                    renderContext.getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
                }
                render.invoke();
            }
        });
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @NotNull
    public NeoPenConfig createPenConfig(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        return new NeoPenConfig();
    }

    public abstract void drawFreePath(@NotNull RenderContext renderContext);

    public void drawLinePath(@NotNull RenderContext renderContext) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        List<TouchPoint> points = getPenShape().getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        TouchPoint lastPoint = getLastPoint(touchPoint, points);
        Path path = new Path();
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        path.lineTo(lastPoint.getX(), lastPoint.getY());
        Canvas canvas = renderContext.getCanvas();
        Matrix renderMatrix = getPenShape().getRenderMatrix(renderContext);
        int save = canvas.save();
        canvas.concat(renderMatrix);
        try {
            renderContext.getPaint().setStrokeWidth(getPenShape().getStrokeWidth());
            canvas.drawPath(path, renderContext.getPaint());
        } finally {
            canvas.restoreToCount(save);
        }
    }

    @NotNull
    public final TouchPoint getLastPoint(@NotNull final TouchPoint first, @NotNull List<TouchPoint> points) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(points, "points");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) lastOrNull;
        if (touchPoint == null) {
            touchPoint = getPenShape().getCurrentPoint();
        }
        return (TouchPoint) AnyKt.transform(touchPoint, new Function1<TouchPoint, TouchPoint>() { // from class: com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender$getLastPoint$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final TouchPoint invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Intrinsics.areEqual(it2, TouchPoint.this) ? this.getPenShape().getCurrentPoint().copy() : it2;
            }
        });
    }

    public final boolean isApplyBlendMode() {
        return getPenShape().underContent() && ShapePersistOptionsKt.isBottom(getPenShape()) && !ShapeOptions.INSTANCE.isTransparent(getPenShape());
    }

    public final boolean isFreeSubType() {
        return ShapePersistOptionsKt.getSubShapeType(getPenShape(), 36) != 7;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return render(renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean prepareRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        applyStrokeStyle(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender$render$1
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
                if (BaseMarkerPenShapeRender.this.isFreeSubType()) {
                    BaseMarkerPenShapeRender.this.drawFreePath(renderContext);
                } else {
                    BaseMarkerPenShapeRender.this.drawLinePath(renderContext);
                }
            }
        });
        return true;
    }
}
