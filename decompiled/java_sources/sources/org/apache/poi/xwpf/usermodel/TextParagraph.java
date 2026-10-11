package org.apache.poi.xwpf.usermodel;

import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.font.LineBreakMeasurer;
import java.awt.font.TextLayout;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.draw.DrawTextFragment;

/* loaded from: classes13.dex */
public class TextParagraph {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TextParagraph.class);
    Rectangle2D anchor;
    double indent;
    Insets insets;
    Double lineSpacing;
    List<DrawTextFragment> lines = new ArrayList();
    double marginLeft;
    double marginRight;
    String rawText;
    double spaceAfter;
    double spaceBefore;

    /* renamed from: x */
    double f111839x;

    /* renamed from: y */
    double f111840y;

    /* loaded from: classes13.dex */
    public static class AttributedStringData {
        AttributedCharacterIterator.Attribute attribute;
        int beginIndex;
        int endIndex;
        Object value;

        public AttributedStringData(AttributedCharacterIterator.Attribute attribute, Object obj, int i, int i2) {
            this.attribute = attribute;
            this.value = obj;
            this.beginIndex = i;
            this.endIndex = i2;
        }
    }

    public TextParagraph(Rectangle2D rectangle2D, Insets insets) {
        this.anchor = rectangle2D;
        this.insets = insets;
    }

    private double getWrappingWidth(boolean z) {
        double width = this.anchor.getWidth();
        Insets insets = this.insets;
        double d = (((width - insets.left) - insets.right) - this.marginLeft) - this.marginRight;
        if (z) {
            d -= this.indent;
        }
        return d + 1.0d;
    }

    public void breakText(Graphics2D graphics2D, String str, List<AttributedStringData> list) {
        int i;
        TextLayout nextLayout;
        this.lines.clear();
        AttributedString attributedString = new AttributedString(str);
        DrawFactory drawFactory = DrawFactory.getInstance(graphics2D);
        AttributedString attributedString2 = new AttributedString(str.replaceAll("[\\r\\n]", " "));
        for (AttributedStringData attributedStringData : list) {
            attributedString.addAttribute(attributedStringData.attribute, attributedStringData.value, attributedStringData.beginIndex, attributedStringData.endIndex);
            attributedString2.addAttribute(attributedStringData.attribute, attributedStringData.value, attributedStringData.beginIndex, attributedStringData.endIndex);
        }
        AttributedCharacterIterator iterator = attributedString.getIterator();
        AttributedCharacterIterator iterator2 = attributedString2.getIterator();
        LineBreakMeasurer lineBreakMeasurer = new LineBreakMeasurer(iterator, graphics2D.getFontRenderContext());
        do {
            int position = lineBreakMeasurer.getPosition();
            double wrappingWidth = getWrappingWidth(this.lines.isEmpty());
            if (wrappingWidth < 0.0d) {
                wrappingWidth = 1.0d;
            }
            i = 1;
            if (position == 0 && str.startsWith("\n")) {
                nextLayout = lineBreakMeasurer.nextLayout((float) wrappingWidth, 1, false);
            } else {
                int indexOf = str.indexOf("\n", position + 1);
                if (indexOf == -1) {
                    indexOf = iterator.getEndIndex();
                }
                float f = (float) wrappingWidth;
                TextLayout nextLayout2 = lineBreakMeasurer.nextLayout(f, indexOf, true);
                nextLayout = nextLayout2 == null ? lineBreakMeasurer.nextLayout(f, indexOf, false) : nextLayout2;
                if (nextLayout == null) {
                    break;
                }
                i = lineBreakMeasurer.getPosition();
                if (i < iterator.getEndIndex() && str.charAt(i) == '\n') {
                    lineBreakMeasurer.setPosition(i + 1);
                }
            }
            this.lines.add(drawFactory.getTextFragment(nextLayout, new AttributedString(iterator2, position, i)));
        } while (i != iterator.getEndIndex());
        this.rawText = str;
    }

    public void draw(Graphics2D graphics2D) {
        double leading;
        double doubleValue;
        if (this.lines.isEmpty()) {
            return;
        }
        double d = this.f111840y;
        if (this.lineSpacing == null) {
            this.lineSpacing = Double.valueOf(100.0d);
        }
        boolean z = true;
        for (DrawTextFragment drawTextFragment : this.lines) {
            if (this.lineSpacing.doubleValue() > 0.0d) {
                doubleValue = (d - (drawTextFragment.getLayout().getDescent() * 0.5d)) + (this.lineSpacing.doubleValue() * 0.01d * ((int) drawTextFragment.getHeight()));
                leading = 0.0d;
            } else {
                leading = 0.0d - (drawTextFragment.getLeading() + (drawTextFragment.getLayout().getDescent() * 0.5d));
                doubleValue = d - this.lineSpacing.doubleValue();
            }
            double ascent = doubleValue - drawTextFragment.getLayout().getAscent();
            double d2 = this.f111839x + this.marginLeft;
            if (z) {
                d2 += this.indent;
                z = false;
            }
            drawTextFragment.setPosition(d2, leading + ascent);
            drawTextFragment.draw(graphics2D);
            d = ascent + (this.lineSpacing.doubleValue() > 0.0d ? drawTextFragment.getHeight() : drawTextFragment.getLayout().getAscent());
        }
        this.f111840y = d - this.f111840y;
    }

    public double getFirstLineHeight() {
        if (this.lines.isEmpty()) {
            return 0.0d;
        }
        return this.lines.get(0).getHeight();
    }

    public double getFirstLineLeading() {
        if (this.lines.isEmpty()) {
            return 0.0d;
        }
        return this.lines.get(0).getLeading();
    }

    public double getLastLineHeight() {
        if (this.lines.isEmpty()) {
            return 0.0d;
        }
        List<DrawTextFragment> list = this.lines;
        return list.get(list.size() - 1).getHeight();
    }

    public void setPosition(double d, double d2) {
        this.f111839x = d;
        this.f111840y = d2;
    }

    public String toString() {
        return "Paragraph{" + this.rawText + '}';
    }

    public static void draw(Graphics2D graphics2D, List<TextParagraph> list, double d, double d2) {
        boolean z = true;
        for (TextParagraph textParagraph : list) {
            if (!z) {
                double d3 = textParagraph.spaceBefore;
                d2 += d3 > 0.0d ? d3 * 0.01d * textParagraph.getFirstLineHeight() : -d3;
            }
            textParagraph.setPosition(d, d2);
            textParagraph.draw(graphics2D);
            double d4 = d2 + textParagraph.f111840y;
            double d5 = textParagraph.spaceAfter;
            d2 = d5 > 0.0d ? d4 + (d5 * 0.01d * textParagraph.getLastLineHeight()) : d4 + (-d5);
            z = false;
        }
    }
}
