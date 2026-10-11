package sun.font;

import java.awt.Rectangle;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import sun.font.GlyphLayout;

/* loaded from: classes16.dex */
public abstract class FontStrike {
    protected FontStrikeDesc desc;
    protected FontStrikeDisposer disposer;
    protected StrikeMetrics strikeMetrics;
    protected boolean algoStyle = false;
    protected float boldness = 1.0f;
    protected float italic = 0.0f;

    public abstract Point2D.Float getCharMetrics(char c);

    public abstract float getCodePointAdvance(int i);

    public abstract StrikeMetrics getFontMetrics();

    public abstract float getGlyphAdvance(int i);

    public abstract void getGlyphImageBounds(int i, Point2D.Float r2, Rectangle rectangle);

    public abstract long getGlyphImagePtr(int i);

    public abstract void getGlyphImagePtrs(int[] iArr, long[] jArr, int i);

    public abstract Point2D.Float getGlyphMetrics(int i);

    public abstract GeneralPath getGlyphOutline(int i, float f, float f2);

    public abstract Rectangle2D.Float getGlyphOutlineBounds(int i);

    public abstract GeneralPath getGlyphVectorOutline(int[] iArr, float f, float f2);

    public abstract CharToGlyphMapper getMapper();

    public abstract int getNumGlyphs();

    public void layout(GlyphLayout.GVData gVData, Font2D font2D, char[] cArr, float f, int i, int i2, int i3, int i4, Point2D.Float r11, int i5, int i6) {
        int i7 = i3 - i2;
        gVData._count = i7 + i4;
        float f2 = gVData._positions[i4 * 2];
        for (int i8 = 0; i8 < i7; i8++) {
            int charToGlyph = getMapper().charToGlyph(cArr[i2 + i8]);
            int i9 = i4 + i8;
            gVData._glyphs[i9] = charToGlyph | i6;
            f2 += getGlyphMetrics(charToGlyph).f97777x;
            gVData._positions[(i9 + 1) * 2] = f2;
            gVData._indices[i9] = i9;
        }
        r11.f97777x = f2;
    }
}
