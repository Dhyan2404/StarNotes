package com.onyx.android.sdk.note.extension;

import android.graphics.Paint;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0003"}, m61528d2 = {"createShapeDrawingPaint", "Landroid/graphics/Paint;", "updateShapeDrawPaintStyle", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PaintKt {
    @NotNull
    public static final Paint createShapeDrawingPaint() {
        Paint paint = new Paint();
        updateShapeDrawPaintStyle(paint);
        return paint;
    }

    @NotNull
    public static final Paint updateShapeDrawPaintStyle(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setColor(-16777216);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeMiter(4.0f);
        return paint;
    }
}
