package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.SpanIterator;

/* loaded from: classes16.dex */
class SetFillSpansANY extends FillSpans {
    public SetFillSpansANY() {
        super(SurfaceType.AnyColor, CompositeType.SrcNoEa, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.FillSpans
    public void FillSpans(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, SpanIterator spanIterator) {
        PixelWriter createSolidPixelWriter = GeneralRenderer.createSolidPixelWriter(sunGraphics2D, surfaceData);
        int[] iArr = new int[4];
        while (spanIterator.nextSpan(iArr)) {
            GeneralRenderer.doSetRect(surfaceData, createSolidPixelWriter, iArr[0], iArr[1], iArr[2], iArr[3]);
        }
    }
}
