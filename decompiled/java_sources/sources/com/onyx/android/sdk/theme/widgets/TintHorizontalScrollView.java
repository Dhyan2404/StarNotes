package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatForegroundHelper;

/* loaded from: classes8.dex */
public class TintHorizontalScrollView extends HorizontalScrollView implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatForegroundHelper.ForegroundExtensible {

    /* renamed from: e */
    public AppCompatBackgroundHelper f46950e;

    /* renamed from: f */
    public AppCompatForegroundHelper f46951f;

    public TintHorizontalScrollView(Context context) {
        this(context, null);
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
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46950e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46950e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46950e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46950e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        super.setForeground(drawable);
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46951f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36293f(drawable);
        }
    }

    public void setForegroundResource(int i) {
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46951f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36294g(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatForegroundHelper.ForegroundExtensible
    public void setForegroundTintList(int i) {
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46951f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36295h(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46950e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46951f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.tint();
        }
    }

    public TintHorizontalScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintHorizontalScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(context);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46950e = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatForegroundHelper appCompatForegroundHelper = new AppCompatForegroundHelper(this, tintManager);
        this.f46951f = appCompatForegroundHelper;
        appCompatForegroundHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46950e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatForegroundHelper.ForegroundExtensible
    public void setForegroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatForegroundHelper appCompatForegroundHelper = this.f46951f;
        if (appCompatForegroundHelper != null) {
            appCompatForegroundHelper.m36295h(i, mode);
        }
    }
}
