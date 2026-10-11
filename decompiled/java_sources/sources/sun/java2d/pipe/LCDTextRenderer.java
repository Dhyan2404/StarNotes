package sun.java2d.pipe;

import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class LCDTextRenderer extends GlyphListLoopPipe {
    @Override // sun.java2d.pipe.GlyphListPipe
    public void drawGlyphList(SunGraphics2D sunGraphics2D, GlyphList glyphList) {
        sunGraphics2D.loops.drawGlyphListLCDLoop.DrawGlyphListLCD(sunGraphics2D, sunGraphics2D.surfaceData, glyphList);
    }
}
