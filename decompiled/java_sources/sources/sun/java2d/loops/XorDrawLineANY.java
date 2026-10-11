package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
class XorDrawLineANY extends DrawLine {
    public XorDrawLineANY() {
        super(SurfaceType.AnyColor, CompositeType.Xor, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.DrawLine
    public void DrawLine(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
        PixelWriter createXorPixelWriter = GeneralRenderer.createXorPixelWriter(sunGraphics2D, surfaceData);
        if (i2 >= i4) {
            GeneralRenderer.doDrawLine(surfaceData, createXorPixelWriter, null, sunGraphics2D.getCompClip(), i3, i4, i, i2);
        } else {
            GeneralRenderer.doDrawLine(surfaceData, createXorPixelWriter, null, sunGraphics2D.getCompClip(), i, i2, i3, i4);
        }
    }
}
