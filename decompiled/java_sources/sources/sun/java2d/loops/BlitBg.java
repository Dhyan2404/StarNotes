package sun.java2d.loops;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.util.Hashtable;
import sun.awt.image.BufImgSurfaceData;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public class BlitBg extends GraphicsPrimitive {
    public static final String methodSignature = "BlitBg(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();
    private static RenderCache blitcache = new RenderCache(20);

    /* loaded from: classes16.dex */
    public static class General extends BlitBg {
        private static Font defaultFont = new Font(Font.DIALOG, 0, 12);
        CompositeType compositeType;

        public General(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            super(surfaceType, compositeType, surfaceType2);
            this.compositeType = compositeType;
        }

        @Override // sun.java2d.loops.BlitBg
        public void BlitBg(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            ColorModel colorModel = surfaceData2.getColorModel();
            boolean z = (i >>> 24) != 255;
            if (!colorModel.hasAlpha() && z) {
                colorModel = ColorModel.getRGBdefault();
            }
            SurfaceData createData = BufImgSurfaceData.createData(new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(i6, i7), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null));
            Color color = new Color(i, z);
            SunGraphics2D sunGraphics2D = new SunGraphics2D(createData, color, color, defaultFont);
            FillRect locate = FillRect.locate(SurfaceType.AnyColor, CompositeType.SrcNoEa, createData.getSurfaceType());
            Blit fromCache = Blit.getFromCache(surfaceData.getSurfaceType(), CompositeType.SrcOverNoEa, createData.getSurfaceType());
            Blit fromCache2 = Blit.getFromCache(createData.getSurfaceType(), this.compositeType, surfaceData2.getSurfaceType());
            locate.FillRect(sunGraphics2D, createData, 0, 0, i6, i7);
            fromCache.Blit(surfaceData, createData, AlphaComposite.SrcOver, null, i2, i3, 0, 0, i6, i7);
            fromCache2.Blit(createData, surfaceData2, composite, region, 0, 0, i4, i5, i6, i7);
        }
    }

    /* loaded from: classes16.dex */
    public static class TraceBlitBg extends BlitBg {
        BlitBg target;

        public TraceBlitBg(BlitBg blitBg) {
            super(blitBg.getSourceType(), blitBg.getCompositeType(), blitBg.getDestType());
            this.target = blitBg;
        }

        @Override // sun.java2d.loops.BlitBg
        public void BlitBg(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.BlitBg(surfaceData, surfaceData2, composite, region, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // sun.java2d.loops.BlitBg, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new BlitBg(null, null, null));
    }

    public BlitBg(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static BlitBg getFromCache(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        Object obj = blitcache.get(surfaceType, compositeType, surfaceType2);
        if (obj != null) {
            return (BlitBg) obj;
        }
        BlitBg locate = locate(surfaceType, compositeType, surfaceType2);
        if (locate == null) {
            System.out.println("blitbg loop not found for:");
            System.out.println("src:  " + surfaceType);
            System.out.println("comp: " + compositeType);
            System.out.println("dst:  " + surfaceType2);
        } else {
            blitcache.put(surfaceType, compositeType, surfaceType2, locate);
        }
        return locate;
    }

    public static BlitBg locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (BlitBg) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void BlitBg(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return new General(surfaceType, compositeType, surfaceType2);
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceBlitBg(this);
    }

    public BlitBg(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
