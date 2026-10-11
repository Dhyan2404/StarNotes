package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\b&\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b-\u0010.J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H&J\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016R\"\u0010\u001d\u001a\u00020\u00168\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\u0016\u0010\r\u001a\u00020\f8\u0004@\u0004X\u0085\u000e¢\u0006\u0006\n\u0004\b\r\u0010\"R\u001a\u0010'\u001a\u00020\u00058\u0004X\u0084\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001a\u0010,\u001a\u00020\u000f8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;", "Landroid/graphics/drawable/Drawable;", "", "showCorner", "drawBorder", "", "getCornerRadius", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "drawContent", "Landroid/graphics/RectF;", "bounds", "setBounds", "", "getOpacity", "alpha", "setAlpha", "Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "Landroid/graphics/Paint;", "a", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "setPaint", "(Landroid/graphics/Paint;)V", "paint", "b", "getBorderPaint", "setBorderPaint", "borderPaint", "Landroid/graphics/RectF;", "c", "F", "getBorderWidth", "()F", "borderWidth", "d", "I", "getBorderColor", "()I", "borderColor", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHsvBaseDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HsvBaseDrawable.kt\ncom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n1#2:90\n*E\n"})
/* loaded from: classes9.dex */
public abstract class HsvBaseDrawable extends Drawable {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Paint paint = new Paint();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Paint borderPaint = new Paint();

    @JvmField
    @NotNull
    protected RectF bounds = new RectF();

    /* renamed from: c, reason: from kotlin metadata */
    public final float borderWidth;

    /* renamed from: d, reason: from kotlin metadata */
    public final int borderColor;

    public HsvBaseDrawable() {
        float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_0_5);
        this.borderWidth = dimension;
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_divider_color_01);
        this.borderColor = colorById;
        this.paint.setColor(-1);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setAntiAlias(true);
        this.borderPaint.setColor(colorById);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(dimension);
        this.borderPaint.setAntiAlias(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.paint.setColor(ThemeUtils.getColorById(C7996R.color.theme_background_color_01));
        if (showCorner()) {
            canvas.saveLayer(this.bounds, this.paint);
            canvas.drawRoundRect(this.bounds, getCornerRadius(), getCornerRadius(), this.paint);
            this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        }
        drawContent(canvas);
        if (showCorner()) {
            this.paint.setXfermode(null);
            canvas.restore();
        }
        if (drawBorder()) {
            RectF copy = RectFKt.copy(this.bounds);
            RectKt.expand(copy, this.borderWidth / 2);
            canvas.drawRoundRect(copy, getCornerRadius(), getCornerRadius(), this.borderPaint);
        }
    }

    public boolean drawBorder() {
        return false;
    }

    public abstract void drawContent(@NotNull Canvas canvas);

    public final int getBorderColor() {
        return this.borderColor;
    }

    @NotNull
    public final Paint getBorderPaint() {
        return this.borderPaint;
    }

    public final float getBorderWidth() {
        return this.borderWidth;
    }

    public float getCornerRadius() {
        return 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
    }

    public final void setBorderPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.borderPaint = paint;
    }

    public final void setBounds(@NotNull RectF bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        this.bounds = bounds;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    public final void setPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.paint = paint;
    }

    public boolean showCorner() {
        return true;
    }
}
