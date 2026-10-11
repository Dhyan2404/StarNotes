package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
class SetDrawLineANY extends DrawLine {
    public SetDrawLineANY() {
        super(SurfaceType.AnyColor, CompositeType.SrcNoEa, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.DrawLine
    public void DrawLine(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
        PixelWriter createSolidPixelWriter = GeneralRenderer.createSolidPixelWriter(sunGraphics2D, surfaceData);
        if (i2 >= i4) {
            GeneralRenderer.doDrawLine(surfaceData, createSolidPixelWriter, null, sunGraphics2D.getCompClip(), i3, i4, i, i2);
        } else {
            GeneralRenderer.doDrawLine(surfaceData, createSolidPixelWriter, null, sunGraphics2D.getCompClip(), i, i2, i3, i4);
        }
    }
}
