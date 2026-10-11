package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class FillParallelogram extends GraphicsPrimitive {
    public static final String methodSignature = "FillParallelogram(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceFillParallelogram extends FillParallelogram {
        FillParallelogram target;

        public TraceFillParallelogram(FillParallelogram fillParallelogram) {
            super(fillParallelogram.getSourceType(), fillParallelogram.getCompositeType(), fillParallelogram.getDestType());
            this.target = fillParallelogram;
        }

        @Override // sun.java2d.loops.FillParallelogram
        public void FillParallelogram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, double d, double d2, double d3, double d4, double d5, double d6) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.FillParallelogram(sunGraphics2D, surfaceData, d, d2, d3, d4, d5, d6);
        }

        @Override // sun.java2d.loops.FillParallelogram, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public FillParallelogram(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static FillParallelogram locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (FillParallelogram) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void FillParallelogram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, double d, double d2, double d3, double d4, double d5, double d6);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("FillParallelogram not implemented for " + surfaceType + " with " + compositeType);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceFillParallelogram(this);
    }

    public FillParallelogram(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
