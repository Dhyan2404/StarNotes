package sun.font;

import java.awt.FontFormatException;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public abstract class PhysicalFont extends Font2D {
    protected Object nativeNames;
    protected String platName;

    public PhysicalFont(String str, Object obj) throws FontFormatException {
        this.handle = new Font2DHandle(this);
        this.platName = str;
        this.nativeNames = obj;
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == getClass() && ((Font2D) obj).fullName.equals(this.fullName);
    }

    public abstract StrikeMetrics getFontMetrics(long j);

    public abstract float getGlyphAdvance(long j, int i);

    public abstract long getGlyphImage(long j, int i);

    public abstract void getGlyphMetrics(long j, int i, Point2D.Float r4);

    public abstract GeneralPath getGlyphOutline(long j, int i, float f, float f2);

    public abstract Rectangle2D.Float getGlyphOutlineBounds(long j, int i);

    public Point2D.Float getGlyphPoint(long j, int i, int i2) {
        return new Point2D.Float();
    }

    public abstract GeneralPath getGlyphVectorOutline(long j, int[] iArr, int i, float f, float f2);

    public int hashCode() {
        return this.fullName.hashCode();
    }

    public PhysicalFont() {
        this.handle = new Font2DHandle(this);
    }
}
