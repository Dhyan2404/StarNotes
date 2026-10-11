package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.textfield.TextInputLayout;
import com.onyx.android.sdk.theme.utils.TintManager;

/* loaded from: classes8.dex */
public class TintTextInputLayoutView extends TextInputLayout implements Tintable {

    /* renamed from: z1 */
    public AppCompatTextInputLayoutHelper f46989z1;

    public TintTextInputLayoutView(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTextInputLayoutHelper appCompatTextInputLayoutHelper = this.f46989z1;
        if (appCompatTextInputLayoutHelper != null) {
            appCompatTextInputLayoutHelper.tint();
        }
    }

    public TintTextInputLayoutView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        AppCompatTextInputLayoutHelper appCompatTextInputLayoutHelper = new AppCompatTextInputLayoutHelper(this, TintManager.get(context));
        this.f46989z1 = appCompatTextInputLayoutHelper;
        appCompatTextInputLayoutHelper.loadFromAttribute(attributeSet, -1);
    }
}
