package com.onyx.android.sdk.note.common.shape.extras;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u001b\u0010\u000e\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\rR\u001b\u0010\u0010\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u000f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;", "Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "Landroid/graphics/Matrix;", "renderMatrix", "", "draw", "Landroid/graphics/Paint;", "a", "Lkotlin/Lazy;", "()Landroid/graphics/Paint;", "dashPaint", "b", "solidPaint", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OvalExtrasRender implements ShapeExtrasRender {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy dashPaint;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy solidPaint;

    public OvalExtrasRender() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.note.common.shape.extras.OvalExtrasRender$dashPaint$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                return OvalExtrasRender.this.getDefaultDashLinePaint();
            }
        });
        this.dashPaint = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.note.common.shape.extras.OvalExtrasRender$solidPaint$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                return OvalExtrasRender.this.getDefaultSolidLinePaint();
            }
        });
        this.solidPaint = lazy2;
    }

    /* renamed from: a */
    public final Paint m33807a() {
        return (Paint) this.dashPaint.getValue();
    }

    /* renamed from: b */
    public final Paint m33808b() {
        return (Paint) this.solidPaint.getValue();
    }

    @Override // com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender
    public void draw(@NotNull Canvas canvas, @NotNull UniversalShape shape, @NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        List<TouchPoint> concatTransform = GeometryUtils.INSTANCE.concatTransform(shape.getSelectionPoints(), shape.getShapeMatrix(), renderMatrix);
        TouchPointPair touchPointPair = new TouchPointPair(concatTransform.get(0), concatTransform.get(2));
        TouchPointPair touchPointPair2 = new TouchPointPair(concatTransform.get(1), concatTransform.get(3));
        float abs = Math.abs(touchPointPair.length() - touchPointPair2.length());
        float min = Math.min(touchPointPair.length(), touchPointPair2.length());
        GeometryConfigurations geometryConfigurations = GeometryConfigurations.INSTANCE;
        boolean z = abs < ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(min * geometryConfigurations.getCircleOvalDifferThresholdPercent()), Float.valueOf(geometryConfigurations.getCircleOvalDifferThreshold()))).floatValue();
        canvas.drawLine(touchPointPair.getP1().getX(), touchPointPair.getP1().getY(), touchPointPair.getP2().getX(), touchPointPair.getP2().getY(), z ? m33808b() : m33807a());
        canvas.drawLine(touchPointPair2.getP1().getX(), touchPointPair2.getP1().getY(), touchPointPair2.getP2().getX(), touchPointPair2.getP2().getY(), z ? m33808b() : m33807a());
    }

    @Override // com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender
    @NotNull
    public Paint getDefaultDashLinePaint() {
        return ShapeExtrasRender.DefaultImpls.getDefaultDashLinePaint(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender
    @NotNull
    public Paint getDefaultSolidLinePaint() {
        return ShapeExtrasRender.DefaultImpls.getDefaultSolidLinePaint(this);
    }
}
