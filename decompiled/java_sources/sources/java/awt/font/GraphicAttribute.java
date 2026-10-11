package java.awt.font;

import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;

/* loaded from: classes5.dex */
public abstract class GraphicAttribute {
    public static final int BOTTOM_ALIGNMENT = -2;
    public static final int CENTER_BASELINE = 1;
    public static final int HANGING_BASELINE = 2;
    public static final int ROMAN_BASELINE = 0;
    public static final int TOP_ALIGNMENT = -1;
    private int fAlignment;

    public GraphicAttribute(int i) {
        if (i < -2 || i > 2) {
            throw new IllegalArgumentException("bad alignment");
        }
        this.fAlignment = i;
    }

    public abstract void draw(Graphics2D graphics2D, float f, float f2);

    public abstract float getAdvance();

    public final int getAlignment() {
        return this.fAlignment;
    }

    public abstract float getAscent();

    public Rectangle2D getBounds() {
        float ascent = getAscent();
        return new Rectangle2D.Float(0.0f, -ascent, getAdvance(), ascent + getDescent());
    }

    public abstract float getDescent();

    public GlyphJustificationInfo getJustificationInfo() {
        float advance = getAdvance();
        float f = advance / 3.0f;
        return new GlyphJustificationInfo(advance, false, 2, f, f, false, 1, 0.0f, 0.0f);
    }

    public Shape getOutline(AffineTransform affineTransform) {
        Rectangle2D bounds = getBounds();
        return affineTransform != null ? affineTransform.createTransformedShape(bounds) : bounds;
    }
}
