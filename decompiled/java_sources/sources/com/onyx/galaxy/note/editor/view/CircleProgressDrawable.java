package com.onyx.galaxy.note.editor.view;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0017J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\rR\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001eR\u0014\u0010#\u001a\u00020\r8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\"\u0010\u001b¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "", "alpha", "setAlpha", "Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "getOpacity", "", "widthInPx", "setProgressWidth", "color", "setBackgroundArcColor", "setProgressArcColor", "progress", "setProgress", "Landroid/graphics/Paint;", "a", "Lkotlin/Lazy;", "()Landroid/graphics/Paint;", "paint", "b", "F", "sweepAngle", "c", "I", "backgroundArcColor", "d", "progressArcColor", "e", "startAngle", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CircleProgressDrawable extends Drawable {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy paint;

    /* renamed from: b, reason: from kotlin metadata */
    public float sweepAngle;

    /* renamed from: c, reason: from kotlin metadata */
    public int backgroundArcColor;

    /* renamed from: d, reason: from kotlin metadata */
    public int progressArcColor;

    /* renamed from: e, reason: from kotlin metadata */
    public final float startAngle;

    public CircleProgressDrawable() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.galaxy.note.editor.view.CircleProgressDrawable$paint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeCap(Paint.Cap.ROUND);
                paint.setStrokeWidth(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_2));
                return paint;
            }
        });
        this.paint = lazy;
        ResManager resManager = ResManager.INSTANCE;
        this.backgroundArcColor = resManager.getColor(C10651R.color.primary_50);
        this.progressArcColor = resManager.getColor(C7996R.color.theme_primary_color_01);
        this.startAngle = -90.0f;
    }

    /* renamed from: a */
    public final Paint m47098a() {
        return (Paint) this.paint.getValue();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullExpressionValue(getBounds(), "getBounds(...)");
        m47098a().setColor(this.backgroundArcColor);
        float strokeWidth = m47098a().getStrokeWidth() / 2.0f;
        canvas.drawArc(r0.left + strokeWidth, r0.top + strokeWidth, r0.right - strokeWidth, r0.bottom - strokeWidth, 0.0f, 360.0f, false, m47098a());
        m47098a().setColor(this.progressArcColor);
        canvas.drawArc(r0.left + strokeWidth, r0.top + strokeWidth, r0.right - strokeWidth, r0.bottom - strokeWidth, this.startAngle, this.sweepAngle, false, m47098a());
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated(message = "Deprecated in Java", replaceWith = @ReplaceWith(expression = "PixelFormat.TRANSPARENT", imports = {"android.graphics.PixelFormat"}))
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        m47098a().setAlpha(alpha);
    }

    public final void setBackgroundArcColor(int color) {
        this.backgroundArcColor = color;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        m47098a().setColorFilter(colorFilter);
    }

    public final void setProgress(float progress) {
        this.sweepAngle = 360 * progress;
        invalidateSelf();
    }

    public final void setProgressArcColor(int color) {
        this.progressArcColor = color;
        invalidateSelf();
    }

    public final void setProgressWidth(float widthInPx) {
        m47098a().setStrokeWidth(widthInPx);
        invalidateSelf();
    }
}
