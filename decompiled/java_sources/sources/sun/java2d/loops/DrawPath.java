package sun.java2d.loops;

import java.awt.geom.Path2D;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class DrawPath extends GraphicsPrimitive {
    public static final String methodSignature = "DrawPath(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceDrawPath extends DrawPath {
        DrawPath target;

        public TraceDrawPath(DrawPath drawPath) {
            super(drawPath.getSourceType(), drawPath.getCompositeType(), drawPath.getDestType());
            this.target = drawPath;
        }

        @Override // sun.java2d.loops.DrawPath
        public void DrawPath(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, Path2D.Float r12) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.DrawPath(sunGraphics2D, surfaceData, i, i2, r12);
        }

        @Override // sun.java2d.loops.DrawPath, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public DrawPath(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static DrawPath locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (DrawPath) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void DrawPath(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, Path2D.Float r5);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("DrawPath not implemented for " + surfaceType + " with " + compositeType);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceDrawPath(this);
    }

    public DrawPath(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
