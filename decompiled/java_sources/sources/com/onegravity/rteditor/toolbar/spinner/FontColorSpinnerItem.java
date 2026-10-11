package com.onegravity.rteditor.toolbar.spinner;

import android.widget.TextView;

/* loaded from: classes7.dex */
public class FontColorSpinnerItem extends ColorSpinnerItem {
    public FontColorSpinnerItem(int i, String str, boolean z, boolean z2) {
        super(i, str, z, z2);
    }

    @Override // com.onegravity.rteditor.toolbar.spinner.SpinnerItem
    /* renamed from: b */
    public void mo31787b(TextView textView) {
        super.mo31787b(textView);
        if (isCustom()) {
            return;
        }
        textView.setTextColor(this.mColor);
    }
}
