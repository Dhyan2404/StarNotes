package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;
import androidx.core.content.ContextCompat;
import com.google.android.material.C5139R;

@Deprecated
/* loaded from: classes6.dex */
public class ShadowDrawableWrapper extends DrawableWrapperCompat {

    /* renamed from: v */
    public static final double f32155v = Math.cos(Math.toRadians(45.0d));

    /* renamed from: w */
    public static final float f32156w = 1.5f;

    /* renamed from: x */
    public static final float f32157x = 0.25f;

    /* renamed from: y */
    public static final float f32158y = 0.5f;

    /* renamed from: z */
    public static final float f32159z = 1.0f;

    /* renamed from: f */
    @NonNull
    public final Paint f32160f;

    /* renamed from: g */
    @NonNull
    public final Paint f32161g;

    /* renamed from: h */
    @NonNull
    public final RectF f32162h;

    /* renamed from: i */
    public float f32163i;

    /* renamed from: j */
    public Path f32164j;

    /* renamed from: k */
    public float f32165k;

    /* renamed from: l */
    public float f32166l;

    /* renamed from: m */
    public float f32167m;

    /* renamed from: n */
    public float f32168n;

    /* renamed from: o */
    public boolean f32169o;

    /* renamed from: p */
    public final int f32170p;

    /* renamed from: q */
    public final int f32171q;

    /* renamed from: r */
    public final int f32172r;

    /* renamed from: s */
    public boolean f32173s;

    /* renamed from: t */
    public float f32174t;

    /* renamed from: u */
    public boolean f32175u;

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.f32169o = true;
        this.f32173s = true;
        this.f32175u = false;
        this.f32170p = ContextCompat.getColor(context, C5139R.color.design_fab_shadow_start_color);
        this.f32171q = ContextCompat.getColor(context, C5139R.color.design_fab_shadow_mid_color);
        this.f32172r = ContextCompat.getColor(context, C5139R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.f32160f = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f32163i = Math.round(f);
        this.f32162h = new RectF();
        Paint paint2 = new Paint(paint);
        this.f32161g = paint2;
        paint2.setAntiAlias(false);
        setShadowSize(f2, f3);
    }

    public static float calculateHorizontalPadding(float f, float f2, boolean z) {
        return z ? (float) (f + ((1.0d - f32155v) * f2)) : f;
    }

    public static float calculateVerticalPadding(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f32155v) * f2)) : f * 1.5f;
    }

    /* renamed from: d */
    public static int m24703d(float f) {
        int round = Math.round(f);
        return round % 2 == 1 ? round - 1 : round;
    }

    /* renamed from: a */
    public final void m24704a(@NonNull Rect rect) {
        float f = this.f32166l;
        float f2 = 1.5f * f;
        this.f32162h.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        Drawable drawable = getDrawable();
        RectF rectF = this.f32162h;
        drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        m24705b();
    }

    /* renamed from: b */
    public final void m24705b() {
        float f = this.f32163i;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f32167m;
        rectF2.inset(-f2, -f2);
        Path path = this.f32164j;
        if (path == null) {
            this.f32164j = new Path();
        } else {
            path.reset();
        }
        this.f32164j.setFillType(Path.FillType.EVEN_ODD);
        this.f32164j.moveTo(-this.f32163i, 0.0f);
        this.f32164j.rLineTo(-this.f32167m, 0.0f);
        this.f32164j.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f32164j.arcTo(rectF, 270.0f, -90.0f, false);
        this.f32164j.close();
        float f3 = -rectF2.top;
        if (f3 > 0.0f) {
            float f4 = this.f32163i / f3;
            this.f32160f.setShader(new RadialGradient(0.0f, 0.0f, f3, new int[]{0, this.f32170p, this.f32171q, this.f32172r}, new float[]{0.0f, f4, ((1.0f - f4) / 2.0f) + f4, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f32161g.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f32170p, this.f32171q, this.f32172r}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f32161g.setAntiAlias(false);
    }

    /* renamed from: c */
    public final void m24706c(@NonNull Canvas canvas) {
        int i;
        float f;
        int i2;
        float f2;
        float f3;
        float f4;
        int save = canvas.save();
        canvas.rotate(this.f32174t, this.f32162h.centerX(), this.f32162h.centerY());
        float f5 = this.f32163i;
        float f6 = (-f5) - this.f32167m;
        float f7 = f5 * 2.0f;
        boolean z = this.f32162h.width() - f7 > 0.0f;
        boolean z2 = this.f32162h.height() - f7 > 0.0f;
        float f8 = this.f32168n;
        float f9 = f5 / ((f8 - (0.5f * f8)) + f5);
        float f10 = f5 / ((f8 - (0.25f * f8)) + f5);
        float f11 = f5 / ((f8 - (f8 * 1.0f)) + f5);
        int save2 = canvas.save();
        RectF rectF = this.f32162h;
        canvas.translate(rectF.left + f5, rectF.top + f5);
        canvas.scale(f9, f10);
        canvas.drawPath(this.f32164j, this.f32160f);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            i = save2;
            f = f11;
            i2 = save;
            f2 = f10;
            canvas.drawRect(0.0f, f6, this.f32162h.width() - f7, -this.f32163i, this.f32161g);
        } else {
            i = save2;
            f = f11;
            i2 = save;
            f2 = f10;
        }
        canvas.restoreToCount(i);
        int save3 = canvas.save();
        RectF rectF2 = this.f32162h;
        canvas.translate(rectF2.right - f5, rectF2.bottom - f5);
        float f12 = f;
        canvas.scale(f9, f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f32164j, this.f32160f);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            f3 = f2;
            f4 = f12;
            canvas.drawRect(0.0f, f6, this.f32162h.width() - f7, (-this.f32163i) + this.f32167m, this.f32161g);
        } else {
            f3 = f2;
            f4 = f12;
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.f32162h;
        canvas.translate(rectF3.left + f5, rectF3.bottom - f5);
        canvas.scale(f9, f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f32164j, this.f32160f);
        if (z2) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f6, this.f32162h.height() - f7, -this.f32163i, this.f32161g);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.f32162h;
        canvas.translate(rectF4.right - f5, rectF4.top + f5);
        float f13 = f3;
        canvas.scale(f9, f13);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f32164j, this.f32160f);
        if (z2) {
            canvas.scale(1.0f / f13, 1.0f);
            canvas.drawRect(0.0f, f6, this.f32162h.height() - f7, -this.f32163i, this.f32161g);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(i2);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f32169o) {
            m24704a(getBounds());
            this.f32169o = false;
        }
        m24706c(canvas);
        super.draw(canvas);
    }

    public float getCornerRadius() {
        return this.f32163i;
    }

    public float getMaxShadowSize() {
        return this.f32166l;
    }

    public float getMinHeight() {
        float f = this.f32166l;
        return (Math.max(f, this.f32163i + ((f * 1.5f) / 2.0f)) * 2.0f) + (this.f32166l * 1.5f * 2.0f);
    }

    public float getMinWidth() {
        float f = this.f32166l;
        return (Math.max(f, this.f32163i + (f / 2.0f)) * 2.0f) + (this.f32166l * 2.0f);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        int ceil = (int) Math.ceil(calculateVerticalPadding(this.f32166l, this.f32163i, this.f32173s));
        int ceil2 = (int) Math.ceil(calculateHorizontalPadding(this.f32166l, this.f32163i, this.f32173s));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public float getShadowSize() {
        return this.f32168n;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f32169o = true;
    }

    public void setAddPaddingForCorners(boolean z) {
        this.f32173s = z;
        invalidateSelf();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f32160f.setAlpha(i);
        this.f32161g.setAlpha(i);
    }

    public void setCornerRadius(float f) {
        float round = Math.round(f);
        if (this.f32163i == round) {
            return;
        }
        this.f32163i = round;
        this.f32169o = true;
        invalidateSelf();
    }

    public void setMaxShadowSize(float f) {
        setShadowSize(this.f32168n, f);
    }

    public final void setRotation(float f) {
        if (this.f32174t != f) {
            this.f32174t = f;
            invalidateSelf();
        }
    }

    public void setShadowSize(float f, float f2) {
        if (f >= 0.0f && f2 >= 0.0f) {
            float m24703d = m24703d(f);
            float m24703d2 = m24703d(f2);
            if (m24703d > m24703d2) {
                if (!this.f32175u) {
                    this.f32175u = true;
                }
                m24703d = m24703d2;
            }
            if (this.f32168n == m24703d && this.f32166l == m24703d2) {
                return;
            }
            this.f32168n = m24703d;
            this.f32166l = m24703d2;
            this.f32167m = Math.round(m24703d * 1.5f);
            this.f32165k = m24703d2;
            this.f32169o = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("invalid shadow size");
    }

    public void setShadowSize(float f) {
        setShadowSize(f, this.f32166l);
    }
}
