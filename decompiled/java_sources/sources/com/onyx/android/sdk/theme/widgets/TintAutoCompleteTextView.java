package com.onyx.android.sdk.theme.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
import androidx.annotation.DrawableRes;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatCompoundDrawableHelper;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes8.dex */
public class TintAutoCompleteTextView extends AutoCompleteTextView implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatCompoundDrawableHelper.CompoundDrawableExtensible {

    /* renamed from: e */
    public AppCompatBackgroundHelper f46928e;

    /* renamed from: f */
    public AppCompatCompoundDrawableHelper f46929f;

    /* renamed from: g */
    public AppCompatTextHelper f46930g;

    /* renamed from: h */
    public AutoCompleteTextViewHelper f46931h;

    public TintAutoCompleteTextView(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m36346a(AttributeSet attributeSet, int i) {
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(getContext());
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46928e = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = new AppCompatCompoundDrawableHelper(this, tintManager);
        this.f46929f = appCompatCompoundDrawableHelper;
        appCompatCompoundDrawableHelper.loadFromAttribute(attributeSet, i);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this, tintManager);
        this.f46930g = appCompatTextHelper;
        appCompatTextHelper.loadFromAttribute(attributeSet, i);
        AutoCompleteTextViewHelper autoCompleteTextViewHelper = new AutoCompleteTextViewHelper(this, tintManager);
        this.f46931h = autoCompleteTextViewHelper;
        autoCompleteTextViewHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        super.setBackground(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46928e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46928e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46928e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46928e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatCompoundDrawableHelper.CompoundDrawableExtensible
    public void setCompoundDrawableTintList(int i, int i2, int i3, int i4) {
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46929f;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.m36282d(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46929f;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.m36284f(i, i2, i3, i4);
        } else {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        }
    }

    public void setPopupBackground(@DrawableRes int i) {
        AutoCompleteTextViewHelper autoCompleteTextViewHelper = this.f46931h;
        if (autoCompleteTextViewHelper != null) {
            autoCompleteTextViewHelper.m36343b(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46928e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46929f;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.tint();
        }
        AppCompatTextHelper appCompatTextHelper = this.f46930g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.tint();
        }
    }

    public TintAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m36346a(attributeSet, -1);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46928e;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    public TintAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m36346a(attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46929f;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.m36283e();
        }
    }
}
