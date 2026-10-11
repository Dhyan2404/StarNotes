package sun.java2d.pipe;

import java.awt.AlphaComposite;
import java.awt.Composite;
import java.awt.Paint;
import java.awt.geom.AffineTransform;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import sun.java2d.SunGraphics2D;
import sun.java2d.loops.XORComposite;
import sun.java2d.pipe.p121hw.AccelSurface;

/* loaded from: classes16.dex */
public abstract class BufferedContext {
    public static final int NO_CONTEXT_FLAGS = 0;
    public static final int SRC_IS_OPAQUE = 1;
    public static final int USE_MASK = 2;
    protected static BufferedContext currentContext;
    protected RenderBuffer buf;
    private boolean isValidatedPaintJustAColor;

    /* renamed from: rq */
    protected RenderQueue f116384rq;
    private AffineTransform transform;
    private int validatedFlags;
    private int validatedRGB;
    private boolean xformInUse;
    private Reference<AccelSurface> validSrcDataRef = new WeakReference(null);
    private Reference<AccelSurface> validDstDataRef = new WeakReference(null);
    private Reference<Region> validClipRef = new WeakReference(null);
    private Reference<Composite> validCompRef = new WeakReference(null);
    private Reference<Paint> validPaintRef = new WeakReference(null);

    public BufferedContext(RenderQueue renderQueue) {
        this.f116384rq = renderQueue;
        this.buf = renderQueue.getBuffer();
    }

    private void invalidateSurfaces() {
        this.validSrcDataRef.clear();
        this.validDstDataRef.clear();
    }

    private void resetClip() {
        this.f116384rq.ensureCapacity(4);
        this.buf.putInt(55);
    }

    private void resetComposite() {
        this.f116384rq.ensureCapacity(4);
        this.buf.putInt(58);
    }

    private void resetTransform() {
        this.f116384rq.ensureCapacity(4);
        this.buf.putInt(60);
    }

    private void setClip(Region region) {
        if (region.isRectangular()) {
            this.f116384rq.ensureCapacity(20);
            this.buf.putInt(51);
            this.buf.putInt(region.getLoX()).putInt(region.getLoY());
            this.buf.putInt(region.getHiX()).putInt(region.getHiY());
            return;
        }
        this.f116384rq.ensureCapacity(28);
        this.buf.putInt(52);
        this.buf.putInt(53);
        int position = this.buf.position();
        this.buf.putInt(0);
        int remaining = this.buf.remaining() / 16;
        int[] iArr = new int[4];
        SpanIterator spanIterator = region.getSpanIterator();
        int i = 0;
        while (spanIterator.nextSpan(iArr)) {
            if (remaining == 0) {
                this.buf.putInt(position, i);
                this.f116384rq.flushNow();
                this.buf.putInt(53);
                position = this.buf.position();
                this.buf.putInt(0);
                remaining = this.buf.remaining() / 16;
                i = 0;
            }
            this.buf.putInt(iArr[0]);
            this.buf.putInt(iArr[1]);
            this.buf.putInt(iArr[2]);
            this.buf.putInt(iArr[3]);
            i++;
            remaining--;
        }
        this.buf.putInt(position, i);
        this.f116384rq.ensureCapacity(4);
        this.buf.putInt(54);
    }

    private void setComposite(Composite composite, int i) {
        if (composite instanceof AlphaComposite) {
            AlphaComposite alphaComposite = (AlphaComposite) composite;
            this.f116384rq.ensureCapacity(16);
            this.buf.putInt(56);
            this.buf.putInt(alphaComposite.getRule());
            this.buf.putFloat(alphaComposite.getAlpha());
            this.buf.putInt(i);
            return;
        }
        if (!(composite instanceof XORComposite)) {
            throw new InternalError("not yet implemented");
        }
        int xorPixel = ((XORComposite) composite).getXorPixel();
        this.f116384rq.ensureCapacity(8);
        this.buf.putInt(57);
        this.buf.putInt(xorPixel);
    }

    private void setSurfaces(AccelSurface accelSurface, AccelSurface accelSurface2) {
        this.f116384rq.ensureCapacityAndAlignment(20, 4);
        this.buf.putInt(70);
        this.buf.putLong(accelSurface.getNativeOps());
        this.buf.putLong(accelSurface2.getNativeOps());
    }

    private void setTransform(AffineTransform affineTransform) {
        this.f116384rq.ensureCapacityAndAlignment(52, 4);
        this.buf.putInt(59);
        this.buf.putDouble(affineTransform.getScaleX());
        this.buf.putDouble(affineTransform.getShearY());
        this.buf.putDouble(affineTransform.getShearX());
        this.buf.putDouble(affineTransform.getScaleY());
        this.buf.putDouble(affineTransform.getTranslateX());
        this.buf.putDouble(affineTransform.getTranslateY());
    }

    public static void validateContext(AccelSurface accelSurface, AccelSurface accelSurface2, Region region, Composite composite, AffineTransform affineTransform, Paint paint, SunGraphics2D sunGraphics2D, int i) {
        accelSurface2.getContext().validate(accelSurface, accelSurface2, region, composite, affineTransform, paint, sunGraphics2D, i);
    }

    public abstract RenderQueue getRenderQueue();

    public void invalidateContext() {
        resetTransform();
        resetComposite();
        resetClip();
        BufferedPaints.resetPaint(this.f116384rq);
        invalidateSurfaces();
        this.validCompRef.clear();
        this.validClipRef.clear();
        this.validPaintRef.clear();
        this.isValidatedPaintJustAColor = false;
        this.xformInUse = false;
    }

    public abstract void restoreState();

    public abstract void saveState();

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fc, code lost:
    
        if (r13.transform.equals(r6.transform) == false) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void validate(sun.java2d.pipe.p121hw.AccelSurface r7, sun.java2d.pipe.p121hw.AccelSurface r8, sun.java2d.pipe.Region r9, java.awt.Composite r10, java.awt.geom.AffineTransform r11, java.awt.Paint r12, sun.java2d.SunGraphics2D r13, int r14) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.pipe.BufferedContext.validate(sun.java2d.pipe.hw.AccelSurface, sun.java2d.pipe.hw.AccelSurface, sun.java2d.pipe.Region, java.awt.Composite, java.awt.geom.AffineTransform, java.awt.Paint, sun.java2d.SunGraphics2D, int):void");
    }

    public static void validateContext(AccelSurface accelSurface) {
        validateContext(accelSurface, accelSurface, null, null, null, null, null, 0);
    }
}
