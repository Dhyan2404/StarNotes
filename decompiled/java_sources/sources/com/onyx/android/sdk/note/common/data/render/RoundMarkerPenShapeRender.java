package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Canvas;
import android.graphics.Matrix;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.pen.NeoMarkerPen;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J0\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0016J0\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00042\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/RoundMarkerPenShapeRender;", "Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "penConfig", "", "segment", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "createPenRender", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Landroid/graphics/Matrix;", "renderMatrix", "Lkotlin/Function1;", "", AbstractLogger.CONFIG, "force", "ensurePenRender", "drawFreePath", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onLowLatencyTouchData", "lowLatencyRender", "Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;", "b", "Lkotlin/Lazy;", "a", "()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;", "neoPenRender", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "penShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMarkerPenShapeRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarkerPenShapeRender.kt\ncom/onyx/android/sdk/note/common/data/render/RoundMarkerPenShapeRender\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,266:1\n121#2,8:267\n*S KotlinDebug\n*F\n+ 1 MarkerPenShapeRender.kt\ncom/onyx/android/sdk/note/common/data/render/RoundMarkerPenShapeRender\n*L\n132#1:267,8\n*E\n"})
/* loaded from: classes8.dex */
public final class RoundMarkerPenShapeRender extends BaseMarkerPenShapeRender {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy neoPenRender;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundMarkerPenShapeRender(@NotNull PenShape penShape) {
        super(penShape);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penShape, "penShape");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<MarkerPenRenderWrapper>() { // from class: com.onyx.android.sdk.note.common.data.render.RoundMarkerPenShapeRender$neoPenRender$2
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
    public final MarkerPenRenderWrapper m33660a() {
        return (MarkerPenRenderWrapper) this.neoPenRender.getValue();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull NeoPenConfig penConfig, boolean segment) {
        Intrinsics.checkNotNullParameter(penConfig, "penConfig");
        return m33660a();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender
    public void drawFreePath(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        m33660a().onTouchPointList(getPenShape().getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        Canvas canvas = renderContext.getCanvas();
        Matrix renderMatrix = getPenShape().getRenderMatrix(renderContext);
        int save = canvas.save();
        canvas.concat(renderMatrix);
        try {
            renderContext.getPaint().setStrokeWidth(getPenShape().getStrokeWidth());
            m33660a().render(canvas, renderContext.getPaint());
            canvas.restoreToCount(save);
            m33660a().reset();
        } catch (Throwable th) {
            canvas.restoreToCount(save);
            throw th;
        }
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender ensurePenRender(@NotNull RenderContext renderContext, boolean force, @Nullable Function1<? super NeoPenConfig, Unit> config) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return m33660a();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isFreeSubType()) {
            return super.lowLatencyRender(renderContext);
        }
        applyStrokeStyle(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.data.render.RoundMarkerPenShapeRender$lowLatencyRender$1
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
                MarkerPenRenderWrapper m33660a;
                m33660a = RoundMarkerPenShapeRender.this.m33660a();
                m33660a.render(renderContext.getCanvas(), renderContext.getPaint());
            }
        });
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (isFreeSubType()) {
            m33660a().onTouchData(touchData);
        } else {
            super.onLowLatencyTouchData(renderContext, touchData);
        }
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull RenderContext renderContext, @NotNull Matrix renderMatrix, @Nullable Function1<? super NeoPenConfig, Unit> config) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        return m33660a();
    }
}
