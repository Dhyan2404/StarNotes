package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class FillRect extends GraphicsPrimitive {
    public static final String methodSignature = "FillRect(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class General extends FillRect {
        public MaskFill fillop;

        public General(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            super(surfaceType, compositeType, surfaceType2);
            this.fillop = MaskFill.locate(surfaceType, compositeType, surfaceType2);
        }

        @Override // sun.java2d.loops.FillRect
        public void FillRect(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
            this.fillop.MaskFill(sunGraphics2D, surfaceData, sunGraphics2D.composite, i, i2, i3, i4, null, 0, 0);
        }
    }

    /* loaded from: classes16.dex */
    public static class TraceFillRect extends FillRect {
        FillRect target;

        public TraceFillRect(FillRect fillRect) {
            super(fillRect.getSourceType(), fillRect.getCompositeType(), fillRect.getDestType());
            this.target = fillRect;
        }

        @Override // sun.java2d.loops.FillRect
        public void FillRect(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.FillRect(sunGraphics2D, surfaceData, i, i2, i3, i4);
        }

        @Override // sun.java2d.loops.FillRect, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new FillRect(null, null, null));
    }

    public FillRect(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static FillRect locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (FillRect) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void FillRect(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return new General(surfaceType, compositeType, surfaceType2);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceFillRect(this);
    }

    public FillRect(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
