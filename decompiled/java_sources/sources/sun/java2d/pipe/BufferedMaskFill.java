package sun.java2d.pipe;

import java.awt.AlphaComposite;
import java.awt.Composite;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.MaskFill;
import sun.java2d.loops.SurfaceType;

/* loaded from: classes16.dex */
public abstract class BufferedMaskFill extends MaskFill {

    /* renamed from: rq */
    protected final RenderQueue f116386rq;

    public BufferedMaskFill(RenderQueue renderQueue, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(surfaceType, compositeType, surfaceType2);
        this.f116386rq = renderQueue;
    }

    @Override // sun.java2d.loops.MaskFill
    public void MaskFill(SunGraphics2D sunGraphics2D, SurfaceData surfaceData, Composite composite, final int i, final int i2, final int i3, final int i4, final byte[] bArr, final int i5, final int i6) {
        Composite composite2 = ((AlphaComposite) composite).getRule() != 3 ? AlphaComposite.SrcOver : composite;
        this.f116386rq.lock();
        try {
            validateContext(sunGraphics2D, composite2, 2);
            int length = bArr != null ? (bArr.length + 3) & (-4) : 0;
            int i7 = length + 32;
            RenderBuffer buffer = this.f116386rq.getBuffer();
            if (i7 <= buffer.capacity()) {
                if (i7 > buffer.remaining()) {
                    this.f116386rq.flushNow();
                }
                buffer.putInt(32);
                buffer.putInt(i).putInt(i2).putInt(i3).putInt(i4);
                buffer.putInt(i5);
                buffer.putInt(i6);
                buffer.putInt(length);
                if (bArr != null) {
                    int length2 = length - bArr.length;
                    buffer.put(bArr);
                    if (length2 != 0) {
                        buffer.position(buffer.position() + length2);
                    }
                }
            } else {
                this.f116386rq.flushAndInvokeNow(new Runnable() { // from class: sun.java2d.pipe.BufferedMaskFill.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BufferedMaskFill bufferedMaskFill = BufferedMaskFill.this;
                        int i8 = i;
                        int i9 = i2;
                        int i10 = i3;
                        int i11 = i4;
                        int i12 = i5;
                        int i13 = i6;
                        byte[] bArr2 = bArr;
                        bufferedMaskFill.maskFill(i8, i9, i10, i11, i12, i13, bArr2.length, bArr2);
                    }
                });
            }
        } finally {
            this.f116386rq.unlock();
        }
    }

    public abstract void maskFill(int i, int i2, int i3, int i4, int i5, int i6, int i7, byte[] bArr);

    public abstract void validateContext(SunGraphics2D sunGraphics2D, Composite composite, int i);
}
