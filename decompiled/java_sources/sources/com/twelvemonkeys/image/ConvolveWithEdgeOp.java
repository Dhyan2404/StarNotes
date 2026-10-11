package com.twelvemonkeys.image;

import java.awt.AlphaComposite;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;
import java.awt.image.ConvolveOp;
import java.awt.image.ImageObserver;
import java.awt.image.Kernel;
import java.awt.image.Raster;
import java.awt.image.RasterOp;
import java.awt.image.WritableRaster;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class ConvolveWithEdgeOp implements BufferedImageOp, RasterOp {
    public static final int EDGE_NO_OP = 1;
    public static final int EDGE_REFLECT = 2;
    public static final int EDGE_WRAP = 3;
    public static final int EDGE_ZERO_FILL = 0;

    /* renamed from: a */
    public final Kernel f93931a;

    /* renamed from: b */
    public final int f93932b;

    /* renamed from: c */
    public final ConvolveOp f93933c;

    public ConvolveWithEdgeOp(Kernel kernel, int i, RenderingHints renderingHints) {
        int i2 = (i == 2 || i == 3) ? 1 : i;
        this.f93931a = kernel;
        this.f93932b = i;
        this.f93933c = new ConvolveOp(kernel, i2, renderingHints);
    }

    /* renamed from: a */
    public final BufferedImage m60340a(BufferedImage bufferedImage, int i, int i2) {
        Graphics2D graphics2D;
        BufferedImage bufferedImage2;
        if ((this.f93932b & 2) == 0) {
            return bufferedImage;
        }
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        ColorModel colorModel = bufferedImage.getColorModel();
        int i3 = width + (i * 2);
        int i4 = height + (i2 * 2);
        BufferedImage bufferedImage3 = new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(i3, i4), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
        Graphics2D createGraphics = bufferedImage3.createGraphics();
        try {
            createGraphics.setComposite(AlphaComposite.Src);
            createGraphics.setRenderingHint(RenderingHints.KEY_DITHERING, RenderingHints.VALUE_DITHER_DISABLE);
            createGraphics.drawImage(bufferedImage, i, i2, (ImageObserver) null);
            int i5 = this.f93932b;
            if (i5 == 2) {
                int i6 = i + width;
                graphics2D = createGraphics;
                bufferedImage2 = bufferedImage3;
                try {
                    createGraphics.drawImage(bufferedImage, i, 0, i6, i2, 0, 0, width, 1, null);
                    int i7 = height + i2;
                    graphics2D.drawImage(bufferedImage, (-width) + i, i2, i, i7, 0, 0, 1, height, null);
                    graphics2D.drawImage(bufferedImage, i6, i2, i3, i7, width - 1, 0, width, height, null);
                    graphics2D.drawImage(bufferedImage, i, i7, i6, i4, 0, height - 1, width, height, null);
                } catch (Throwable th) {
                    th = th;
                    graphics2D.dispose();
                    throw th;
                }
            } else {
                if (i5 != 3) {
                    throw new IllegalArgumentException("Illegal edge operation " + this.f93932b);
                }
                int i8 = (-width) + i;
                int i9 = (-height) + i2;
                createGraphics.drawImage(bufferedImage, i8, i9, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i, i9, (ImageObserver) null);
                int i10 = width + i;
                createGraphics.drawImage(bufferedImage, i10, i9, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i8, i2, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i10, i2, (ImageObserver) null);
                int i11 = height + i2;
                createGraphics.drawImage(bufferedImage, i8, i11, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i, i11, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i10, i11, (ImageObserver) null);
                graphics2D = createGraphics;
                bufferedImage2 = bufferedImage3;
            }
            graphics2D.dispose();
            return bufferedImage2;
        } catch (Throwable th2) {
            th = th2;
            graphics2D = createGraphics;
        }
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        return this.f93933c.createCompatibleDestImage(bufferedImage, colorModel);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        return this.f93933c.createCompatibleDestRaster(raster);
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        if (bufferedImage == null) {
            throw new NullPointerException("source image is null");
        }
        if (bufferedImage != bufferedImage2) {
            int width = this.f93931a.getWidth() / 2;
            int height = this.f93931a.getHeight() / 2;
            BufferedImage m60340a = m60340a(bufferedImage, width, height);
            if (m60340a.getType() == 5) {
                bufferedImage2 = ImageUtil.m60357g(bufferedImage.getWidth(), bufferedImage.getHeight(), bufferedImage.getType(), bufferedImage.getColorModel().getTransparency(), null);
            }
            BufferedImage filter = this.f93933c.filter(m60340a, bufferedImage2);
            return bufferedImage != m60340a ? filter.getSubimage(width, height, bufferedImage.getWidth(), bufferedImage.getHeight()) : filter;
        }
        throw new IllegalArgumentException("source image cannot be the same as the destination image");
    }

    @Override // java.awt.image.BufferedImageOp
    public Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return this.f93933c.getBounds2D(bufferedImage);
    }

    public int getEdgeCondition() {
        return this.f93932b;
    }

    public Kernel getKernel() {
        return this.f93933c.getKernel();
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        return this.f93933c.getPoint2D(point2D, point2D2);
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public RenderingHints getRenderingHints() {
        return this.f93933c.getRenderingHints();
    }

    @Override // java.awt.image.RasterOp
    public Rectangle2D getBounds2D(Raster raster) {
        return this.f93933c.getBounds2D(raster);
    }

    public ConvolveWithEdgeOp(Kernel kernel) {
        this(kernel, 0, null);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        return this.f93933c.filter(raster, writableRaster);
    }
}
