package com.sunia.HTREnginev2;

import android.R;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;

/* renamed from: com.sunia.HTREnginev2.rc */
/* loaded from: classes8.dex */
public class C14344rc extends AbstractC14698yb<TintProgressBar> {

    /* renamed from: b */
    public int f82954b;

    /* renamed from: c */
    public int f82955c;

    /* renamed from: d */
    public TintInfo f82956d;

    /* renamed from: e */
    public TintInfo f82957e;

    public C14344rc(TintProgressBar tintProgressBar, TintManager tintManager) {
        super(tintProgressBar, tintManager);
    }

    /* renamed from: a */
    public final void m56939a() {
        TintInfo tintInfo;
        Drawable indeterminateDrawable = ((TintProgressBar) this.mView).getIndeterminateDrawable();
        if (indeterminateDrawable == null || (tintInfo = this.f82957e) == null) {
            return;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            TintProgressBar tintProgressBar = (TintProgressBar) this.mView;
            Drawable mutate = indeterminateDrawable.mutate();
            tintProgressBar.setIndeterminateDrawable(mutate);
            TintManager.tintViewDrawable(this.mView, mutate, this.f82957e);
            if (mutate.isStateful()) {
                mutate.setState(((TintProgressBar) this.mView).getDrawableState());
            }
        }
    }

    /* renamed from: b */
    public final void m56940b() {
        Drawable m56941c;
        TintInfo tintInfo = this.f82956d;
        if (tintInfo != null) {
            if ((tintInfo.mHasTintList || tintInfo.mHasTintMode) && (m56941c = m56941c(R.id.progress, true)) != null) {
                TintManager.tintViewDrawable(this.mView, m56941c, this.f82956d);
                if (m56941c.isStateful()) {
                    m56941c.setState(((TintProgressBar) this.mView).getDrawableState());
                }
            }
        }
    }

    @Nullable
    /* renamed from: c */
    public final Drawable m56941c(int i, boolean z) {
        Drawable progressDrawable = ((TintProgressBar) this.mView).getProgressDrawable();
        if (progressDrawable != null) {
            ((TintProgressBar) this.mView).setProgressDrawable(progressDrawable.mutate());
            r1 = progressDrawable instanceof LayerDrawable ? ((LayerDrawable) progressDrawable).findDrawableByLayerId(i) : null;
            if (z && r1 == null) {
                return progressDrawable;
            }
        }
        return r1;
    }

    /* renamed from: d */
    public final void m56942d(int i) {
        if (i != 0) {
            if (this.f82957e == null) {
                this.f82957e = new TintInfo();
            }
            TintInfo tintInfo = this.f82957e;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        m56939a();
    }

    /* renamed from: e */
    public final void m56943e(int i) {
        if (i != 0) {
            if (this.f82956d == null) {
                this.f82956d = new TintInfo();
            }
            TintInfo tintInfo = this.f82956d;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        m56940b();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TintProgressBar) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintProgressBarHelper, i, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintProgressBarHelper_android_progressTint)) {
            int resourceId = obtainStyledAttributes.getResourceId(C7996R.styleable.TintProgressBarHelper_android_progressTint, 0);
            this.f82954b = resourceId;
            m56943e(resourceId);
        }
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintProgressBarHelper_android_indeterminateTint)) {
            int resourceId2 = obtainStyledAttributes.getResourceId(C7996R.styleable.TintProgressBarHelper_android_indeterminateTint, 0);
            this.f82955c = resourceId2;
            m56942d(resourceId2);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        int i = this.f82954b;
        if (i != 0) {
            m56943e(i);
        }
        int i2 = this.f82955c;
        if (i2 != 0) {
            m56942d(i2);
        }
    }
}
