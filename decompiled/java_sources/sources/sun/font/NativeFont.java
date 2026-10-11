package sun.font;

import java.awt.FontFormatException;
import java.awt.font.FontRenderContext;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public class NativeFont extends PhysicalFont {
    public NativeFont(String str, boolean z) throws FontFormatException {
        throw new FontFormatException("NativeFont not used on Windows");
    }

    public static boolean fontExists(String str) {
        return str != null;
    }

    public static boolean hasExternalBitmaps(String str) {
        return false;
    }

    @Override // sun.font.Font2D
    public FontStrike createStrike(FontStrikeDesc fontStrikeDesc) {
        return null;
    }

    public PhysicalFont getDelegateFont() {
        return null;
    }

    @Override // sun.font.PhysicalFont
    public StrikeMetrics getFontMetrics(long j) {
        return null;
    }

    @Override // sun.font.PhysicalFont
    public float getGlyphAdvance(long j, int i) {
        return 0.0f;
    }

    @Override // sun.font.PhysicalFont
    public long getGlyphImage(long j, int i) {
        return 0L;
    }

    @Override // sun.font.PhysicalFont
    public void getGlyphMetrics(long j, int i, Point2D.Float r4) {
    }

    @Override // sun.font.PhysicalFont
    public GeneralPath getGlyphOutline(long j, int i, float f, float f2) {
        return null;
    }

    @Override // sun.font.PhysicalFont
    public Rectangle2D.Float getGlyphOutlineBounds(long j, int i) {
        return new Rectangle2D.Float(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // sun.font.PhysicalFont
    public GeneralPath getGlyphVectorOutline(long j, int[] iArr, int i, float f, float f2) {
        return null;
    }

    @Override // sun.font.Font2D
    public CharToGlyphMapper getMapper() {
        return null;
    }

    public Rectangle2D getMaxCharBounds(FontRenderContext fontRenderContext) {
        return null;
    }
}
