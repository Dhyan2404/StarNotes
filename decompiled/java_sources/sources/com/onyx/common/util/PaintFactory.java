package com.onyx.common.util;

import android.graphics.Paint;
import android.text.TextPaint;
import com.trans.android.font.FontManager;
import java.awt.Font;

/* loaded from: classes8.dex */
public class PaintFactory {
    public static TextPaint create() {
        return create(null);
    }

    public static Paint createImagePaint() {
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        return paint;
    }

    public static TextPaint create(Font font) {
        TextPaint textPaint = new TextPaint();
        textPaint.setDither(true);
        textPaint.setAntiAlias(true);
        textPaint.setTextSize(12.0f);
        if (font != null) {
            textPaint.setTypeface(FontManager.getTypeface(font));
            textPaint.setTextSize(font.getSize2D());
        }
        return textPaint;
    }
}
