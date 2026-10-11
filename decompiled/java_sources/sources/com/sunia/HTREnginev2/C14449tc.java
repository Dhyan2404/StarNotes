package com.sunia.HTREnginev2;

import android.R;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.TintSeekBar;

/* renamed from: com.sunia.HTREnginev2.tc */
/* loaded from: classes8.dex */
public class C14449tc extends AbstractC14698yb<TintSeekBar> {

    /* renamed from: b */
    public int f85165b;

    /* renamed from: c */
    public int f85166c;

    /* renamed from: d */
    public int f85167d;

    /* renamed from: e */
    public int f85168e;

    /* renamed from: f */
    public TintInfo f85169f;

    /* renamed from: g */
    public TintInfo f85170g;

    /* renamed from: h */
    public TintInfo f85171h;

    /* renamed from: i */
    public TintInfo f85172i;

    public C14449tc(TintSeekBar tintSeekBar, TintManager tintManager) {
        super(tintSeekBar, tintManager);
    }

    /* renamed from: a */
    public final void m57352a() {
        Drawable m57356e;
        TintInfo tintInfo = this.f85172i;
        if (tintInfo != null) {
            if ((tintInfo.mHasTintList || tintInfo.mHasTintMode) && (m57356e = m57356e(R.id.background, true)) != null) {
                TintManager.tintViewDrawable(this.mView, m57356e, this.f85172i);
                if (m57356e.isStateful()) {
                    m57356e.setState(((TintSeekBar) this.mView).getDrawableState());
                }
            }
        }
    }

    /* renamed from: b */
    public final void m57353b() {
        Drawable m57356e;
        TintInfo tintInfo = this.f85170g;
        if (tintInfo != null) {
            if ((tintInfo.mHasTintList || tintInfo.mHasTintMode) && (m57356e = m57356e(R.id.secondaryProgress, true)) != null) {
                TintManager.tintViewDrawable(this.mView, m57356e, this.f85170g);
                if (m57356e.isStateful()) {
                    m57356e.setState(((TintSeekBar) this.mView).getDrawableState());
                }
            }
        }
    }

    /* renamed from: c */
    public final void m57354c() {
        TintInfo tintInfo;
        Drawable indeterminateDrawable = ((TintSeekBar) this.mView).getIndeterminateDrawable();
        if (indeterminateDrawable == null || (tintInfo = this.f85171h) == null) {
            return;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            TintSeekBar tintSeekBar = (TintSeekBar) this.mView;
            Drawable mutate = indeterminateDrawable.mutate();
            tintSeekBar.setIndeterminateDrawable(mutate);
            TintManager.tintViewDrawable(this.mView, mutate, this.f85171h);
            if (mutate.isStateful()) {
                mutate.setState(((TintSeekBar) this.mView).getDrawableState());
            }
        }
    }

    /* renamed from: d */
    public final void m57355d() {
        Drawable m57356e;
        TintInfo tintInfo = this.f85169f;
        if (tintInfo != null) {
            if ((tintInfo.mHasTintList || tintInfo.mHasTintMode) && (m57356e = m57356e(R.id.progress, true)) != null) {
                TintManager.tintViewDrawable(this.mView, m57356e, this.f85169f);
                if (m57356e.isStateful()) {
                    m57356e.setState(((TintSeekBar) this.mView).getDrawableState());
                }
            }
        }
    }

    @Nullable
    /* renamed from: e */
    public final Drawable m57356e(int i, boolean z) {
        Drawable progressDrawable = ((TintSeekBar) this.mView).getProgressDrawable();
        if (progressDrawable != null) {
            ((TintSeekBar) this.mView).setProgressDrawable(progressDrawable.mutate());
            r1 = progressDrawable instanceof LayerDrawable ? ((LayerDrawable) progressDrawable).findDrawableByLayerId(i) : null;
            if (z && r1 == null) {
                return progressDrawable;
            }
        }
        return r1;
    }

    /* renamed from: f */
    public final void m57357f(int i) {
        if (i != 0) {
            if (this.f85172i == null) {
                this.f85172i = new TintInfo();
            }
            TintInfo tintInfo = this.f85172i;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = ThemeUtils.getThemeColorStateList(((TintSeekBar) this.mView).getContext(), i);
        }
        m57352a();
    }

    /* renamed from: g */
    public final void m57358g(int i) {
        if (i != 0) {
            if (this.f85170g == null) {
                this.f85170g = new TintInfo();
            }
            TintInfo tintInfo = this.f85170g;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = ThemeUtils.getThemeColorStateList(((TintSeekBar) this.mView).getContext(), i);
        }
        m57353b();
    }

    /* renamed from: h */
    public final void m57359h(int i) {
        if (i != 0) {
            if (this.f85171h == null) {
                this.f85171h = new TintInfo();
            }
            TintInfo tintInfo = this.f85171h;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = ThemeUtils.getThemeColorStateList(((TintSeekBar) this.mView).getContext(), i);
        }
        m57354c();
    }

    /* renamed from: i */
    public final void m57360i(int i) {
        if (i != 0) {
            if (this.f85169f == null) {
                this.f85169f = new TintInfo();
            }
            TintInfo tintInfo = this.f85169f;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = ThemeUtils.getThemeColorStateList(((TintSeekBar) this.mView).getContext(), i);
        }
        m57355d();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TintSeekBar) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintSeekBarHelper, i, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintSeekBarHelper_android_progressTint)) {
            int resourceId = obtainStyledAttributes.getResourceId(C7996R.styleable.TintSeekBarHelper_android_progressTint, 0);
            this.f85165b = resourceId;
            m57360i(resourceId);
        }
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintSeekBarHelper_android_indeterminateTint)) {
            int resourceId2 = obtainStyledAttributes.getResourceId(C7996R.styleable.TintSeekBarHelper_android_indeterminateTint, 0);
            this.f85166c = resourceId2;
            m57359h(resourceId2);
        }
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintSeekBarHelper_android_secondaryProgressTint)) {
            int resourceId3 = obtainStyledAttributes.getResourceId(C7996R.styleable.TintSeekBarHelper_android_secondaryProgressTint, 0);
            this.f85167d = resourceId3;
            m57358g(resourceId3);
        }
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintSeekBarHelper_android_backgroundTint)) {
            int resourceId4 = obtainStyledAttributes.getResourceId(C7996R.styleable.TintSeekBarHelper_android_backgroundTint, 0);
            this.f85168e = resourceId4;
            m57357f(resourceId4);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        int i = this.f85165b;
        if (i != 0) {
            m57360i(i);
        }
        int i2 = this.f85166c;
        if (i2 != 0) {
            m57359h(i2);
        }
        int i3 = this.f85167d;
        if (i3 != 0) {
            m57358g(i3);
        }
    }
}
