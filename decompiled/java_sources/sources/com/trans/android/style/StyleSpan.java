package com.trans.android.style;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Parcel;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* loaded from: classes10.dex */
public class StyleSpan extends MetricAffectingSpan {
    private final int mStyle;

    public StyleSpan(int i) {
        this.mStyle = i;
    }

    private static void apply(Paint paint, int i) {
        Typeface typeface = paint.getTypeface();
        int style = i | (typeface == null ? 0 : typeface.getStyle());
        Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(style) : Typeface.create(typeface, style);
        int i2 = style & (~defaultFromStyle.getStyle());
        if ((i2 & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((i2 & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(defaultFromStyle);
    }

    public int getStyle() {
        return this.mStyle;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint, this.mStyle);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint, this.mStyle);
    }

    public StyleSpan(Parcel parcel) {
        this.mStyle = parcel.readInt();
    }
}
