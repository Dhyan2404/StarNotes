package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
import androidx.annotation.DrawableRes;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AutoCompleteTextViewHelper extends AbstractC14698yb<AutoCompleteTextView> {

    /* renamed from: b */
    public int f46925b;

    public AutoCompleteTextViewHelper(AutoCompleteTextView autoCompleteTextView, TintManager tintManager) {
        super(autoCompleteTextView, tintManager);
        this.f46925b = -1;
    }

    /* renamed from: a */
    public final void m36342a() {
        int i = this.f46925b;
        if (i != -1) {
            ((AutoCompleteTextView) this.mView).setDropDownBackgroundDrawable(ThemeUtils.getThemeDrawable(i));
        }
    }

    /* renamed from: b */
    public void m36343b(@DrawableRes int i) {
        this.f46925b = i;
        m36342a();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((AutoCompleteTextView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.AutoCompleteTextViewHelper, i, 0);
        this.f46925b = obtainStyledAttributes.getResourceId(C7996R.styleable.AutoCompleteTextViewHelper_android_popupBackground, -1);
        m36342a();
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        m36342a();
    }
}
