package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0118R;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintInfo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;

/* renamed from: com.sunia.HTREnginev2.xb */
/* loaded from: classes3.dex */
public class C14646xb {

    /* renamed from: a */
    @NonNull
    public final View f89452a;

    /* renamed from: d */
    public TintInfo f89455d;

    /* renamed from: e */
    public TintInfo f89456e;

    /* renamed from: f */
    public TintInfo f89457f;

    /* renamed from: c */
    public int f89454c = -1;

    /* renamed from: b */
    public final AppCompatDrawableManager f89453b = AppCompatDrawableManager.get();

    public C14646xb(@NonNull View view) {
        this.f89452a = view;
    }

    /* renamed from: a */
    public final boolean m58171a(@NonNull Drawable drawable) {
        if (this.f89457f == null) {
            this.f89457f = new TintInfo();
        }
        TintInfo tintInfo = this.f89457f;
        tintInfo.m934a();
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(this.f89452a);
        if (backgroundTintList != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = backgroundTintList;
        }
        PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(this.f89452a);
        if (backgroundTintMode != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = backgroundTintMode;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            return false;
        }
        AppCompatDrawableManager.m723e(drawable, tintInfo, this.f89452a.getDrawableState());
        return true;
    }

    /* renamed from: b */
    public void m58172b() {
        Drawable background = this.f89452a.getBackground();
        if (background != null) {
            if (m58181k() && m58171a(background)) {
                return;
            }
            TintInfo tintInfo = this.f89456e;
            if (tintInfo != null) {
                AppCompatDrawableManager.m723e(background, tintInfo, this.f89452a.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.f89455d;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.m723e(background, tintInfo2, this.f89452a.getDrawableState());
            }
        }
    }

    /* renamed from: c */
    public ColorStateList m58173c() {
        TintInfo tintInfo = this.f89456e;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    /* renamed from: d */
    public PorterDuff.Mode m58174d() {
        TintInfo tintInfo = this.f89456e;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* renamed from: e */
    public void m58175e(@Nullable AttributeSet attributeSet, int i) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f89452a.getContext(), attributeSet, C0118R.styleable.ViewBackgroundHelper, i, 0);
        View view = this.f89452a;
        ViewCompat.saveAttributeDataForStyleable(view, view.getContext(), C0118R.styleable.ViewBackgroundHelper, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        try {
            if (obtainStyledAttributes.hasValue(C0118R.styleable.ViewBackgroundHelper_android_background)) {
                this.f89454c = obtainStyledAttributes.getResourceId(C0118R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList m725c = this.f89453b.m725c(this.f89452a.getContext(), this.f89454c);
                if (m725c != null) {
                    m58178h(m725c);
                }
            }
            if (obtainStyledAttributes.hasValue(C0118R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.f89452a, obtainStyledAttributes.getColorStateList(C0118R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (obtainStyledAttributes.hasValue(C0118R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.f89452a, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0118R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: f */
    public void m58176f(Drawable drawable) {
        this.f89454c = -1;
        m58178h(null);
        m58172b();
    }

    /* renamed from: g */
    public void m58177g(int i) {
        this.f89454c = i;
        AppCompatDrawableManager appCompatDrawableManager = this.f89453b;
        m58178h(appCompatDrawableManager != null ? appCompatDrawableManager.m725c(this.f89452a.getContext(), i) : null);
        m58172b();
    }

    /* renamed from: h */
    public void m58178h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f89455d == null) {
                this.f89455d = new TintInfo();
            }
            TintInfo tintInfo = this.f89455d;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.f89455d = null;
        }
        m58172b();
    }

    /* renamed from: i */
    public void m58179i(ColorStateList colorStateList) {
        if (this.f89456e == null) {
            this.f89456e = new TintInfo();
        }
        TintInfo tintInfo = this.f89456e;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        m58172b();
    }

    /* renamed from: j */
    public void m58180j(PorterDuff.Mode mode) {
        if (this.f89456e == null) {
            this.f89456e = new TintInfo();
        }
        TintInfo tintInfo = this.f89456e;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        m58172b();
    }

    /* renamed from: k */
    public final boolean m58181k() {
        return this.f89455d != null;
    }
}
