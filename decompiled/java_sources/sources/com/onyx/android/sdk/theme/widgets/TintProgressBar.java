package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.C14344rc;

/* loaded from: classes8.dex */
public class TintProgressBar extends ProgressBar implements Tintable {

    /* renamed from: e */
    public C14344rc f46955e;

    public TintProgressBar(Context context) {
        this(context, null);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        C14344rc c14344rc = this.f46955e;
        if (c14344rc != null) {
            c14344rc.tint();
        }
    }

    public TintProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.progressBarStyle);
    }

    public TintProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        C14344rc c14344rc = new C14344rc(this, TintManager.get(context));
        this.f46955e = c14344rc;
        c14344rc.loadFromAttribute(attributeSet, i);
    }
}
