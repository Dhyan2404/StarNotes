package com.trans.android.p107hb;

import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.harfbuzz.collections.FloatList;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.common.AttributedData;
import com.trans.android.font.FontManager;
import com.trans.android.util.BridgeUtils;
import java.awt.Color;
import java.awt.Font;
import java.awt.font.TextAttribute;
import java.text.AttributedCharacterIterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class StyleGraphics {
    float ascent;
    float defaultDescent;
    float descent;
    float extra;
    float fontSize;

    public void calculate(AndroidGraphics2D androidGraphics2D, List<AttributedData> list, String str, float f) {
        reset();
        for (AttributedData attributedData : list) {
            Map<AttributedCharacterIterator.Attribute, Object> attributes = attributedData.getAttributes();
            String substring = str.substring(attributedData.getBeginIndex(), attributedData.getEndIndex());
            Font fontFromAttributedMap = BridgeUtils.getFontFromAttributedMap(attributes, androidGraphics2D.getFont());
            float size2D = fontFromAttributedMap.getSize2D() * f;
            this.fontSize = Math.max(size2D, this.fontSize);
            HBTypeface hBTypeface = FontManager.getHBTypeface(fontFromAttributedMap, substring);
            this.ascent = Math.max(this.ascent, HBUtils.getAscent(hBTypeface, size2D));
            float descent = HBUtils.getDescent(hBTypeface, size2D);
            this.extra = Math.max(this.extra, descent - (size2D * 0.15f));
            this.descent = Math.max(this.descent, descent);
        }
        float f2 = this.fontSize * 0.15f;
        this.defaultDescent = f2;
        this.descent = Math.max(this.descent, f2);
        this.ascent = Math.max(this.ascent, this.fontSize - this.defaultDescent);
    }

    public void drawBackground(AndroidGraphics2D androidGraphics2D, Map<AttributedCharacterIterator.Attribute, Object> map, Paint paint, FloatList floatList, float f, float f2, float f3, float f4, float f5) {
        float f6;
        float f7;
        Object value = BridgeUtils.getValue(map, TextAttribute.BACKGROUND);
        if (value instanceof Color) {
            float sum = HBUtils.getSum(floatList);
            int color = paint.getColor();
            paint.setColor(((Color) value).getRGB());
            if (f5 > 0.0f) {
                f6 = (f2 - this.ascent) - this.extra;
                f7 = Math.max((f4 * 0.7f) + f5, this.descent);
            } else if (f5 < 0.0f) {
                f6 = f2 - Math.max((f3 * 0.7f) - f5, this.ascent + this.extra);
                f7 = this.descent;
            } else {
                f6 = (f2 - this.ascent) - this.extra;
                f7 = this.descent;
            }
            androidGraphics2D.getCanvas().drawRect(new RectF(f, (float) Math.floor(f6), sum + f, f2 + f7), paint);
            paint.setColor(color);
        }
    }

    public void drawStrikethrough(AndroidGraphics2D androidGraphics2D, Map<AttributedCharacterIterator.Attribute, Object> map, Paint paint, float f, float f2, float f3, float f4, float f5) {
        if (TextAttribute.STRIKETHROUGH_ON == BridgeUtils.getValue(map, TextAttribute.STRIKETHROUGH)) {
            paint.setStrokeWidth(f2);
            float ceil = (float) (f5 != 0.0f ? Math.ceil(f4 + ((this.defaultDescent - (this.ascent / 2.0f)) * 0.7f) + f5) : Math.ceil((f4 + this.defaultDescent) - (this.ascent / 2.0f)));
            androidGraphics2D.getCanvas().drawLine(f3, ceil, f3 + f, ceil, paint);
        }
    }

    public void drawUnderline(AndroidGraphics2D androidGraphics2D, Map<AttributedCharacterIterator.Attribute, Object> map, Paint paint, float f, float f2, float f3, float f4, float f5) {
        if (TextAttribute.UNDERLINE_ON == BridgeUtils.getValue(map, TextAttribute.UNDERLINE)) {
            paint.setStrokeWidth(f2);
            float ceil = (float) (f5 > 0.0f ? Math.ceil(f4 + (this.defaultDescent * 0.7f) + f5) : Math.ceil(f4 + this.defaultDescent));
            androidGraphics2D.getCanvas().drawLine(f3, ceil, f3 + f, ceil, paint);
        }
    }

    public void reset() {
        this.fontSize = 0.0f;
        this.ascent = 0.0f;
        this.descent = 0.0f;
        this.extra = 0.0f;
        this.defaultDescent = 0.0f;
    }

    public void calculate(AndroidGraphics2D androidGraphics2D, String str, float f) {
        reset();
        Font font = androidGraphics2D.getFont();
        this.fontSize = font.getSize2D() * f;
        HBTypeface hBTypeface = FontManager.getHBTypeface(font, str);
        this.ascent = HBUtils.getAscent(hBTypeface, this.fontSize);
        float descent = HBUtils.getDescent(hBTypeface, this.fontSize);
        this.descent = descent;
        float f2 = this.fontSize * 0.15f;
        this.defaultDescent = f2;
        this.descent = Math.max(descent, f2);
        this.ascent = Math.max(this.ascent, this.fontSize - this.defaultDescent);
        this.extra = Math.max(this.extra, this.descent - this.defaultDescent);
    }
}
