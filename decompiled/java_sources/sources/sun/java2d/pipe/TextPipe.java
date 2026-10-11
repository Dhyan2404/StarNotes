package sun.java2d.pipe;

import java.awt.font.GlyphVector;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public interface TextPipe {
    void drawChars(SunGraphics2D sunGraphics2D, char[] cArr, int i, int i2, int i3, int i4);

    void drawGlyphVector(SunGraphics2D sunGraphics2D, GlyphVector glyphVector, float f, float f2);

    void drawString(SunGraphics2D sunGraphics2D, String str, double d, double d2);
}
