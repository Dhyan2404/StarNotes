package java.awt;

import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.util.Arrays;
import sun.awt.image.IntegerComponentRaster;

/* loaded from: classes4.dex */
class ColorPaintContext implements PaintContext {
    int color;
    WritableRaster savedTile;

    public ColorPaintContext(int i, ColorModel colorModel) {
        this.color = i;
    }

    @Override // java.awt.PaintContext
    public void dispose() {
    }

    @Override // java.awt.PaintContext
    public ColorModel getColorModel() {
        return ColorModel.getRGBdefault();
    }

    public int getRGB() {
        return this.color;
    }

    @Override // java.awt.PaintContext
    public synchronized Raster getRaster(int i, int i2, int i3, int i4) {
        WritableRaster writableRaster;
        writableRaster = this.savedTile;
        if (writableRaster == null || i3 > writableRaster.getWidth() || i4 > writableRaster.getHeight()) {
            writableRaster = getColorModel().createCompatibleWritableRaster(i3, i4);
            IntegerComponentRaster integerComponentRaster = (IntegerComponentRaster) writableRaster;
            Arrays.fill(integerComponentRaster.getDataStorage(), this.color);
            integerComponentRaster.markDirty();
            if (i3 <= 64 && i4 <= 64) {
                this.savedTile = writableRaster;
            }
        }
        return writableRaster;
    }
}
