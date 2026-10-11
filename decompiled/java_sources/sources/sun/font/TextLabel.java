package sun.font;

import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public abstract class TextLabel {
    public void draw(Graphics2D graphics2D) {
        draw(graphics2D, 0.0f, 0.0f);
    }

    public abstract void draw(Graphics2D graphics2D, float f, float f2);

    public Rectangle2D getAlignBounds() {
        return getAlignBounds(0.0f, 0.0f);
    }

    public abstract Rectangle2D getAlignBounds(float f, float f2);

    public Rectangle2D getItalicBounds() {
        return getItalicBounds(0.0f, 0.0f);
    }

    public abstract Rectangle2D getItalicBounds(float f, float f2);

    public Rectangle2D getLogicalBounds() {
        return getLogicalBounds(0.0f, 0.0f);
    }

    public abstract Rectangle2D getLogicalBounds(float f, float f2);

    public Shape getOutline() {
        return getOutline(0.0f, 0.0f);
    }

    public abstract Shape getOutline(float f, float f2);

    public Rectangle2D getVisualBounds() {
        return getVisualBounds(0.0f, 0.0f);
    }

    public abstract Rectangle2D getVisualBounds(float f, float f2);
}
