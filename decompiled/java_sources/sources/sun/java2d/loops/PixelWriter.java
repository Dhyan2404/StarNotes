package sun.java2d.loops;

import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
abstract class PixelWriter {
    protected WritableRaster dstRast;

    public void setRaster(WritableRaster writableRaster) {
        this.dstRast = writableRaster;
    }

    public abstract void writePixel(int i, int i2);
}
