package java.awt.font;

import java.awt.Font;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* loaded from: classes5.dex */
public abstract class GlyphVector implements Cloneable {
    public static final int FLAG_COMPLEX_GLYPHS = 8;
    public static final int FLAG_HAS_POSITION_ADJUSTMENTS = 2;
    public static final int FLAG_HAS_TRANSFORMS = 1;
    public static final int FLAG_MASK = 15;
    public static final int FLAG_RUN_RTL = 4;

    public abstract boolean equals(GlyphVector glyphVector);

    public abstract Font getFont();

    public abstract FontRenderContext getFontRenderContext();

    public int getGlyphCharIndex(int i) {
        return i;
    }

    public int[] getGlyphCharIndices(int i, int i2, int[] iArr) {
        if (iArr == null) {
            iArr = new int[i2];
        }
        int i3 = 0;
        while (i3 < i2) {
            iArr[i3] = getGlyphCharIndex(i);
            i3++;
            i++;
        }
        return iArr;
    }

    public abstract int getGlyphCode(int i);

    public abstract int[] getGlyphCodes(int i, int i2, int[] iArr);

    public abstract GlyphJustificationInfo getGlyphJustificationInfo(int i);

    public abstract Shape getGlyphLogicalBounds(int i);

    public abstract GlyphMetrics getGlyphMetrics(int i);

    public abstract Shape getGlyphOutline(int i);

    public Shape getGlyphOutline(int i, float f, float f2) {
        return AffineTransform.getTranslateInstance(f, f2).createTransformedShape(getGlyphOutline(i));
    }

    public Rectangle getGlyphPixelBounds(int i, FontRenderContext fontRenderContext, float f, float f2) {
        Rectangle2D bounds2D = getGlyphVisualBounds(i).getBounds2D();
        double d = f;
        int floor = (int) Math.floor(bounds2D.getX() + d);
        double d2 = f2;
        int floor2 = (int) Math.floor(bounds2D.getY() + d2);
        return new Rectangle(floor, floor2, ((int) Math.ceil(bounds2D.getMaxX() + d)) - floor, ((int) Math.ceil(bounds2D.getMaxY() + d2)) - floor2);
    }

    public abstract Point2D getGlyphPosition(int i);

    public abstract float[] getGlyphPositions(int i, int i2, float[] fArr);

    public abstract AffineTransform getGlyphTransform(int i);

    public abstract Shape getGlyphVisualBounds(int i);

    public int getLayoutFlags() {
        return 0;
    }

    public abstract Rectangle2D getLogicalBounds();

    public abstract int getNumGlyphs();

    public abstract Shape getOutline();

    public abstract Shape getOutline(float f, float f2);

    public Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2) {
        Rectangle2D visualBounds = getVisualBounds();
        double d = f;
        int floor = (int) Math.floor(visualBounds.getX() + d);
        double d2 = f2;
        int floor2 = (int) Math.floor(visualBounds.getY() + d2);
        return new Rectangle(floor, floor2, ((int) Math.ceil(visualBounds.getMaxX() + d)) - floor, ((int) Math.ceil(visualBounds.getMaxY() + d2)) - floor2);
    }

    public abstract Rectangle2D getVisualBounds();

    public abstract void performDefaultLayout();

    public abstract void setGlyphPosition(int i, Point2D point2D);

    public abstract void setGlyphTransform(int i, AffineTransform affineTransform);
}
