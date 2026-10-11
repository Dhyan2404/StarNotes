package java.awt.image;

import com.google.android.material.motion.MotionUtils;
import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.Hashtable;
import sun.awt.image.ImagingLib;

/* loaded from: classes5.dex */
public class LookupOp implements BufferedImageOp, RasterOp {
    RenderingHints hints;
    private LookupTable ltable;
    private int numComponents;

    public LookupOp(LookupTable lookupTable, RenderingHints renderingHints) {
        this.ltable = lookupTable;
        this.hints = renderingHints;
        this.numComponents = lookupTable.getNumComponents();
    }

    private final void byteFilter(ByteLookupTable byteLookupTable, Raster raster, WritableRaster writableRaster, int i, int i2, int i3) {
        byte[][] table = byteLookupTable.getTable();
        int offset = byteLookupTable.getOffset();
        int i4 = table.length == 1 ? 0 : 1;
        int length = table[0].length;
        int[] iArr = null;
        int i5 = 0;
        while (i5 < i2) {
            int i6 = 0;
            int i7 = 0;
            int[] iArr2 = iArr;
            while (i6 < i3) {
                int[] samples = raster.getSamples(0, i5, i, 1, i6, iArr2);
                for (int i8 = 0; i8 < i; i8++) {
                    int i9 = samples[i8] - offset;
                    if (i9 < 0 || i9 > length) {
                        throw new IllegalArgumentException("index (" + i9 + "(out of range:  srcPix[" + i8 + "]=" + samples[i8] + " offset=" + offset);
                    }
                    samples[i8] = table[i7][i9];
                }
                iArr2 = samples;
                writableRaster.setSamples(0, i5, i, 1, i6, iArr2);
                i6++;
                i7 += i4;
            }
            i5++;
            iArr = iArr2;
        }
    }

    private final void shortFilter(ShortLookupTable shortLookupTable, Raster raster, WritableRaster writableRaster, int i, int i2, int i3) {
        short[][] table = shortLookupTable.getTable();
        int offset = shortLookupTable.getOffset();
        int i4 = table.length == 1 ? 0 : 1;
        int[] iArr = null;
        int i5 = 0;
        while (i5 < i2) {
            int[] iArr2 = iArr;
            int i6 = 0;
            int i7 = 0;
            while (i6 < i3) {
                int[] samples = raster.getSamples(0, i5, i, 1, i6, iArr2);
                for (int i8 = 0; i8 < i; i8++) {
                    int i9 = samples[i8] - offset;
                    if (i9 < 0 || i9 > 65535) {
                        throw new IllegalArgumentException("index out of range " + i9 + " x is " + i8 + "srcPix[x]=" + samples[i8] + " offset=" + offset);
                    }
                    samples[i8] = table[i7][i9];
                }
                iArr2 = samples;
                writableRaster.setSamples(0, i5, i, 1, i6, iArr2);
                i6++;
                i7 += i4;
            }
            i5++;
            iArr = iArr2;
        }
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        int[] iArr;
        int[] iArr2;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        if (colorModel != null) {
            return new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(width, height), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
        }
        ColorModel colorModel2 = bufferedImage.getColorModel();
        WritableRaster raster = bufferedImage.getRaster();
        if (colorModel2 instanceof ComponentColorModel) {
            DataBuffer dataBuffer = raster.getDataBuffer();
            boolean hasAlpha = colorModel2.hasAlpha();
            boolean isAlphaPremultiplied = colorModel2.isAlphaPremultiplied();
            int transparency = colorModel2.getTransparency();
            LookupTable lookupTable = this.ltable;
            int i = 0;
            if (lookupTable instanceof ByteLookupTable) {
                if (dataBuffer.getDataType() == 1) {
                    if (hasAlpha) {
                        iArr = new int[2];
                        if (transparency == 2) {
                            iArr[1] = 1;
                        } else {
                            iArr[1] = 8;
                        }
                    } else {
                        iArr = new int[1];
                    }
                    iArr[0] = 8;
                    iArr2 = iArr;
                }
                iArr2 = null;
            } else {
                if (lookupTable instanceof ShortLookupTable) {
                    if (dataBuffer.getDataType() == 0) {
                        if (hasAlpha) {
                            iArr = new int[2];
                            if (transparency == 2) {
                                iArr[1] = 1;
                            } else {
                                iArr[1] = 16;
                            }
                        } else {
                            iArr = new int[1];
                        }
                        iArr[0] = 16;
                        i = 1;
                        iArr2 = iArr;
                    } else {
                        i = 1;
                    }
                }
                iArr2 = null;
            }
            if (iArr2 != null) {
                colorModel2 = new ComponentColorModel(colorModel2.getColorSpace(), iArr2, hasAlpha, isAlphaPremultiplied, transparency, i);
            }
        }
        return new BufferedImage(colorModel2, colorModel2.createCompatibleWritableRaster(width, height), colorModel2.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        return raster.createCompatibleWritableRaster();
    }

    @Override // java.awt.image.BufferedImageOp
    public final BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        ColorModel colorModel;
        boolean z;
        BufferedImage bufferedImage3;
        int i;
        ColorModel colorModel2 = bufferedImage.getColorModel();
        int numColorComponents = colorModel2.getNumColorComponents();
        if (!(colorModel2 instanceof IndexColorModel)) {
            int numComponents = this.ltable.getNumComponents();
            if (numComponents != 1 && numComponents != colorModel2.getNumComponents() && numComponents != colorModel2.getNumColorComponents()) {
                throw new IllegalArgumentException("Number of arrays in the  lookup table (" + numComponents + " is not compatible with the  src image: " + bufferedImage);
            }
            int width = bufferedImage.getWidth();
            int height = bufferedImage.getHeight();
            if (bufferedImage2 == null) {
                bufferedImage3 = createCompatibleDestImage(bufferedImage, null);
                colorModel = colorModel2;
                z = false;
            } else if (width == bufferedImage2.getWidth()) {
                if (height == bufferedImage2.getHeight()) {
                    ColorModel colorModel3 = bufferedImage2.getColorModel();
                    if (colorModel2.getColorSpace().getType() != colorModel3.getColorSpace().getType()) {
                        z = true;
                        colorModel = colorModel3;
                        bufferedImage3 = createCompatibleDestImage(bufferedImage, null);
                    } else {
                        colorModel = colorModel3;
                        z = false;
                        bufferedImage3 = bufferedImage2;
                    }
                } else {
                    throw new IllegalArgumentException("Src height (" + height + ") not equal to dst height (" + bufferedImage2.getHeight() + MotionUtils.f31762d);
                }
            } else {
                throw new IllegalArgumentException("Src width (" + width + ") not equal to dst width (" + bufferedImage2.getWidth() + MotionUtils.f31762d);
            }
            if (ImagingLib.filter(this, bufferedImage, bufferedImage3) == null) {
                WritableRaster raster = bufferedImage.getRaster();
                WritableRaster raster2 = bufferedImage3.getRaster();
                if (colorModel2.hasAlpha() && (numColorComponents - 1 == numComponents || numComponents == 1)) {
                    int minX = raster.getMinX();
                    int minY = raster.getMinY();
                    int[] iArr = new int[i];
                    for (int i2 = 0; i2 < i; i2++) {
                        iArr[i2] = i2;
                    }
                    raster = raster.createWritableChild(minX, minY, raster.getWidth(), raster.getHeight(), minX, minY, iArr);
                }
                if (colorModel.hasAlpha() && (raster2.getNumBands() - 1 == numComponents || numComponents == 1)) {
                    int minX2 = raster2.getMinX();
                    int minY2 = raster2.getMinY();
                    int i3 = numColorComponents - 1;
                    int[] iArr2 = new int[i3];
                    for (int i4 = 0; i4 < i3; i4++) {
                        iArr2[i4] = i4;
                    }
                    raster2 = raster2.createWritableChild(minX2, minY2, raster2.getWidth(), raster2.getHeight(), minX2, minY2, iArr2);
                }
                filter(raster, raster2);
            }
            if (z) {
                new ColorConvertOp(this.hints).filter(bufferedImage3, bufferedImage3);
            }
            return bufferedImage3;
        }
        throw new IllegalArgumentException("LookupOp cannot be performed on an indexed image");
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
        return this.hints;
    }

    public final LookupTable getTable() {
        return this.ltable;
    }

    @Override // java.awt.image.RasterOp
    public final Rectangle2D getBounds2D(Raster raster) {
        return raster.getBounds();
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        int numBands = raster.getNumBands();
        writableRaster.getNumBands();
        int height = raster.getHeight();
        int width = raster.getWidth();
        int[] iArr = new int[numBands];
        if (height == writableRaster.getHeight() && width == writableRaster.getWidth()) {
            int numBands2 = writableRaster.getNumBands();
            if (numBands == numBands2) {
                int numComponents = this.ltable.getNumComponents();
                if (numComponents != 1 && numComponents != raster.getNumBands()) {
                    throw new IllegalArgumentException("Number of arrays in the  lookup table (" + numComponents + " is not compatible with the  src Raster: " + raster);
                }
                if (ImagingLib.filter(this, raster, writableRaster) != null) {
                    return writableRaster;
                }
                LookupTable lookupTable = this.ltable;
                if (lookupTable instanceof ByteLookupTable) {
                    byteFilter((ByteLookupTable) lookupTable, raster, writableRaster, width, height, numBands);
                } else if (lookupTable instanceof ShortLookupTable) {
                    shortFilter((ShortLookupTable) lookupTable, raster, writableRaster, width, height, numBands);
                } else {
                    int minX = raster.getMinX();
                    int minY = raster.getMinY();
                    int minX2 = writableRaster.getMinX();
                    int minY2 = writableRaster.getMinY();
                    int i = 0;
                    while (i < height) {
                        int i2 = minX;
                        int i3 = minX2;
                        int i4 = 0;
                        while (i4 < width) {
                            raster.getPixel(i2, minY, iArr);
                            this.ltable.lookupPixel(iArr, iArr);
                            writableRaster.setPixel(i3, minY2, iArr);
                            i4++;
                            i2++;
                            i3++;
                        }
                        i++;
                        minY++;
                        minY2++;
                    }
                }
                return writableRaster;
            }
            throw new IllegalArgumentException("Number of channels in the src (" + numBands + ") does not match number of channels in the destination (" + numBands2 + MotionUtils.f31762d);
        }
        throw new IllegalArgumentException("Width or height of Rasters do not match");
    }
}
