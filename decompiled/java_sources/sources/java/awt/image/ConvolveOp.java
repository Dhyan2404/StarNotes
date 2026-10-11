package java.awt.image;

import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import sun.awt.image.ImagingLib;

/* loaded from: classes5.dex */
public class ConvolveOp implements BufferedImageOp, RasterOp {
    public static final int EDGE_NO_OP = 1;
    public static final int EDGE_ZERO_FILL = 0;
    int edgeHint;
    RenderingHints hints;
    Kernel kernel;

    public ConvolveOp(Kernel kernel, int i, RenderingHints renderingHints) {
        this.kernel = kernel;
        this.edgeHint = i;
        this.hints = renderingHints;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // java.awt.image.BufferedImageOp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.awt.image.BufferedImage createCompatibleDestImage(java.awt.image.BufferedImage r4, java.awt.image.ColorModel r5) {
        /*
            r3 = this;
            int r3 = r4.getWidth()
            int r0 = r4.getHeight()
            r1 = 0
            if (r5 != 0) goto L21
            java.awt.image.ColorModel r5 = r4.getColorModel()
            boolean r2 = r5 instanceof java.awt.image.IndexColorModel
            if (r2 == 0) goto L18
            java.awt.image.ColorModel r5 = java.awt.image.ColorModel.getRGBdefault()
            goto L21
        L18:
            java.awt.image.Raster r4 = r4.getData()
            java.awt.image.WritableRaster r4 = r4.createCompatibleWritableRaster(r3, r0)
            goto L22
        L21:
            r4 = r1
        L22:
            if (r4 != 0) goto L28
            java.awt.image.WritableRaster r4 = r5.createCompatibleWritableRaster(r3, r0)
        L28:
            java.awt.image.BufferedImage r3 = new java.awt.image.BufferedImage
            boolean r0 = r5.isAlphaPremultiplied()
            r3.<init>(r5, r4, r0, r1)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.ConvolveOp.createCompatibleDestImage(java.awt.image.BufferedImage, java.awt.image.ColorModel):java.awt.image.BufferedImage");
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        return raster.createCompatibleWritableRaster();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    @Override // java.awt.image.BufferedImageOp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.awt.image.BufferedImage filter(java.awt.image.BufferedImage r7, java.awt.image.BufferedImage r8) {
        /*
            r6 = this;
            if (r7 == 0) goto L8a
            if (r7 == r8) goto L82
            java.awt.image.ColorModel r0 = r7.getColorModel()
            boolean r1 = r0 instanceof java.awt.image.IndexColorModel
            r2 = 0
            if (r1 == 0) goto L1b
            java.awt.image.IndexColorModel r0 = (java.awt.image.IndexColorModel) r0
            java.awt.image.WritableRaster r7 = r7.getRaster()
            java.awt.image.BufferedImage r7 = r0.convertToIntDiscrete(r7, r2)
            java.awt.image.ColorModel r0 = r7.getColorModel()
        L1b:
            r1 = 0
            if (r8 != 0) goto L25
            java.awt.image.BufferedImage r8 = r6.createCompatibleDestImage(r7, r1)
        L22:
            r0 = r8
            r3 = r2
            goto L54
        L25:
            java.awt.image.ColorModel r3 = r8.getColorModel()
            java.awt.color.ColorSpace r0 = r0.getColorSpace()
            int r0 = r0.getType()
            java.awt.color.ColorSpace r4 = r3.getColorSpace()
            int r4 = r4.getType()
            if (r0 == r4) goto L47
            java.awt.image.BufferedImage r0 = r6.createCompatibleDestImage(r7, r1)
            r0.getColorModel()
            r3 = 1
        L43:
            r5 = r0
            r0 = r8
            r8 = r5
            goto L54
        L47:
            boolean r0 = r3 instanceof java.awt.image.IndexColorModel
            if (r0 == 0) goto L22
            java.awt.image.BufferedImage r0 = r6.createCompatibleDestImage(r7, r1)
            r0.getColorModel()
            r3 = r2
            goto L43
        L54:
            java.awt.image.BufferedImage r7 = sun.awt.image.ImagingLib.filter(r6, r7, r8)
            if (r7 == 0) goto L7a
            if (r3 == 0) goto L67
            java.awt.image.ColorConvertOp r7 = new java.awt.image.ColorConvertOp
            java.awt.RenderingHints r6 = r6.hints
            r7.<init>(r6)
            r7.filter(r8, r0)
            goto L79
        L67:
            if (r0 == r8) goto L79
            java.awt.Graphics2D r6 = r0.createGraphics()
            r6.drawImage(r8, r2, r2, r1)     // Catch: java.lang.Throwable -> L74
            r6.dispose()
            goto L79
        L74:
            r7 = move-exception
            r6.dispose()
            throw r7
        L79:
            return r0
        L7a:
            java.awt.image.ImagingOpException r6 = new java.awt.image.ImagingOpException
            java.lang.String r7 = "Unable to convolve src image"
            r6.<init>(r7)
            throw r6
        L82:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "src image cannot be the same as the dst image"
            r6.<init>(r7)
            throw r6
        L8a:
            java.lang.NullPointerException r6 = new java.lang.NullPointerException
            java.lang.String r7 = "src image is null"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.ConvolveOp.filter(java.awt.image.BufferedImage, java.awt.image.BufferedImage):java.awt.image.BufferedImage");
    }

    @Override // java.awt.image.BufferedImageOp
    public final Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return getBounds2D(bufferedImage.getRaster());
    }

    public int getEdgeCondition() {
        return this.edgeHint;
    }

    public final Kernel getKernel() {
        return (Kernel) this.kernel.clone();
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
        return this.hints;
    }

    @Override // java.awt.image.RasterOp
    public final Rectangle2D getBounds2D(Raster raster) {
        return raster.getBounds();
    }

    public ConvolveOp(Kernel kernel) {
        this.kernel = kernel;
        this.edgeHint = 0;
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        if (writableRaster == null) {
            writableRaster = createCompatibleDestRaster(raster);
        } else if (raster != writableRaster) {
            if (raster.getNumBands() != writableRaster.getNumBands()) {
                throw new ImagingOpException("Different number of bands in src  and dst Rasters");
            }
        } else {
            throw new IllegalArgumentException("src image cannot be the same as the dst image");
        }
        if (ImagingLib.filter(this, raster, writableRaster) != null) {
            return writableRaster;
        }
        throw new ImagingOpException("Unable to convolve src image");
    }
}
