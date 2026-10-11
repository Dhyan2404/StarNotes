package sun.java2d.loops;

import sun.java2d.SurfaceData;
import sun.java2d.loops.ProcessPath;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
class PixelWriterDrawHandler extends ProcessPath.DrawHandler {
    Region clip;

    /* renamed from: pw */
    PixelWriter f116377pw;
    SurfaceData sData;

    public PixelWriterDrawHandler(SurfaceData surfaceData, PixelWriter pixelWriter, Region region, int i) {
        super(region.getLoX(), region.getLoY(), region.getHiX(), region.getHiY(), i);
        this.sData = surfaceData;
        this.f116377pw = pixelWriter;
        this.clip = region;
    }

    @Override // sun.java2d.loops.ProcessPath.DrawHandler
    public void drawLine(int i, int i2, int i3, int i4) {
        GeneralRenderer.doDrawLine(this.sData, this.f116377pw, null, this.clip, i, i2, i3, i4);
    }

    @Override // sun.java2d.loops.ProcessPath.DrawHandler
    public void drawPixel(int i, int i2) {
        GeneralRenderer.doSetRect(this.sData, this.f116377pw, i, i2, i + 1, i2 + 1);
    }

    @Override // sun.java2d.loops.ProcessPath.DrawHandler
    public void drawScanline(int i, int i2, int i3) {
        GeneralRenderer.doSetRect(this.sData, this.f116377pw, i, i3, i2 + 1, i3 + 1);
    }
}
