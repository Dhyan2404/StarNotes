package sun.java2d.loops;

import java.awt.Composite;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public class ScaledBlit extends GraphicsPrimitive {
    public static final String methodSignature = "ScaledBlit(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();
    private static RenderCache blitcache = new RenderCache(20);

    /* loaded from: classes16.dex */
    public static class TraceScaledBlit extends ScaledBlit {
        ScaledBlit target;

        public TraceScaledBlit(ScaledBlit scaledBlit) {
            super(scaledBlit.getSourceType(), scaledBlit.getCompositeType(), scaledBlit.getDestType());
            this.target = scaledBlit;
        }

        @Override // sun.java2d.loops.ScaledBlit
        public void Scale(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, double d, double d2, double d3, double d4) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.Scale(surfaceData, surfaceData2, composite, region, i, i2, i3, i4, d, d2, d3, d4);
        }

        @Override // sun.java2d.loops.ScaledBlit, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new ScaledBlit(null, null, null));
    }

    public ScaledBlit(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static ScaledBlit getFromCache(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        Object obj = blitcache.get(surfaceType, compositeType, surfaceType2);
        if (obj != null) {
            return (ScaledBlit) obj;
        }
        ScaledBlit locate = locate(surfaceType, compositeType, surfaceType2);
        if (locate != null) {
            blitcache.put(surfaceType, compositeType, surfaceType2, locate);
        }
        return locate;
    }

    public static ScaledBlit locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (ScaledBlit) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void Scale(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, double d, double d2, double d3, double d4);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return null;
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceScaledBlit(this);
    }

    public ScaledBlit(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
