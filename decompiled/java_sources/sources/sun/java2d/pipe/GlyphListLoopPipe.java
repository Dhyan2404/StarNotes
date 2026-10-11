package sun.java2d.pipe;

import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public abstract class GlyphListLoopPipe extends GlyphListPipe implements LoopBasedPipe {
    @Override // sun.java2d.pipe.GlyphListPipe
    public void drawGlyphList(SunGraphics2D sunGraphics2D, GlyphList glyphList, int i) {
        if (i == 1) {
            sunGraphics2D.loops.drawGlyphListLoop.DrawGlyphList(sunGraphics2D, sunGraphics2D.surfaceData, glyphList);
            return;
        }
        if (i == 2) {
            sunGraphics2D.loops.drawGlyphListAALoop.DrawGlyphListAA(sunGraphics2D, sunGraphics2D.surfaceData, glyphList);
        } else if (i == 4 || i == 6) {
            sunGraphics2D.loops.drawGlyphListLCDLoop.DrawGlyphListLCD(sunGraphics2D, sunGraphics2D.surfaceData, glyphList);
        }
    }
}
