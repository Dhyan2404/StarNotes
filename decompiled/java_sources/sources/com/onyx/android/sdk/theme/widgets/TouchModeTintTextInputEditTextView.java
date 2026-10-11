package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.theme.utils.TintManager;

/* loaded from: classes8.dex */
public class TouchModeTintTextInputEditTextView extends TintTextInputEditTextView implements Tintable {

    /* renamed from: n */
    public final AppCompatTextInputEditTextHelper f46995n;

    public TouchModeTintTextInputEditTextView(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0 && !isEnabled()) {
            setEnabled(true);
            requestFocus();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTextInputEditTextHelper appCompatTextInputEditTextHelper = this.f46995n;
        if (appCompatTextInputEditTextHelper != null) {
            appCompatTextInputEditTextHelper.tint();
        }
    }

    public TouchModeTintTextInputEditTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        AppCompatTextInputEditTextHelper appCompatTextInputEditTextHelper = new AppCompatTextInputEditTextHelper(this, TintManager.get(context));
        this.f46995n = appCompatTextInputEditTextHelper;
        appCompatTextInputEditTextHelper.loadFromAttribute(attributeSet, -1);
    }
}
