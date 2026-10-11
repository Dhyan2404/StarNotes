package org.apache.poi.text;

import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import org.apache.poi.sl.draw.DrawTextPart;

/* loaded from: classes13.dex */
public interface Highlight {
    double getHeight();

    Rectangle2D getHighlight(Point2D point2D, int i, int i2);

    AttributedCharacterIterator getIterator(AttributedCharacterIterator.Attribute[] attributeArr, int i, int i2);

    void loadData(DrawTextPart drawTextPart, AffineTransform affineTransform, FontRenderContext fontRenderContext);

    void release();
}
