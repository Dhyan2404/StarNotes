package sun.java2d.loops;

import java.awt.Composite;
import java.awt.geom.AffineTransform;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public class TransformBlit extends GraphicsPrimitive {
    public static final String methodSignature = "TransformBlit(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();
    private static RenderCache blitcache = new RenderCache(10);

    /* loaded from: classes16.dex */
    public static class TraceTransformBlit extends TransformBlit {
        TransformBlit target;

        public TraceTransformBlit(TransformBlit transformBlit) {
            super(transformBlit.getSourceType(), transformBlit.getCompositeType(), transformBlit.getDestType());
            this.target = transformBlit;
        }

        @Override // sun.java2d.loops.TransformBlit
        public void Transform(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, AffineTransform affineTransform, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.Transform(surfaceData, surfaceData2, composite, region, affineTransform, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // sun.java2d.loops.TransformBlit, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new TransformBlit(null, null, null));
    }

    public TransformBlit(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static TransformBlit getFromCache(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        Object obj = blitcache.get(surfaceType, compositeType, surfaceType2);
        if (obj != null) {
            return (TransformBlit) obj;
        }
        TransformBlit locate = locate(surfaceType, compositeType, surfaceType2);
        if (locate != null) {
            blitcache.put(surfaceType, compositeType, surfaceType2, locate);
        }
        return locate;
    }

    public static TransformBlit locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (TransformBlit) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void Transform(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, AffineTransform affineTransform, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return null;
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceTransformBlit(this);
    }

    public TransformBlit(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
