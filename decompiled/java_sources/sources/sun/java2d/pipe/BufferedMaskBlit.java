package sun.java2d.pipe;

import java.awt.AlphaComposite;
import java.awt.Composite;
import sun.java2d.SurfaceData;
import sun.java2d.loops.Blit;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.MaskBlit;
import sun.java2d.loops.SurfaceType;

/* loaded from: classes16.dex */
public abstract class BufferedMaskBlit extends MaskBlit {
    private static final int ST_INT_ARGB = 0;
    private static final int ST_INT_ARGB_PRE = 1;
    private static final int ST_INT_BGR = 3;
    private static final int ST_INT_RGB = 2;
    private Blit blitop;

    /* renamed from: rq */
    private final RenderQueue f116385rq;
    private final int srcTypeVal;

    public BufferedMaskBlit(RenderQueue renderQueue, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(surfaceType, compositeType, surfaceType2);
        this.f116385rq = renderQueue;
        if (surfaceType == SurfaceType.IntArgb) {
            this.srcTypeVal = 0;
            return;
        }
        if (surfaceType == SurfaceType.IntArgbPre) {
            this.srcTypeVal = 1;
        } else if (surfaceType == SurfaceType.IntRgb) {
            this.srcTypeVal = 2;
        } else {
            if (surfaceType != SurfaceType.IntBgr) {
                throw new InternalError("unrecognized source surface type");
            }
            this.srcTypeVal = 3;
        }
    }

    private native int enqueueTile(long j, int i, SurfaceData surfaceData, long j2, int i2, byte[] bArr, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11);

    @Override // sun.java2d.loops.MaskBlit
    public void MaskBlit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7, int i8) {
        BufferedMaskBlit bufferedMaskBlit;
        RenderBuffer buffer;
        if (i5 <= 0 || i6 <= 0) {
            return;
        }
        if (bArr == null) {
            if (this.blitop == null) {
                this.blitop = Blit.getFromCache(surfaceData.getSurfaceType(), CompositeType.AnyAlpha, getDestType());
            }
            this.blitop.Blit(surfaceData, surfaceData2, composite, region, i, i2, i3, i4, i5, i6);
            return;
        }
        Composite composite2 = ((AlphaComposite) composite).getRule() != 3 ? AlphaComposite.SrcOver : composite;
        this.f116385rq.lock();
        try {
            validateContext(surfaceData2, composite2, region);
            buffer = this.f116385rq.getBuffer();
            this.f116385rq.ensureCapacity((i5 * i6 * 4) + 20);
        } catch (Throwable th) {
            th = th;
            bufferedMaskBlit = this;
        }
        try {
            buffer.position(enqueueTile(buffer.getAddress(), buffer.position(), surfaceData, surfaceData.getNativeOps(), this.srcTypeVal, bArr, bArr.length, i7, i8, i, i2, i3, i4, i5, i6));
            this.f116385rq.unlock();
        } catch (Throwable th2) {
            th = th2;
            bufferedMaskBlit = this;
            bufferedMaskBlit.f116385rq.unlock();
            throw th;
        }
    }

    public abstract void validateContext(SurfaceData surfaceData, Composite composite, Region region);
}
