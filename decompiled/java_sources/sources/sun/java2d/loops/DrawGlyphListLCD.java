package sun.java2d.loops;

import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public class DrawGlyphListLCD extends GraphicsPrimitive {
    public static final String methodSignature = "DrawGlyphListLCD(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class TraceDrawGlyphListLCD extends DrawGlyphListLCD {
        DrawGlyphListLCD target;

        public TraceDrawGlyphListLCD(DrawGlyphListLCD drawGlyphListLCD) {
            super(drawGlyphListLCD.getSourceType(), drawGlyphListLCD.getCompositeType(), drawGlyphListLCD.getDestType());
            this.target = drawGlyphListLCD;
        }

        @Override // sun.java2d.loops.DrawGlyphListLCD
        public void DrawGlyphListLCD(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, GlyphList glyphList) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.DrawGlyphListLCD(sunGraphics2D, surfaceData, glyphList);
        }

        @Override // sun.java2d.loops.DrawGlyphListLCD, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new DrawGlyphListLCD(null, null, null));
    }

    public DrawGlyphListLCD(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static DrawGlyphListLCD locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (DrawGlyphListLCD) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void DrawGlyphListLCD(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, GlyphList glyphList);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return null;
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceDrawGlyphListLCD(this);
    }

    public DrawGlyphListLCD(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
