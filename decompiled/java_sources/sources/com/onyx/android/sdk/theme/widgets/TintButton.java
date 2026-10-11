package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.annotation.ColorRes;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatTextHelper;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes8.dex */
public class TintButton extends Button implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatTextHelper.TextExtensible {

    /* renamed from: e */
    public AppCompatTextHelper f46932e;

    /* renamed from: f */
    public AppCompatBackgroundHelper f46933f;

    public TintButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (getBackground() != null) {
            invalidateDrawable(getBackground());
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46933f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46933f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46933f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46933f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // android.widget.TextView
    @TargetApi(23)
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        AppCompatTextHelper appCompatTextHelper = this.f46932e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        AppCompatTextHelper appCompatTextHelper = this.f46932e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatTextHelper.TextExtensible
    public void setTextColorById(@ColorRes int i) {
        AppCompatTextHelper appCompatTextHelper = this.f46932e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36335m(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTextHelper appCompatTextHelper = this.f46932e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.tint();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46933f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
    }

    public TintButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    public TintButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(context);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46933f = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this, tintManager);
        this.f46932e = appCompatTextHelper;
        appCompatTextHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46933f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.f46932e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        AppCompatTextHelper appCompatTextHelper = this.f46932e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }
}
