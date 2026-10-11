package com.onegravity.rteditor.spans;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.onegravity.rteditor.fonts.RTTypeface;

/* loaded from: classes7.dex */
public class TypefaceSpan extends android.text.style.TypefaceSpan implements RTSpan<RTTypeface> {
    private final RTTypeface mTypeface;

    public TypefaceSpan(RTTypeface rTTypeface) {
        super("");
        this.mTypeface = rTTypeface;
    }

    private void applyCustomTypeFace(Paint paint, Typeface typeface) {
        Typeface typeface2 = paint.getTypeface();
        int style = (typeface2 == null ? 0 : typeface2.getStyle()) & (~typeface.getStyle());
        if ((style & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(typeface);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        applyCustomTypeFace(textPaint, this.mTypeface.getTypeface());
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        applyCustomTypeFace(textPaint, this.mTypeface.getTypeface());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public RTTypeface getValue() {
        return this.mTypeface;
    }
}
