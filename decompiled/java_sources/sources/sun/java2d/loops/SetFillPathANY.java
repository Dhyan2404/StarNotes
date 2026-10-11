package sun.java2d.loops;

import java.awt.geom.Path2D;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
class SetFillPathANY extends FillPath {
    public SetFillPathANY() {
        super(SurfaceType.AnyColor, CompositeType.SrcNoEa, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.FillPath
    public void FillPath(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, Path2D.Float r7) {
        ProcessPath.fillPath(new PixelWriterDrawHandler(surfaceData, GeneralRenderer.createSolidPixelWriter(sunGraphics2D, surfaceData), sunGraphics2D.getCompClip(), sunGraphics2D.strokeHint), r7, i, i2);
    }
}
