package com.onegravity.rteditor.toolbar.spinner;

import com.onegravity.rteditor.fonts.RTTypeface;

/* loaded from: classes7.dex */
public class FontSpinnerItem extends SpinnerItem {

    /* renamed from: a */
    public final RTTypeface f40567a;

    public FontSpinnerItem(RTTypeface rTTypeface) {
        super(rTTypeface == null ? "" : rTTypeface.getName());
        this.f40567a = rTTypeface;
    }

    public RTTypeface getTypeface() {
        return this.f40567a;
    }
}
