package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
class XorDrawRectANY extends DrawRect {
    public XorDrawRectANY() {
        super(SurfaceType.AnyColor, CompositeType.Xor, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.DrawRect
    public void DrawRect(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
        GeneralRenderer.doDrawRect(GeneralRenderer.createXorPixelWriter(sunGraphics2D, surfaceData), sunGraphics2D, surfaceData, i, i2, i3, i4);
    }
}
