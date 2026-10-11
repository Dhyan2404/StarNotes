package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.textfield.TextInputEditText;
import com.onyx.android.sdk.theme.utils.TintManager;

/* loaded from: classes8.dex */
public class TintTextInputEditTextView extends TextInputEditText implements Tintable {

    /* renamed from: m */
    public final AppCompatTextInputEditTextHelper f46988m;

    public TintTextInputEditTextView(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTextInputEditTextHelper appCompatTextInputEditTextHelper = this.f46988m;
        if (appCompatTextInputEditTextHelper != null) {
            appCompatTextInputEditTextHelper.tint();
        }
    }

    public TintTextInputEditTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        AppCompatTextInputEditTextHelper appCompatTextInputEditTextHelper = new AppCompatTextInputEditTextHelper(this, TintManager.get(context));
        this.f46988m = appCompatTextInputEditTextHelper;
        appCompatTextInputEditTextHelper.loadFromAttribute(attributeSet, -1);
    }
}
