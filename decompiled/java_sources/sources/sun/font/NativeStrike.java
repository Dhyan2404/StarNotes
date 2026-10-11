package sun.font;

import java.awt.Rectangle;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public class NativeStrike extends PhysicalStrike {
    NativeFont nativeFont;

    public NativeStrike(NativeFont nativeFont, FontStrikeDesc fontStrikeDesc) {
        super(nativeFont, fontStrikeDesc);
        throw new RuntimeException("NativeFont not used on Windows");
    }

    @Override // sun.font.FontStrike
    public float getGlyphAdvance(int i) {
        return 0.0f;
    }

    @Override // sun.font.FontStrike
    public void getGlyphImageBounds(int i, Point2D.Float r2, Rectangle rectangle) {
    }

    @Override // sun.font.FontStrike
    public long getGlyphImagePtr(int i) {
        return 0L;
    }

    public long getGlyphImagePtrNoCache(int i) {
        return 0L;
    }

    @Override // sun.font.FontStrike
    public void getGlyphImagePtrs(int[] iArr, long[] jArr, int i) {
    }

    @Override // sun.font.FontStrike
    public Point2D.Float getGlyphMetrics(int i) {
        return null;
    }

    @Override // sun.font.FontStrike
    public GeneralPath getGlyphOutline(int i, float f, float f2) {
        return null;
    }

    @Override // sun.font.FontStrike
    public Rectangle2D.Float getGlyphOutlineBounds(int i) {
        return null;
    }

    @Override // sun.font.FontStrike
    public GeneralPath getGlyphVectorOutline(int[] iArr, float f, float f2) {
        return null;
    }

    public NativeStrike(NativeFont nativeFont, FontStrikeDesc fontStrikeDesc, boolean z) {
        super(nativeFont, fontStrikeDesc);
        throw new RuntimeException("NativeFont not used on Windows");
    }
}
