package com.sun.imageio.plugins.common;

import java.awt.image.ColorModel;
import java.awt.image.Raster;

/* loaded from: classes9.dex */
public class SingleTileRenderedImage extends SimpleRenderedImage {
    Raster ras;

    public SingleTileRenderedImage(Raster raster, ColorModel colorModel) {
        this.ras = raster;
        int minX = raster.getMinX();
        this.minX = minX;
        this.tileGridXOffset = minX;
        int minY = raster.getMinY();
        this.minY = minY;
        this.tileGridYOffset = minY;
        int width = raster.getWidth();
        this.width = width;
        this.tileWidth = width;
        int height = raster.getHeight();
        this.height = height;
        this.tileHeight = height;
        this.sampleModel = raster.getSampleModel();
        this.colorModel = colorModel;
    }

    @Override // java.awt.image.RenderedImage
    public Raster getTile(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return this.ras;
        }
        throw new IllegalArgumentException("tileX != 0 || tileY != 0");
    }
}
