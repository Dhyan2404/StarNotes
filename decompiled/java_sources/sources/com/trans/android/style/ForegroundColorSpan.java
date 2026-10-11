package com.trans.android.style;

import android.os.Parcel;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;

/* loaded from: classes10.dex */
public class ForegroundColorSpan extends CharacterStyle implements UpdateAppearance {
    private final int mColor;

    public ForegroundColorSpan(int i) {
        this.mColor = i;
    }

    public int getForegroundColor() {
        return this.mColor;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setShader(null);
        textPaint.setColor(this.mColor);
    }

    public ForegroundColorSpan(Parcel parcel) {
        this.mColor = parcel.readInt();
    }
}
