package sun.java2d.loops;

import java.awt.Composite;
import java.lang.ref.WeakReference;
import sun.java2d.SurfaceData;
import sun.java2d.loops.GraphicsPrimitive;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public class MaskBlit extends GraphicsPrimitive {
    public static final String methodSignature = "MaskBlit(...)";
    public static final int primTypeID = GraphicsPrimitive.makePrimTypeID();
    private static RenderCache blitcache = new RenderCache(20);

    /* loaded from: classes16.dex */
    public static class General extends MaskBlit implements GraphicsPrimitive.GeneralBinaryOp {
        Blit convertdst;
        Blit convertresult;
        Blit convertsrc;
        WeakReference dstTmp;
        MaskBlit performop;
        WeakReference srcTmp;

        public General(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
            super(surfaceType, compositeType, surfaceType2);
        }

        @Override // sun.java2d.loops.MaskBlit
        public synchronized void MaskBlit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7, int i8) {
            int i9;
            int i10;
            SurfaceData surfaceData3;
            SurfaceData convertFrom;
            Region region2;
            int i11;
            int i12;
            if (this.convertsrc == null) {
                surfaceData3 = surfaceData;
                i9 = i;
                i10 = i2;
            } else {
                WeakReference weakReference = this.srcTmp;
                SurfaceData surfaceData4 = weakReference != null ? (SurfaceData) weakReference.get() : null;
                SurfaceData convertFrom2 = GraphicsPrimitive.convertFrom(this.convertsrc, surfaceData, i, i2, i5, i6, surfaceData4);
                if (convertFrom2 != surfaceData4) {
                    this.srcTmp = new WeakReference(convertFrom2);
                }
                i9 = 0;
                i10 = 0;
                surfaceData3 = convertFrom2;
            }
            if (this.convertdst == null) {
                convertFrom = surfaceData2;
                region2 = region;
                i11 = i3;
                i12 = i4;
            } else {
                WeakReference weakReference2 = this.dstTmp;
                SurfaceData surfaceData5 = weakReference2 != null ? (SurfaceData) weakReference2.get() : null;
                convertFrom = GraphicsPrimitive.convertFrom(this.convertdst, surfaceData2, i3, i4, i5, i6, surfaceData5);
                if (convertFrom != surfaceData5) {
                    this.dstTmp = new WeakReference(convertFrom);
                }
                region2 = null;
                i11 = 0;
                i12 = 0;
            }
            this.performop.MaskBlit(surfaceData3, convertFrom, composite, region2, i9, i10, i11, i12, i5, i6, bArr, i7, i8);
            Blit blit = this.convertresult;
            if (blit != null) {
                GraphicsPrimitive.convertTo(blit, convertFrom, surfaceData2, region, i3, i4, i5, i6);
            }
        }

        @Override // sun.java2d.loops.GraphicsPrimitive.GeneralBinaryOp
        public void setPrimitives(Blit blit, Blit blit2, GraphicsPrimitive graphicsPrimitive, Blit blit3) {
            this.convertsrc = blit;
            this.convertdst = blit2;
            this.performop = (MaskBlit) graphicsPrimitive;
            this.convertresult = blit3;
        }
    }

    /* loaded from: classes16.dex */
    public static class TraceMaskBlit extends MaskBlit {
        MaskBlit target;

        public TraceMaskBlit(MaskBlit maskBlit) {
            super(maskBlit.getNativePrim(), maskBlit.getSourceType(), maskBlit.getCompositeType(), maskBlit.getDestType());
            this.target = maskBlit;
        }

        @Override // sun.java2d.loops.MaskBlit
        public void MaskBlit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7, int i8) {
            GraphicsPrimitive.tracePrimitive(this.target);
            this.target.MaskBlit(surfaceData, surfaceData2, composite, region, i, i2, i3, i4, i5, i6, bArr, i7, i8);
        }

        @Override // sun.java2d.loops.MaskBlit, sun.java2d.loops.GraphicsPrimitive
        public GraphicsPrimitive traceWrap() {
            return this;
        }
    }

    static {
        GraphicsPrimitiveMgr.registerGeneral(new MaskBlit(null, null, null));
    }

    public MaskBlit(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public static MaskBlit getFromCache(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        Object obj = blitcache.get(surfaceType, compositeType, surfaceType2);
        if (obj != null) {
            return (MaskBlit) obj;
        }
        MaskBlit locate = locate(surfaceType, compositeType, surfaceType2);
        if (locate == null) {
            System.out.println("mask blit loop not found for:");
            System.out.println("src:  " + surfaceType);
            System.out.println("comp: " + compositeType);
            System.out.println("dst:  " + surfaceType2);
        } else {
            blitcache.put(surfaceType, compositeType, surfaceType2, locate);
        }
        return locate;
    }

    public static MaskBlit locate(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        return (MaskBlit) GraphicsPrimitiveMgr.locate(primTypeID, surfaceType, compositeType, surfaceType2);
    }

    public native void MaskBlit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7, int i8);

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        if (CompositeType.Xor.equals(compositeType)) {
            throw new InternalError("Cannot construct MaskBlit for XOR mode");
        }
        General general = new General(surfaceType, compositeType, surfaceType2);
        setupGeneralBinaryOp(general);
        return general;
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return new TraceMaskBlit(this);
    }

    public MaskBlit(long j, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(j, methodSignature, primTypeID, surfaceType, compositeType, surfaceType2);
    }
}
