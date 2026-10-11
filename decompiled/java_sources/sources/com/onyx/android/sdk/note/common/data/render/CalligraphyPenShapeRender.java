package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.NeoSquarePen;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH\u0004J0\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0016J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;", "Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;", "penShape", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V", "createPenConfig", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "renderMatrix", "Landroid/graphics/Matrix;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "createPenRender", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", AbstractLogger.CONFIG, "Lkotlin/Function1;", "", "penConfig", "segment", "", "defaultPenConfig", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class CalligraphyPenShapeRender extends BrushPenShapeRender {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CalligraphyPenShapeRender(@NotNull PenShape penShape) {
        super(penShape);
        Intrinsics.checkNotNullParameter(penShape, "penShape");
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @NotNull
    public NeoPenConfig createPenConfig(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        ShapeCreateArgs shapeCreateArgs = getPenShape().getShapeCreateArgs();
        NeoPenConfig defaultPenConfig = defaultPenConfig();
        defaultPenConfig.setDirectionEnabled(shapeCreateArgs.getDirectionEnabled());
        defaultPenConfig.setBrushShape(shapeCreateArgs.getBrushShape());
        defaultPenConfig.setSmoothLevel(shapeCreateArgs.getSmoothLevel());
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

    @NotNull
    public NeoPenConfig defaultPenConfig() {
        return NeoSquarePen.INSTANCE.defaultPenConfig();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender, com.onyx.android.sdk.note.common.data.render.PenShapeRender
    @Nullable
    public NeoPenRender createPenRender(@NotNull NeoPenConfig penConfig, boolean segment) {
        Intrinsics.checkNotNullParameter(penConfig, "penConfig");
        return CalligraphyPenRenderWrapper.INSTANCE.create(penConfig, segment);
    }

    @NotNull
    public final NeoPenConfig createPenConfig(@NotNull RenderContext renderContext, @NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        ShapeCreateArgs shapeCreateArgs = getPenShape().getShapeCreateArgs();
        NeoPenConfig defaultPenConfig = defaultPenConfig();
        defaultPenConfig.setDirectionEnabled(shapeCreateArgs.getDirectionEnabled());
        defaultPenConfig.setBrushShape(shapeCreateArgs.getBrushShape());
        defaultPenConfig.m72321setWidth(ShapeRenders.INSTANCE.getRenderStrokeWidth(getPenShape(), renderContext));
        defaultPenConfig.m72312setColor(renderContext.getPaint().getColor());
        defaultPenConfig.setSmoothLevel(getPenShape().getShapeCreateArgs().getSmoothLevel());
        defaultPenConfig.m72313setDisplayScaleX(MatrixKt.getScaleX(renderMatrix) / getPenShape().getShapeCreateArgs().getDisplayScale());
        defaultPenConfig.m72314setDisplayScaleY(MatrixKt.getScaleY(renderMatrix) / getPenShape().getShapeCreateArgs().getDisplayScale());
        return defaultPenConfig;
    }
}
