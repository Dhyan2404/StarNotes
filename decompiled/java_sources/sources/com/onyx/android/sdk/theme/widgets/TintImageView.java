package com.onyx.android.sdk.theme.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatImageHelper;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes8.dex */
public class TintImageView extends ImageView implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatImageHelper.ImageExtensible {

    /* renamed from: e */
    public AppCompatBackgroundHelper f46952e;

    /* renamed from: f */
    public AppCompatImageHelper f46953f;

    public TintImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (getBackground() != null) {
            invalidateDrawable(getBackground());
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46952e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46952e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46952e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46952e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        AppCompatImageHelper appCompatImageHelper = this.f46953f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m36299b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        AppCompatImageHelper appCompatImageHelper = this.f46953f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m36304g(i);
        } else {
            super.setImageResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatImageHelper.ImageExtensible
    public void setImageTintList(int i) {
        AppCompatImageHelper appCompatImageHelper = this.f46953f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m36305h(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46952e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        AppCompatImageHelper appCompatImageHelper = this.f46953f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.tint();
        }
    }

    public TintImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(context);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46952e = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this, tintManager);
        this.f46953f = appCompatImageHelper;
        appCompatImageHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46952e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatImageHelper.ImageExtensible
    public void setImageTintList(int i, PorterDuff.Mode mode) {
        AppCompatImageHelper appCompatImageHelper = this.f46953f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m36305h(i, mode);
        }
    }
}
