package sun.java2d.loops;

import java.awt.geom.Path2D;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class FillPath extends GraphicsPrimitive {
    public static final String methodSignature = "FillPath(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceFillPath extends FillPath {
        FillPath target;

        public TraceFillPath(FillPath fillPath) {
            super(fillPath.getSourceType(), fillPath.getCompositeType(), fillPath.getDestType());
            this.target = fillPath;
        }

        @Override // sun.java2d.loops.FillPath
        public void FillPath(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, Path2D.Float r12) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.FillPath(sunGraphics2D, surfaceData, i, i2, r12);
        }

        @Override // sun.java2d.loops.FillPath, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public FillPath(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static FillPath locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (FillPath) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void FillPath(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, Path2D.Float r5);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("FillPath not implemented for " + surfaceType + " with " + compositeType);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceFillPath(this);
    }

    public FillPath(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
