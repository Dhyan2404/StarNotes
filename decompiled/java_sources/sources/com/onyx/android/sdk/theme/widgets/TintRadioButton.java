package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.core.widget.CompoundButtonCompat;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatCompoundButtonHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatTextHelper;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes8.dex */
public class TintRadioButton extends RadioButton implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatCompoundButtonHelper.CompoundButtonExtensible, AppCompatTextHelper.TextExtensible {

    /* renamed from: e */
    public AppCompatTextHelper f46974e;

    /* renamed from: f */
    public AppCompatBackgroundHelper f46975f;

    /* renamed from: g */
    public AppCompatCompoundButtonHelper f46976g;

    public TintRadioButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (ThemeUtils.isSkipAnimatedSelector()) {
            Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this);
            try {
                if (ThemeUtils.getWrapperDrawable(buttonDrawable) instanceof AnimatedStateListDrawable) {
                    buttonDrawable.jumpToCurrentState();
                }
            } catch (NoClassDefFoundError e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46976g;
        return appCompatCompoundButtonHelper != null ? appCompatCompoundButtonHelper.m36271b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46976g;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36273d();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatCompoundButtonHelper.CompoundButtonExtensible
    public void setCompoundButtonTintList(int i) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46976g;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36276g(i, null);
        }
    }

    @Override // android.widget.TextView
    @TargetApi(23)
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        AppCompatTextHelper appCompatTextHelper = this.f46974e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        AppCompatTextHelper appCompatTextHelper = this.f46974e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatTextHelper.TextExtensible
    public void setTextColorById(@ColorRes int i) {
        AppCompatTextHelper appCompatTextHelper = this.f46974e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36335m(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTextHelper appCompatTextHelper = this.f46974e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.tint();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46976g;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.tint();
        }
    }

    public TintRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    public TintRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(context);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this, tintManager);
        this.f46974e = appCompatTextHelper;
        appCompatTextHelper.loadFromAttribute(attributeSet, i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46975f = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = new AppCompatCompoundButtonHelper(this, tintManager);
        this.f46976g = appCompatCompoundButtonHelper;
        appCompatCompoundButtonHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatCompoundButtonHelper.CompoundButtonExtensible
    public void setCompoundButtonTintList(int i, PorterDuff.Mode mode) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46976g;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36276g(i, mode);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46976g;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36274e(i);
        } else {
            super.setButtonDrawable(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.f46974e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        AppCompatTextHelper appCompatTextHelper = this.f46974e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }
}
