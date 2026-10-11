package com.onyx.android.sdk.theme.widgets;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;

/* loaded from: classes8.dex */
public class AppCompatSwitchHelper {

    /* renamed from: a */
    public int[] f46891a;

    /* renamed from: b */
    public SwitchCompat f46892b;

    /* renamed from: c */
    public TintManager f46893c;

    /* renamed from: d */
    public boolean f46894d;

    /* renamed from: e */
    public DrawableCallback f46895e;

    /* renamed from: f */
    public TintInfo f46896f;

    /* renamed from: g */
    public int f46897g;

    /* renamed from: h */
    public int f46898h;

    /* renamed from: i */
    public PorterDuff.Mode f46899i;

    /* loaded from: classes8.dex */
    public interface DrawableCallback {
        Drawable getDrawable();

        void setDrawable(Drawable drawable);
    }

    /* loaded from: classes8.dex */
    public interface SwitchCompatExtensible {
        void setThumbTintList(int i);

        void setThumbTintList(int i, PorterDuff.Mode mode);

        void setTrackTintList(int i);

        void setTrackTintList(int i, PorterDuff.Mode mode);
    }

    public AppCompatSwitchHelper(SwitchCompat switchCompat, TintManager tintManager, int[] iArr, @NonNull DrawableCallback drawableCallback) {
        this.f46891a = iArr;
        this.f46893c = tintManager;
        this.f46892b = switchCompat;
        this.f46895e = drawableCallback;
    }

    /* renamed from: a */
    public final boolean m36308a() {
        TintInfo tintInfo;
        Drawable drawable = this.f46895e.getDrawable();
        if (drawable == null || (tintInfo = this.f46896f) == null || !tintInfo.mHasTintList) {
            return false;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        TintInfo tintInfo2 = this.f46896f;
        if (tintInfo2.mHasTintList) {
            DrawableCompat.setTintList(wrap, tintInfo2.mTintList);
        }
        TintInfo tintInfo3 = this.f46896f;
        if (tintInfo3.mHasTintMode) {
            DrawableCompat.setTintMode(wrap, tintInfo3.mTintMode);
        }
        if (wrap.isStateful()) {
            wrap.setState(this.f46892b.getDrawableState());
        }
        m36313f(wrap);
        if (drawable != wrap) {
            return true;
        }
        wrap.invalidateSelf();
        return true;
    }

    /* renamed from: b */
    public void m36309b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f46892b.getContext().obtainStyledAttributes(attributeSet, this.f46891a, i, 0);
        if (obtainStyledAttributes.hasValue(1)) {
            this.f46898h = obtainStyledAttributes.getResourceId(1, 0);
            if (obtainStyledAttributes.hasValue(2)) {
                PorterDuff.Mode parseTintMode = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(2, 0), null);
                this.f46899i = parseTintMode;
                m36319l(parseTintMode);
            }
            m36318k(this.f46898h);
        } else {
            TintManager tintManager = this.f46893c;
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            this.f46897g = resourceId;
            Drawable drawable = tintManager.getDrawable(resourceId);
            if (drawable != null) {
                m36313f(drawable);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    public final void m36310c(int i) {
        this.f46897g = i;
        this.f46898h = 0;
        this.f46899i = null;
        TintInfo tintInfo = this.f46896f;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
            tintInfo.mHasTintMode = false;
            tintInfo.mTintMode = null;
        }
    }

    /* renamed from: d */
    public void m36311d(int i, PorterDuff.Mode mode) {
        if (this.f46898h != i) {
            this.f46898h = i;
            TintInfo tintInfo = this.f46896f;
            if (tintInfo != null) {
                tintInfo.mHasTintList = false;
                tintInfo.mTintList = null;
                tintInfo.mHasTintMode = false;
                tintInfo.mTintMode = null;
            }
            m36319l(mode);
            m36318k(i);
        }
    }

    /* renamed from: e */
    public void m36312e() {
        if (m36320m()) {
            return;
        }
        m36310c(0);
        m36317j(false);
    }

    /* renamed from: f */
    public final void m36313f(Drawable drawable) {
        if (m36320m()) {
            return;
        }
        this.f46895e.setDrawable(drawable);
    }

    /* renamed from: g */
    public void m36314g(int i) {
        if (this.f46897g != i) {
            m36310c(i);
            if (i != 0) {
                Drawable drawable = this.f46893c.getDrawable(i);
                if (drawable == null) {
                    drawable = ContextCompat.getDrawable(this.f46892b.getContext(), i);
                }
                m36313f(drawable);
            }
        }
    }

    /* renamed from: h */
    public void m36315h(ColorStateList colorStateList) {
        ColorStateList themeColorStateList = ThemeUtils.getThemeColorStateList(this.f46892b.getContext(), colorStateList);
        if (this.f46896f == null) {
            this.f46896f = new TintInfo();
        }
        TintInfo tintInfo = this.f46896f;
        tintInfo.mHasTintList = true;
        tintInfo.mTintList = themeColorStateList;
        m36308a();
    }

    /* renamed from: i */
    public void m36316i(PorterDuff.Mode mode) {
        if (mode == null || mode == this.f46899i) {
            return;
        }
        TintInfo tintInfo = this.f46896f;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
        }
        m36319l(mode);
        m36318k(this.f46898h);
    }

    /* renamed from: j */
    public final void m36317j(boolean z) {
        this.f46894d = z;
    }

    /* renamed from: k */
    public final boolean m36318k(int i) {
        if (i != 0) {
            if (this.f46896f == null) {
                this.f46896f = new TintInfo();
            }
            TintInfo tintInfo = this.f46896f;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.f46893c.getColorStateList(i);
        }
        return m36308a();
    }

    /* renamed from: l */
    public final void m36319l(PorterDuff.Mode mode) {
        if (mode != null) {
            if (this.f46896f == null) {
                this.f46896f = new TintInfo();
            }
            TintInfo tintInfo = this.f46896f;
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = mode;
        }
    }

    /* renamed from: m */
    public final boolean m36320m() {
        if (this.f46894d) {
            this.f46894d = false;
            return true;
        }
        this.f46894d = true;
        return false;
    }

    /* renamed from: n */
    public void m36321n() {
        int i = this.f46898h;
        if (i == 0 || !m36318k(i)) {
            Drawable drawable = this.f46893c.getDrawable(this.f46897g);
            if (drawable == null) {
                drawable = this.f46897g == 0 ? null : ContextCompat.getDrawable(this.f46892b.getContext(), this.f46897g);
            }
            m36313f(drawable);
        }
    }
}
