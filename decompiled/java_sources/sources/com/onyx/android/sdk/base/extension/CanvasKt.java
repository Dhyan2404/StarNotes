package com.onyx.android.sdk.base.extension;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a.\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u001a.\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u001a*\u0010\u0010\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014\u001aA\u0010\u0016\u001a\u00020\u0006*\u00020\u00022\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f2\u0017\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u001a¢\u0006\u0002\b\u001bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001c"}, m61528d2 = {"boundingRect", "Landroid/graphics/Rect;", "Landroid/graphics/Canvas;", "boundingRectF", "Landroid/graphics/RectF;", "drawBitmapFloorLeftTop", "", "bitmap", "Landroid/graphics/Bitmap;", Constant.SRC_TAG, "dst", "paint", "Landroid/graphics/Paint;", "left", "", OneDriverConstants.TOP, "drawTextFromCenter", "text", "", "centerX", "", "centerY", "withSaveLayer", "saveBound", "savePaint", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CanvasKt {
    @NotNull
    public static final Rect boundingRect(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        return new Rect(0, 0, canvas.getWidth(), canvas.getHeight());
    }

    @NotNull
    public static final RectF boundingRectF(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        return new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
    }

    public static final void drawBitmapFloorLeftTop(@NotNull Canvas canvas, @NotNull Bitmap bitmap, @NotNull Rect src, @NotNull RectF dst, @Nullable Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(dst, "dst");
        RectF rectF = new RectF(dst);
        rectF.offsetTo(FloatKt.floor(rectF.left), FloatKt.floor(rectF.top));
        canvas.drawBitmap(bitmap, src, rectF, paint);
    }

    public static /* synthetic */ void drawBitmapFloorLeftTop$default(Canvas canvas, Bitmap bitmap, Rect rect, RectF rectF, Paint paint, int i, Object obj) {
        if ((i & 8) != 0) {
            paint = null;
        }
        drawBitmapFloorLeftTop(canvas, bitmap, rect, rectF, paint);
    }

    public static final void drawTextFromCenter(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull String text, @NotNull Number centerX, @NotNull Number centerY) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(centerX, "centerX");
        Intrinsics.checkNotNullParameter(centerY, "centerY");
        float measureText = paint.measureText(text);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f = 2;
        canvas.drawText(text, 0, text.length(), centerX.floatValue() - (measureText / f), centerY.floatValue() - ((fontMetrics.ascent + fontMetrics.descent) / f), paint);
    }

    public static final void withSaveLayer(@NotNull Canvas canvas, @Nullable RectF rectF, @Nullable Paint paint, @NotNull Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int saveLayer = canvas.saveLayer(rectF, paint);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(saveLayer);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withSaveLayer$default(Canvas canvas, RectF rectF, Paint paint, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            rectF = null;
        }
        if ((i & 2) != 0) {
            paint = null;
        }
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int saveLayer = canvas.saveLayer(rectF, paint);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(saveLayer);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void drawBitmapFloorLeftTop$default(Canvas canvas, Bitmap bitmap, float f, float f2, Paint paint, int i, Object obj) {
        if ((i & 8) != 0) {
            paint = null;
        }
        drawBitmapFloorLeftTop(canvas, bitmap, f, f2, paint);
    }

    public static final void drawBitmapFloorLeftTop(@NotNull Canvas canvas, @NotNull Bitmap bitmap, float f, float f2, @Nullable Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        canvas.drawBitmap(bitmap, FloatKt.floor(f), FloatKt.floor(f2), paint);
    }
}
