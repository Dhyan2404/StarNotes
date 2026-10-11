package sun.java2d.loops;

import java.awt.Composite;
import java.awt.image.BufferedImage;
import sun.awt.image.BufImgSurfaceData;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public class MaskFill extends GraphicsPrimitive {
    public static final String drawPgramSignature = "DrawAAPgram(...)";
    public static final String fillPgramSignature = "FillAAPgram(...)";
    public static final String methodSignature = "MaskFill(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();
    private static RenderCache fillcache = new RenderCache(10);

    /* loaded from: classes16.dex */
    public static class General extends MaskFill {
        FillRect fillop;
        MaskBlit maskop;

        public General(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            super(surfaceType, compositeType, surfaceType2);
            CompositeType compositeType2 = CompositeType.SrcNoEa;
            SurfaceType surfaceType3 = SurfaceType.IntArgb;
            this.fillop = FillRect.locate(surfaceType, compositeType2, surfaceType3);
            this.maskop = MaskBlit.locate(surfaceType3, compositeType, surfaceType2);
        }

        @Override // sun.java2d.loops.MaskFill
        public void MaskFill(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, int i, int i2, int i3, int i4, byte[] bArr, int i5, int i6) {
            SurfaceData createData = BufImgSurfaceData.createData(new BufferedImage(i3, i4, 2));
            Region region = sunGraphics2D.clipRegion;
            sunGraphics2D.clipRegion = null;
            int i7 = sunGraphics2D.pixel;
            sunGraphics2D.pixel = createData.pixelFor(sunGraphics2D.getColor());
            this.fillop.FillRect(sunGraphics2D, createData, 0, 0, i3, i4);
            sunGraphics2D.pixel = i7;
            sunGraphics2D.clipRegion = region;
            this.maskop.MaskBlit(createData, surfaceData, composite, null, 0, 0, i, i2, i3, i4, bArr, i5, i6);
        }
    }

    /* loaded from: classes16.dex */
    public static class TraceMaskFill extends MaskFill {
        MaskFill drawPgramTarget;
        MaskFill fillPgramTarget;
        MaskFill target;

        public TraceMaskFill(MaskFill maskFill) {
            super(maskFill.getSourceType(), maskFill.getCompositeType(), maskFill.getDestType());
            this.target = maskFill;
            this.fillPgramTarget = new MaskFill(MaskFill.fillPgramSignature, maskFill.getSourceType(), maskFill.getCompositeType(), maskFill.getDestType());
            this.drawPgramTarget = new MaskFill(MaskFill.drawPgramSignature, maskFill.getSourceType(), maskFill.getCompositeType(), maskFill.getDestType());
        }

        @Override // sun.java2d.loops.MaskFill
        public void DrawAAPgram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
            GraphicsPrimitive.tracePrimitive(this.drawPgramTarget);
            this.target.DrawAAPgram(sunGraphics2D, surfaceData, composite, d, d2, d3, d4, d5, d6, d7, d8);
        }

        @Override // sun.java2d.loops.MaskFill
        public void FillAAPgram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, double d, double d2, double d3, double d4, double d5, double d6) {
            GraphicsPrimitive.tracePrimitive(this.fillPgramTarget);
            this.target.FillAAPgram(sunGraphics2D, surfaceData, composite, d, d2, d3, d4, d5, d6);
        }

        @Override // sun.java2d.loops.MaskFill
        public void MaskFill(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, int i, int i2, int i3, int i4, byte[] bArr, int i5, int i6) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.MaskFill(sunGraphics2D, surfaceData, composite, i, i2, i3, i4, bArr, i5, i6);
        }

        @Override // sun.java2d.loops.MaskFill
        public boolean canDoParallelograms() {
            return this.target.canDoParallelograms();
        }

        @Override // sun.java2d.loops.MaskFill, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new MaskFill(null, null, null));
    }

    public MaskFill(String str, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(str, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static MaskFill getFromCache(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        Object obj = fillcache.get(surfaceType, compositeType, surfaceType2);
        if (obj != null) {
            return (MaskFill) obj;
        }
        MaskFill locatePrim = locatePrim(surfaceType, compositeType, surfaceType2);
        if (locatePrim != null) {
            fillcache.put(surfaceType, compositeType, surfaceType2, locatePrim);
        }
        return locatePrim;
    }

    public static MaskFill locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (MaskFill) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static MaskFill locatePrim(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (MaskFill) GraphicsPrimitiveMgr.locatePrim(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void DrawAAPgram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8);

    public native void FillAAPgram(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, double d, double d2, double d3, double d4, double d5, double d6);

    public native void MaskFill(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, int i, int i2, int i3, int i4, byte[] bArr, int i5, int i6);

    public boolean canDoParallelograms() {
        return getNativePrim() != 0;
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        if (!SurfaceType.OpaqueColor.equals(surfaceType) && !SurfaceType.AnyColor.equals(surfaceType)) {
            throw new InternalError("MaskFill can only fill with colors");
        }
        if (CompositeType.Xor.equals(compositeType)) {
            throw new InternalError("Cannot construct MaskFill for XOR mode");
        }
        return new General(surfaceType, compositeType, surfaceType2);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceMaskFill(this);
    }

    public MaskFill(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public MaskFill(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
