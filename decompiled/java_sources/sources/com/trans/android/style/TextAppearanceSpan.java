package com.trans.android.style;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import com.trans.android.font.FontManager;
import java.awt.Font;
import sun.font.Font2D;

/* loaded from: classes10.dex */
public class TextAppearanceSpan extends MetricAffectingSpan {
    private int codePoint;
    private Font font;

    public TextAppearanceSpan(Font font, int i) {
        this.font = font;
        this.codePoint = i;
    }

    private void apply(Paint paint) {
        Typeface typeface = paint.getTypeface();
        int style = typeface == null ? 0 : typeface.getStyle();
        Font2D font2D = FontManager.getFont2D(this.font);
        int style2 = style | this.font.getStyle();
        Typeface typeface2 = font2D.getTypeface(this.codePoint);
        int i = style2 & (~font2D.getStyle());
        if ((i & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((i & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTextSize(this.font.getSize2D());
        paint.setTypeface(typeface2);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint);
    }
}
