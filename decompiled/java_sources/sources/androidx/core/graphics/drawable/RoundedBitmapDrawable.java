package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public abstract class RoundedBitmapDrawable extends Drawable {

    /* renamed from: n */
    public static final int f5443n = 3;

    /* renamed from: a */
    public final Bitmap f5444a;

    /* renamed from: b */
    public int f5445b;

    /* renamed from: e */
    public final BitmapShader f5448e;

    /* renamed from: g */
    public float f5450g;

    /* renamed from: k */
    public boolean f5454k;

    /* renamed from: l */
    public int f5455l;

    /* renamed from: m */
    public int f5456m;

    /* renamed from: c */
    public int f5446c = 119;

    /* renamed from: d */
    public final Paint f5447d = new Paint(3);

    /* renamed from: f */
    public final Matrix f5449f = new Matrix();

    /* renamed from: h */
    public final Rect f5451h = new Rect();

    /* renamed from: i */
    public final RectF f5452i = new RectF();

    /* renamed from: j */
    public boolean f5453j = true;

    public RoundedBitmapDrawable(Resources resources, Bitmap bitmap) {
        this.f5445b = 160;
        if (resources != null) {
            this.f5445b = resources.getDisplayMetrics().densityDpi;
        }
        this.f5444a = bitmap;
        if (bitmap != null) {
            m2978a();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f5448e = new BitmapShader(bitmap, tileMode, tileMode);
        } else {
            this.f5456m = -1;
            this.f5455l = -1;
            this.f5448e = null;
        }
    }

    /* renamed from: c */
    public static boolean m2977c(float f) {
        return f > 0.05f;
    }

    /* renamed from: a */
    public final void m2978a() {
        this.f5455l = this.f5444a.getScaledWidth(this.f5445b);
        this.f5456m = this.f5444a.getScaledHeight(this.f5445b);
    }

    /* renamed from: b */
    public void mo2979b(int i, int i2, int i3, Rect rect, Rect rect2) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public final void m2980d() {
        this.f5450g = Math.min(this.f5456m, this.f5455l) / 2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Bitmap bitmap = this.f5444a;
        if (bitmap == null) {
            return;
        }
        m2981e();
        if (this.f5447d.getShader() == null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.f5451h, this.f5447d);
            return;
        }
        RectF rectF = this.f5452i;
        float f = this.f5450g;
        canvas.drawRoundRect(rectF, f, f, this.f5447d);
    }

    /* renamed from: e */
    public void m2981e() {
        if (this.f5453j) {
            if (this.f5454k) {
                int min = Math.min(this.f5455l, this.f5456m);
                mo2979b(this.f5446c, min, min, getBounds(), this.f5451h);
                int min2 = Math.min(this.f5451h.width(), this.f5451h.height());
                this.f5451h.inset(Math.max(0, (this.f5451h.width() - min2) / 2), Math.max(0, (this.f5451h.height() - min2) / 2));
                this.f5450g = min2 * 0.5f;
            } else {
                mo2979b(this.f5446c, this.f5455l, this.f5456m, getBounds(), this.f5451h);
            }
            this.f5452i.set(this.f5451h);
            if (this.f5448e != null) {
                Matrix matrix = this.f5449f;
                RectF rectF = this.f5452i;
                matrix.setTranslate(rectF.left, rectF.top);
                this.f5449f.preScale(this.f5452i.width() / this.f5444a.getWidth(), this.f5452i.height() / this.f5444a.getHeight());
                this.f5448e.setLocalMatrix(this.f5449f);
                this.f5447d.setShader(this.f5448e);
            }
            this.f5453j = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f5447d.getAlpha();
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.f5444a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f5447d.getColorFilter();
    }

    public float getCornerRadius() {
        return this.f5450g;
    }

    public int getGravity() {
        return this.f5446c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f5456m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f5455l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap;
        return (this.f5446c != 119 || this.f5454k || (bitmap = this.f5444a) == null || bitmap.hasAlpha() || this.f5447d.getAlpha() < 255 || m2977c(this.f5450g)) ? -3 : -1;
    }

    @NonNull
    public final Paint getPaint() {
        return this.f5447d;
    }

    public boolean hasAntiAlias() {
        return this.f5447d.isAntiAlias();
    }

    public boolean hasMipMap() {
        throw new UnsupportedOperationException();
    }

    public boolean isCircular() {
        return this.f5454k;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        if (this.f5454k) {
            m2980d();
        }
        this.f5453j = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f5447d.getAlpha()) {
            this.f5447d.setAlpha(i);
            invalidateSelf();
        }
    }

    public void setAntiAlias(boolean z) {
        this.f5447d.setAntiAlias(z);
        invalidateSelf();
    }

    public void setCircular(boolean z) {
        this.f5454k = z;
        this.f5453j = true;
        if (!z) {
            setCornerRadius(0.0f);
            return;
        }
        m2980d();
        this.f5447d.setShader(this.f5448e);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f5447d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setCornerRadius(float f) {
        if (this.f5450g == f) {
            return;
        }
        this.f5454k = false;
        if (m2977c(f)) {
            this.f5447d.setShader(this.f5448e);
        } else {
            this.f5447d.setShader(null);
        }
        this.f5450g = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f5447d.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f5447d.setFilterBitmap(z);
        invalidateSelf();
    }

    public void setGravity(int i) {
        if (this.f5446c != i) {
            this.f5446c = i;
            this.f5453j = true;
            invalidateSelf();
        }
    }

    public void setMipMap(boolean z) {
        throw new UnsupportedOperationException();
    }

    public void setTargetDensity(@NonNull Canvas canvas) {
        setTargetDensity(canvas.getDensity());
    }

    public void setTargetDensity(@NonNull DisplayMetrics displayMetrics) {
        setTargetDensity(displayMetrics.densityDpi);
    }

    public void setTargetDensity(int i) {
        if (this.f5445b != i) {
            if (i == 0) {
                i = 160;
            }
            this.f5445b = i;
            if (this.f5444a != null) {
                m2978a();
            }
            invalidateSelf();
        }
    }
}
