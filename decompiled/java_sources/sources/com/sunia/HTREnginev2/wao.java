package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.graphics.drawable.WrappedDrawable;

/* loaded from: classes3.dex */
public class wao extends Drawable implements Drawable.Callback, WrappedDrawable, TintAwareDrawable {

    /* renamed from: k */
    public static final PorterDuff.Mode f88416k = PorterDuff.Mode.SRC_IN;

    /* renamed from: e */
    public int f88417e;

    /* renamed from: f */
    public PorterDuff.Mode f88418f;

    /* renamed from: g */
    public boolean f88419g;

    /* renamed from: h */
    public yao f88420h;

    /* renamed from: i */
    public boolean f88421i;

    /* renamed from: j */
    public Drawable f88422j;

    public wao(@NonNull yao yaoVar, @Nullable Resources resources) {
        this.f88420h = yaoVar;
        m58017c(resources);
    }

    /* renamed from: a */
    public boolean mo58015a() {
        return true;
    }

    @NonNull
    /* renamed from: b */
    public final yao m58016b() {
        return new yao(this.f88420h);
    }

    /* renamed from: c */
    public final void m58017c(@Nullable Resources resources) {
        Drawable.ConstantState constantState;
        yao yaoVar = this.f88420h;
        if (yaoVar == null || (constantState = yaoVar.f90546b) == null) {
            return;
        }
        setWrappedDrawable(constantState.newDrawable(resources));
    }

    /* renamed from: d */
    public final boolean m58018d(int[] iArr) {
        if (!mo58015a()) {
            return false;
        }
        yao yaoVar = this.f88420h;
        ColorStateList colorStateList = yaoVar.f90547c;
        PorterDuff.Mode mode = yaoVar.f90548d;
        if (colorStateList == null || mode == null) {
            this.f88419g = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f88419g || colorForState != this.f88417e || mode != this.f88418f) {
                setColorFilter(colorForState, mode);
                this.f88417e = colorForState;
                this.f88418f = mode;
                this.f88419g = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f88422j.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        yao yaoVar = this.f88420h;
        return this.f88422j.getChangingConfigurations() | changingConfigurations | (yaoVar != null ? yaoVar.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        yao yaoVar = this.f88420h;
        if (yaoVar == null || !yaoVar.m58400a()) {
            return null;
        }
        this.f88420h.f90545a = getChangingConfigurations();
        return this.f88420h;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f88422j.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f88422j.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f88422j.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(23)
    public int getLayoutDirection() {
        return DrawableCompat.getLayoutDirection(this.f88422j);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f88422j.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f88422j.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f88422j.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.f88422j.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public int[] getState() {
        return this.f88422j.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f88422j.getTransparentRegion();
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    public final Drawable getWrappedDrawable() {
        return this.f88422j;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return DrawableCompat.isAutoMirrored(this.f88422j);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        yao yaoVar;
        ColorStateList colorStateList = (!mo58015a() || (yaoVar = this.f88420h) == null) ? null : yaoVar.f90547c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f88422j.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f88422j.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f88421i && super.mutate() == this) {
            this.f88420h = m58016b();
            Drawable drawable = this.f88422j;
            if (drawable != null) {
                drawable.mutate();
            }
            yao yaoVar = this.f88420h;
            if (yaoVar != null) {
                Drawable drawable2 = this.f88422j;
                yaoVar.f90546b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f88421i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f88422j;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(23)
    public boolean onLayoutDirectionChanged(int i) {
        return DrawableCompat.setLayoutDirection(this.f88422j, i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        return this.f88422j.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f88422j.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        DrawableCompat.setAutoMirrored(this.f88422j, z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f88422j.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f88422j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f88422j.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f88422j.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        return m58018d(iArr) || this.f88422j.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.f88420h.f90547c = colorStateList;
        m58018d(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.f88420h.f90548d = mode;
        m58018d(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f88422j.setVisible(z, z2);
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    public final void setWrappedDrawable(Drawable drawable) {
        Drawable drawable2 = this.f88422j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f88422j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            yao yaoVar = this.f88420h;
            if (yaoVar != null) {
                yaoVar.f90546b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public wao(@Nullable Drawable drawable) {
        this.f88420h = m58016b();
        setWrappedDrawable(drawable);
    }
}
