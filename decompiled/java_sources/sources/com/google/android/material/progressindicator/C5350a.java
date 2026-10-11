package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.math.MathUtils;
import com.google.android.material.progressindicator.DrawingDelegate;

/* renamed from: com.google.android.material.progressindicator.a */
/* loaded from: classes6.dex */
public final class C5350a extends DrawingDelegate<CircularProgressIndicatorSpec> {

    /* renamed from: g */
    public static final float f31937g = 0.01f;

    /* renamed from: b */
    public float f31938b;

    /* renamed from: c */
    public float f31939c;

    /* renamed from: d */
    public float f31940d;

    /* renamed from: e */
    public boolean f31941e;

    /* renamed from: f */
    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float f31942f;

    public C5350a(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: a */
    public void mo24457a(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = 0.0d, m280to = 1.0d) float f, boolean z, boolean z2) {
        float width = rect.width() / mo24462f();
        float height = rect.height() / mo24461e();
        S s = this.f31928a;
        float f2 = (((CircularProgressIndicatorSpec) s).indicatorSize / 2.0f) + ((CircularProgressIndicatorSpec) s).indicatorInset;
        canvas.translate((f2 * width) + rect.left, (f2 * height) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(width, height);
        if (((CircularProgressIndicatorSpec) this.f31928a).indicatorDirection != 0) {
            canvas.scale(1.0f, -1.0f);
        }
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        S s2 = this.f31928a;
        this.f31941e = ((CircularProgressIndicatorSpec) s2).trackThickness / 2 <= ((CircularProgressIndicatorSpec) s2).trackCornerRadius;
        this.f31938b = ((CircularProgressIndicatorSpec) s2).trackThickness * f;
        this.f31939c = Math.min(((CircularProgressIndicatorSpec) s2).trackThickness / 2, ((CircularProgressIndicatorSpec) s2).trackCornerRadius) * f;
        S s3 = this.f31928a;
        float f4 = (((CircularProgressIndicatorSpec) s3).indicatorSize - ((CircularProgressIndicatorSpec) s3).trackThickness) / 2.0f;
        this.f31940d = f4;
        if (z || z2) {
            if ((z && ((CircularProgressIndicatorSpec) s3).showAnimationBehavior == 2) || (z2 && ((CircularProgressIndicatorSpec) s3).hideAnimationBehavior == 1)) {
                this.f31940d = f4 + (((1.0f - f) * ((CircularProgressIndicatorSpec) s3).trackThickness) / 2.0f);
            } else if ((z && ((CircularProgressIndicatorSpec) s3).showAnimationBehavior == 1) || (z2 && ((CircularProgressIndicatorSpec) s3).hideAnimationBehavior == 2)) {
                this.f31940d = f4 - (((1.0f - f) * ((CircularProgressIndicatorSpec) s3).trackThickness) / 2.0f);
            }
        }
        if (z2 && ((CircularProgressIndicatorSpec) s3).hideAnimationBehavior == 3) {
            this.f31942f = f;
        } else {
            this.f31942f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: b */
    public void mo24458b(@NonNull Canvas canvas, @NonNull Paint paint, @ColorInt int i, @IntRange(from = 0, m281to = 255) int i2) {
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: c */
    public void mo24459c(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull DrawingDelegate.ActiveIndicator activeIndicator, @IntRange(from = 0, m281to = 255) int i) {
        int compositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(activeIndicator.f31931c, i);
        float f = activeIndicator.f31929a;
        float f2 = activeIndicator.f31930b;
        int i2 = activeIndicator.f31932d;
        m24473h(canvas, paint, f, f2, compositeARGBWithAlpha, i2, i2);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: d */
    public void mo24460d(@NonNull Canvas canvas, @NonNull Paint paint, float f, float f2, @ColorInt int i, @IntRange(from = 0, m281to = 255) int i2, int i3) {
        m24473h(canvas, paint, f, f2, MaterialColors.compositeARGBWithAlpha(i, i2), i3, i3);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: e */
    public int mo24461e() {
        return m24476k();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: f */
    public int mo24462f() {
        return m24476k();
    }

    /* renamed from: h */
    public final void m24473h(@NonNull Canvas canvas, @NonNull Paint paint, float f, float f2, @ColorInt int i, @Px int i2, @Px int i3) {
        float f3 = f2 >= f ? f2 - f : (f2 + 1.0f) - f;
        float f4 = f % 1.0f;
        if (this.f31942f < 1.0f) {
            float f5 = f4 + f3;
            if (f5 > 1.0f) {
                m24473h(canvas, paint, f4, 1.0f, i, i2, 0);
                m24473h(canvas, paint, 1.0f, f5, i, 0, i3);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.f31939c / this.f31940d);
        if (f4 == 0.0f && f3 >= 0.99f) {
            f3 += ((f3 - 0.99f) * ((degrees * 2.0f) / 360.0f)) / 0.01f;
        }
        float lerp = MathUtils.lerp(1.0f - this.f31942f, 1.0f, f4);
        float lerp2 = MathUtils.lerp(0.0f, this.f31942f, f3);
        float degrees2 = (float) Math.toDegrees(i2 / this.f31940d);
        float degrees3 = ((lerp2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i3 / this.f31940d));
        float f6 = (lerp * 360.0f) + degrees2;
        if (degrees3 <= 0.0f) {
            return;
        }
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f31938b);
        float f7 = degrees * 2.0f;
        if (degrees3 < f7) {
            float f8 = degrees3 / f7;
            paint.setStyle(Paint.Style.FILL);
            m24475j(canvas, paint, f6 + (degrees * f8), this.f31939c * 2.0f, this.f31938b, f8);
            return;
        }
        float f9 = this.f31940d;
        RectF rectF = new RectF(-f9, -f9, f9, f9);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(this.f31941e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f10 = f6 + degrees;
        canvas.drawArc(rectF, f10, degrees3 - f7, false, paint);
        if (this.f31941e || this.f31939c <= 0.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        m24474i(canvas, paint, f10, this.f31939c * 2.0f, this.f31938b);
        m24474i(canvas, paint, (f6 + degrees3) - degrees, this.f31939c * 2.0f, this.f31938b);
    }

    /* renamed from: i */
    public final void m24474i(@NonNull Canvas canvas, @NonNull Paint paint, float f, float f2, float f3) {
        m24475j(canvas, paint, f, f2, f3, 1.0f);
    }

    /* renamed from: j */
    public final void m24475j(@NonNull Canvas canvas, @NonNull Paint paint, float f, float f2, float f3, float f4) {
        float min = (int) Math.min(f3, this.f31938b);
        float f5 = f2 / 2.0f;
        float min2 = Math.min(f5, (this.f31939c * min) / this.f31938b);
        RectF rectF = new RectF((-min) / 2.0f, (-f2) / 2.0f, min / 2.0f, f5);
        canvas.save();
        double d = f;
        canvas.translate((float) (this.f31940d * Math.cos(Math.toRadians(d))), (float) (this.f31940d * Math.sin(Math.toRadians(d))));
        canvas.rotate(f);
        canvas.scale(f4, f4);
        canvas.drawRoundRect(rectF, min2, min2, paint);
        canvas.restore();
    }

    /* renamed from: k */
    public final int m24476k() {
        S s = this.f31928a;
        return ((CircularProgressIndicatorSpec) s).indicatorSize + (((CircularProgressIndicatorSpec) s).indicatorInset * 2);
    }
}
