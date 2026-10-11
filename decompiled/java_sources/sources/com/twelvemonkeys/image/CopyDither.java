package com.twelvemonkeys.image;

import com.sunia.HTREnginev2.qji;
import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.RasterOp;
import java.awt.image.WritableRaster;

/* loaded from: classes10.dex */
public class CopyDither implements BufferedImageOp, RasterOp {
    protected IndexColorModel indexColorModel;

    public CopyDither(IndexColorModel indexColorModel) {
        this.indexColorModel = indexColorModel;
    }

    /* renamed from: d */
    public static int m60341d(int[] iArr) {
        return iArr[2] | (iArr[0] << 16) | (-16777216) | (iArr[1] << 8);
    }

    /* renamed from: a */
    public final IndexColorModel m60342a(Raster raster) {
        BufferedImage bufferedImage = new BufferedImage(raster.getWidth(), raster.getHeight(), 2);
        bufferedImage.setData(raster);
        return qji.m56703d(bufferedImage, 256, 131584);
    }

    /* renamed from: b */
    public final IndexColorModel m60343b(BufferedImage bufferedImage) {
        IndexColorModel indexColorModel = this.indexColorModel;
        return indexColorModel != null ? indexColorModel : qji.m56703d(bufferedImage, 256, 131584);
    }

    /* renamed from: c */
    public final IndexColorModel m60344c(Raster raster) {
        IndexColorModel indexColorModel = this.indexColorModel;
        return indexColorModel != null ? indexColorModel : m60342a(raster);
    }

    @Override // java.awt.image.BufferedImageOp
    public final BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        if (colorModel == null) {
            return new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), 13, this.indexColorModel);
        }
        if (colorModel instanceof IndexColorModel) {
            return new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), 13, (IndexColorModel) colorModel);
        }
        throw new ImageFilterException("Only IndexColorModel allowed.");
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster createCompatibleDestRaster(Raster raster) {
        return createCompatibleDestRaster(raster, m60344c(raster));
    }

    @Override // java.awt.image.BufferedImageOp
    public final BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        if (bufferedImage2 == null) {
            bufferedImage2 = createCompatibleDestImage(bufferedImage, m60343b(bufferedImage));
        } else if (!(bufferedImage2.getColorModel() instanceof IndexColorModel)) {
            throw new ImageFilterException("Only IndexColorModel allowed.");
        }
        filter(bufferedImage.getRaster(), bufferedImage2.getRaster(), (IndexColorModel) bufferedImage2.getColorModel());
        return bufferedImage2;
    }

    @Override // java.awt.image.BufferedImageOp
    public final Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return getBounds2D(bufferedImage.getRaster());
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public final Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        if (point2D2 == null) {
            point2D2 = new Point2D.Float();
        }
        point2D2.setLocation(point2D.getX(), point2D.getY());
        return point2D2;
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public final RenderingHints getRenderingHints() {
        return null;
    }

    public final WritableRaster createCompatibleDestRaster(Raster raster, IndexColorModel indexColorModel) {
        return indexColorModel.createCompatibleWritableRaster(raster.getWidth(), raster.getHeight());
    }

    @Override // java.awt.image.RasterOp
    public final Rectangle2D getBounds2D(Raster raster) {
        return raster.getBounds();
    }

    public CopyDither() {
        this.indexColorModel = null;
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        return filter(raster, writableRaster, m60344c(raster));
    }

    public final WritableRaster filter(Raster raster, WritableRaster writableRaster, IndexColorModel indexColorModel) {
        int width = raster.getWidth();
        int height = raster.getHeight();
        if (writableRaster == null) {
            writableRaster = createCompatibleDestRaster(raster, indexColorModel);
        }
        int[] iArr = new int[4];
        Object obj = null;
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                raster.getPixel(i2, i, iArr);
                obj = indexColorModel.getDataElements(m60341d(iArr), obj);
                writableRaster.setDataElements(i2, i, obj);
            }
        }
        return writableRaster;
    }
}
