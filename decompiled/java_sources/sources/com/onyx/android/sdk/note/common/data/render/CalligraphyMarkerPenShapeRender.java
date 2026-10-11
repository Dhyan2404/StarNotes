package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.render.CalligraphyMarkerPenShapeRender$shapeRender$2;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u001e\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016J0\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J0\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0016J\u0018\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u001e\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001aH\u0016J\u001e\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001aH\u0002R\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001f\u0010!¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;", "Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;", "Landroid/graphics/Matrix;", "renderMatrix", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "createPenConfig", "penConfig", "", "segment", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "createPenRender", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lkotlin/Function1;", "", AbstractLogger.CONFIG, "force", "ensurePenRender", "prepareRender", "drawFreePath", "clearLowLatencyData", "clearRender", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onLowLatencyTouchData", "lowLatencyRender", "Lkotlin/Function0;", "render", "applyStrokeStyle", "a", "com/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1", "b", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;", "shapeRender", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "penShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CalligraphyMarkerPenShapeRender extends BaseMarkerPenShapeRender {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy shapeRender;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CalligraphyMarkerPenShapeRender(@NotNull final PenShape penShape) {
        super(penShape);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penShape, "penShape");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CalligraphyMarkerPenShapeRender$shapeRender$2.C74881>() { // from class: com.onyx.android.sdk.note.common.data.render.CalligraphyMarkerPenShapeRender$shapeRender$2

            @Metadata(m61527d1 = {"\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H\u0016J0\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016¨\u0006\u0010"}, m61528d2 = {"com/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1", "Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;", "applyStrokeStyle", "", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "render", "Lkotlin/Function0;", "createPenRender", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "renderMatrix", "Landroid/graphics/Matrix;", AbstractLogger.CONFIG, "Lkotlin/Function1;", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "defaultPenConfig", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.android.sdk.note.common.data.render.CalligraphyMarkerPenShapeRender$shapeRender$2$1 */
            /* loaded from: classes8.dex */
            public static final class C74881 extends CalligraphyPenShapeRender {

                /* renamed from: d */
                public final /* synthetic */ CalligraphyMarkerPenShapeRender f43203d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C74881(PenShape penShape, CalligraphyMarkerPenShapeRender calligraphyMarkerPenShapeRender) {
                    super(penShape);
                    this.f43203d = calligraphyMarkerPenShapeRender;
                }

                @Override // com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
                public void applyStrokeStyle(@NotNull RenderContext renderContext, @NotNull Function0<Unit> render) {
                    Intrinsics.checkNotNullParameter(renderContext, "renderContext");
                    Intrinsics.checkNotNullParameter(render, "render");
                    this.f43203d.m33642a(renderContext, render);
                }

                @Override // com.onyx.android.sdk.note.common.data.render.CalligraphyPenShapeRender, com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
                @Nullable
                public NeoPenRender createPenRender(@NotNull RenderContext renderContext, @NotNull Matrix renderMatrix, @Nullable Function1<? super NeoPenConfig, Unit> config) {
                    Intrinsics.checkNotNullParameter(renderContext, "renderContext");
                    Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
                    NeoPenConfig createPenConfig = createPenConfig(renderContext, renderMatrix);
                    if (config != null) {
                        config.invoke(createPenConfig);
                    }
                    return createPenRender(createPenConfig, false);
                }

                @Override // com.onyx.android.sdk.note.common.data.render.CalligraphyPenShapeRender
                @NotNull
                public NeoPenConfig defaultPenConfig() {
                    NeoPenConfig defaultPenConfig = super.defaultPenConfig();
                    defaultPenConfig.resetBrushRatioAndAngle();
                    return defaultPenConfig;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C74881 invoke() {
                return new C74881(PenShape.this, this);
            }
        });
        this.shapeRender = lazy;
    }

    /* renamed from: a */
    public final void m33642a(final RenderContext renderContext, final Function0<Unit> render) {
        super.applyStrokeStyle(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.data.render.CalligraphyMarkerPenShapeRender$applySquareStrokeStyle$1
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
                if (!ShapePersistOptionsKt.isRoundCorner(CalligraphyMarkerPenShapeRender.this.getPenShape())) {
                    renderContext.getPaint().setStrokeCap(Paint.Cap.SQUARE);
                    renderContext.getPaint().setStrokeJoin(Paint.Join.ROUND);
                }
                if (CalligraphyMarkerPenShapeRender.this.isFreeSubType()) {
                    CalligraphyMarkerPenShapeRender.this.applyPaintStyle(renderContext);
                }
                render.invoke();
            }
        });
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
    public void applyStrokeStyle(@NotNull RenderContext renderContext, @NotNull Function0<Unit> render) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(render, "render");
        m33642a(renderContext, render);
    }

    /* renamed from: b */
    public final CalligraphyMarkerPenShapeRender$shapeRender$2.C74881 m33643b() {
        return (CalligraphyMarkerPenShapeRender$shapeRender$2.C74881) this.shapeRender.getValue();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearLowLatencyData() {
        m33643b().clearLowLatencyData();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearRender() {
        m33643b().clearRender();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @NotNull
    public NeoPenConfig createPenConfig(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        NeoPenConfig createPenConfig = m33643b().createPenConfig(renderMatrix);
        createPenConfig.resetBrushRatioAndAngle();
        return createPenConfig;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull NeoPenConfig penConfig, boolean segment) {
        Intrinsics.checkNotNullParameter(penConfig, "penConfig");
        return m33643b().createPenRender(penConfig, segment);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender
    public void drawFreePath(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        m33643b().render(renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender ensurePenRender(@NotNull RenderContext renderContext, boolean force, @Nullable Function1<? super NeoPenConfig, Unit> config) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return m33643b().ensurePenRender(renderContext, force, config);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return isFreeSubType() ? m33643b().lowLatencyRender(renderContext) : super.lowLatencyRender(renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (isFreeSubType()) {
            m33643b().onLowLatencyTouchData(renderContext, touchData);
        } else {
            super.onLowLatencyTouchData(renderContext, touchData);
        }
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BaseMarkerPenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean prepareRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return isFreeSubType() ? m33643b().prepareRender(renderContext) : super.prepareRender(renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull RenderContext renderContext, @NotNull Matrix renderMatrix, @Nullable Function1<? super NeoPenConfig, Unit> config) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        return m33643b().createPenRender(renderContext, renderMatrix, config);
    }
}
