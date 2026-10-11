package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatCompoundDrawableHelper extends AbstractC14698yb<TextView> {

    /* renamed from: b */
    public TintInfo[] f46881b;

    /* renamed from: c */
    public int[] f46882c;

    /* renamed from: d */
    public int[] f46883d;

    /* renamed from: e */
    public PorterDuff.Mode[] f46884e;

    /* loaded from: classes8.dex */
    public interface CompoundDrawableExtensible {
        void setCompoundDrawableTintList(int i, int i2, int i3, int i4);
    }

    public AppCompatCompoundDrawableHelper(TextView textView, TintManager tintManager) {
        super(textView, tintManager);
        this.f46881b = new TintInfo[4];
        this.f46882c = new int[4];
        this.f46883d = new int[4];
        this.f46884e = new PorterDuff.Mode[4];
    }

    /* renamed from: a */
    public final Drawable m36279a(int i) {
        Drawable drawable = ((TextView) this.mView).getCompoundDrawables()[i];
        TintInfo tintInfo = this.f46881b[i];
        if (drawable == null || tintInfo == null || !tintInfo.mHasTintList) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable);
        wrap.mutate();
        if (tintInfo.mHasTintList) {
            DrawableCompat.setTintList(wrap, tintInfo.mTintList);
        }
        if (tintInfo.mHasTintMode) {
            DrawableCompat.setTintMode(wrap, tintInfo.mTintMode);
        }
        if (wrap.isStateful()) {
            wrap.setState(drawable.getState());
        }
        return wrap;
    }

    /* renamed from: b */
    public Drawable m36280b(int i) {
        PorterDuff.Mode mode = this.f46884e[i];
        int i2 = this.f46883d[i];
        int i3 = this.f46882c[i];
        if (i2 != 0) {
            m36287i(i, mode);
            return m36286h(i, i2);
        }
        Drawable drawable = this.mTintManager.getDrawable(i3);
        if (drawable != null) {
            return drawable;
        }
        if (i3 == 0) {
            return null;
        }
        return ContextCompat.getDrawable(((TextView) this.mView).getContext(), i3);
    }

    /* renamed from: c */
    public final void m36281c(int... iArr) {
        for (int i = 0; i < iArr.length; i++) {
            this.f46882c[i] = iArr[i];
            this.f46883d[i] = 0;
            TintInfo tintInfo = this.f46881b[i];
            if (tintInfo != null) {
                tintInfo.mHasTintList = false;
                tintInfo.mTintList = null;
                tintInfo.mHasTintMode = false;
                tintInfo.mTintMode = null;
            }
        }
    }

    /* renamed from: d */
    public void m36282d(int... iArr) {
        for (int i = 0; i < iArr.length; i++) {
            this.f46883d[i] = iArr[i];
            TintInfo tintInfo = this.f46881b[i];
            if (tintInfo != null) {
                tintInfo.mHasTintList = false;
                tintInfo.mTintList = null;
            }
        }
        m36285g(m36280b(0), m36280b(1), m36280b(2), m36280b(3));
    }

    /* renamed from: e */
    public void m36283e() {
        if (skipNextApply()) {
            return;
        }
        m36281c(0, 0, 0, 0);
        setSkipNextApply(false);
    }

    /* renamed from: f */
    public void m36284f(int i, int i2, int i3, int i4) {
        m36281c(i, i2, i3, i4);
        m36285g(m36280b(0), m36280b(1), m36280b(2), m36280b(3));
    }

    /* renamed from: g */
    public final void m36285g(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (skipNextApply()) {
            return;
        }
        ((TextView) this.mView).setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    /* renamed from: h */
    public final Drawable m36286h(int i, int i2) {
        if (i2 != 0) {
            TintInfo[] tintInfoArr = this.f46881b;
            if (tintInfoArr[i] == null) {
                tintInfoArr[i] = new TintInfo();
            }
            TintInfo tintInfo = this.f46881b[i];
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i2);
        }
        return m36279a(i);
    }

    /* renamed from: i */
    public final void m36287i(int i, PorterDuff.Mode mode) {
        if (mode != null) {
            TintInfo[] tintInfoArr = this.f46881b;
            if (tintInfoArr[i] == null) {
                tintInfoArr[i] = new TintInfo();
            }
            TintInfo tintInfo = this.f46881b[i];
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = mode;
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TextView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintCompoundDrawableHelper, i, 0);
        this.f46882c[0] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_android_drawableLeft, 0);
        this.f46883d[0] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_drawableLeftTint, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintCompoundDrawableHelper_drawableLeftTintMode)) {
            this.f46884e[0] = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintCompoundDrawableHelper_drawableLeftTintMode, 0), null);
        }
        this.f46882c[1] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_android_drawableTop, 0);
        this.f46883d[1] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_drawableTopTint, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintCompoundDrawableHelper_drawableTopTintMode)) {
            this.f46884e[1] = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintCompoundDrawableHelper_drawableTopTintMode, 0), null);
        }
        this.f46882c[2] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_android_drawableRight, 0);
        this.f46883d[2] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_drawableRightTint, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintCompoundDrawableHelper_drawableRightTintMode)) {
            this.f46884e[2] = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintCompoundDrawableHelper_drawableRightTintMode, 0), null);
        }
        this.f46882c[3] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_android_drawableBottom, 0);
        this.f46883d[3] = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCompoundDrawableHelper_drawableBottomTint, 0);
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintCompoundDrawableHelper_drawableBottomTintMode)) {
            this.f46884e[3] = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintCompoundDrawableHelper_drawableBottomTintMode, 0), null);
        }
        obtainStyledAttributes.recycle();
        m36285g(m36280b(0), m36280b(1), m36280b(2), m36280b(3));
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        m36285g(m36280b(0), m36280b(1), m36280b(2), m36280b(3));
    }
}
