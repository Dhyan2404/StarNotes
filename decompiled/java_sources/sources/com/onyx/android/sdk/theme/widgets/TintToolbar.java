package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Toolbar;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;

/* loaded from: classes8.dex */
public class TintToolbar extends Toolbar implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible {

    /* renamed from: e */
    public AppCompatBackgroundHelper f46993e;

    public TintToolbar(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46993e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46993e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46993e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46993e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46993e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
    }

    public TintToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public TintToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, TintManager.get(getContext()));
        this.f46993e = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46993e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }
}
