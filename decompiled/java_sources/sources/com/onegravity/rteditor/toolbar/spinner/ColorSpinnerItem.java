package com.onegravity.rteditor.toolbar.spinner;

import android.view.View;

/* loaded from: classes7.dex */
public abstract class ColorSpinnerItem extends SpinnerItem {

    /* renamed from: a */
    public final boolean f40563a;

    /* renamed from: b */
    public final boolean f40564b;
    protected int mColor;

    public ColorSpinnerItem(int i, String str, boolean z, boolean z2) {
        super(str);
        this.mColor = i | (-16777216);
        this.f40563a = z;
        this.f40564b = z2;
    }

    @Override // com.onegravity.rteditor.toolbar.spinner.SpinnerItem
    /* renamed from: a */
    public void mo31788a(View view) {
        super.mo31788a(view);
        view.setBackgroundColor(this.f40563a ? 0 : this.mColor);
    }

    public int getColor() {
        return this.mColor;
    }

    public boolean isCustom() {
        return this.f40564b;
    }

    public boolean isEmpty() {
        return this.f40563a;
    }

    public void setColor(int i) {
        this.mColor = i;
    }
}
