package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J*\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H&J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&J \u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H&J\b\u0010\u0016\u001a\u00020\u0003H&J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0007H&¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;", "", "drawCircle", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "radius", "", "pts", "", "drawDotted", "matrix", "Landroid/graphics/Matrix;", "adaptiveSpacing", "", "useShader", "drawLine", "drawRect", "rectF", "Landroid/graphics/RectF;", "recycle", "spaceAdaptive", "space", "total", "strokeColorAdaptive", "strokePaint", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IGeoLayoutDrawer {
    void drawCircle(@NotNull Canvas canvas, @NotNull Paint paint, float radius, @NotNull float[] pts);

    void drawDotted(@NotNull Canvas canvas, @Nullable Matrix matrix, boolean adaptiveSpacing, boolean useShader);

    void drawLine(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull float[] pts);

    void drawRect(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull RectF rectF);

    void recycle();

    float spaceAdaptive(float space, float total);

    void strokeColorAdaptive(@NotNull Paint strokePaint);
}
