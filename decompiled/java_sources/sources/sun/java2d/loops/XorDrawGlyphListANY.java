package sun.java2d.loops;

import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
class XorDrawGlyphListANY extends DrawGlyphList {
    public XorDrawGlyphListANY() {
        super(SurfaceType.AnyColor, CompositeType.Xor, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.DrawGlyphList
    public void DrawGlyphList(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, GlyphList glyphList) {
        GeneralRenderer.doDrawGlyphList(surfaceData, GeneralRenderer.createXorPixelWriter(sunGraphics2D, surfaceData), glyphList, sunGraphics2D.getCompClip());
    }
}
