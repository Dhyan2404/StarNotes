package sun.java2d.loops;

import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.SpanIterator;

/* loaded from: classes16.dex */
public class FillSpans extends GraphicsPrimitive {
    public static final String methodSignature = "FillSpans(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceFillSpans extends FillSpans {
        FillSpans target;

        public TraceFillSpans(FillSpans fillSpans) {
            super(fillSpans.getSourceType(), fillSpans.getCompositeType(), fillSpans.getDestType());
            this.target = fillSpans;
        }

        @Override // sun.java2d.loops.FillSpans
        public void FillSpans(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, SpanIterator spanIterator) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.FillSpans(sunGraphics2D, surfaceData, spanIterator);
        }

        @Override // sun.java2d.loops.FillSpans, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    public FillSpans(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    private native void FillSpans(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, long j, SpanIterator spanIterator);

    public static FillSpans locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (FillSpans) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public void FillSpans(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, SpanIterator spanIterator) {
        FillSpans(sunGraphics2D, surfaceData, sunGraphics2D.pixel, spanIterator.getNativeIterator(), spanIterator);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("FillSpans not implemented for " + surfaceType + " with " + compositeType);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceFillSpans(this);
    }

    public FillSpans(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
