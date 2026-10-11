package com.onegravity.rteditor.toolbar.spinner;

import android.widget.TextView;

/* loaded from: classes7.dex */
public class BGColorSpinnerItem extends ColorSpinnerItem {

    /* renamed from: c */
    public static final double f40560c = 0.212655d;

    /* renamed from: d */
    public static final double f40561d = 0.715158d;

    /* renamed from: e */
    public static final double f40562e = 0.072187d;

    public BGColorSpinnerItem(int i, String str, boolean z, boolean z2) {
        super(i, str, z, z2);
    }

    @Override // com.onegravity.rteditor.toolbar.spinner.SpinnerItem
    /* renamed from: b */
    public void mo31787b(TextView textView) {
        super.mo31787b(textView);
        if (isEmpty()) {
            textView.setBackgroundColor(0);
            return;
        }
        textView.setBackgroundColor(this.mColor);
        int i = this.mColor;
        textView.setTextColor(((((double) (i & 255)) * 0.212655d) + (((double) ((i >> 8) & 255)) * 0.715158d)) + (((double) ((i >> 16) & 255)) * 0.072187d) > 136.0d ? -16777216 : -1);
    }
}
