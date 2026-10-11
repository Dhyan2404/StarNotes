package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class DrawLine extends GraphicsPrimitive {
    public static final String methodSignature = "DrawLine(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceDrawLine extends DrawLine {
        DrawLine target;

        public TraceDrawLine(DrawLine drawLine) {
            super(drawLine.getSourceType(), drawLine.getCompositeType(), drawLine.getDestType());
            this.target = drawLine;
        }

        @Override // sun.java2d.loops.DrawLine
        public void DrawLine(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.DrawLine(sunGraphics2D, surfaceData, i, i2, i3, i4);
        }

        @Override // sun.java2d.loops.DrawLine, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public DrawLine(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static DrawLine locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (DrawLine) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void DrawLine(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("DrawLine not implemented for " + surfaceType + " with " + compositeType);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceDrawLine(this);
    }

    public DrawLine(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
