package sun.java2d.pipe;

import java.awt.PaintContext;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.image.ColorModel;
import java.lang.ref.WeakReference;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.Blit;
import sun.java2d.loops.MaskBlit;

/* loaded from: classes16.dex */
public class AlphaPaintPipe implements CompositePipe {
    private static final int TILE_SIZE = 32;
    static WeakReference cachedLastColorModel;
    static WeakReference cachedLastData;
    static WeakReference cachedLastRaster;

    /* loaded from: classes16.dex */
    public static class TileContext {
        SurfaceData dstData;
        Blit lastBlit;
        WeakReference lastData;
        MaskBlit lastMask;
        WeakReference lastRaster;
        PaintContext paintCtxt;
        ColorModel paintModel;
        SunGraphics2D sunG2D;

        public TileContext(SunGraphics2D sunGraphics2D, PaintContext paintContext) {
            this.sunG2D = sunGraphics2D;
            this.paintCtxt = paintContext;
            this.paintModel = paintContext.getColorModel();
            this.dstData = sunGraphics2D.getSurfaceData();
            synchronized (AlphaPaintPipe.class) {
                WeakReference weakReference = AlphaPaintPipe.cachedLastColorModel;
                if (weakReference != null && weakReference.get() == this.paintModel) {
                    this.lastRaster = AlphaPaintPipe.cachedLastRaster;
                    this.lastData = AlphaPaintPipe.cachedLastData;
                }
            }
        }
    }

    @Override // sun.java2d.pipe.CompositePipe
    public void endSequence(Object obj) {
        TileContext tileContext = (TileContext) obj;
        PaintContext paintContext = tileContext.paintCtxt;
        if (paintContext != null) {
            paintContext.dispose();
        }
        synchronized (AlphaPaintPipe.class) {
            if (tileContext.lastData != null) {
                cachedLastRaster = tileContext.lastRaster;
                WeakReference weakReference = cachedLastColorModel;
                if (weakReference == null || weakReference.get() != tileContext.paintModel) {
                    cachedLastColorModel = new WeakReference(tileContext.paintModel);
                }
                cachedLastData = tileContext.lastData;
            }
        }
    }

    @Override // sun.java2d.pipe.CompositePipe
    public boolean needTile(Object obj, int i, int i2, int i3, int i4) {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0026, code lost:
    
        if (r6 != null) goto L10;
     */
    @Override // sun.java2d.pipe.CompositePipe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void renderPathTile(java.lang.Object r31, byte[] r32, int r33, int r34, int r35, int r36, int r37, int r38) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.pipe.AlphaPaintPipe.renderPathTile(java.lang.Object, byte[], int, int, int, int, int, int):void");
    }

    @Override // sun.java2d.pipe.CompositePipe
    public void skipTile(Object obj, int i, int i2) {
    }

    @Override // sun.java2d.pipe.CompositePipe
    public Object startSequence(SunGraphics2D sunGraphics2D, Shape shape, Rectangle rectangle, int[] iArr) {
        return new TileContext(sunGraphics2D, sunGraphics2D.paint.createContext(sunGraphics2D.getDeviceColorModel(), rectangle, shape.getBounds2D(), sunGraphics2D.cloneTransform(), sunGraphics2D.getRenderingHints()));
    }
}
