package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u000f¢\u0006\u0004\b/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0017J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0013\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000fJ\b\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0016\u0010\r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0017R\u0016\u0010\u001d\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010 R\u0014\u0010%\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010 R\u0014\u0010'\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010 R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "", "alpha", "setAlpha", "Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "getOpacity", "color", "setColor", "", "radius", "setCornerRadius", "width", "setStroke", "Landroid/graphics/RectF;", "b", "a", "I", "F", "cornerRadius", "c", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "d", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "Landroid/graphics/Paint;", "e", "Landroid/graphics/Paint;", "bgFill", C6997f.f39671c, "paint", C6998g.f39679a, "strokePaint", C6999h.f39688c, "alphaFill", "Landroid/graphics/Path;", "i", "Landroid/graphics/Path;", "path", "j", "Landroid/graphics/RectF;", "rectF", Constants.CONSTRUCTOR_NAME, "(IFIF)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorAddDrawable extends Drawable {

    /* renamed from: a, reason: from kotlin metadata */
    public int color;

    /* renamed from: b, reason: from kotlin metadata */
    public float cornerRadius;

    /* renamed from: c, reason: from kotlin metadata */
    public int strokeColor;

    /* renamed from: d, reason: from kotlin metadata */
    public float strokeWidth;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Paint bgFill;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Paint strokePaint;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Paint alphaFill;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Path path;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public RectF rectF;

    public /* synthetic */ ColorAddDrawable(int i, float f, int i2, float f2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i3 & 2) != 0 ? 0.0f : f, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? 0.0f : f2);
    }

    /* renamed from: a */
    public final void m51253a(Canvas canvas) {
        Path path = new Path();
        RectF m51254b = m51254b();
        float f = this.cornerRadius;
        path.addRoundRect(m51254b, f, f, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(path);
        float f2 = this.cornerRadius;
        canvas.drawRoundRect(m51254b, f2, f2, this.bgFill);
        float width = m51254b.width() / 8.0f;
        for (int i = 0; i < 9; i++) {
            for (int i2 = 0; i2 < 9; i2++) {
                if ((i + i2) % 2 == 0) {
                    float f3 = m51254b.left + (i * width);
                    float f4 = m51254b.top + (i2 * width);
                    canvas.drawRect(f3, f4, f3 + width, f4 + width, this.alphaFill);
                }
            }
        }
        canvas.restore();
    }

    /* renamed from: b */
    public final RectF m51254b() {
        Intrinsics.checkNotNullExpressionValue(getBounds(), "getBounds(...)");
        return new RectF(r4.left, r4.top, r4.right, r4.bottom);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (getBounds().isEmpty()) {
            return;
        }
        m51253a(canvas);
        if (this.path.isEmpty() || !Intrinsics.areEqual(this.rectF, m51254b())) {
            this.rectF = m51254b();
            this.path.reset();
            Path path = this.path;
            RectF rectF = this.rectF;
            float f = this.cornerRadius;
            path.addRoundRect(rectF, f, f, Path.Direction.CW);
        }
        canvas.drawPath(this.path, this.paint);
        if (this.strokeWidth <= 0.0f || this.strokeColor == 0) {
            return;
        }
        canvas.drawPath(this.path, this.strokePaint);
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated(message = "Deprecated in Java")
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.paint.setAlpha(alpha);
        this.strokePaint.setAlpha(alpha);
        invalidateSelf();
    }

    public final void setColor(int color) {
        this.color = color;
        this.paint.setColor(color);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        this.strokePaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public final void setCornerRadius(float radius) {
        this.cornerRadius = radius;
        invalidateSelf();
    }

    public final void setStroke(int color, float width) {
        this.strokeColor = color;
        this.strokeWidth = width;
        this.strokePaint.setColor(color);
        this.strokePaint.setStrokeWidth(width);
        invalidateSelf();
    }

    public ColorAddDrawable(int i, float f, int i2, float f2) {
        this.color = i;
        this.cornerRadius = f;
        this.strokeColor = i2;
        this.strokeWidth = f2;
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        this.bgFill = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(this.color);
        this.paint = paint2;
        Paint paint3 = new Paint(1);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setColor(this.strokeColor);
        paint3.setStrokeWidth(this.strokeWidth);
        this.strokePaint = paint3;
        Paint paint4 = new Paint();
        paint4.setColor(ResManager.INSTANCE.getColor(C10651R.color.black_10));
        paint4.setStyle(Paint.Style.FILL);
        this.alphaFill = paint4;
        this.path = new Path();
        this.rectF = new RectF();
    }
}
