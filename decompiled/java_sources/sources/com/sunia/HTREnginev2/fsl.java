package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.cardview.C0370R;

/* loaded from: classes3.dex */
public class fsl extends Drawable {

    /* renamed from: q */
    public static final double f70323q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r */
    public static final float f70324r = 1.5f;

    /* renamed from: s */
    public static InterfaceC13740a f70325s;

    /* renamed from: a */
    public final int f70326a;

    /* renamed from: c */
    public Paint f70328c;

    /* renamed from: d */
    public Paint f70329d;

    /* renamed from: e */
    public final RectF f70330e;

    /* renamed from: f */
    public float f70331f;

    /* renamed from: g */
    public Path f70332g;

    /* renamed from: h */
    public float f70333h;

    /* renamed from: i */
    public float f70334i;

    /* renamed from: j */
    public float f70335j;

    /* renamed from: k */
    public ColorStateList f70336k;

    /* renamed from: m */
    public final int f70338m;

    /* renamed from: n */
    public final int f70339n;

    /* renamed from: l */
    public boolean f70337l = true;

    /* renamed from: o */
    public boolean f70340o = true;

    /* renamed from: p */
    public boolean f70341p = false;

    /* renamed from: b */
    public Paint f70327b = new Paint(5);

    /* renamed from: com.sunia.HTREnginev2.fsl$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC13740a {
        /* renamed from: a */
        void mo54198a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    public fsl(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f70338m = resources.getColor(C0370R.color.cardview_shadow_start_color);
        this.f70339n = resources.getColor(C0370R.color.cardview_shadow_end_color);
        this.f70326a = resources.getDimensionPixelSize(C0370R.dimen.cardview_compat_inset_shadow);
        m54191n(colorStateList);
        Paint paint = new Paint(5);
        this.f70328c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f70331f = (int) (f + 0.5f);
        this.f70330e = new RectF();
        Paint paint2 = new Paint(this.f70328c);
        this.f70329d = paint2;
        paint2.setAntiAlias(false);
        m54196s(f2, f3);
    }

    /* renamed from: c */
    public static float m54178c(float f, float f2, boolean z) {
        return z ? (float) (f + ((1.0d - f70323q) * f2)) : f;
    }

    /* renamed from: d */
    public static float m54179d(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f70323q) * f2)) : f * 1.5f;
    }

    /* renamed from: a */
    public final void m54180a(Rect rect) {
        float f = this.f70333h;
        float f2 = 1.5f * f;
        this.f70330e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m54181b();
    }

    /* renamed from: b */
    public final void m54181b() {
        float f = this.f70331f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f70334i;
        rectF2.inset(-f2, -f2);
        Path path = this.f70332g;
        if (path == null) {
            this.f70332g = new Path();
        } else {
            path.reset();
        }
        this.f70332g.setFillType(Path.FillType.EVEN_ODD);
        this.f70332g.moveTo(-this.f70331f, 0.0f);
        this.f70332g.rLineTo(-this.f70334i, 0.0f);
        this.f70332g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f70332g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f70332g.close();
        float f3 = this.f70331f;
        float f4 = f3 / (this.f70334i + f3);
        Paint paint = this.f70328c;
        float f5 = this.f70331f + this.f70334i;
        int i = this.f70338m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5, new int[]{i, i, this.f70339n}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f70329d;
        float f6 = this.f70331f;
        float f7 = this.f70334i;
        float f8 = (-f6) + f7;
        float f9 = (-f6) - f7;
        int i2 = this.f70338m;
        paint2.setShader(new LinearGradient(0.0f, f8, 0.0f, f9, new int[]{i2, i2, this.f70339n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f70329d.setAntiAlias(false);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f70337l) {
            m54180a(getBounds());
            this.f70337l = false;
        }
        canvas.translate(0.0f, this.f70335j / 2.0f);
        m54182e(canvas);
        canvas.translate(0.0f, (-this.f70335j) / 2.0f);
        f70325s.mo54198a(canvas, this.f70330e, this.f70331f, this.f70327b);
    }

    /* renamed from: e */
    public final void m54182e(Canvas canvas) {
        float f = this.f70331f;
        float f2 = (-f) - this.f70334i;
        float f3 = f + this.f70326a + (this.f70335j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f70330e.width() - f4 > 0.0f;
        boolean z2 = this.f70330e.height() - f4 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f70330e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f70332g, this.f70328c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f70330e.width() - f4, -this.f70331f, this.f70329d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f70330e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f70332g, this.f70328c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f70330e.width() - f4, (-this.f70331f) + this.f70334i, this.f70329d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f70330e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f70332g, this.f70328c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f70330e.height() - f4, -this.f70331f, this.f70329d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f70330e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f70332g, this.f70328c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f70330e.height() - f4, -this.f70331f, this.f70329d);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: f */
    public ColorStateList m54183f() {
        return this.f70336k;
    }

    /* renamed from: g */
    public float m54184g() {
        return this.f70331f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m54179d(this.f70333h, this.f70331f, this.f70340o));
        int ceil2 = (int) Math.ceil(m54178c(this.f70333h, this.f70331f, this.f70340o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* renamed from: h */
    public void m54185h(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: i */
    public float m54186i() {
        return this.f70333h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f70336k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* renamed from: j */
    public float m54187j() {
        float f = this.f70333h;
        return (Math.max(f, this.f70331f + this.f70326a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f70333h * 1.5f) + this.f70326a) * 2.0f);
    }

    /* renamed from: k */
    public float m54188k() {
        float f = this.f70333h;
        return (Math.max(f, this.f70331f + this.f70326a + (f / 2.0f)) * 2.0f) + ((this.f70333h + this.f70326a) * 2.0f);
    }

    /* renamed from: l */
    public float m54189l() {
        return this.f70335j;
    }

    /* renamed from: m */
    public void m54190m(boolean z) {
        this.f70340o = z;
        invalidateSelf();
    }

    /* renamed from: n */
    public final void m54191n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f70336k = colorStateList;
        this.f70327b.setColor(colorStateList.getColorForState(getState(), this.f70336k.getDefaultColor()));
    }

    /* renamed from: o */
    public void m54192o(@Nullable ColorStateList colorStateList) {
        m54191n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f70337l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f70336k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f70327b.getColor() == colorForState) {
            return false;
        }
        this.f70327b.setColor(colorForState);
        this.f70337l = true;
        invalidateSelf();
        return true;
    }

    /* renamed from: p */
    public void m54193p(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.f70331f == f2) {
            return;
        }
        this.f70331f = f2;
        this.f70337l = true;
        invalidateSelf();
    }

    /* renamed from: q */
    public void m54194q(float f) {
        m54196s(this.f70335j, f);
    }

    /* renamed from: r */
    public void m54195r(float f) {
        m54196s(f, this.f70333h);
    }

    /* renamed from: s */
    public final void m54196s(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float m54197t = m54197t(f);
        float m54197t2 = m54197t(f2);
        if (m54197t > m54197t2) {
            if (!this.f70341p) {
                this.f70341p = true;
            }
            m54197t = m54197t2;
        }
        if (this.f70335j == m54197t && this.f70333h == m54197t2) {
            return;
        }
        this.f70335j = m54197t;
        this.f70333h = m54197t2;
        this.f70334i = (int) ((m54197t * 1.5f) + this.f70326a + 0.5f);
        this.f70337l = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f70327b.setAlpha(i);
        this.f70328c.setAlpha(i);
        this.f70329d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f70327b.setColorFilter(colorFilter);
    }

    /* renamed from: t */
    public final int m54197t(float f) {
        int i = (int) (f + 0.5f);
        return i % 2 == 1 ? i - 1 : i;
    }
}
