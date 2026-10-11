package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class DrawParallelogram extends GraphicsPrimitive {
    public static final String methodSignature = "DrawParallelogram(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceDrawParallelogram extends DrawParallelogram {
        DrawParallelogram target;

        public TraceDrawParallelogram(DrawParallelogram drawParallelogram) {
            super(drawParallelogram.getSourceType(), drawParallelogram.getCompositeType(), drawParallelogram.getDestType());
            this.target = drawParallelogram;
        }

        @Override // sun.java2d.loops.DrawParallelogram
        public void DrawParallelogram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.DrawParallelogram(sunGraphics2D, surfaceData, d, d2, d3, d4, d5, d6, d7, d8);
        }

        @Override // sun.java2d.loops.DrawParallelogram, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public DrawParallelogram(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static DrawParallelogram locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (DrawParallelogram) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void DrawParallelogram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("DrawParallelogram not implemented for " + surfaceType + " with " + compositeType);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceDrawParallelogram(this);
    }

    public DrawParallelogram(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
