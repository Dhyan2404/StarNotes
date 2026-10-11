package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatCompoundButtonHelper extends AbstractC14698yb<CompoundButton> {

    /* renamed from: b */
    public TintInfo f46878b;

    /* renamed from: c */
    public int f46879c;

    /* renamed from: d */
    public int f46880d;

    /* loaded from: classes8.dex */
    public interface CompoundButtonExtensible {
        void setCompoundButtonTintList(int i);

        void setCompoundButtonTintList(int i, PorterDuff.Mode mode);
    }

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton, TintManager tintManager) {
        super(compoundButton, tintManager);
    }

    /* renamed from: a */
    public boolean m36270a() {
        TintInfo tintInfo;
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable((CompoundButton) this.mView);
        if (buttonDrawable == null || (tintInfo = this.f46878b) == null || !tintInfo.mHasTintList) {
            return false;
        }
        Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
        TintInfo tintInfo2 = this.f46878b;
        if (tintInfo2.mHasTintList) {
            DrawableCompat.setTintList(mutate, tintInfo2.mTintList);
        }
        TintInfo tintInfo3 = this.f46878b;
        if (tintInfo3.mHasTintMode) {
            DrawableCompat.setTintMode(mutate, tintInfo3.mTintMode);
        }
        if (mutate.isStateful()) {
            mutate.setState(((CompoundButton) this.mView).getDrawableState());
        }
        m36275f(mutate);
        return true;
    }

    /* renamed from: b */
    public int m36271b(int i) {
        return i;
    }

    /* renamed from: c */
    public final void m36272c(int i) {
        this.f46879c = i;
        this.f46880d = 0;
        TintInfo tintInfo = this.f46878b;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
        }
    }

    /* renamed from: d */
    public void m36273d() {
        if (skipNextApply()) {
            return;
        }
        m36272c(0);
        setSkipNextApply(false);
    }

    /* renamed from: e */
    public void m36274e(int i) {
        if (this.f46880d != i) {
            m36272c(i);
            if (i != 0) {
                Drawable drawable = this.mTintManager.getDrawable(i);
                if (drawable == null) {
                    drawable = ContextCompat.getDrawable(((CompoundButton) this.mView).getContext(), i);
                }
                m36275f(drawable);
            }
        }
    }

    /* renamed from: f */
    public final void m36275f(Drawable drawable) {
        if (skipNextApply()) {
            return;
        }
        ((CompoundButton) this.mView).setButtonDrawable(drawable);
    }

    /* renamed from: g */
    public void m36276g(int i, PorterDuff.Mode mode) {
        if (this.f46880d != i) {
            this.f46880d = i;
            TintInfo tintInfo = this.f46878b;
            if (tintInfo != null) {
                tintInfo.mHasTintList = false;
                tintInfo.mTintList = null;
                tintInfo.mHasTintMode = false;
                tintInfo.mTintMode = null;
            }
            m36278i(mode);
            m36277h(i);
        }
    }

    /* renamed from: h */
    public boolean m36277h(int i) {
        if (i != 0) {
            if (this.f46878b == null) {
                this.f46878b = new TintInfo();
            }
            TintInfo tintInfo = this.f46878b;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        return m36270a();
    }

    /* renamed from: i */
    public final void m36278i(PorterDuff.Mode mode) {
        if (this.f46880d == 0 || mode == null) {
            return;
        }
        if (this.f46878b == null) {
            this.f46878b = new TintInfo();
        }
        TintInfo tintInfo = this.f46878b;
        tintInfo.mHasTintMode = true;
        tintInfo.mTintMode = mode;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((CompoundButton) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintCompoundButtonHelper, i, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintCompoundButtonHelper_compoundButtonTint)) {
            this.f46880d = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundButtonHelper_compoundButtonTint, 0);
            if (obtainStyledAttributes.hasValue(C7996R.styleable.TintCompoundButtonHelper_compoundButtonTintMode)) {
                m36278i(DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintCompoundButtonHelper_compoundButtonTintMode, 0), null));
            }
            m36277h(this.f46880d);
        } else {
            TintManager tintManager = this.mTintManager;
            int resourceId = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundButtonHelper_android_button, 0);
            this.f46879c = resourceId;
            Drawable drawable = tintManager.getDrawable(resourceId);
            if (drawable != null) {
                m36275f(drawable);
            }
        }
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        int i = this.f46880d;
        if (i == 0 || !m36277h(i)) {
            Drawable drawable = this.mTintManager.getDrawable(this.f46879c);
            if (drawable == null) {
                drawable = this.f46879c == 0 ? null : ContextCompat.getDrawable(((CompoundButton) this.mView).getContext(), this.f46879c);
            }
            m36275f(drawable);
        }
    }
}
