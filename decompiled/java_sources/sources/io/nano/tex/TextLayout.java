package io.nano.tex;

import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes10.dex */
public final class TextLayout {
    private static final float FACTORED_TEXT_SIZE = 10.0f;
    private static final TextPaint TMP_PAINT;

    static {
        TextPaint textPaint = new TextPaint();
        TMP_PAINT = textPaint;
        textPaint.setTextSize(10.0f);
    }

    public static Rect getBounds(String str, Font font) {
        TextPaint textPaint = TMP_PAINT;
        Typeface typeface = textPaint.getTypeface();
        textPaint.setTypeface(font.getTypeface());
        textPaint.getTextBounds(str, 0, str.length(), new android.graphics.Rect());
        Rect rect = new Rect(r6.left, r6.top, r6.width(), r6.height());
        textPaint.setTypeface(typeface);
        return rect;
    }
}
