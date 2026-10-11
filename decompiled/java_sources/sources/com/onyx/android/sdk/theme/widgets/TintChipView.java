package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.chip.Chip;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.C13520bc;

/* loaded from: classes8.dex */
public class TintChipView extends Chip implements Tintable {

    /* renamed from: B0 */
    public C13520bc f46940B0;

    public TintChipView(Context context) {
        this(context, null);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        C13520bc c13520bc = this.f46940B0;
        if (c13520bc != null) {
            c13520bc.tint();
        }
    }

    /* renamed from: y */
    public final void m36347y(Context context, AttributeSet attributeSet, int i) {
        C13520bc c13520bc = new C13520bc(this, TintManager.get(context));
        this.f46940B0 = c13520bc;
        c13520bc.loadFromAttribute(attributeSet, i);
    }

    public TintChipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m36347y(context, attributeSet, -1);
    }

    public TintChipView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m36347y(context, attributeSet, i);
    }
}
