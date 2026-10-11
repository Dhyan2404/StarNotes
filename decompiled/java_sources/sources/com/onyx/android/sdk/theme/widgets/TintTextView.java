package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import com.onyx.android.sdk.theme.utils.InputConnectionImpl;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatCompoundDrawableHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatTextHelper;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes8.dex */
public class TintTextView extends TextView implements Tintable, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatCompoundDrawableHelper.CompoundDrawableExtensible, AppCompatTextHelper.TextExtensible {

    /* renamed from: e */
    public AppCompatTextHelper f46990e;

    /* renamed from: f */
    public AppCompatBackgroundHelper f46991f;

    /* renamed from: g */
    public AppCompatCompoundDrawableHelper f46992g;

    public TintTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (getBackground() != null) {
            invalidateDrawable(getBackground());
        }
    }

    public Drawable getCompoundDrawableByPosition(int i) {
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper;
        if (i < 0 || i > 3 || (appCompatCompoundDrawableHelper = this.f46992g) == null) {
            return null;
        }
        return appCompatCompoundDrawableHelper.m36280b(i);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null) {
            return new InputConnectionImpl(onCreateInputConnection, false);
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46991f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46991f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46991f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46991f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatCompoundDrawableHelper.CompoundDrawableExtensible
    public void setCompoundDrawableTintList(int i, int i2, int i3, int i4) {
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46992g;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.m36282d(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46992g;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.m36284f(i, i2, i3, i4);
        } else {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    @TargetApi(23)
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        AppCompatTextHelper appCompatTextHelper = this.f46990e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        AppCompatTextHelper appCompatTextHelper = this.f46990e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatTextHelper.TextExtensible
    public void setTextColorById(@ColorRes int i) {
        AppCompatTextHelper appCompatTextHelper = this.f46990e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36335m(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTextHelper appCompatTextHelper = this.f46990e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.tint();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46991f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46992g;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.tint();
        }
    }

    public TintTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public TintTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(getContext());
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this, tintManager);
        this.f46990e = appCompatTextHelper;
        appCompatTextHelper.loadFromAttribute(attributeSet, i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46991f = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = new AppCompatCompoundDrawableHelper(this, tintManager);
        this.f46992g = appCompatCompoundDrawableHelper;
        appCompatCompoundDrawableHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46991f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatCompoundDrawableHelper appCompatCompoundDrawableHelper = this.f46992g;
        if (appCompatCompoundDrawableHelper != null) {
            appCompatCompoundDrawableHelper.m36283e();
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.f46990e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        AppCompatTextHelper appCompatTextHelper = this.f46990e;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }
}
