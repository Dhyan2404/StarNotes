package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRender;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001a¢\u0006\u0004\b \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u001c\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007H&J2\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH&J4\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u00072\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH&J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\u001e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000bH\u0014R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "Lcom/onyx/android/sdk/note/common/shape/ShapeRender;", "Landroid/graphics/Matrix;", "renderMatrix", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "createPenConfig", "penConfig", "", "segment", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "createPenRender", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lkotlin/Function1;", "", AbstractLogger.CONFIG, "force", "ensurePenRender", "destroyPenRender", "clearRender", "Lkotlin/Function0;", "render", "applyStrokeStyle", "Landroid/graphics/Path;", "getPath", "applyPaintStyle", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "a", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "getPenShape", "()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "penShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class PenShapeRender implements ShapeRender {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PenShape penShape;

    public PenShapeRender(@NotNull PenShape penShape) {
        Intrinsics.checkNotNullParameter(penShape, "penShape");
        this.penShape = penShape;
    }

    public static /* synthetic */ NeoPenRender createPenRender$default(PenShapeRender penShapeRender, NeoPenConfig neoPenConfig, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createPenRender");
        }
        if ((i & 2) != 0) {
            z = ColorKt.isColorOpaque(neoPenConfig.getColor());
        }
        return penShapeRender.createPenRender(neoPenConfig, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NeoPenRender ensurePenRender$default(PenShapeRender penShapeRender, RenderContext renderContext, boolean z, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ensurePenRender");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return penShapeRender.ensurePenRender(renderContext, z, function1);
    }

    public void applyPaintStyle(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        renderContext.getPaint().setStyle(ShapeOptions.INSTANCE.isTransparent(this.penShape) ? Paint.Style.FILL_AND_STROKE : Paint.Style.FILL);
    }

    public void applyStrokeStyle(@NotNull RenderContext renderContext, @NotNull Function0<Unit> render) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(render, "render");
        Paint.Style style = renderContext.getPaint().getStyle();
        applyStrokeStyle(renderContext);
        render.invoke();
        renderContext.getPaint().setStyle(style);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearLowLatencyData() {
        ShapeRender.DefaultImpls.clearLowLatencyData(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearRender() {
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void cloneLowLatencyData(@NotNull Shape shape) {
        ShapeRender.DefaultImpls.cloneLowLatencyData(this, shape);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void cloneRenderData(@NotNull Shape shape) {
        ShapeRender.DefaultImpls.cloneRenderData(this, shape);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public ShapeGuideLineHandler createGuideLineHandler() {
        return ShapeRender.DefaultImpls.createGuideLineHandler(this);
    }

    @NotNull
    public abstract NeoPenConfig createPenConfig(@NotNull Matrix renderMatrix);

    @Nullable
    public abstract NeoPenRender createPenRender(@NotNull RenderContext renderContext, @NotNull Matrix renderMatrix, @Nullable Function1<? super NeoPenConfig, Unit> r3);

    @Nullable
    public abstract NeoPenRender createPenRender(@NotNull NeoPenConfig penConfig, boolean segment);

    public void destroyPenRender() {
    }

    @Nullable
    public abstract NeoPenRender ensurePenRender(@NotNull RenderContext renderContext, boolean force, @Nullable Function1<? super NeoPenConfig, Unit> r3);

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        return this.penShape.getPath();
    }

    @NotNull
    public final PenShape getPenShape() {
        return this.penShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public int getRenderPointSize() {
        return ShapeRender.DefaultImpls.getRenderPointSize(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyFlush(@NotNull RenderContext renderContext, boolean z) {
        return ShapeRender.DefaultImpls.lowLatencyFlush(this, renderContext, z);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        return ShapeRender.DefaultImpls.lowLatencyRender(this, renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean readyToLowLatencyFlush() {
        return ShapeRender.DefaultImpls.readyToLowLatencyFlush(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void resetLowLatencyData() {
        ShapeRender.DefaultImpls.resetLowLatencyData(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean useLowLatencyFlush() {
        return ShapeRender.DefaultImpls.useLowLatencyFlush(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NeoPenRender createPenRender$default(PenShapeRender penShapeRender, RenderContext renderContext, Matrix matrix, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createPenRender");
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return penShapeRender.createPenRender(renderContext, matrix, function1);
    }

    public void applyStrokeStyle(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        ShapeRenders.INSTANCE.applyStrokeStyle(this.penShape, renderContext);
    }
}
