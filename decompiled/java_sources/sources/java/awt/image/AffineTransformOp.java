package java.awt.image;

import com.google.android.material.motion.MotionUtils;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.Hashtable;
import sun.awt.image.ImagingLib;

/* loaded from: classes5.dex */
public class AffineTransformOp implements BufferedImageOp, RasterOp {
    public static final int TYPE_BICUBIC = 3;
    public static final int TYPE_BILINEAR = 2;
    public static final int TYPE_NEAREST_NEIGHBOR = 1;
    RenderingHints hints;
    int interpolationType;
    private AffineTransform xform;

    public AffineTransformOp(AffineTransform affineTransform, RenderingHints renderingHints) {
        this.interpolationType = 1;
        validateTransform(affineTransform);
        this.xform = (AffineTransform) affineTransform.clone();
        this.hints = renderingHints;
        if (renderingHints != null) {
            Object obj = renderingHints.get(RenderingHints.KEY_INTERPOLATION);
            if (obj == null) {
                Object obj2 = renderingHints.get(RenderingHints.KEY_RENDERING);
                if (obj2 == RenderingHints.VALUE_RENDER_SPEED) {
                    this.interpolationType = 1;
                    return;
                } else {
                    if (obj2 == RenderingHints.VALUE_RENDER_QUALITY) {
                        this.interpolationType = 2;
                        return;
                    }
                    return;
                }
            }
            if (obj == RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR) {
                this.interpolationType = 1;
                return;
            } else if (obj == RenderingHints.VALUE_INTERPOLATION_BILINEAR) {
                this.interpolationType = 2;
                return;
            } else {
                if (obj == RenderingHints.VALUE_INTERPOLATION_BICUBIC) {
                    this.interpolationType = 3;
                    return;
                }
                return;
            }
        }
        this.interpolationType = 1;
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        Rectangle bounds = getBounds2D(bufferedImage).getBounds();
        int i = bounds.f97732x + bounds.width;
        int i2 = bounds.f97733y + bounds.height;
        if (i <= 0) {
            throw new RasterFormatException("Transformed width (" + i + ") is less than or equal to 0.");
        }
        if (i2 > 0) {
            if (colorModel != null) {
                return new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(i, i2), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
            }
            ColorModel colorModel2 = bufferedImage.getColorModel();
            return (this.interpolationType == 1 || !((colorModel2 instanceof IndexColorModel) || colorModel2.getTransparency() == 1)) ? new BufferedImage(colorModel2, bufferedImage.getRaster().createCompatibleWritableRaster(i, i2), colorModel2.isAlphaPremultiplied(), (Hashtable<?, ?>) null) : new BufferedImage(i, i2, 2);
        }
        throw new RasterFormatException("Transformed height (" + i2 + ") is less than or equal to 0.");
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        Rectangle2D bounds2D = getBounds2D(raster);
        return raster.createCompatibleWritableRaster((int) bounds2D.getX(), (int) bounds2D.getY(), (int) bounds2D.getWidth(), (int) bounds2D.getHeight());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e0  */
    @Override // java.awt.image.BufferedImageOp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.awt.image.BufferedImage filter(java.awt.image.BufferedImage r13, java.awt.image.BufferedImage r14) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.AffineTransformOp.filter(java.awt.image.BufferedImage, java.awt.image.BufferedImage):java.awt.image.BufferedImage");
    }

    @Override // java.awt.image.BufferedImageOp
    public final Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return getBounds2D(bufferedImage.getRaster());
    }

    public final int getInterpolationType() {
        return this.interpolationType;
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public final Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        return this.xform.transform(point2D, point2D2);
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public final RenderingHints getRenderingHints() {
        Object obj;
        if (this.hints == null) {
            int i = this.interpolationType;
            if (i == 1) {
                obj = RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR;
            } else if (i == 2) {
                obj = RenderingHints.VALUE_INTERPOLATION_BILINEAR;
            } else {
                if (i != 3) {
                    throw new InternalError("Unknown interpolation type " + this.interpolationType);
                }
                obj = RenderingHints.VALUE_INTERPOLATION_BICUBIC;
            }
            this.hints = new RenderingHints(RenderingHints.KEY_INTERPOLATION, obj);
        }
        return this.hints;
    }

    public final AffineTransform getTransform() {
        return (AffineTransform) this.xform.clone();
    }

    public void validateTransform(AffineTransform affineTransform) {
        if (Math.abs(affineTransform.getDeterminant()) > Double.MIN_VALUE) {
            return;
        }
        throw new ImagingOpException("Unable to invert transform " + affineTransform);
    }

    @Override // java.awt.image.RasterOp
    public final Rectangle2D getBounds2D(Raster raster) {
        float width = raster.getWidth();
        float height = raster.getHeight();
        float[] fArr = {0.0f, 0.0f, width, 0.0f, width, height, 0.0f, height};
        this.xform.transform(fArr, 0, fArr, 0, 4);
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = f2;
        float f4 = f;
        for (int i = 2; i < 8; i += 2) {
            float f5 = fArr[i];
            if (f5 > f4) {
                f4 = f5;
            } else if (f5 < f) {
                f = f5;
            }
            float f6 = fArr[i + 1];
            if (f6 > f3) {
                f3 = f6;
            } else if (f6 < f2) {
                f2 = f6;
            }
        }
        return new Rectangle2D.Float(f, f2, f4 - f, f3 - f2);
    }

    public AffineTransformOp(AffineTransform affineTransform, int i) {
        this.interpolationType = 1;
        validateTransform(affineTransform);
        this.xform = (AffineTransform) affineTransform.clone();
        if (i != 1 && i != 2 && i != 3) {
            throw new IllegalArgumentException("Unknown interpolation type: " + i);
        }
        this.interpolationType = i;
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        if (raster == null) {
            throw new NullPointerException("src image is null");
        }
        if (writableRaster == null) {
            writableRaster = createCompatibleDestRaster(raster);
        }
        if (raster != writableRaster) {
            if (raster.getNumBands() == writableRaster.getNumBands()) {
                if (ImagingLib.filter(this, raster, writableRaster) != null) {
                    return writableRaster;
                }
                throw new ImagingOpException("Unable to transform src image");
            }
            throw new IllegalArgumentException("Number of src bands (" + raster.getNumBands() + ") does not match number of  dst bands (" + writableRaster.getNumBands() + MotionUtils.f31762d);
        }
        throw new IllegalArgumentException("src image cannot be the same as the dst image");
    }
}
