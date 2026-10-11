package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ColorRes;
import com.google.android.material.textfield.TextInputLayout;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatTextInputLayoutHelper extends AbstractC14698yb<TextInputLayout> {

    /* renamed from: b */
    @ColorRes
    public int f46920b;

    /* renamed from: c */
    @ColorRes
    public int f46921c;

    /* renamed from: d */
    @ColorRes
    public int f46922d;

    /* renamed from: e */
    @ColorRes
    public int f46923e;

    /* renamed from: f */
    @ColorRes
    public int f46924f;

    public AppCompatTextInputLayoutHelper(TextInputLayout textInputLayout, TintManager tintManager) {
        super(textInputLayout, tintManager);
    }

    /* renamed from: a */
    public final void m36341a() {
        int i = this.f46920b;
        if (i != 0) {
            ((TextInputLayout) this.mView).setBoxBackgroundColor(ThemeUtils.getColorById(i));
        }
        if (this.f46921c != 0) {
            ((TextInputLayout) this.mView).setBoxStrokeColorStateList(ThemeUtils.getThemeColorStateList(((TextInputLayout) this.mView).getContext(), this.f46921c));
        }
        if (this.f46922d != 0) {
            ((TextInputLayout) this.mView).setStartIconTintList(ThemeUtils.getThemeColorStateList(((TextInputLayout) this.mView).getContext(), this.f46922d));
        }
        if (this.f46923e != 0) {
            ((TextInputLayout) this.mView).setEndIconTintList(ThemeUtils.getThemeColorStateList(((TextInputLayout) this.mView).getContext(), this.f46923e));
        }
        if (this.f46924f != 0) {
            ((TextInputLayout) this.mView).setHintTextColor(ThemeUtils.getThemeColorStateList(((TextInputLayout) this.mView).getContext(), this.f46924f));
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TextInputLayout) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintTextInputLayoutHelper);
        this.f46920b = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputLayoutHelper_boxBackgroundColor, 0);
        this.f46921c = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputLayoutHelper_boxStrokeColor, 0);
        this.f46922d = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputLayoutHelper_startIconTint, 0);
        this.f46923e = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputLayoutHelper_endIconTint, 0);
        this.f46924f = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputLayoutHelper_hintTextColor, 0);
        m36341a();
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        m36341a();
    }
}
