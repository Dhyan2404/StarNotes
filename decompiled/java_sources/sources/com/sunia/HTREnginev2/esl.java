package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes3.dex */
public class esl extends Drawable {

    /* renamed from: a */
    public float f69278a;

    /* renamed from: c */
    public final RectF f69280c;

    /* renamed from: d */
    public final Rect f69281d;

    /* renamed from: e */
    public float f69282e;

    /* renamed from: h */
    public ColorStateList f69285h;

    /* renamed from: i */
    public PorterDuffColorFilter f69286i;

    /* renamed from: j */
    public ColorStateList f69287j;

    /* renamed from: f */
    public boolean f69283f = false;

    /* renamed from: g */
    public boolean f69284g = true;

    /* renamed from: k */
    public PorterDuff.Mode f69288k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public final Paint f69279b = new Paint(5);

    public esl(ColorStateList colorStateList, float f) {
        this.f69278a = f;
        m54022e(colorStateList);
        this.f69280c = new RectF();
        this.f69281d = new Rect();
    }

    /* renamed from: a */
    public final PorterDuffColorFilter m54018a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: b */
    public ColorStateList m54019b() {
        return this.f69285h;
    }

    /* renamed from: c */
    public float m54020c() {
        return this.f69282e;
    }

    /* renamed from: d */
    public float m54021d() {
        return this.f69278a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f69279b;
        if (this.f69286i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f69286i);
            z = true;
        }
        RectF rectF = this.f69280c;
        float f = this.f69278a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    /* renamed from: e */
    public final void m54022e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f69285h = colorStateList;
        this.f69279b.setColor(colorStateList.getColorForState(getState(), this.f69285h.getDefaultColor()));
    }

    /* renamed from: f */
    public void m54023f(@Nullable ColorStateList colorStateList) {
        m54022e(colorStateList);
        invalidateSelf();
    }

    /* renamed from: g */
    public void m54024g(float f, boolean z, boolean z2) {
        if (f == this.f69282e && this.f69283f == z && this.f69284g == z2) {
            return;
        }
        this.f69282e = f;
        this.f69283f = z;
        this.f69284g = z2;
        m54026i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f69281d, this.f69278a);
    }

    /* renamed from: h */
    public void m54025h(float f) {
        if (f == this.f69278a) {
            return;
        }
        this.f69278a = f;
        m54026i(null);
        invalidateSelf();
    }

    /* renamed from: i */
    public final void m54026i(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f69280c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f69281d.set(rect);
        if (this.f69283f) {
            this.f69281d.inset((int) Math.ceil(fsl.m54178c(this.f69282e, this.f69278a, this.f69284g)), (int) Math.ceil(fsl.m54179d(this.f69282e, this.f69278a, this.f69284g)));
            this.f69280c.set(this.f69281d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f69287j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f69285h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m54026i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f69285h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f69279b.getColor();
        if (z) {
            this.f69279b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f69287j;
        if (colorStateList2 == null || (mode = this.f69288k) == null) {
            return z;
        }
        this.f69286i = m54018a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f69279b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f69279b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f69287j = colorStateList;
        this.f69286i = m54018a(colorStateList, this.f69288k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f69288k = mode;
        this.f69286i = m54018a(this.f69287j, mode);
        invalidateSelf();
    }
}
