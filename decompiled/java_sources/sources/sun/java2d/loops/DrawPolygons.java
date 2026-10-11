package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class DrawPolygons extends GraphicsPrimitive {
    public static final String methodSignature = "DrawPolygons(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceDrawPolygons extends DrawPolygons {
        DrawPolygons target;

        public TraceDrawPolygons(DrawPolygons drawPolygons) {
            super(drawPolygons.getSourceType(), drawPolygons.getCompositeType(), drawPolygons.getDestType());
            this.target = drawPolygons;
        }

        @Override // sun.java2d.loops.DrawPolygons
        public void DrawPolygons(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int[] iArr, int[] iArr2, int[] iArr3, int i, int i2, int i3, boolean z) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.DrawPolygons(sunGraphics2D, surfaceData, iArr, iArr2, iArr3, i, i2, i3, z);
        }

        @Override // sun.java2d.loops.DrawPolygons, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public DrawPolygons(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static DrawPolygons locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (DrawPolygons) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void DrawPolygons(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int[] iArr, int[] iArr2, int[] iArr3, int i, int i2, int i3, boolean z);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("DrawPolygons not implemented for " + surfaceType + " with " + compositeType);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceDrawPolygons(this);
    }

    public DrawPolygons(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
