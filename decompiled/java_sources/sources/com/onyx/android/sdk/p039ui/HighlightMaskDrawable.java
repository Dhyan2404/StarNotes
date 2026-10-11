package com.onyx.android.sdk.p039ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rR\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "", "getOpacity", "alpha", "setAlpha", "Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "Landroid/graphics/RectF;", "rect", "setBounds", "setHighlightRect", "a", "I", "maskColor", "b", "Landroid/graphics/RectF;", "highlight", "Landroid/graphics/Paint;", "c", "Landroid/graphics/Paint;", "paint", "d", "eraserPaint", Constants.CONSTRUCTOR_NAME, "()V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHighlightMaskDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HighlightMaskDrawable.kt\ncom/onyx/android/sdk/ui/HighlightMaskDrawable\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,55:1\n344#2,3:56\n*S KotlinDebug\n*F\n+ 1 HighlightMaskDrawable.kt\ncom/onyx/android/sdk/ui/HighlightMaskDrawable\n*L\n48#1:56,3\n*E\n"})
/* loaded from: classes8.dex */
public final class HighlightMaskDrawable extends Drawable {

    /* renamed from: a, reason: from kotlin metadata */
    public final int maskColor = ResManager.INSTANCE.getColor(C7106R.color.black_percent_70);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RectF highlight = new RectF();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Paint eraserPaint;

    public HighlightMaskDrawable() {
        Paint paint = new Paint();
        this.paint = paint;
        Paint paint2 = new Paint();
        this.eraserPaint = paint2;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint2.setColor(-1);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint2.setAntiAlias(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawColor(this.maskColor);
        canvas.drawRect(this.highlight, this.eraserPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
    }

    public final void setBounds(@NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Rect rect2 = new Rect();
        rect.roundOut(rect2);
        setBounds(rect2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    public final void setHighlightRect(@NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.highlight.set(rect);
        invalidateSelf();
    }
}
