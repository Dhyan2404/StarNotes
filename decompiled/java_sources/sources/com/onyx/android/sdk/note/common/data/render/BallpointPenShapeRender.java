package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Matrix;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.render.NotePenShapeResults;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.pen.NeoBallpointInkPen;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.PenPrecision;
import com.onyx.android.sdk.pen.PenResult;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016J0\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J0\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010\u001b\u001a\u00020\u000eH\u0016J\b\u0010\u001c\u001a\u00020\u000eH\u0016J\u001e\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000bH\u0016R\u0018\u0010!\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010)\u001a\u0004\u0018\u00010\"8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "Landroid/graphics/Matrix;", "renderMatrix", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "createPenConfig", "penConfig", "", "segment", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "createPenRender", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lkotlin/Function1;", "", AbstractLogger.CONFIG, "force", "ensurePenRender", "prepareRender", "render", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onLowLatencyTouchData", "lowLatencyRender", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "cloneRenderData", "destroyPenRender", "clearRender", "Lkotlin/Function0;", "applyStrokeStyle", "b", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "neoPenRender", "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;", "c", "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;", "getPenResults", "()Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;", "setPenResults", "(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)V", "penResults", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "penShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class BallpointPenShapeRender extends PenShapeRender {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public NeoPenRender neoPenRender;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public volatile NotePenShapeResults penResults;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BallpointPenShapeRender(@NotNull PenShape penShape) {
        super(penShape);
        Intrinsics.checkNotNullParameter(penShape, "penShape");
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    public void applyStrokeStyle(@NotNull RenderContext renderContext, @NotNull final Function0<Unit> render) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(render, "render");
        super.applyStrokeStyle(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.data.render.BallpointPenShapeRender$applyStrokeStyle$1
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
                render.invoke();
            }
        });
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearRender() {
        NotePenShapeResults.INSTANCE.clearCache(this.penResults);
        this.penResults = null;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void cloneRenderData(@NotNull Shape shape) {
        List mutableList;
        Intrinsics.checkNotNullParameter(shape, "shape");
        NotePenShapeResults notePenShapeResults = this.penResults;
        if (notePenShapeResults == null) {
            return;
        }
        List<Pair<PenResult, PenResult>> results = notePenShapeResults.getResults();
        if (results == null || results.isEmpty()) {
            return;
        }
        PenPrecision precision = notePenShapeResults.getPrecision();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) notePenShapeResults.getResults());
        this.penResults = new NotePenShapeResults(precision, mutableList);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @NotNull
    public NeoPenConfig createPenConfig(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        ShapeCreateArgs shapeCreateArgs = getPenShape().getShapeCreateArgs();
        NeoPenConfig defaultPenConfig = NeoBallpointInkPen.INSTANCE.defaultPenConfig();
        defaultPenConfig.setSmoothLevel(shapeCreateArgs.getSmoothLevel());
        return defaultPenConfig;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull NeoPenConfig penConfig, boolean segment) {
        Intrinsics.checkNotNullParameter(penConfig, "penConfig");
        return BallpointPenRenderWrapper.INSTANCE.create(penConfig);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    public void destroyPenRender() {
        NeoPenRender neoPenRender = this.neoPenRender;
        if (neoPenRender != null) {
            neoPenRender.destroyPen();
        }
        this.neoPenRender = null;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender ensurePenRender(@NotNull RenderContext renderContext, boolean force, @Nullable Function1<? super NeoPenConfig, Unit> config) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (this.neoPenRender == null || force) {
            destroyPenRender();
            applyStrokeStyle(renderContext);
            this.neoPenRender = createPenRender(renderContext, getPenShape().getRenderMatrix(renderContext), config);
        }
        return this.neoPenRender;
    }

    @Nullable
    public final NotePenShapeResults getPenResults() {
        return this.penResults;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        NeoPenRender ensurePenRender$default = PenShapeRender.ensurePenRender$default(this, renderContext, false, null, 6, null);
        if (ensurePenRender$default == null) {
            return false;
        }
        ensurePenRender$default.render(renderContext.getCanvas(), renderContext.getPaint());
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        NeoPenRender ensurePenRender$default = PenShapeRender.ensurePenRender$default(this, renderContext, touchData.isTouchDown(), null, 4, null);
        if (ensurePenRender$default == null) {
            return;
        }
        ensurePenRender$default.onTouchData(touchData);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public synchronized boolean prepareRender(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        ShapeRenders shapeRenders = ShapeRenders.INSTANCE;
        final PenPrecision penPrecision = NeoPenConfig.INSTANCE.getPenPrecision(shapeRenders.getPrecisionScale(getPenShape(), renderContext));
        NotePenShapeResults.Companion companion = NotePenShapeResults.INSTANCE;
        if (companion.isValid(this.penResults, penPrecision)) {
            return true;
        }
        List<Pair<PenResult, PenResult>> preparePenResults = shapeRenders.preparePenResults(getPenShape(), new Function0<NeoPenRender>() { // from class: com.onyx.android.sdk.note.common.data.render.BallpointPenShapeRender$prepareRender$result$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final NeoPenRender invoke() {
                BallpointPenShapeRender ballpointPenShapeRender = BallpointPenShapeRender.this;
                RenderContext renderContext2 = renderContext;
                Matrix matrix = new Matrix();
                final BallpointPenShapeRender ballpointPenShapeRender2 = BallpointPenShapeRender.this;
                final RenderContext renderContext3 = renderContext;
                final PenPrecision penPrecision2 = penPrecision;
                return ballpointPenShapeRender.createPenRender(renderContext2, matrix, new Function1<NeoPenConfig, Unit>() { // from class: com.onyx.android.sdk.note.common.data.render.BallpointPenShapeRender$prepareRender$result$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NeoPenConfig neoPenConfig) {
                        invoke2(neoPenConfig);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NeoPenConfig it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.m72321setWidth(BallpointPenShapeRender.this.getPenShape().getStrokeWidth());
                        it2.m72312setColor(renderContext3.getRenderColor(BallpointPenShapeRender.this.getPenShape().getStrokeColor()));
                        it2.setScalePrecision(penPrecision2.getOptimizedScale());
                    }
                });
            }
        });
        if (preparePenResults == null) {
            return false;
        }
        PenResult.INSTANCE.clearCache(preparePenResults);
        this.penResults = new NotePenShapeResults(penPrecision, preparePenResults);
        return companion.isValid(this.penResults, penPrecision);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!getPenShape().isIntersectClipRect(renderContext)) {
            return false;
        }
        applyStrokeStyle(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.data.render.BallpointPenShapeRender$render$1
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
                if (BallpointPenShapeRender.this.getPenResults() == null) {
                    BallpointPenShapeRender.this.prepareRender(renderContext);
                }
                ShapeRenders shapeRenders = ShapeRenders.INSTANCE;
                PenShape penShape = BallpointPenShapeRender.this.getPenShape();
                RenderContext renderContext2 = renderContext;
                NotePenShapeResults penResults = BallpointPenShapeRender.this.getPenResults();
                shapeRenders.renderPenResults(penShape, renderContext2, penResults != null ? penResults.getResults() : null);
            }
        });
        return true;
    }

    public final void setPenResults(@Nullable NotePenShapeResults notePenShapeResults) {
        this.penResults = notePenShapeResults;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    public void applyStrokeStyle(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        super.applyStrokeStyle(renderContext);
        applyPaintStyle(renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull RenderContext renderContext, @NotNull Matrix renderMatrix, @Nullable Function1<? super NeoPenConfig, Unit> config) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        NeoPenConfig createPenConfig = createPenConfig(renderMatrix);
        createPenConfig.m72321setWidth(ShapeRenders.INSTANCE.getRenderStrokeWidth(getPenShape(), renderContext));
        createPenConfig.m72312setColor(renderContext.getPaint().getColor());
        if (config != null) {
            config.invoke(createPenConfig);
        }
        return BallpointPenRenderWrapper.INSTANCE.create(createPenConfig);
    }
}
