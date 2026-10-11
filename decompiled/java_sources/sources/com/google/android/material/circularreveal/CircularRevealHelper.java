package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.math.MathUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public class CircularRevealHelper {
    public static final int BITMAP_SHADER = 0;
    public static final int CLIP_PATH = 1;
    public static final int REVEAL_ANIMATOR = 2;
    public static final int STRATEGY = 2;

    /* renamed from: k */
    public static final boolean f30841k = false;

    /* renamed from: a */
    public final Delegate f30842a;

    /* renamed from: b */
    @NonNull
    public final View f30843b;

    /* renamed from: c */
    @NonNull
    public final Path f30844c;

    /* renamed from: d */
    @NonNull
    public final Paint f30845d;

    /* renamed from: e */
    @NonNull
    public final Paint f30846e;

    /* renamed from: f */
    @Nullable
    public CircularRevealWidget.RevealInfo f30847f;

    /* renamed from: g */
    @Nullable
    public Drawable f30848g;

    /* renamed from: h */
    public Paint f30849h;

    /* renamed from: i */
    public boolean f30850i;

    /* renamed from: j */
    public boolean f30851j;

    /* loaded from: classes6.dex */
    public interface Delegate {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface Strategy {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularRevealHelper(Delegate delegate) {
        this.f30842a = delegate;
        View view = (View) delegate;
        this.f30843b = view;
        view.setWillNotDraw(false);
        this.f30844c = new Path();
        this.f30845d = new Paint(7);
        Paint paint = new Paint(1);
        this.f30846e = paint;
        paint.setColor(0);
    }

    /* renamed from: a */
    public final void m23496a(@NonNull Canvas canvas, int i, float f) {
        this.f30849h.setColor(i);
        this.f30849h.setStrokeWidth(f);
        CircularRevealWidget.RevealInfo revealInfo = this.f30847f;
        canvas.drawCircle(revealInfo.centerX, revealInfo.centerY, revealInfo.radius - (f / 2.0f), this.f30849h);
    }

    /* renamed from: b */
    public final void m23497b(@NonNull Canvas canvas) {
        this.f30842a.actualDraw(canvas);
        if (m23503h()) {
            CircularRevealWidget.RevealInfo revealInfo = this.f30847f;
            canvas.drawCircle(revealInfo.centerX, revealInfo.centerY, revealInfo.radius, this.f30846e);
        }
        if (m23501f()) {
            m23496a(canvas, -16777216, 10.0f);
            m23496a(canvas, -65536, 5.0f);
        }
        m23498c(canvas);
    }

    public void buildCircularRevealCache() {
        if (STRATEGY == 0) {
            this.f30850i = true;
            this.f30851j = false;
            this.f30843b.buildDrawingCache();
            Bitmap drawingCache = this.f30843b.getDrawingCache();
            if (drawingCache == null && this.f30843b.getWidth() != 0 && this.f30843b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f30843b.getWidth(), this.f30843b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f30843b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f30845d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f30850i = false;
            this.f30851j = true;
        }
    }

    /* renamed from: c */
    public final void m23498c(@NonNull Canvas canvas) {
        if (m23502g()) {
            Rect bounds = this.f30848g.getBounds();
            float width = this.f30847f.centerX - (bounds.width() / 2.0f);
            float height = this.f30847f.centerY - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f30848g.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    /* renamed from: d */
    public final float m23499d(@NonNull CircularRevealWidget.RevealInfo revealInfo) {
        return MathUtils.distanceToFurthestCorner(revealInfo.centerX, revealInfo.centerY, 0.0f, 0.0f, this.f30843b.getWidth(), this.f30843b.getHeight());
    }

    public void destroyCircularRevealCache() {
        if (STRATEGY == 0) {
            this.f30851j = false;
            this.f30843b.destroyDrawingCache();
            this.f30845d.setShader(null);
            this.f30843b.invalidate();
        }
    }

    public void draw(@NonNull Canvas canvas) {
        if (m23501f()) {
            int i = STRATEGY;
            if (i == 0) {
                CircularRevealWidget.RevealInfo revealInfo = this.f30847f;
                canvas.drawCircle(revealInfo.centerX, revealInfo.centerY, revealInfo.radius, this.f30845d);
                if (m23503h()) {
                    CircularRevealWidget.RevealInfo revealInfo2 = this.f30847f;
                    canvas.drawCircle(revealInfo2.centerX, revealInfo2.centerY, revealInfo2.radius, this.f30846e);
                }
            } else if (i == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f30844c);
                this.f30842a.actualDraw(canvas);
                if (m23503h()) {
                    canvas.drawRect(0.0f, 0.0f, this.f30843b.getWidth(), this.f30843b.getHeight(), this.f30846e);
                }
                canvas.restoreToCount(save);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i);
                }
                this.f30842a.actualDraw(canvas);
                if (m23503h()) {
                    canvas.drawRect(0.0f, 0.0f, this.f30843b.getWidth(), this.f30843b.getHeight(), this.f30846e);
                }
            }
        } else {
            this.f30842a.actualDraw(canvas);
            if (m23503h()) {
                canvas.drawRect(0.0f, 0.0f, this.f30843b.getWidth(), this.f30843b.getHeight(), this.f30846e);
            }
        }
        m23498c(canvas);
    }

    /* renamed from: e */
    public final void m23500e() {
        if (STRATEGY == 1) {
            this.f30844c.rewind();
            CircularRevealWidget.RevealInfo revealInfo = this.f30847f;
            if (revealInfo != null) {
                this.f30844c.addCircle(revealInfo.centerX, revealInfo.centerY, revealInfo.radius, Path.Direction.CW);
            }
        }
        this.f30843b.invalidate();
    }

    /* renamed from: f */
    public final boolean m23501f() {
        CircularRevealWidget.RevealInfo revealInfo = this.f30847f;
        boolean z = revealInfo == null || revealInfo.isInvalid();
        return STRATEGY == 0 ? !z && this.f30851j : !z;
    }

    /* renamed from: g */
    public final boolean m23502g() {
        return (this.f30850i || this.f30848g == null || this.f30847f == null) ? false : true;
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f30848g;
    }

    @ColorInt
    public int getCircularRevealScrimColor() {
        return this.f30846e.getColor();
    }

    @Nullable
    public CircularRevealWidget.RevealInfo getRevealInfo() {
        CircularRevealWidget.RevealInfo revealInfo = this.f30847f;
        if (revealInfo == null) {
            return null;
        }
        CircularRevealWidget.RevealInfo revealInfo2 = new CircularRevealWidget.RevealInfo(revealInfo);
        if (revealInfo2.isInvalid()) {
            revealInfo2.radius = m23499d(revealInfo2);
        }
        return revealInfo2;
    }

    /* renamed from: h */
    public final boolean m23503h() {
        return (this.f30850i || Color.alpha(this.f30846e.getColor()) == 0) ? false : true;
    }

    public boolean isOpaque() {
        return this.f30842a.actualIsOpaque() && !m23501f();
    }

    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f30848g = drawable;
        this.f30843b.invalidate();
    }

    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.f30846e.setColor(i);
        this.f30843b.invalidate();
    }

    public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo revealInfo) {
        if (revealInfo == null) {
            this.f30847f = null;
        } else {
            CircularRevealWidget.RevealInfo revealInfo2 = this.f30847f;
            if (revealInfo2 == null) {
                this.f30847f = new CircularRevealWidget.RevealInfo(revealInfo);
            } else {
                revealInfo2.set(revealInfo);
            }
            if (MathUtils.geq(revealInfo.radius, m23499d(revealInfo), 1.0E-4f)) {
                this.f30847f.radius = Float.MAX_VALUE;
            }
        }
        m23500e();
    }
}
