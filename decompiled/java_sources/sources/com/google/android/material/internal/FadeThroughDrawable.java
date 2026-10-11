package com.google.android.material.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.sunia.HTREnginev2.x8g;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class FadeThroughDrawable extends Drawable {

    /* renamed from: a */
    public final Drawable f31562a;

    /* renamed from: b */
    public final Drawable f31563b;

    /* renamed from: c */
    public final float[] f31564c;

    /* renamed from: d */
    public float f31565d;

    public FadeThroughDrawable(@NonNull Drawable drawable, @NonNull Drawable drawable2) {
        this.f31562a = drawable.getConstantState().newDrawable().mutate();
        Drawable mutate = drawable2.getConstantState().newDrawable().mutate();
        this.f31563b = mutate;
        mutate.setAlpha(0);
        this.f31564c = new float[2];
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f31562a.draw(canvas);
        this.f31563b.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.f31562a.getIntrinsicHeight(), this.f31563b.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.f31562a.getIntrinsicWidth(), this.f31563b.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return Math.max(this.f31562a.getMinimumHeight(), this.f31563b.getMinimumHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return Math.max(this.f31562a.getMinimumWidth(), this.f31563b.getMinimumWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f31562a.isStateful() || this.f31563b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f31565d <= 0.5f) {
            this.f31562a.setAlpha(i);
            this.f31563b.setAlpha(0);
        } else {
            this.f31562a.setAlpha(0);
            this.f31563b.setAlpha(i);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.f31562a.setBounds(i, i2, i3, i4);
        this.f31563b.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f31562a.setColorFilter(colorFilter);
        this.f31563b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setProgress(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        if (this.f31565d != f) {
            this.f31565d = f;
            x8g.m58161a(f, this.f31564c);
            this.f31562a.setAlpha((int) (this.f31564c[0] * 255.0f));
            this.f31563b.setAlpha((int) (this.f31564c[1] * 255.0f));
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.f31562a.setState(iArr) || this.f31563b.setState(iArr);
    }
}
