package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
class XorDrawPolygonsANY extends DrawPolygons {
    public XorDrawPolygonsANY() {
        super(SurfaceType.AnyColor, CompositeType.Xor, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.DrawPolygons
    public void DrawPolygons(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int[] iArr, int[] iArr2, int[] iArr3, int i, int i2, int i3, boolean z) {
        PixelWriter createXorPixelWriter = GeneralRenderer.createXorPixelWriter(sunGraphics2D, surfaceData);
        Region compClip = sunGraphics2D.getCompClip();
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = iArr3[i5];
            GeneralRenderer.doDrawPoly(surfaceData, createXorPixelWriter, iArr, iArr2, i4, i6, compClip, i2, i3, z);
            i4 += i6;
        }
    }
}
