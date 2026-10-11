package com.blankj.utilcode.util;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.StateSet;
import android.view.View;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;

/* loaded from: classes3.dex */
public class ShadowUtils {

    /* renamed from: a */
    public static final int f13966a = -16;

    /* loaded from: classes3.dex */
    public static class Config {

        /* renamed from: i */
        public static final int f13967i = 1140850688;

        /* renamed from: j */
        public static final int f13968j = C1887b.m8537w(8.0f);

        /* renamed from: a */
        public float f13969a = -1.0f;

        /* renamed from: b */
        public float f13970b = -1.0f;

        /* renamed from: c */
        public float f13971c = -1.0f;

        /* renamed from: d */
        public float f13972d = -1.0f;

        /* renamed from: e */
        public float f13973e = -1.0f;

        /* renamed from: f */
        public int f13974f = f13967i;

        /* renamed from: g */
        public int f13975g = f13967i;

        /* renamed from: h */
        public boolean f13976h = false;

        /* renamed from: a */
        public Drawable m8306a(Drawable drawable) {
            if (drawable == null) {
                drawable = new ColorDrawable(0);
            }
            StateListDrawable stateListDrawable = new StateListDrawable();
            Drawable drawable2 = drawable;
            stateListDrawable.addState(new int[]{R.attr.state_pressed}, new ShadowDrawable(drawable2, m8309d(), m8310e(), m8307b(), this.f13975g, this.f13976h));
            stateListDrawable.addState(StateSet.WILD_CARD, new ShadowDrawable(drawable2, m8309d(), m8311f(), m8308c(), this.f13974f, this.f13976h));
            return stateListDrawable;
        }

        /* renamed from: b */
        public final float m8307b() {
            if (this.f13972d == -1.0f) {
                this.f13972d = m8310e();
            }
            return this.f13972d;
        }

        /* renamed from: c */
        public final float m8308c() {
            if (this.f13973e == -1.0f) {
                this.f13973e = m8311f();
            }
            return this.f13973e;
        }

        /* renamed from: d */
        public final float m8309d() {
            if (this.f13969a < 0.0f) {
                this.f13969a = 0.0f;
            }
            return this.f13969a;
        }

        /* renamed from: e */
        public final float m8310e() {
            if (this.f13970b == -1.0f) {
                this.f13970b = f13968j;
            }
            return this.f13970b;
        }

        /* renamed from: f */
        public final float m8311f() {
            if (this.f13971c == -1.0f) {
                this.f13971c = m8310e();
            }
            return this.f13971c;
        }

        public Config setCircle() {
            this.f13976h = true;
            if (this.f13969a == -1.0f) {
                return this;
            }
            throw new IllegalArgumentException("Set circle needn't set radius.");
        }

        public Config setShadowColor(int i) {
            return setShadowColor(i, i);
        }

        public Config setShadowMaxSize(int i) {
            return setShadowMaxSize(i, i);
        }

        public Config setShadowRadius(float f) {
            this.f13969a = f;
            if (this.f13976h) {
                throw new IllegalArgumentException("Set circle needn't set radius.");
            }
            return this;
        }

        public Config setShadowSize(int i) {
            return setShadowSize(i, i);
        }

        public Config setShadowColor(int i, int i2) {
            this.f13974f = i;
            this.f13975g = i2;
            return this;
        }

        public Config setShadowMaxSize(int i, int i2) {
            this.f13972d = i;
            this.f13973e = i2;
            return this;
        }

        public Config setShadowSize(int i, int i2) {
            this.f13970b = i;
            this.f13971c = i2;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class ShadowDrawable extends C1852a {

        /* renamed from: y */
        public static final double f13977y = Math.cos(Math.toRadians(45.0d));

        /* renamed from: f */
        public float f13978f;

        /* renamed from: g */
        public float f13979g;

        /* renamed from: h */
        public float f13980h;

        /* renamed from: i */
        public float f13981i;

        /* renamed from: j */
        public Paint f13982j;

        /* renamed from: k */
        public Paint f13983k;

        /* renamed from: l */
        public RectF f13984l;

        /* renamed from: m */
        public float f13985m;

        /* renamed from: n */
        public Path f13986n;

        /* renamed from: o */
        public float f13987o;

        /* renamed from: p */
        public float f13988p;

        /* renamed from: q */
        public float f13989q;

        /* renamed from: r */
        public float f13990r;

        /* renamed from: s */
        public boolean f13991s;

        /* renamed from: t */
        public final int f13992t;

        /* renamed from: u */
        public final int f13993u;

        /* renamed from: v */
        public boolean f13994v;

        /* renamed from: w */
        public float f13995w;

        /* renamed from: x */
        public boolean f13996x;

        public ShadowDrawable(Drawable drawable, float f, float f2, float f3, int i, boolean z) {
            super(drawable);
            this.f13978f = 1.0f;
            this.f13979g = 1.0f;
            this.f13980h = 1.0f;
            this.f13981i = 1.0f;
            this.f13991s = true;
            this.f13994v = false;
            this.f13992t = i;
            this.f13993u = i & 16777215;
            this.f13996x = z;
            if (z) {
                this.f13978f = 1.0f;
                this.f13979g = 1.0f;
                this.f13980h = 1.0f;
                this.f13981i = 1.0f;
            }
            Paint paint = new Paint(5);
            this.f13982j = paint;
            paint.setStyle(Paint.Style.FILL);
            this.f13985m = Math.round(f);
            this.f13984l = new RectF();
            Paint paint2 = new Paint(this.f13982j);
            this.f13983k = paint2;
            paint2.setAntiAlias(false);
            m8319g(f2, f3);
        }

        /* renamed from: c */
        public static float m8312c(float f, float f2, boolean z) {
            return z ? (float) (f + ((1.0d - f13977y) * f2)) : f;
        }

        /* renamed from: h */
        public static int m8313h(float f) {
            int round = Math.round(f);
            return round % 2 == 1 ? round - 1 : round;
        }

        /* renamed from: a */
        public final void m8314a(Rect rect) {
            if (this.f13996x) {
                this.f13985m = rect.width() / 2;
            }
            float f = this.f13988p;
            float f2 = this.f13978f * f;
            this.f13984l.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
            Drawable wrappedDrawable = getWrappedDrawable();
            RectF rectF = this.f13984l;
            wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            m8315b();
        }

        /* renamed from: b */
        public final void m8315b() {
            if (!this.f13996x) {
                float f = this.f13985m;
                RectF rectF = new RectF(-f, -f, f, f);
                RectF rectF2 = new RectF(rectF);
                float f2 = this.f13989q;
                rectF2.inset(-f2, -f2);
                Path path = this.f13986n;
                if (path == null) {
                    this.f13986n = new Path();
                } else {
                    path.reset();
                }
                this.f13986n.setFillType(Path.FillType.EVEN_ODD);
                this.f13986n.moveTo(-this.f13985m, 0.0f);
                this.f13986n.rLineTo(-this.f13989q, 0.0f);
                this.f13986n.arcTo(rectF2, 180.0f, 90.0f, false);
                this.f13986n.arcTo(rectF, 270.0f, -90.0f, false);
                this.f13986n.close();
                float f3 = -rectF2.top;
                if (f3 > 0.0f) {
                    this.f13982j.setShader(new RadialGradient(0.0f, 0.0f, f3, new int[]{0, this.f13992t, this.f13993u}, new float[]{0.0f, this.f13985m / f3, 1.0f}, Shader.TileMode.CLAMP));
                }
                this.f13983k.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, this.f13992t, this.f13993u, Shader.TileMode.CLAMP));
                this.f13983k.setAntiAlias(false);
                return;
            }
            float width = (this.f13984l.width() / 2.0f) - 1.0f;
            float f4 = -width;
            RectF rectF3 = new RectF(f4, f4, width, width);
            RectF rectF4 = new RectF(rectF3);
            float f5 = this.f13989q;
            rectF4.inset(-f5, -f5);
            Path path2 = this.f13986n;
            if (path2 == null) {
                this.f13986n = new Path();
            } else {
                path2.reset();
            }
            this.f13986n.setFillType(Path.FillType.EVEN_ODD);
            this.f13986n.moveTo(f4, 0.0f);
            this.f13986n.rLineTo(-this.f13989q, 0.0f);
            this.f13986n.arcTo(rectF4, 180.0f, 180.0f, false);
            this.f13986n.arcTo(rectF4, 0.0f, 180.0f, false);
            this.f13986n.arcTo(rectF3, 180.0f, 180.0f, false);
            this.f13986n.arcTo(rectF3, 0.0f, 180.0f, false);
            this.f13986n.close();
            float f6 = -rectF4.top;
            if (f6 > 0.0f) {
                this.f13982j.setShader(new RadialGradient(0.0f, 0.0f, f6, new int[]{0, this.f13992t, this.f13993u}, new float[]{0.0f, width / f6, 1.0f}, Shader.TileMode.CLAMP));
            }
        }

        /* renamed from: d */
        public final float m8316d(float f, float f2, boolean z) {
            return z ? (float) ((f * this.f13978f) + ((1.0d - f13977y) * f2)) : f * this.f13978f;
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f13991s) {
                m8314a(getBounds());
                this.f13991s = false;
            }
            m8317e(canvas);
            super.draw(canvas);
        }

        /* renamed from: e */
        public final void m8317e(Canvas canvas) {
            int i;
            float f;
            int i2;
            float f2;
            float f3;
            float f4;
            if (this.f13996x) {
                int save = canvas.save();
                canvas.translate(this.f13984l.centerX(), this.f13984l.centerY());
                canvas.drawPath(this.f13986n, this.f13982j);
                canvas.restoreToCount(save);
                return;
            }
            int save2 = canvas.save();
            canvas.rotate(this.f13995w, this.f13984l.centerX(), this.f13984l.centerY());
            float f5 = this.f13985m;
            float f6 = (-f5) - this.f13989q;
            float f7 = f5 * 2.0f;
            boolean z = this.f13984l.width() - f7 > 0.0f;
            boolean z2 = this.f13984l.height() - f7 > 0.0f;
            float f8 = this.f13990r;
            float f9 = f8 - (this.f13979g * f8);
            float f10 = f8 - (this.f13980h * f8);
            float f11 = f8 - (this.f13981i * f8);
            float f12 = f5 == 0.0f ? 1.0f : f5 / (f10 + f5);
            float f13 = f5 == 0.0f ? 1.0f : f5 / (f9 + f5);
            float f14 = f5 == 0.0f ? 1.0f : f5 / (f11 + f5);
            int save3 = canvas.save();
            RectF rectF = this.f13984l;
            canvas.translate(rectF.left + f5, rectF.top + f5);
            canvas.scale(f12, f13);
            canvas.drawPath(this.f13986n, this.f13982j);
            if (z) {
                canvas.scale(1.0f / f12, 1.0f);
                i = save3;
                f = f14;
                i2 = save2;
                f2 = f13;
                canvas.drawRect(0.0f, f6, this.f13984l.width() - f7, -this.f13985m, this.f13983k);
            } else {
                i = save3;
                f = f14;
                i2 = save2;
                f2 = f13;
            }
            canvas.restoreToCount(i);
            int save4 = canvas.save();
            RectF rectF2 = this.f13984l;
            canvas.translate(rectF2.right - f5, rectF2.bottom - f5);
            float f15 = f;
            canvas.scale(f12, f15);
            canvas.rotate(180.0f);
            canvas.drawPath(this.f13986n, this.f13982j);
            if (z) {
                canvas.scale(1.0f / f12, 1.0f);
                f3 = f2;
                f4 = f15;
                canvas.drawRect(0.0f, f6, this.f13984l.width() - f7, -this.f13985m, this.f13983k);
            } else {
                f3 = f2;
                f4 = f15;
            }
            canvas.restoreToCount(save4);
            int save5 = canvas.save();
            RectF rectF3 = this.f13984l;
            canvas.translate(rectF3.left + f5, rectF3.bottom - f5);
            canvas.scale(f12, f4);
            canvas.rotate(270.0f);
            canvas.drawPath(this.f13986n, this.f13982j);
            if (z2) {
                canvas.scale(1.0f / f4, 1.0f);
                canvas.drawRect(0.0f, f6, this.f13984l.height() - f7, -this.f13985m, this.f13983k);
            }
            canvas.restoreToCount(save5);
            int save6 = canvas.save();
            RectF rectF4 = this.f13984l;
            canvas.translate(rectF4.right - f5, rectF4.top + f5);
            float f16 = f3;
            canvas.scale(f12, f16);
            canvas.rotate(90.0f);
            canvas.drawPath(this.f13986n, this.f13982j);
            if (z2) {
                canvas.scale(1.0f / f16, 1.0f);
                canvas.drawRect(0.0f, f6, this.f13984l.height() - f7, -this.f13985m, this.f13983k);
            }
            canvas.restoreToCount(save6);
            canvas.restoreToCount(i2);
        }

        /* renamed from: f */
        public final void m8318f(float f) {
            if (this.f13995w != f) {
                this.f13995w = f;
                invalidateSelf();
            }
        }

        /* renamed from: g */
        public void m8319g(float f, float f2) {
            if (f < 0.0f || f2 < 0.0f) {
                throw new IllegalArgumentException("invalid shadow size");
            }
            float m8313h = m8313h(f);
            float m8313h2 = m8313h(f2);
            if (m8313h > m8313h2) {
                m8313h = m8313h2;
            }
            if (this.f13990r == m8313h && this.f13988p == m8313h2) {
                return;
            }
            this.f13990r = m8313h;
            this.f13988p = m8313h2;
            this.f13989q = Math.round(m8313h * this.f13978f);
            this.f13987o = m8313h2;
            this.f13991s = true;
            invalidateSelf();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ int getChangingConfigurations() {
            return super.getChangingConfigurations();
        }

        public float getCornerRadius() {
            return this.f13985m;
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ Drawable getCurrent() {
            return super.getCurrent();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
            return super.getIntrinsicHeight();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
            return super.getIntrinsicWidth();
        }

        public float getMaxShadowSize() {
            return this.f13988p;
        }

        public float getMinHeight() {
            float f = this.f13988p;
            return (Math.max(f, this.f13985m + ((this.f13978f * f) / 2.0f)) * 2.0f) + (this.f13988p * this.f13978f * 2.0f);
        }

        public float getMinWidth() {
            float f = this.f13988p;
            return (Math.max(f, this.f13985m + (f / 2.0f)) * 2.0f) + (this.f13988p * 2.0f);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ int getMinimumHeight() {
            return super.getMinimumHeight();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ int getMinimumWidth() {
            return super.getMinimumWidth();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            int ceil = (int) Math.ceil(m8316d(this.f13988p, this.f13985m, this.f13994v));
            int ceil2 = (int) Math.ceil(m8312c(this.f13988p, this.f13985m, this.f13994v));
            rect.set(ceil2, ceil, ceil2, ceil);
            return true;
        }

        public float getShadowSize() {
            return this.f13990r;
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ int[] getState() {
            return super.getState();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ Region getTransparentRegion() {
            return super.getTransparentRegion();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a
        public /* bridge */ /* synthetic */ Drawable getWrappedDrawable() {
            return super.getWrappedDrawable();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable.Callback
        public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
            super.invalidateDrawable(drawable);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
            return super.isAutoMirrored();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ boolean isStateful() {
            return super.isStateful();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void jumpToCurrentState() {
            super.jumpToCurrentState();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            this.f13991s = true;
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable.Callback
        public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            super.scheduleDrawable(drawable, runnable, j);
        }

        public void setAddPaddingForCorners(boolean z) {
            this.f13994v = z;
            invalidateSelf();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            super.setAlpha(i);
            this.f13982j.setAlpha(i);
            this.f13983k.setAlpha(i);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
            super.setAutoMirrored(z);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
            super.setChangingConfigurations(i);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
            super.setColorFilter(colorFilter);
        }

        public void setCornerRadius(float f) {
            float round = Math.round(f);
            if (this.f13985m == round) {
                return;
            }
            this.f13985m = round;
            this.f13991s = true;
            invalidateSelf();
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setDither(boolean z) {
            super.setDither(z);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
            super.setFilterBitmap(z);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
            super.setHotspot(f, f2);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
            super.setHotspotBounds(i, i2, i3, i4);
        }

        public void setMaxShadowSize(float f) {
            m8319g(this.f13990r, f);
        }

        public void setShadowSize(float f) {
            m8319g(f, this.f13988p);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
            return super.setState(iArr);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setTint(int i) {
            super.setTint(i);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
            super.setTintList(colorStateList);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
            super.setTintMode(mode);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
            return super.setVisible(z, z2);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a
        public /* bridge */ /* synthetic */ void setWrappedDrawable(Drawable drawable) {
            super.setWrappedDrawable(drawable);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable.Callback
        public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            super.unscheduleDrawable(drawable, runnable);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ShadowUtils$a */
    /* loaded from: classes3.dex */
    public static class C1852a extends Drawable implements Drawable.Callback {

        /* renamed from: e */
        public Drawable f13997e;

        public C1852a(Drawable drawable) {
            setWrappedDrawable(drawable);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.f13997e.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        public int getChangingConfigurations() {
            return this.f13997e.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable
        public Drawable getCurrent() {
            return this.f13997e.getCurrent();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.f13997e.getIntrinsicHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.f13997e.getIntrinsicWidth();
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return this.f13997e.getMinimumHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return this.f13997e.getMinimumWidth();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return this.f13997e.getOpacity();
        }

        @Override // android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return this.f13997e.getPadding(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public int[] getState() {
            return this.f13997e.getState();
        }

        @Override // android.graphics.drawable.Drawable
        public Region getTransparentRegion() {
            return this.f13997e.getTransparentRegion();
        }

        public Drawable getWrappedDrawable() {
            return this.f13997e;
        }

        public void invalidateDrawable(Drawable drawable) {
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public boolean isAutoMirrored() {
            return DrawableCompat.isAutoMirrored(this.f13997e);
        }

        @Override // android.graphics.drawable.Drawable
        public boolean isStateful() {
            return this.f13997e.isStateful();
        }

        @Override // android.graphics.drawable.Drawable
        public void jumpToCurrentState() {
            DrawableCompat.jumpToCurrentState(this.f13997e);
        }

        @Override // android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            this.f13997e.setBounds(rect);
        }

        @Override // android.graphics.drawable.Drawable
        public boolean onLevelChange(int i) {
            return this.f13997e.setLevel(i);
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.f13997e.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAutoMirrored(boolean z) {
            DrawableCompat.setAutoMirrored(this.f13997e, z);
        }

        @Override // android.graphics.drawable.Drawable
        public void setChangingConfigurations(int i) {
            this.f13997e.setChangingConfigurations(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.f13997e.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public void setDither(boolean z) {
            this.f13997e.setDither(z);
        }

        @Override // android.graphics.drawable.Drawable
        public void setFilterBitmap(boolean z) {
            this.f13997e.setFilterBitmap(z);
        }

        @Override // android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            DrawableCompat.setHotspot(this.f13997e, f, f2);
        }

        @Override // android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            DrawableCompat.setHotspotBounds(this.f13997e, i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            return this.f13997e.setState(iArr);
        }

        @Override // android.graphics.drawable.Drawable
        public void setTint(int i) {
            DrawableCompat.setTint(this.f13997e, i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setTintList(ColorStateList colorStateList) {
            DrawableCompat.setTintList(this.f13997e, colorStateList);
        }

        @Override // android.graphics.drawable.Drawable
        public void setTintMode(PorterDuff.Mode mode) {
            DrawableCompat.setTintMode(this.f13997e, mode);
        }

        @Override // android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            return super.setVisible(z, z2) || this.f13997e.setVisible(z, z2);
        }

        public void setWrappedDrawable(Drawable drawable) {
            Drawable drawable2 = this.f13997e;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.f13997e = drawable;
            if (drawable != null) {
                drawable.setCallback(this);
            }
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            unscheduleSelf(runnable);
        }
    }

    public static void apply(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            apply(view, new Config());
        }
    }

    public static void apply(View view, Config config) {
        if (view == null || config == null) {
            return;
        }
        Drawable background = view.getBackground();
        Object tag = view.getTag(-16);
        if (tag instanceof Drawable) {
            ViewCompat.setBackground(view, (Drawable) tag);
            return;
        }
        Drawable m8306a = config.m8306a(background);
        ViewCompat.setBackground(view, m8306a);
        view.setTag(-16, m8306a);
    }
}
