package com.twelvemonkeys.image;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;
import java.awt.image.ImagingOpException;
import java.awt.image.Raster;
import java.awt.image.RasterOp;
import java.awt.image.WritableRaster;

/* loaded from: classes10.dex */
public class AffineTransformOp implements BufferedImageOp, RasterOp {
    public static final int TYPE_BICUBIC = 3;
    public static final int TYPE_BILINEAR = 2;
    public static final int TYPE_NEAREST_NEIGHBOR = 1;

    /* renamed from: a */
    public final java.awt.image.AffineTransformOp f93901a;

    public AffineTransformOp(AffineTransform affineTransform, RenderingHints renderingHints) {
        this.f93901a = new java.awt.image.AffineTransformOp(affineTransform, renderingHints);
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        return this.f93901a.createCompatibleDestImage(bufferedImage, colorModel);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        return this.f93901a.createCompatibleDestRaster(raster);
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        try {
            return this.f93901a.filter(bufferedImage, bufferedImage2);
        } catch (ImagingOpException unused) {
            if (bufferedImage2 == null) {
                bufferedImage2 = this.createCompatibleDestImage(bufferedImage, bufferedImage.getColorModel());
            }
            Graphics2D graphics2D = null;
            try {
                Graphics2D createGraphics = bufferedImage2.createGraphics();
                try {
                    int interpolationType = this.f93901a.getInterpolationType();
                    if (interpolationType > 0) {
                        Object obj = RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR;
                        if (interpolationType == 2) {
                            obj = RenderingHints.VALUE_INTERPOLATION_BILINEAR;
                        } else if (interpolationType == 3) {
                            obj = RenderingHints.VALUE_INTERPOLATION_BICUBIC;
                        }
                        createGraphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION, obj);
                    } else if (this.getRenderingHints() != null) {
                        createGraphics.setRenderingHints(this.getRenderingHints());
                    }
                    createGraphics.drawImage(bufferedImage, this.f93901a.getTransform(), null);
                    createGraphics.dispose();
                    return bufferedImage2;
                } catch (Throwable th) {
                    th = th;
                    graphics2D = createGraphics;
                    if (graphics2D != null) {
                        graphics2D.dispose();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // java.awt.image.BufferedImageOp
    public Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return this.f93901a.getBounds2D(bufferedImage);
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        return this.f93901a.getPoint2D(point2D, point2D2);
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public RenderingHints getRenderingHints() {
        return this.f93901a.getRenderingHints();
    }

    @Override // java.awt.image.RasterOp
    public Rectangle2D getBounds2D(Raster raster) {
        return this.f93901a.getBounds2D(raster);
    }

    public AffineTransformOp(AffineTransform affineTransform, int i) {
        this.f93901a = new java.awt.image.AffineTransformOp(affineTransform, i);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        return this.f93901a.filter(raster, writableRaster);
    }
}
