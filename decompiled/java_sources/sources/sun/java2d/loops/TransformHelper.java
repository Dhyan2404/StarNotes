package sun.java2d.loops;

import java.awt.Composite;
import java.awt.geom.AffineTransform;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public class TransformHelper extends GraphicsPrimitive {
    public static final String methodSignature = "TransformHelper(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();
    private static RenderCache helpercache = new RenderCache(10);

    /* loaded from: classes16.dex */
    public static class TraceTransformHelper extends TransformHelper {
        TransformHelper target;

        public TraceTransformHelper(TransformHelper transformHelper) {
            super(transformHelper.getSourceType());
            this.target = transformHelper;
        }

        @Override // sun.java2d.loops.TransformHelper
        public void Transform(MaskBlit maskBlit, SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, AffineTransform affineTransform, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, int i10, int i11) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.Transform(maskBlit, surfaceData, surfaceData2, composite, region, affineTransform, i, i2, i3, i4, i5, i6, i7, i8, i9, iArr, i10, i11);
        }

        @Override // sun.java2d.loops.TransformHelper, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public TransformHelper(SurfaceType surfaceType) {
        super(methodSignature, primTypeID, surfaceType, CompositeType.SrcNoEa, SurfaceType.IntArgbPre);
    }

    public static synchronized TransformHelper getFromCache(SurfaceType surfaceType) {
        synchronized (TransformHelper.class) {
            Object obj = helpercache.get(surfaceType, null, null);
            if (obj != null) {
                return (TransformHelper) obj;
            }
            TransformHelper locate = locate(surfaceType);
            if (locate != null) {
                helpercache.put(surfaceType, null, null, locate);
            }
            return locate;
        }
    }

    public static TransformHelper locate(SurfaceType surfaceType) {
        return (TransformHelper) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, CompositeType.SrcNoEa, SurfaceType.IntArgbPre);
    }

    public native void Transform(MaskBlit maskBlit, SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, AffineTransform affineTransform, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, int i10, int i11);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return null;
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceTransformHelper(this);
    }

    public TransformHelper(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
