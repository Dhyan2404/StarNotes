package org.apache.poi.text;

import java.awt.font.FontRenderContext;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import org.apache.poi.sl.draw.DrawTextPart;

/* loaded from: classes13.dex */
public class JavaHighlight implements Highlight {
    private FontRenderContext frc;
    private double height = -1.0d;
    private DrawTextPart textPart;
    private AffineTransform transform;

    private void calculateHeight() {
        this.height = this.textPart.getLayout().getLogicalHighlightShape(0, this.textPart.getLayout().getCharacterCount()).getBounds2D().getHeight();
    }

    @Override // org.apache.poi.text.Highlight
    public double getHeight() {
        return this.height;
    }

    @Override // org.apache.poi.text.Highlight
    public Rectangle2D getHighlight(Point2D point2D, int i, int i2) {
        Rectangle2D bounds2D = new TextLayout(getIterator(null, i, i2), this.frc).getLogicalHighlightShape(0, i2 - i).getBounds2D();
        bounds2D.setRect(point2D.getX(), point2D.getY(), bounds2D.getWidth(), this.height);
        return bounds2D;
    }

    @Override // org.apache.poi.text.Highlight
    public AttributedCharacterIterator getIterator(AttributedCharacterIterator.Attribute[] attributeArr, int i, int i2) {
        return this.textPart.getAttributedString().getIterator(attributeArr, i, i2);
    }

    @Override // org.apache.poi.text.Highlight
    public void loadData(DrawTextPart drawTextPart, AffineTransform affineTransform, FontRenderContext fontRenderContext) {
        this.textPart = drawTextPart;
        this.transform = affineTransform;
        this.frc = fontRenderContext;
        calculateHeight();
    }

    @Override // org.apache.poi.text.Highlight
    public void release() {
        this.textPart = null;
        this.transform = null;
        this.frc = null;
        this.height = -1.0d;
    }
}
