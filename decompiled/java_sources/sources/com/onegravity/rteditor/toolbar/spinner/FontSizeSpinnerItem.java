package com.onegravity.rteditor.toolbar.spinner;

import android.widget.TextView;

/* loaded from: classes7.dex */
public class FontSizeSpinnerItem extends SpinnerItem {

    /* renamed from: a */
    public final int f40565a;

    /* renamed from: b */
    public final boolean f40566b;

    public FontSizeSpinnerItem(int i, String str, boolean z) {
        super(str);
        this.f40565a = i;
        this.f40566b = z;
    }

    @Override // com.onegravity.rteditor.toolbar.spinner.SpinnerItem
    /* renamed from: b */
    public void mo31787b(TextView textView) {
        super.mo31787b(textView);
        textView.setTextSize(this.f40565a);
    }

    public int getFontSize() {
        return this.f40565a;
    }

    public boolean isEmpty() {
        return this.f40566b;
    }
}
