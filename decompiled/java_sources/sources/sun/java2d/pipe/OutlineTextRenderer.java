package sun.java2d.pipe;

import java.awt.Shape;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class OutlineTextRenderer implements TextPipe {
    public static final int THRESHHOLD = 100;

    @Override // sun.java2d.pipe.TextPipe
    public void drawChars(SunGraphics2D sunGraphics2D, char[] cArr, int i, int i2, int i3, int i4) {
        drawString(sunGraphics2D, new String(cArr, i, i2), i3, i4);
    }

    @Override // sun.java2d.pipe.TextPipe
    public void drawGlyphVector(SunGraphics2D sunGraphics2D, GlyphVector glyphVector, float f, float f2) {
        int i;
        Shape outline = glyphVector.getOutline(f, f2);
        FontRenderContext fontRenderContext = glyphVector.getFontRenderContext();
        boolean isAntiAliased = fontRenderContext.isAntiAliased();
        if (isAntiAliased && sunGraphics2D.getGVFontInfo(glyphVector.getFont(), fontRenderContext).aaHint == 1) {
            isAntiAliased = false;
        }
        if (isAntiAliased && (i = sunGraphics2D.antialiasHint) != 2) {
            sunGraphics2D.antialiasHint = 2;
            sunGraphics2D.validatePipe();
        } else if (isAntiAliased || (i = sunGraphics2D.antialiasHint) == 1) {
            i = -1;
        } else {
            sunGraphics2D.antialiasHint = 1;
            sunGraphics2D.validatePipe();
        }
        sunGraphics2D.fill(outline);
        if (i != -1) {
            sunGraphics2D.antialiasHint = i;
            sunGraphics2D.validatePipe();
        }
    }

    @Override // sun.java2d.pipe.TextPipe
    public void drawString(SunGraphics2D sunGraphics2D, String str, double d, double d2) {
        int i;
        if ("".equals(str)) {
            return;
        }
        Shape outline = new TextLayout(str, sunGraphics2D.getFont(), sunGraphics2D.getFontRenderContext()).getOutline(AffineTransform.getTranslateInstance(d, d2));
        int i2 = sunGraphics2D.getFontInfo().aaHint;
        if (i2 != 1 && (i = sunGraphics2D.antialiasHint) != 2) {
            sunGraphics2D.antialiasHint = 2;
            sunGraphics2D.validatePipe();
        } else if (i2 != 1 || (i = sunGraphics2D.antialiasHint) == 1) {
            i = -1;
        } else {
            sunGraphics2D.antialiasHint = 1;
            sunGraphics2D.validatePipe();
        }
        sunGraphics2D.fill(outline);
        if (i != -1) {
            sunGraphics2D.antialiasHint = i;
            sunGraphics2D.validatePipe();
        }
    }
}
