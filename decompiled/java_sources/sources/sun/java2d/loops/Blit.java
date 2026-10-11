package sun.java2d.loops;

import java.awt.Composite;
import java.awt.CompositeContext;
import java.awt.RenderingHints;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.lang.ref.WeakReference;
import sun.java2d.SurfaceData;
import sun.java2d.loops.GraphicsPrimitive;
import sun.java2d.pipe.Region;
import sun.java2d.pipe.SpanIterator;

/* loaded from: classes16.dex */
public class Blit extends GraphicsPrimitive {
    public static final String methodSignature = "Blit(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();
    private static RenderCache blitcache = new RenderCache(20);

    /* loaded from: classes16.dex */
    public static class AnyBlit extends Blit {
        public static AnyBlit instance = new AnyBlit();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnyBlit() {
            /*
                r2 = this;
                sun.java2d.loops.SurfaceType r0 = sun.java2d.loops.SurfaceType.Any
                sun.java2d.loops.CompositeType r1 = sun.java2d.loops.CompositeType.Any
                r2.<init>(r0, r1, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: sun.java2d.loops.Blit.AnyBlit.<init>():void");
        }

        @Override // sun.java2d.loops.Blit
        public void Blit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6) {
            CompositeContext createContext = composite.createContext(surfaceData.getColorModel(), surfaceData2.getColorModel(), new RenderingHints(null));
            Raster raster = surfaceData.getRaster(i, i2, i5, i6);
            WritableRaster writableRaster = (WritableRaster) surfaceData2.getRaster(i3, i4, i5, i6);
            int[] iArr = {i3, i4, i5 + i3, i6 + i4};
            SpanIterator spanIterator = (region == null ? Region.getInstanceXYWH(i3, i4, i5, i6) : region).getSpanIterator(iArr);
            int i7 = i - i3;
            int i8 = i2 - i4;
            while (spanIterator.nextSpan(iArr)) {
                int i9 = iArr[2];
                int i10 = iArr[0];
                int i11 = i9 - i10;
                int i12 = iArr[3];
                int i13 = iArr[1];
                int i14 = i12 - i13;
                Raster createChild = raster.createChild(i10 + i7, i13 + i8, i11, i14, 0, 0, null);
                WritableRaster createWritableChild = writableRaster.createWritableChild(iArr[0], iArr[1], i11, i14, 0, 0, null);
                createContext.compose(createChild, createWritableChild, createWritableChild);
            }
            createContext.dispose();
        }
    }

    /* loaded from: classes16.dex */
    public static class GeneralMaskBlit extends Blit {
        MaskBlit performop;

        public GeneralMaskBlit(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            super(surfaceType, compositeType, surfaceType2);
            this.performop = MaskBlit.locate(surfaceType, compositeType, surfaceType2);
        }

        @Override // sun.java2d.loops.Blit
        public void Blit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6) {
            this.performop.MaskBlit(surfaceData, surfaceData2, composite, region, i, i2, i3, i4, i5, i6, null, 0, 0);
        }
    }

    /* loaded from: classes16.dex */
    public static class GeneralXorBlit extends Blit implements GraphicsPrimitive.GeneralBinaryOp {
        Blit convertdst;
        Blit convertresult;
        Blit convertsrc;
        WeakReference dstTmp;
        Blit performop;
        WeakReference srcTmp;

        public GeneralXorBlit(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            super(surfaceType, compositeType, surfaceType2);
        }

        @Override // sun.java2d.loops.Blit
        public synchronized void Blit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6) {
            int i7;
            int i8;
            SurfaceData surfaceData3;
            SurfaceData convertFrom;
            Region region2;
            int i9;
            int i10;
            if (this.convertsrc == null) {
                surfaceData3 = surfaceData;
                i7 = i;
                i8 = i2;
            } else {
                WeakReference weakReference = this.srcTmp;
                SurfaceData surfaceData4 = weakReference != null ? (SurfaceData) weakReference.get() : null;
                SurfaceData convertFrom2 = GraphicsPrimitive.convertFrom(this.convertsrc, surfaceData, i, i2, i5, i6, surfaceData4);
                if (convertFrom2 != surfaceData4) {
                    this.srcTmp = new WeakReference(convertFrom2);
                }
                i7 = 0;
                i8 = 0;
                surfaceData3 = convertFrom2;
            }
            if (this.convertdst == null) {
                convertFrom = surfaceData2;
                region2 = region;
                i9 = i3;
                i10 = i4;
            } else {
                WeakReference weakReference2 = this.dstTmp;
                SurfaceData surfaceData5 = weakReference2 != null ? (SurfaceData) weakReference2.get() : null;
                convertFrom = GraphicsPrimitive.convertFrom(this.convertdst, surfaceData2, i3, i4, i5, i6, surfaceData5);
                if (convertFrom != surfaceData5) {
                    this.dstTmp = new WeakReference(convertFrom);
                }
                region2 = null;
                i9 = 0;
                i10 = 0;
            }
            this.performop.Blit(surfaceData3, convertFrom, composite, region2, i7, i8, i9, i10, i5, i6);
            Blit blit = this.convertresult;
            if (blit != null) {
                GraphicsPrimitive.convertTo(blit, convertFrom, surfaceData2, region, i3, i4, i5, i6);
            }
        }

        @Override // sun.java2d.loops.GraphicsPrimitive.GeneralBinaryOp
        public void setPrimitives(Blit blit, Blit blit2, GraphicsPrimitive graphicsPrimitive, Blit blit3) {
            this.convertsrc = blit;
            this.convertdst = blit2;
            this.performop = (Blit) graphicsPrimitive;
            this.convertresult = blit3;
        }
    }

    /* loaded from: classes16.dex */
    public static class TraceBlit extends Blit {
        Blit target;

        public TraceBlit(Blit blit) {
            super(blit.getSourceType(), blit.getCompositeType(), blit.getDestType());
            this.target = blit;
        }

        @Override // sun.java2d.loops.Blit
        public void Blit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.Blit(surfaceData, surfaceData2, composite, region, i, i2, i3, i4, i5, i6);
        }

        @Override // sun.java2d.loops.Blit, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new Blit(null, null, null));
    }

    public Blit(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static Blit getFromCache(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        Object obj = blitcache.get(surfaceType, compositeType, surfaceType2);
        if (obj != null) {
            return (Blit) obj;
        }
        Blit locate = locate(surfaceType, compositeType, surfaceType2);
        if (locate == null) {
            System.out.println("blit loop not found for:");
            System.out.println("src:  " + surfaceType);
            System.out.println("comp: " + compositeType);
            System.out.println("dst:  " + surfaceType2);
        } else {
            blitcache.put(surfaceType, compositeType, surfaceType2, locate);
        }
        return locate;
    }

    public static Blit locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (Blit) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void Blit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        if (!compositeType.isDerivedFrom(CompositeType.Xor)) {
            return compositeType.isDerivedFrom(CompositeType.AnyAlpha) ? new GeneralMaskBlit(surfaceType, compositeType, surfaceType2) : AnyBlit.instance;
        }
        GeneralXorBlit generalXorBlit = new GeneralXorBlit(surfaceType, compositeType, surfaceType2);
        setupGeneralBinaryOp(generalXorBlit);
        return generalXorBlit;
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceBlit(this);
    }

    public Blit(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
