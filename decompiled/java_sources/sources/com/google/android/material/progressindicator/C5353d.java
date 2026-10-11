package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.math.MathUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.progressindicator.DrawingDelegate;

/* renamed from: com.google.android.material.progressindicator.d */
/* loaded from: classes6.dex */
public final class C5353d extends DrawingDelegate<LinearProgressIndicatorSpec> {

    /* renamed from: b */
    public float f31969b;

    /* renamed from: c */
    public float f31970c;

    /* renamed from: d */
    public float f31971d;

    /* renamed from: e */
    public boolean f31972e;

    /* renamed from: f */
    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float f31973f;

    public C5353d(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.f31969b = 300.0f;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: a */
    public void mo24457a(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = 0.0d, m280to = 1.0d) float f, boolean z, boolean z2) {
        this.f31969b = rect.width();
        float f2 = ((LinearProgressIndicatorSpec) this.f31928a).trackThickness;
        canvas.translate(rect.left + (rect.width() / 2.0f), rect.top + (rect.height() / 2.0f) + Math.max(0.0f, (rect.height() - f2) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.f31928a).f31936a) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f3 = this.f31969b / 2.0f;
        float f4 = f2 / 2.0f;
        canvas.clipRect(-f3, -f4, f3, f4);
        S s = this.f31928a;
        this.f31972e = ((LinearProgressIndicatorSpec) s).trackThickness / 2 == ((LinearProgressIndicatorSpec) s).trackCornerRadius;
        this.f31970c = ((LinearProgressIndicatorSpec) s).trackThickness * f;
        this.f31971d = Math.min(((LinearProgressIndicatorSpec) s).trackThickness / 2, ((LinearProgressIndicatorSpec) s).trackCornerRadius) * f;
        if (z || z2) {
            if ((z && ((LinearProgressIndicatorSpec) this.f31928a).showAnimationBehavior == 2) || (z2 && ((LinearProgressIndicatorSpec) this.f31928a).hideAnimationBehavior == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z || (z2 && ((LinearProgressIndicatorSpec) this.f31928a).hideAnimationBehavior != 3)) {
                canvas.translate(0.0f, (((LinearProgressIndicatorSpec) this.f31928a).trackThickness * (1.0f - f)) / 2.0f);
            }
        }
        if (z2 && ((LinearProgressIndicatorSpec) this.f31928a).hideAnimationBehavior == 3) {
            this.f31973f = f;
        } else {
            this.f31973f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: b */
    public void mo24458b(@NonNull Canvas canvas, @NonNull Paint paint, @ColorInt int i, @IntRange(from = 0, m281to = 255) int i2) {
        int compositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(i, i2);
        if (((LinearProgressIndicatorSpec) this.f31928a).trackStopIndicatorSize <= 0 || compositeARGBWithAlpha == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(compositeARGBWithAlpha);
        PointF pointF = new PointF((this.f31969b / 2.0f) - (this.f31970c / 2.0f), 0.0f);
        S s = this.f31928a;
        m24504i(canvas, paint, pointF, ((LinearProgressIndicatorSpec) s).trackStopIndicatorSize, ((LinearProgressIndicatorSpec) s).trackStopIndicatorSize);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: c */
    public void mo24459c(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull DrawingDelegate.ActiveIndicator activeIndicator, int i) {
        int compositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(activeIndicator.f31931c, i);
        float f = activeIndicator.f31929a;
        float f2 = activeIndicator.f31930b;
        int i2 = activeIndicator.f31932d;
        m24503h(canvas, paint, f, f2, compositeARGBWithAlpha, i2, i2);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: d */
    public void mo24460d(@NonNull Canvas canvas, @NonNull Paint paint, float f, float f2, int i, int i2, @Px int i3) {
        m24503h(canvas, paint, f, f2, MaterialColors.compositeARGBWithAlpha(i, i2), i3, i3);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: e */
    public int mo24461e() {
        return ((LinearProgressIndicatorSpec) this.f31928a).trackThickness;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    /* renamed from: f */
    public int mo24462f() {
        return -1;
    }

    /* renamed from: h */
    public final void m24503h(@NonNull Canvas canvas, @NonNull Paint paint, float f, float f2, @ColorInt int i, @Px int i2, @Px int i3) {
        float clamp = MathUtils.clamp(f, 0.0f, 1.0f);
        float clamp2 = MathUtils.clamp(f2, 0.0f, 1.0f);
        float lerp = com.google.android.material.math.MathUtils.lerp(1.0f - this.f31973f, 1.0f, clamp);
        float lerp2 = com.google.android.material.math.MathUtils.lerp(1.0f - this.f31973f, 1.0f, clamp2);
        int clamp3 = (int) ((i2 * MathUtils.clamp(lerp, 0.0f, 0.01f)) / 0.01f);
        int clamp4 = (int) ((i3 * (1.0f - MathUtils.clamp(lerp2, 0.99f, 1.0f))) / 0.01f);
        float f3 = this.f31969b;
        int i4 = (int) ((lerp * f3) + clamp3);
        int i5 = (int) ((lerp2 * f3) - clamp4);
        float f4 = (-f3) / 2.0f;
        if (i4 <= i5) {
            float f5 = this.f31971d;
            float f6 = i4 + f5;
            float f7 = i5 - f5;
            float f8 = f5 * 2.0f;
            paint.setColor(i);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.f31970c);
            if (f6 >= f7) {
                m24505j(canvas, paint, new PointF(f6 + f4, 0.0f), new PointF(f7 + f4, 0.0f), f8, this.f31970c);
                return;
            }
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(this.f31972e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            float f9 = f6 + f4;
            float f10 = f7 + f4;
            canvas.drawLine(f9, 0.0f, f10, 0.0f, paint);
            if (this.f31972e || this.f31971d <= 0.0f) {
                return;
            }
            paint.setStyle(Paint.Style.FILL);
            if (f6 > 0.0f) {
                m24504i(canvas, paint, new PointF(f9, 0.0f), f8, this.f31970c);
            }
            if (f7 < this.f31969b) {
                m24504i(canvas, paint, new PointF(f10, 0.0f), f8, this.f31970c);
            }
        }
    }

    /* renamed from: i */
    public final void m24504i(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull PointF pointF, float f, float f2) {
        m24505j(canvas, paint, pointF, null, f, f2);
    }

    /* renamed from: j */
    public final void m24505j(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull PointF pointF, @Nullable PointF pointF2, float f, float f2) {
        float min = Math.min(f2, this.f31970c);
        float f3 = f / 2.0f;
        float min2 = Math.min(f3, (this.f31971d * min) / this.f31970c);
        RectF rectF = new RectF((-f) / 2.0f, (-min) / 2.0f, f3, min / 2.0f);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pointF2 != null) {
            canvas.translate(pointF2.x, pointF2.y);
            Path path = new Path();
            path.addRoundRect(rectF, min2, min2, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.translate(-pointF2.x, -pointF2.y);
        }
        canvas.translate(pointF.x, pointF.y);
        canvas.drawRoundRect(rectF, min2, min2, paint);
        canvas.restore();
    }
}
