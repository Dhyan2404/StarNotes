package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatForegroundHelper;

/* loaded from: classes8.dex */
public class TintFrameLayout extends FrameLayout implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatForegroundHelper.ForegroundExtensible {

    /* renamed from: e */
    public AppCompatBackgroundHelper f46946e;

    /* renamed from: f */
    public AppCompatForegroundHelper f46947f;

    /* renamed from: g */
    public boolean f46948g;

    public TintFrameLayout(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m36348a(AttributeSet attributeSet) {
        this.f46948g = getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintFrameLayout).getBoolean(C7996R.styleable.TintFrameLayout_dispatchSelectedState, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetSelected(boolean z) {
        if (this.f46948g) {
            super.dispatchSetSelected(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (getBackground() != null) {
            invalidateDrawable(getBackground());
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46946e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46946e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46946e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46946e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        super.setForeground(drawable);
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46947f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36293f(drawable);
        }
    }

    public void setForegroundResource(int i) {
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46947f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36294g(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatForegroundHelper.ForegroundExtensible
    public void setForegroundTintList(int i) {
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46947f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36295h(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46946e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46947f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.tint();
        }
    }

    public TintFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f46948g = true;
        m36348a(attributeSet);
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(context);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46946e = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatForegroundHelper appCompatForegroundHelper = new AppCompatForegroundHelper(this, tintManager);
        this.f46947f = appCompatForegroundHelper;
        appCompatForegroundHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46946e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatForegroundHelper.ForegroundExtensible
    public void setForegroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46947f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36295h(i, mode);
        }
    }
}
