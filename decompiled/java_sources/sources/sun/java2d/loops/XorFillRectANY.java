package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
class XorFillRectANY extends FillRect {
    public XorFillRectANY() {
        super(SurfaceType.AnyColor, CompositeType.Xor, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.FillRect
    public void FillRect(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
        PixelWriter createXorPixelWriter = GeneralRenderer.createXorPixelWriter(sunGraphics2D, surfaceData);
        Region boundsIntersectionXYWH = sunGraphics2D.getCompClip().getBoundsIntersectionXYWH(i, i2, i3, i4);
        GeneralRenderer.doSetRect(surfaceData, createXorPixelWriter, boundsIntersectionXYWH.getLoX(), boundsIntersectionXYWH.getLoY(), boundsIntersectionXYWH.getHiX(), boundsIntersectionXYWH.getHiY());
    }
}
