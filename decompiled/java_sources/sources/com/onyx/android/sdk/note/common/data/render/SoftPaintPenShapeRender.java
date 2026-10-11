package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.pen.NeoBrushSignPen;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH\u0002J0\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0016J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0012H\u0016J\b\u0010\u001a\u001a\u00020\u000fH\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;", "Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;", "penShape", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V", "createPenConfig", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "renderMatrix", "Landroid/graphics/Matrix;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "createPenRender", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", AbstractLogger.CONFIG, "Lkotlin/Function1;", "", "penConfig", "segment", "", "defaultPenConfig", "lowLatencyFlush", Constants.RESET, "onLowLatencyTouchData", "touchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "readyToLowLatencyFlush", "resetLowLatencyData", "useLowLatencyFlush", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SoftPaintPenShapeRender extends BrushPenShapeRender {

    /* renamed from: d */
    public static final int f43284d = 1000000;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SoftPaintPenShapeRender(@NotNull PenShape penShape) {
        super(penShape);
        Intrinsics.checkNotNullParameter(penShape, "penShape");
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @NotNull
    public NeoPenConfig createPenConfig(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        NeoPenConfig defaultPenConfig = defaultPenConfig();
        defaultPenConfig.m72313setDisplayScaleX(MatrixKt.getScaleX(renderMatrix) / getPenShape().getShapeCreateArgs().getDisplayScale());
        defaultPenConfig.m72314setDisplayScaleY(MatrixKt.getScaleY(renderMatrix) / getPenShape().getShapeCreateArgs().getDisplayScale());
        return defaultPenConfig;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull RenderContext renderContext, @NotNull Matrix renderMatrix, @Nullable Function1<? super NeoPenConfig, Unit> config) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        NeoPenConfig createPenConfig = createPenConfig(renderContext, renderMatrix);
        if (config != null) {
            config.invoke(createPenConfig);
        }
        return PenShapeRender.createPenRender$default(this, createPenConfig, false, 2, null);
    }

    public final NeoPenConfig defaultPenConfig() {
        return NeoBrushSignPen.INSTANCE.defaultPenConfig();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyFlush(@NotNull RenderContext renderContext, boolean reset) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getPenShape().lowLatencyFlush(renderContext, getNeoPenRender(), reset);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (touchData.isTouchDown()) {
            applyPaintStyle(renderContext);
        }
        super.onLowLatencyTouchData(renderContext, touchData);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean readyToLowLatencyFlush() {
        NeoPenRender neoPenRender = getNeoPenRender();
        SoftPaintPenRenderWrapper softPaintPenRenderWrapper = neoPenRender instanceof SoftPaintPenRenderWrapper ? (SoftPaintPenRenderWrapper) neoPenRender : null;
        return (softPaintPenRenderWrapper == null || softPaintPenRenderWrapper.isUnlimitedPointCountThreshold() || softPaintPenRenderWrapper.getBrushPointCount() < 1000000) ? false : true;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void resetLowLatencyData() {
        NeoPenRender neoPenRender = getNeoPenRender();
        if (neoPenRender != null) {
            neoPenRender.reset();
        }
    }

    @Override // com.onyx.android.sdk.note.common.data.render.PenShapeRender, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean useLowLatencyFlush() {
        return true;
    }

    public final NeoPenConfig createPenConfig(RenderContext renderContext, Matrix renderMatrix) {
        NeoPenConfig createPenConfig = createPenConfig(renderMatrix);
        createPenConfig.m72321setWidth(ShapeRenders.INSTANCE.getRenderStrokeWidth(getPenShape(), renderContext));
        createPenConfig.m72312setColor(renderContext.getPaint().getColor());
        return createPenConfig;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull NeoPenConfig penConfig, boolean segment) {
        Intrinsics.checkNotNullParameter(penConfig, "penConfig");
        return SoftPaintPenRenderWrapper.INSTANCE.create(penConfig, segment);
    }
}
