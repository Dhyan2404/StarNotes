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
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatBackgroundHelper extends AbstractC14698yb<View> {

    /* renamed from: b */
    public int f46872b;

    /* renamed from: c */
    public int f46873c;

    /* renamed from: d */
    public int f46874d;

    /* renamed from: e */
    public int f46875e;

    /* renamed from: f */
    public int f46876f;

    /* renamed from: g */
    public int f46877g;
    protected boolean isBackgroundOverWritten;
    protected TintInfo mBackgroundTintInfo;

    /* loaded from: classes8.dex */
    public interface BackgroundExtensible {
        void setBackgroundTintList(int i);

        void setBackgroundTintList(int i, PorterDuff.Mode mode);
    }

    public AppCompatBackgroundHelper(View view, TintManager tintManager) {
        super(view, tintManager);
        this.isBackgroundOverWritten = false;
    }

    /* renamed from: a */
    public final boolean m36263a() {
        return (this.f46874d == 0 && this.f46876f == 0 && this.f46875e == 0 && this.f46877g == 0) ? false : true;
    }

    public boolean applySupportBackgroundTint() {
        TintInfo tintInfo;
        Drawable background = this.mView.getBackground();
        if (background == null || (tintInfo = this.mBackgroundTintInfo) == null || !tintInfo.mHasTintList) {
            return false;
        }
        Drawable mutate = DrawableCompat.wrap(background).mutate();
        TintInfo tintInfo2 = this.mBackgroundTintInfo;
        if (tintInfo2.mHasTintList) {
            DrawableCompat.setTintList(mutate, tintInfo2.mTintList);
        }
        TintInfo tintInfo3 = this.mBackgroundTintInfo;
        if (tintInfo3.mHasTintMode) {
            DrawableCompat.setTintMode(mutate, tintInfo3.mTintMode);
        }
        if (mutate.isStateful()) {
            mutate.setState(this.mView.getDrawableState());
        }
        m36268f(mutate);
        return true;
    }

    /* renamed from: b */
    public final void m36264b() {
        this.f46874d = this.mView.getPaddingLeft();
        this.f46875e = this.mView.getPaddingTop();
        this.f46876f = this.mView.getPaddingRight();
        this.f46877g = this.mView.getPaddingBottom();
    }

    /* renamed from: c */
    public final void m36265c(Drawable drawable) {
        if (ThemeUtils.containsNinePatch(drawable) && m36263a()) {
            this.mView.setPadding(this.f46874d, this.f46875e, this.f46876f, this.f46877g);
        }
    }

    /* renamed from: d */
    public final void m36266d(int i) {
        this.f46872b = i;
        this.f46873c = 0;
        TintInfo tintInfo = this.mBackgroundTintInfo;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
            tintInfo.mHasTintMode = false;
            tintInfo.mTintMode = null;
        }
    }

    /* renamed from: e */
    public final void m36267e(Drawable drawable) {
        this.mView.setBackground(drawable);
    }

    /* renamed from: f */
    public final void m36268f(Drawable drawable) {
        if (skipNextApply()) {
            return;
        }
        m36267e(drawable);
        m36265c(drawable);
    }

    /* renamed from: g */
    public final void m36269g(PorterDuff.Mode mode) {
        if (this.f46873c == 0 || mode == null) {
            return;
        }
        if (this.mBackgroundTintInfo == null) {
            this.mBackgroundTintInfo = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTintInfo;
        tintInfo.mHasTintMode = true;
        tintInfo.mTintMode = mode;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        m36264b();
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintViewBackgroundHelper, i, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintViewBackgroundHelper_backgroundTint)) {
            this.f46873c = obtainStyledAttributes.getResourceId(C7996R.styleable.TintViewBackgroundHelper_backgroundTint, 0);
            if (obtainStyledAttributes.hasValue(C7996R.styleable.TintViewBackgroundHelper_backgroundTintMode)) {
                m36269g(DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintViewBackgroundHelper_backgroundTintMode, 0), null));
            }
            setSupportBackgroundTint(this.f46873c);
        } else {
            TintManager tintManager = this.mTintManager;
            int resourceId = obtainStyledAttributes.getResourceId(C7996R.styleable.TintViewBackgroundHelper_android_background, 0);
            this.f46872b = resourceId;
            Drawable drawable = tintManager.getDrawable(resourceId);
            if (drawable != null) {
                m36268f(drawable);
            }
        }
        obtainStyledAttributes.recycle();
    }

    public void setBackgroundColor(int i) {
        if (skipNextApply()) {
            return;
        }
        m36266d(0);
        T t = this.mView;
        t.setBackgroundColor(ThemeUtils.getColor(t.getContext(), i));
    }

    public void setBackgroundDrawableExternal(Drawable drawable) {
        if (skipNextApply()) {
            return;
        }
        m36266d(0);
        setSkipNextApply(false);
        m36265c(drawable);
    }

    public void setBackgroundResId(int i) {
        if (this.f46872b != i) {
            this.f46872b = i;
            if (i != 0) {
                Drawable drawable = this.mTintManager.getDrawable(i);
                if (drawable == null) {
                    drawable = ContextCompat.getDrawable(this.mView.getContext(), i);
                }
                m36268f(drawable);
            }
        }
    }

    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        if (this.f46873c != i) {
            this.f46873c = i;
            TintInfo tintInfo = this.mBackgroundTintInfo;
            if (tintInfo != null) {
                tintInfo.mHasTintList = false;
                tintInfo.mTintList = null;
            }
            m36269g(mode);
            setSupportBackgroundTint(i);
        }
    }

    public boolean setSupportBackgroundTint(int i) {
        if (i != 0) {
            if (this.mBackgroundTintInfo == null) {
                this.mBackgroundTintInfo = new TintInfo();
            }
            TintInfo tintInfo = this.mBackgroundTintInfo;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        return applySupportBackgroundTint();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        int i = this.f46873c;
        if (i == 0 || !setSupportBackgroundTint(i)) {
            Drawable drawable = this.mTintManager.getDrawable(this.f46872b);
            if (drawable == null) {
                drawable = this.f46872b == 0 ? null : ContextCompat.getDrawable(this.mView.getContext(), this.f46872b);
            }
            m36268f(drawable);
        }
    }
}
