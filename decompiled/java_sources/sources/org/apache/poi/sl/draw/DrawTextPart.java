package org.apache.poi.sl.draw;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public class DrawTextPart implements Drawable {
    public static final float[] METRICS_12 = {10.948242f, 2.3408203f, 0.5097656f, 24.0f};
    protected float[] fontMetrics;
    protected float fontSize = -1.0f;
    protected TextLayout layout;
    protected AttributedString str;

    /* renamed from: x */
    protected double f111473x;

    /* renamed from: y */
    protected double f111474y;

    public DrawTextPart(TextLayout textLayout, AttributedString attributedString, FontRenderContext fontRenderContext) {
        this.layout = textLayout;
        this.str = attributedString;
        getMaxFontSize();
        calculateFontMetrics(fontRenderContext);
    }

    private void calculateFontMetrics(FontRenderContext fontRenderContext) {
        this.fontMetrics = new float[4];
        float round = Math.round(this.fontSize) / 12.0f;
        for (int i = 0; i < 4; i++) {
            this.fontMetrics[i] = METRICS_12[i] * round;
        }
    }

    private void replaceForegroundPaintWithBlack(AttributedString attributedString) {
        AttributedCharacterIterator iterator = attributedString.getIterator(new TextAttribute[]{TextAttribute.FOREGROUND});
        for (char first = iterator.first(); first != 65535; first = iterator.next()) {
            attributedString.addAttribute(TextAttribute.FOREGROUND, Color.BLACK, iterator.getBeginIndex(), iterator.getEndIndex());
        }
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void applyTransform(Graphics2D graphics2D) {
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void draw(Graphics2D graphics2D) {
        if (this.str == null || disableDraw(graphics2D) || isPlaceholderText()) {
            return;
        }
        double d = this.f111474y + this.fontMetrics[0];
        Integer num = (Integer) graphics2D.getRenderingHint(Drawable.TEXT_RENDERING_MODE);
        if (num != null && num.intValue() == 2) {
            this.layout.draw(graphics2D, (float) this.f111473x, (float) d);
            return;
        }
        try {
            graphics2D.drawString(this.str.getIterator(), (float) this.f111473x, (float) d);
        } catch (ClassCastException unused) {
            replaceForegroundPaintWithBlack(this.str);
            graphics2D.drawString(this.str.getIterator(), (float) this.f111473x, (float) d);
        }
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void drawContent(Graphics2D graphics2D) {
    }

    public float getAscent() {
        return this.fontMetrics[0];
    }

    public AttributedString getAttributedString() {
        return this.str;
    }

    public float getDescent() {
        return this.fontMetrics[1];
    }

    public float[] getFontMetrics() {
        return this.fontMetrics;
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public float getHeight() {
        float[] fArr = this.fontMetrics;
        return fArr[0] + fArr[1];
    }

    public TextLayout getLayout() {
        return this.layout;
    }

    public float getLeading() {
        double d = this.fontMetrics[2];
        if (d == 0.0d) {
            d = (r4[0] + r4[1]) * 0.15d;
        }
        return (float) d;
    }

    public void getMaxFontSize() {
        Number number;
        AttributedCharacterIterator iterator = this.str.getIterator();
        iterator.first();
        while (iterator.getIndex() < iterator.getEndIndex()) {
            Map<AttributedCharacterIterator.Attribute, Object> attributes = iterator.getAttributes();
            int runLimit = iterator.getRunLimit();
            if (attributes != null) {
                for (Map.Entry<AttributedCharacterIterator.Attribute, Object> entry : attributes.entrySet()) {
                    if (entry.getKey() == TextAttribute.SIZE && (number = (Number) entry.getValue()) != null) {
                        this.fontSize = Math.max(this.fontSize, number.floatValue());
                    }
                }
            }
            iterator.setIndex(runLimit);
        }
    }

    public String getString() {
        AttributedString attributedString = this.str;
        if (attributedString == null) {
            return "";
        }
        AttributedCharacterIterator iterator = attributedString.getIterator();
        StringBuilder sb = new StringBuilder();
        for (char first = iterator.first(); first != 65535; first = iterator.next()) {
            sb.append(first);
        }
        return sb.toString();
    }

    public float getWidth() {
        return this.layout.getAdvance();
    }

    public double getX() {
        return this.f111473x;
    }

    public double getY() {
        return this.f111474y;
    }

    public boolean isPlaceholderText() {
        AttributedString attributedString = this.str;
        if (attributedString == null) {
            return false;
        }
        Object attribute = attributedString.getIterator().getAttribute(PlaceholderTextAttribute.instance);
        return (attribute instanceof Boolean) && ((Boolean) attribute).booleanValue();
    }

    public void setPosition(double d, double d2) {
        this.f111473x = d;
        this.f111474y = d2;
    }

    public String toString() {
        return IteratorUtils.f104923a + getClass().getSimpleName() + "] " + getString();
    }
}
