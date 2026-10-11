package com.onyx.android.sdk.note.common.shape.extras;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;", "", "draw", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "renderMatrix", "Landroid/graphics/Matrix;", "getDefaultDashLinePaint", "Landroid/graphics/Paint;", "getDefaultSolidLinePaint", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeExtrasRender {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static Paint getDefaultDashLinePaint(@NotNull ShapeExtrasRender shapeExtrasRender) {
            DimenUtils dimenUtils = DimenUtils.INSTANCE;
            float dp2PxFloat = dimenUtils.dp2PxFloat(2.0f);
            float dp2PxFloat2 = dimenUtils.dp2PxFloat(2.0f);
            Paint paint = new Paint();
            paint.setColor(-16776961);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(dimenUtils.dp2PxFloat(0.5f));
            paint.setPathEffect(new DashPathEffect(new float[]{dp2PxFloat, dp2PxFloat2}, 0.0f));
            return paint;
        }

        @NotNull
        public static Paint getDefaultSolidLinePaint(@NotNull ShapeExtrasRender shapeExtrasRender) {
            Paint paint = new Paint();
            paint.setColor(-16776961);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(DimenUtils.INSTANCE.dp2PxFloat(1.0f));
            return paint;
        }
    }

    void draw(@NotNull Canvas canvas, @NotNull UniversalShape shape, @NotNull Matrix renderMatrix);

    @NotNull
    Paint getDefaultDashLinePaint();

    @NotNull
    Paint getDefaultSolidLinePaint();
}
