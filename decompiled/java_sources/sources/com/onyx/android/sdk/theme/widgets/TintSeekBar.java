package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.C14449tc;

/* loaded from: classes8.dex */
public class TintSeekBar extends AppCompatSeekBar implements Tintable {

    /* renamed from: f */
    public C14449tc f46979f;

    public TintSeekBar(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        C14449tc c14449tc = this.f46979f;
        if (c14449tc != null) {
            c14449tc.tint();
        }
    }

    public TintSeekBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    public TintSeekBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C14449tc c14449tc = new C14449tc(this, TintManager.get(context));
        this.f46979f = c14449tc;
        c14449tc.loadFromAttribute(attributeSet, i);
    }
}
