package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import androidx.appcompat.C0118R;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;

/* renamed from: com.sunia.HTREnginev2.uc */
/* loaded from: classes3.dex */
public class C14497uc extends C14295qc {

    /* renamed from: d */
    public final SeekBar f86329d;

    /* renamed from: e */
    public Drawable f86330e;

    /* renamed from: f */
    public ColorStateList f86331f;

    /* renamed from: g */
    public PorterDuff.Mode f86332g;

    /* renamed from: h */
    public boolean f86333h;

    /* renamed from: i */
    public boolean f86334i;

    public C14497uc(SeekBar seekBar) {
        super(seekBar);
        this.f86331f = null;
        this.f86332g = null;
        this.f86333h = false;
        this.f86334i = false;
        this.f86329d = seekBar;
    }

    @Override // com.sunia.HTREnginev2.C14295qc
    /* renamed from: c */
    public void mo56675c(AttributeSet attributeSet, int i) {
        super.mo56675c(attributeSet, i);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f86329d.getContext(), attributeSet, C0118R.styleable.AppCompatSeekBar, i, 0);
        SeekBar seekBar = this.f86329d;
        ViewCompat.saveAttributeDataForStyleable(seekBar, seekBar.getContext(), C0118R.styleable.AppCompatSeekBar, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(C0118R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableIfKnown != null) {
            this.f86329d.setThumb(drawableIfKnown);
        }
        m57611m(obtainStyledAttributes.getDrawable(C0118R.styleable.AppCompatSeekBar_tickMark));
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f86332g = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0118R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f86332g);
            this.f86334i = true;
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f86331f = obtainStyledAttributes.getColorStateList(C0118R.styleable.AppCompatSeekBar_tickMarkTint);
            this.f86333h = true;
        }
        obtainStyledAttributes.recycle();
        m57604f();
    }

    /* renamed from: f */
    public final void m57604f() {
        Drawable drawable = this.f86330e;
        if (drawable != null) {
            if (this.f86333h || this.f86334i) {
                Drawable wrap = DrawableCompat.wrap(drawable.mutate());
                this.f86330e = wrap;
                if (this.f86333h) {
                    DrawableCompat.setTintList(wrap, this.f86331f);
                }
                if (this.f86334i) {
                    DrawableCompat.setTintMode(this.f86330e, this.f86332g);
                }
                if (this.f86330e.isStateful()) {
                    this.f86330e.setState(this.f86329d.getDrawableState());
                }
            }
        }
    }

    /* renamed from: g */
    public void m57605g(Canvas canvas) {
        if (this.f86330e != null) {
            int max = this.f86329d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f86330e.getIntrinsicWidth();
                int intrinsicHeight = this.f86330e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f86330e.setBounds(-i, -i2, i, i2);
                float width = ((this.f86329d.getWidth() - this.f86329d.getPaddingLeft()) - this.f86329d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f86329d.getPaddingLeft(), this.f86329d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f86330e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* renamed from: h */
    public void m57606h() {
        Drawable drawable = this.f86330e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f86329d.getDrawableState())) {
            this.f86329d.invalidateDrawable(drawable);
        }
    }

    @Nullable
    /* renamed from: i */
    public Drawable m57607i() {
        return this.f86330e;
    }

    @Nullable
    /* renamed from: j */
    public ColorStateList m57608j() {
        return this.f86331f;
    }

    @Nullable
    /* renamed from: k */
    public PorterDuff.Mode m57609k() {
        return this.f86332g;
    }

    /* renamed from: l */
    public void m57610l() {
        Drawable drawable = this.f86330e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* renamed from: m */
    public void m57611m(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f86330e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f86330e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f86329d);
            DrawableCompat.setLayoutDirection(drawable, this.f86329d.getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(this.f86329d.getDrawableState());
            }
            m57604f();
        }
        this.f86329d.invalidate();
    }

    /* renamed from: n */
    public void m57612n(@Nullable ColorStateList colorStateList) {
        this.f86331f = colorStateList;
        this.f86333h = true;
        m57604f();
    }

    /* renamed from: o */
    public void m57613o(@Nullable PorterDuff.Mode mode) {
        this.f86332g = mode;
        this.f86334i = true;
        m57604f();
    }
}
