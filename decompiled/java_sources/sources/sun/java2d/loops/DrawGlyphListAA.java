package sun.java2d.loops;

import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public class DrawGlyphListAA extends GraphicsPrimitive {
    public static final String methodSignature = "DrawGlyphListAA(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();

    /* loaded from: classes16.dex */
    public static class General extends DrawGlyphListAA {
        MaskFill maskop;

        public General(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            super(surfaceType, compositeType, surfaceType2);
            this.maskop = MaskFill.locate(surfaceType, compositeType, surfaceType2);
        }

        @Override // sun.java2d.loops.DrawGlyphListAA
        public void DrawGlyphListAA(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, GlyphList glyphList) {
            int i;
            int i2;
            glyphList.getBounds();
            int numGlyphs = glyphList.getNumGlyphs();
            Region compClip = sunGraphics2D.getCompClip();
            int loX = compClip.getLoX();
            int loY = compClip.getLoY();
            int hiX = compClip.getHiX();
            int hiY = compClip.getHiY();
            for (int i3 = 0; i3 < numGlyphs; i3++) {
                glyphList.setGlyphIndex(i3);
                int[] metrics = glyphList.getMetrics();
                int i4 = metrics[0];
                int i5 = metrics[1];
                int i6 = metrics[2];
                int i7 = i4 + i6;
                int i8 = metrics[3] + i5;
                if (i4 < loX) {
                    i2 = loX - i4;
                    i = loX;
                } else {
                    i = i4;
                    i2 = 0;
                }
                if (i5 < loY) {
                    i2 += (loY - i5) * i6;
                    i5 = loY;
                }
                int i9 = i2;
                if (i7 > hiX) {
                    i7 = hiX;
                }
                if (i8 > hiY) {
                    i8 = hiY;
                }
                if (i7 > i && i8 > i5) {
                    this.maskop.MaskFill(sunGraphics2D, surfaceData, sunGraphics2D.composite, i, i5, i7 - i, i8 - i5, glyphList.getGrayBits(), i9, i6);
                }
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class TraceDrawGlyphListAA extends DrawGlyphListAA {
        DrawGlyphListAA target;

        public TraceDrawGlyphListAA(DrawGlyphListAA drawGlyphListAA) {
            super(drawGlyphListAA.getSourceType(), drawGlyphListAA.getCompositeType(), drawGlyphListAA.getDestType());
            this.target = drawGlyphListAA;
        }

        @Override // sun.java2d.loops.DrawGlyphListAA
        public void DrawGlyphListAA(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, GlyphList glyphList) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.DrawGlyphListAA(sunGraphics2D, surfaceData, glyphList);
        }

        @Override // sun.java2d.loops.DrawGlyphListAA, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new DrawGlyphListAA(null, null, null));
    }

    public DrawGlyphListAA(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static DrawGlyphListAA locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (DrawGlyphListAA) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void DrawGlyphListAA(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, GlyphList glyphList);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return new General(surfaceType, compositeType, surfaceType2);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceDrawGlyphListAA(this);
    }

    public DrawGlyphListAA(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
