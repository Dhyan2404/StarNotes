package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatForegroundHelper extends AbstractC14698yb<View> {

    /* renamed from: b */
    public TintInfo f46885b;

    /* renamed from: c */
    public int f46886c;

    /* renamed from: d */
    public int f46887d;

    /* loaded from: classes8.dex */
    public interface ForegroundExtensible {
        void setForegroundTintList(int i);

        void setForegroundTintList(int i, PorterDuff.Mode mode);
    }

    public AppCompatForegroundHelper(View view, TintManager tintManager) {
        super(view, tintManager);
    }

    /* renamed from: a */
    public final boolean m36288a() {
        TintInfo tintInfo;
        Drawable m36289b = m36289b();
        if (m36289b == null || (tintInfo = this.f46885b) == null || !tintInfo.mHasTintList) {
            return false;
        }
        Drawable mutate = DrawableCompat.wrap(m36289b).mutate();
        TintInfo tintInfo2 = this.f46885b;
        if (tintInfo2.mHasTintList) {
            DrawableCompat.setTintList(mutate, tintInfo2.mTintList);
        }
        TintInfo tintInfo3 = this.f46885b;
        if (tintInfo3.mHasTintMode) {
            DrawableCompat.setTintMode(mutate, tintInfo3.mTintMode);
        }
        if (mutate.isStateful()) {
            mutate.setState(this.mView.getDrawableState());
        }
        m36292e(mutate);
        return true;
    }

    /* renamed from: b */
    public final Drawable m36289b() {
        this.mView.getForeground();
        return null;
    }

    /* renamed from: c */
    public final void m36290c(int i) {
        this.f46886c = i;
        this.f46887d = 0;
        TintInfo tintInfo = this.f46885b;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
            tintInfo.mHasTintMode = false;
            tintInfo.mTintMode = null;
        }
    }

    /* renamed from: d */
    public final void m36291d(Drawable drawable) {
        this.mView.setForeground(drawable);
    }

    /* renamed from: e */
    public final void m36292e(Drawable drawable) {
        if (skipNextApply()) {
            return;
        }
        m36291d(drawable);
    }

    /* renamed from: f */
    public void m36293f(Drawable drawable) {
        if (skipNextApply()) {
            return;
        }
        m36290c(0);
        setSkipNextApply(false);
    }

    /* renamed from: g */
    public void m36294g(int i) {
        if (this.f46886c != i) {
            m36290c(i);
            if (i != 0) {
                Drawable drawable = this.mTintManager.getDrawable(i);
                if (drawable == null) {
                    drawable = ContextCompat.getDrawable(this.mView.getContext(), i);
                }
                m36292e(drawable);
            }
        }
    }

    /* renamed from: h */
    public void m36295h(int i, PorterDuff.Mode mode) {
        if (this.f46887d != i) {
            this.f46887d = i;
            TintInfo tintInfo = this.f46885b;
            if (tintInfo != null) {
                tintInfo.mHasTintList = false;
                tintInfo.mTintList = null;
            }
            m36297j(mode);
            m36296i(i);
        }
    }

    /* renamed from: i */
    public final boolean m36296i(int i) {
        if (i != 0) {
            if (this.f46885b == null) {
                this.f46885b = new TintInfo();
            }
            TintInfo tintInfo = this.f46885b;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        return m36288a();
    }

    /* renamed from: j */
    public final void m36297j(PorterDuff.Mode mode) {
        if (this.f46887d == 0 || mode == null) {
            return;
        }
        if (this.f46885b == null) {
            this.f46885b = new TintInfo();
        }
        TintInfo tintInfo = this.f46885b;
        tintInfo.mHasTintMode = true;
        tintInfo.mTintMode = mode;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintViewForegroundHelper, i, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintViewForegroundHelper_foregroundTint)) {
            this.f46887d = obtainStyledAttributes.getResourceId(C7996R.styleable.TintViewForegroundHelper_foregroundTint, 0);
            if (obtainStyledAttributes.hasValue(C7996R.styleable.TintViewForegroundHelper_foregroundTintMode)) {
                m36297j(DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintViewForegroundHelper_foregroundTintMode, 0), null));
            }
            m36296i(this.f46887d);
        } else {
            TintManager tintManager = this.mTintManager;
            int resourceId = obtainStyledAttributes.getResourceId(C7996R.styleable.TintViewForegroundHelper_android_foreground, 0);
            this.f46886c = resourceId;
            Drawable drawable = tintManager.getDrawable(resourceId);
            if (drawable != null) {
                m36292e(drawable);
            }
        }
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        int i = this.f46887d;
        if (i == 0 || !m36296i(i)) {
            Drawable drawable = this.mTintManager.getDrawable(this.f46886c);
            if (drawable == null) {
                drawable = this.f46886c == 0 ? null : ContextCompat.getDrawable(this.mView.getContext(), this.f46886c);
            }
            m36292e(drawable);
        }
    }
}
