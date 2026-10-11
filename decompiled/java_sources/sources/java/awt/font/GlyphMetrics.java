package java.awt.font;

import java.awt.geom.Rectangle2D;

/* loaded from: classes5.dex */
public final class GlyphMetrics {
    public static final byte COMBINING = 2;
    public static final byte COMPONENT = 3;
    public static final byte LIGATURE = 1;
    public static final byte STANDARD = 0;
    public static final byte WHITESPACE = 4;
    private float advanceX;
    private float advanceY;
    private Rectangle2D.Float bounds;
    private byte glyphType;
    private boolean horizontal;

    public GlyphMetrics(float f, Rectangle2D rectangle2D, byte b) {
        this.horizontal = true;
        this.advanceX = f;
        this.advanceY = 0.0f;
        Rectangle2D.Float r2 = new Rectangle2D.Float();
        this.bounds = r2;
        r2.setRect(rectangle2D);
        this.glyphType = b;
    }

    public float getAdvance() {
        return this.horizontal ? this.advanceX : this.advanceY;
    }

    public float getAdvanceX() {
        return this.advanceX;
    }

    public float getAdvanceY() {
        return this.advanceY;
    }

    public Rectangle2D getBounds2D() {
        Rectangle2D.Float r4 = this.bounds;
        return new Rectangle2D.Float(r4.f97793x, r4.f97794y, r4.width, r4.height);
    }

    public float getLSB() {
        boolean z = this.horizontal;
        Rectangle2D.Float r1 = this.bounds;
        return z ? r1.f97793x : r1.f97794y;
    }

    public float getRSB() {
        float f;
        float f2;
        if (this.horizontal) {
            float f3 = this.advanceX;
            Rectangle2D.Float r2 = this.bounds;
            f = f3 - r2.f97793x;
            f2 = r2.width;
        } else {
            float f4 = this.advanceY;
            Rectangle2D.Float r22 = this.bounds;
            f = f4 - r22.f97794y;
            f2 = r22.height;
        }
        return f - f2;
    }

    public int getType() {
        return this.glyphType;
    }

    public boolean isCombining() {
        return (this.glyphType & 3) == 2;
    }

    public boolean isComponent() {
        return (this.glyphType & 3) == 3;
    }

    public boolean isLigature() {
        return (this.glyphType & 3) == 1;
    }

    public boolean isStandard() {
        return (this.glyphType & 3) == 0;
    }

    public boolean isWhitespace() {
        return (this.glyphType & 4) == 4;
    }

    public GlyphMetrics(boolean z, float f, float f2, Rectangle2D rectangle2D, byte b) {
        this.horizontal = z;
        this.advanceX = f;
        this.advanceY = f2;
        Rectangle2D.Float r1 = new Rectangle2D.Float();
        this.bounds = r1;
        r1.setRect(rectangle2D);
        this.glyphType = b;
    }
}
