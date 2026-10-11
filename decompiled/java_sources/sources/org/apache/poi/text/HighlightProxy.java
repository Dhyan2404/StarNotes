package org.apache.poi.text;

import com.trans.android.p107hb.HBUtils;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import org.apache.poi.sl.draw.DrawTextPart;

/* loaded from: classes13.dex */
public class HighlightProxy implements Highlight {
    private Highlight activeHighlight;
    private AndroidHighlight androidHighlight = new AndroidHighlight();
    private HBHighlight hbHighlight = new HBHighlight();

    @Override // org.apache.poi.text.Highlight
    public double getHeight() {
        return this.activeHighlight.getHeight();
    }

    @Override // org.apache.poi.text.Highlight
    public Rectangle2D getHighlight(Point2D point2D, int i, int i2) {
        return this.activeHighlight.getHighlight(point2D, i, i2);
    }

    @Override // org.apache.poi.text.Highlight
    public AttributedCharacterIterator getIterator(AttributedCharacterIterator.Attribute[] attributeArr, int i, int i2) {
        return this.activeHighlight.getIterator(attributeArr, i, i2);
    }

    @Override // org.apache.poi.text.Highlight
    public void loadData(DrawTextPart drawTextPart, AffineTransform affineTransform, FontRenderContext fontRenderContext) {
        release();
        Highlight highlight = HBUtils.enableHBDraw() ? this.hbHighlight : this.androidHighlight;
        this.activeHighlight = highlight;
        highlight.loadData(drawTextPart, affineTransform, fontRenderContext);
    }

    @Override // org.apache.poi.text.Highlight
    public void release() {
        this.androidHighlight.release();
        this.hbHighlight.release();
    }
}
