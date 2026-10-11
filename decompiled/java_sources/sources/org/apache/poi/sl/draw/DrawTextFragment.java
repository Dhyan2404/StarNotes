package org.apache.poi.sl.draw;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public class DrawTextFragment implements Drawable {
    final TextLayout layout;
    final AttributedString str;

    /* renamed from: x */
    double f111467x;

    /* renamed from: y */
    double f111468y;

    public DrawTextFragment(TextLayout textLayout, AttributedString attributedString) {
        this.layout = textLayout;
        this.str = attributedString;
    }

    private void replaceForgroundPaintWithBlack(AttributedString attributedString) {
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
        if (this.str == null) {
            return;
        }
        double ascent = this.f111468y + this.layout.getAscent();
        Integer num = (Integer) graphics2D.getRenderingHint(Drawable.TEXT_RENDERING_MODE);
        if (num != null && num.intValue() == 2) {
            this.layout.draw(graphics2D, (float) this.f111467x, (float) ascent);
            return;
        }
        try {
            graphics2D.drawString(this.str.getIterator(), (float) this.f111467x, (float) ascent);
        } catch (ClassCastException unused) {
            replaceForgroundPaintWithBlack(this.str);
            graphics2D.drawString(this.str.getIterator(), (float) this.f111467x, (float) ascent);
        }
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void drawContent(Graphics2D graphics2D) {
    }

    public AttributedString getAttributedString() {
        return this.str;
    }

    public float getHeight() {
        return this.layout.getAscent() + this.layout.getDescent();
    }

    public TextLayout getLayout() {
        return this.layout;
    }

    public float getLeading() {
        double leading = this.layout.getLeading();
        if (leading == 0.0d) {
            leading = (this.layout.getAscent() + this.layout.getDescent()) * 0.15d;
        }
        return (float) leading;
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

    public void setPosition(double d, double d2) {
        this.f111467x = d;
        this.f111468y = d2;
    }

    public String toString() {
        return IteratorUtils.f104923a + getClass().getSimpleName() + "] " + getString();
    }
}
