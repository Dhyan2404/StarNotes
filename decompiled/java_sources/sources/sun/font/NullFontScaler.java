package sun.font;

import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public class NullFontScaler extends FontScaler {
    public NullFontScaler() {
    }

    public static long getNullScalerContext() {
        return 0L;
    }

    @Override // sun.font.FontScaler
    public long createScalerContext(double[] dArr, int i, int i2, float f, float f2) {
        return getNullScalerContext();
    }

    @Override // sun.font.FontScaler
    public StrikeMetrics getFontMetrics(long j) {
        return new StrikeMetrics(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // sun.font.FontScaler
    public float getGlyphAdvance(long j, int i) {
        return 0.0f;
    }

    @Override // sun.font.FontScaler
    public int getGlyphCode(char c) throws FontScalerException {
        return 0;
    }

    @Override // sun.font.FontScaler
    public long getGlyphImage(long j, int i) {
        return i;
    }

    @Override // sun.font.FontScaler
    public void getGlyphMetrics(long j, int i, Point2D.Float r4) {
        r4.f97777x = 0.0f;
        r4.f97778y = 0.0f;
    }

    @Override // sun.font.FontScaler
    public GeneralPath getGlyphOutline(long j, int i, float f, float f2) {
        return new GeneralPath();
    }

    @Override // sun.font.FontScaler
    public Rectangle2D.Float getGlyphOutlineBounds(long j, int i) {
        return new Rectangle2D.Float(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // sun.font.FontScaler
    public Point2D.Float getGlyphPoint(long j, int i, int i2) {
        return null;
    }

    @Override // sun.font.FontScaler
    public GeneralPath getGlyphVectorOutline(long j, int[] iArr, int i, float f, float f2) {
        return new GeneralPath();
    }

    @Override // sun.font.FontScaler
    public int getMissingGlyphCode() throws FontScalerException {
        return 0;
    }

    @Override // sun.font.FontScaler
    public int getNumGlyphs() throws FontScalerException {
        return 1;
    }

    @Override // sun.font.FontScaler
    public long getUnitsPerEm() {
        return 2048L;
    }

    @Override // sun.font.FontScaler
    public void invalidateScalerContext(long j) {
    }

    public NullFontScaler(Font2D font2D, int i, boolean z, int i2) {
    }
}
