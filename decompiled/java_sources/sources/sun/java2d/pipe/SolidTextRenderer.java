package sun.java2d.pipe;

import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class SolidTextRenderer extends GlyphListLoopPipe implements LoopBasedPipe {
    @Override // sun.java2d.pipe.GlyphListPipe
    public void drawGlyphList(SunGraphics2D sunGraphics2D, GlyphList glyphList) {
        sunGraphics2D.loops.drawGlyphListLoop.DrawGlyphList(sunGraphics2D, sunGraphics2D.surfaceData, glyphList);
    }
}
