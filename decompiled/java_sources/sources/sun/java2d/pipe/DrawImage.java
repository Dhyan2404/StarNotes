package sun.java2d.pipe;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;
import java.awt.image.ImageObserver;
import java.awt.image.IndexColorModel;
import java.awt.image.VolatileImage;
import java.awt.image.WritableRaster;
import sun.awt.image.BytePackedRaster;
import sun.awt.image.SurfaceManager;
import sun.java2d.InvalidPipeException;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.Blit;
import sun.java2d.loops.BlitBg;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.MaskBlit;
import sun.java2d.loops.ScaledBlit;
import sun.java2d.loops.SurfaceType;
import sun.java2d.loops.TransformHelper;

/* loaded from: classes16.dex */
public class DrawImage implements DrawImagePipe {
    private static final double MAX_TX_ERROR = 1.0E-4d;

    public static boolean closeToInteger(int i, double d) {
        return Math.abs(d - ((double) i)) < 1.0E-4d;
    }

    private ColorModel getTransformColorModel(SunGraphics2D sunGraphics2D, BufferedImage bufferedImage, AffineTransform affineTransform) {
        ColorModel colorModel = bufferedImage.getColorModel();
        if (affineTransform.isIdentity()) {
            return colorModel;
        }
        int type = affineTransform.getType();
        boolean z = (type & 56) != 0;
        if (!z && type != 1 && type != 0) {
            double[] dArr = new double[4];
            affineTransform.getMatrix(dArr);
            if (dArr[0] == ((int) r5)) {
                if (dArr[3] == ((int) r0)) {
                    z = false;
                }
            }
            z = true;
        }
        if (sunGraphics2D.renderHint == 2) {
            return ((colorModel instanceof IndexColorModel) || (z && colorModel.getTransparency() == 1)) ? ColorModel.getRGBdefault() : colorModel;
        }
        if (!(colorModel instanceof IndexColorModel)) {
            return (z && colorModel.getTransparency() == 1) ? ColorModel.getRGBdefault() : colorModel;
        }
        WritableRaster raster = bufferedImage.getRaster();
        IndexColorModel indexColorModel = (IndexColorModel) colorModel;
        if (!z || colorModel.getTransparency() != 1) {
            return colorModel;
        }
        if (raster instanceof BytePackedRaster) {
            return ColorModel.getRGBdefault();
        }
        double[] dArr2 = new double[6];
        affineTransform.getMatrix(dArr2);
        if (dArr2[1] == 0.0d && dArr2[2] == 0.0d && dArr2[4] == 0.0d && dArr2[5] == 0.0d) {
            return colorModel;
        }
        int mapSize = indexColorModel.getMapSize();
        if (mapSize >= 256) {
            return ColorModel.getRGBdefault();
        }
        int i = mapSize + 1;
        int[] iArr = new int[i];
        indexColorModel.getRGBs(iArr);
        iArr[mapSize] = 0;
        return new IndexColorModel(indexColorModel.getPixelSize(), i, iArr, 0, true, mapSize, 0);
    }

    public static boolean isBgOperation(SurfaceData surfaceData, Color color) {
        if (surfaceData != null) {
            return (color == null || surfaceData.getTransparency() == 1) ? false : true;
        }
        return true;
    }

    public static boolean isSimpleTranslate(SunGraphics2D sunGraphics2D) {
        int i = sunGraphics2D.transformState;
        if (i <= 1) {
            return true;
        }
        return i < 3 && sunGraphics2D.interpolationType == 1;
    }

    public void blitSurfaceData(SunGraphics2D sunGraphics2D, Region region, SurfaceData surfaceData, SurfaceData surfaceData2, SurfaceType surfaceType, SurfaceType surfaceType2, int i, int i2, int i3, int i4, int i5, int i6, Color color) {
        if (i5 <= 0 || i6 <= 0) {
            return;
        }
        CompositeType compositeType = sunGraphics2D.imageComp;
        if (CompositeType.SrcOverNoEa.equals(compositeType) && (surfaceData.getTransparency() == 1 || (color != null && color.getTransparency() == 1))) {
            compositeType = CompositeType.SrcNoEa;
        }
        if (isBgOperation(surfaceData, color)) {
            BlitBg.getFromCache(surfaceType, compositeType, surfaceType2).BlitBg(surfaceData, surfaceData2, sunGraphics2D.composite, region, color.getRGB(), i, i2, i3, i4, i5, i6);
        } else {
            Blit.getFromCache(surfaceType, compositeType, surfaceType2).Blit(surfaceData, surfaceData2, sunGraphics2D.composite, region, i, i2, i3, i4, i5, i6);
        }
    }

    @Override // sun.java2d.pipe.DrawImagePipe
    public boolean copyImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, int i3, int i4, int i5, int i6, Color color, ImageObserver imageObserver) {
        return false;
    }

    public BufferedImage getBufferedImage(Image image) {
        return image instanceof BufferedImage ? (BufferedImage) image : ((VolatileImage) image).getSnapshot();
    }

    public BufferedImage makeBufferedImage(Image image, Color color, int i, int i2, int i3, int i4, int i5) {
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        BufferedImage bufferedImage = new BufferedImage(i6, i7, i);
        SunGraphics2D sunGraphics2D = (SunGraphics2D) bufferedImage.createGraphics();
        sunGraphics2D.setComposite(AlphaComposite.Src);
        bufferedImage.setAccelerationPriority(0.0f);
        if (color != null) {
            sunGraphics2D.setColor(color);
            sunGraphics2D.fillRect(0, 0, i6, i7);
            sunGraphics2D.setComposite(AlphaComposite.SrcOver);
        }
        sunGraphics2D.copyImage(image, 0, 0, i2, i3, i6, i7, null, null);
        sunGraphics2D.dispose();
        return bufferedImage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    public boolean renderImageCopy(SunGraphics2D sunGraphics2D, Image image, Color color, int i, int i2, int i3, int i4, int i5, int i6) {
        SurfaceData surfaceData;
        boolean z;
        int i7;
        int i8;
        SurfaceData surfaceData2;
        ?? r15 = 0;
        Region compClip = sunGraphics2D.getCompClip();
        SurfaceData surfaceData3 = sunGraphics2D.surfaceData;
        int i9 = 0;
        while (true) {
            SurfaceData sourceSurfaceData = surfaceData3.getSourceSurfaceData(image, r15, sunGraphics2D.imageComp, color);
            if (sourceSurfaceData == null) {
                return r15;
            }
            try {
                try {
                    try {
                        i7 = 1;
                        surfaceData = surfaceData3;
                    } catch (NullPointerException e) {
                        e = e;
                        surfaceData = surfaceData3;
                    }
                } catch (InvalidPipeException unused) {
                    i7 = 1;
                }
            } catch (NullPointerException e2) {
                e = e2;
                surfaceData = surfaceData3;
                z = r15;
            }
            try {
                blitSurfaceData(sunGraphics2D, compClip, sourceSurfaceData, surfaceData3, sourceSurfaceData.getSurfaceType(), surfaceData3.getSurfaceType(), i3, i4, i, i2, i5, i6, color);
                return true;
            } catch (NullPointerException e3) {
                e = e3;
                z = false;
                if (SurfaceData.isNull(surfaceData) || SurfaceData.isNull(sourceSurfaceData)) {
                    return z;
                }
                throw e;
            } catch (InvalidPipeException unused2) {
                i8 = i9 + 1;
                compClip = sunGraphics2D.getCompClip();
                surfaceData2 = sunGraphics2D.surfaceData;
                if (SurfaceData.isNull(surfaceData2) || SurfaceData.isNull(sourceSurfaceData) || i8 > i7) {
                    return false;
                }
                i9 = i8;
                r15 = 0;
                surfaceData3 = surfaceData2;
            }
            i9 = i8;
            r15 = 0;
            surfaceData3 = surfaceData2;
        }
    }

    public boolean renderImageScale(SunGraphics2D sunGraphics2D, Image image, Color color, int i, int i2, int i3, int i4, int i5, double d, double d2, double d3, double d4) {
        SurfaceData surfaceData;
        int i6;
        SurfaceData surfaceData2;
        int i7;
        int i8;
        SunGraphics2D sunGraphics2D2 = sunGraphics2D;
        Color color2 = color;
        int i9 = 1;
        if (i != 1) {
            return false;
        }
        Region compClip = sunGraphics2D.getCompClip();
        SurfaceData surfaceData3 = sunGraphics2D2.surfaceData;
        int i10 = 0;
        while (true) {
            SurfaceData sourceSurfaceData = surfaceData3.getSourceSurfaceData(image, 3, sunGraphics2D2.imageComp, color2);
            if (sourceSurfaceData == null || isBgOperation(sourceSurfaceData, color2)) {
                break;
            }
            try {
                surfaceData = sourceSurfaceData;
                surfaceData2 = surfaceData3;
                i6 = i9;
                try {
                    return scaleSurfaceData(sunGraphics2D, compClip, sourceSurfaceData, surfaceData3, sourceSurfaceData.getSurfaceType(), surfaceData3.getSurfaceType(), i2, i3, i4, i5, d, d2, d3, d4);
                } catch (NullPointerException e) {
                    e = e;
                    if (SurfaceData.isNull(surfaceData2)) {
                        return false;
                    }
                    throw e;
                } catch (InvalidPipeException unused) {
                    i7 = i10 + 1;
                    compClip = sunGraphics2D.getCompClip();
                    i8 = i6;
                    sunGraphics2D2 = sunGraphics2D;
                    surfaceData3 = sunGraphics2D2.surfaceData;
                    if (SurfaceData.isNull(surfaceData3) || SurfaceData.isNull(surfaceData) || i7 > i8) {
                        return false;
                    }
                    color2 = color;
                    i10 = i7;
                    i9 = i8;
                }
            } catch (NullPointerException e2) {
                e = e2;
                surfaceData2 = surfaceData3;
            } catch (InvalidPipeException unused2) {
                surfaceData = sourceSurfaceData;
                i6 = i9;
            }
            color2 = color;
            i10 = i7;
            i9 = i8;
        }
        return false;
    }

    public void renderImageXform(SunGraphics2D sunGraphics2D, Image image, AffineTransform affineTransform, int i, int i2, int i3, int i4, int i5, Color color) {
        SurfaceData surfaceData;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        SurfaceData surfaceData2;
        Image image2;
        int i12;
        int i13;
        int i14;
        int i15;
        SurfaceData surfaceData3;
        TransformHelper transformHelper;
        int i16;
        int i17;
        Image image3 = image;
        try {
            AffineTransform createInverse = affineTransform.createInverse();
            int i18 = i4 - i2;
            double d = i18;
            int i19 = i5 - i3;
            double d2 = i19;
            double[] dArr = {0.0d, 0.0d, d, 0.0d, 0.0d, d2, d, d2};
            affineTransform.transform(dArr, 0, dArr, 0, 4);
            double d3 = dArr[0];
            double d4 = dArr[1];
            double d5 = d4;
            double d6 = d3;
            for (int i20 = 2; i20 < 8; i20 += 2) {
                double d7 = dArr[i20];
                if (d3 > d7) {
                    d3 = d7;
                } else if (d6 < d7) {
                    d6 = d7;
                }
                double d8 = dArr[i20 + 1];
                if (d4 > d8) {
                    d4 = d8;
                } else if (d5 < d8) {
                    d5 = d8;
                }
            }
            Region compClip = sunGraphics2D.getCompClip();
            int max = Math.max((int) Math.floor(d3), compClip.lox);
            int max2 = Math.max((int) Math.floor(d4), compClip.loy);
            int min = Math.min((int) Math.ceil(d6), compClip.hix);
            int min2 = Math.min((int) Math.ceil(d5), compClip.hiy);
            if (min <= max || min2 <= max2) {
                return;
            }
            SurfaceData surfaceData4 = sunGraphics2D.surfaceData;
            SurfaceData sourceSurfaceData = surfaceData4.getSourceSurfaceData(image3, 4, sunGraphics2D.imageComp, color);
            if (sourceSurfaceData == null && (sourceSurfaceData = surfaceData4.getSourceSurfaceData((image3 = getBufferedImage(image3)), 4, sunGraphics2D.imageComp, color)) == null) {
                return;
            }
            Image image4 = image3;
            if (isBgOperation(sourceSurfaceData, color)) {
                surfaceData = surfaceData4;
                i6 = max2;
                i7 = min2;
                i8 = min;
                i9 = max;
                BufferedImage makeBufferedImage = makeBufferedImage(image4, color, 1, i2, i3, i4, i5);
                image2 = makeBufferedImage;
                surfaceData2 = surfaceData.getSourceSurfaceData(makeBufferedImage, 4, sunGraphics2D.imageComp, color);
                i11 = i19;
                i10 = 0;
                i12 = 0;
            } else {
                surfaceData = surfaceData4;
                i6 = max2;
                i7 = min2;
                i8 = min;
                i9 = max;
                i10 = i2;
                i18 = i4;
                i11 = i5;
                surfaceData2 = sourceSurfaceData;
                image2 = image4;
                i12 = i3;
            }
            TransformHelper fromCache = TransformHelper.getFromCache(surfaceData2.getSurfaceType());
            if (fromCache == null) {
                i13 = 1;
                BufferedImage makeBufferedImage2 = makeBufferedImage(image2, null, surfaceData2.getTransparency() == 1 ? 1 : 2, i10, i12, i18, i11);
                int i21 = i18 - i10;
                SurfaceData sourceSurfaceData2 = surfaceData.getSourceSurfaceData(makeBufferedImage2, 4, sunGraphics2D.imageComp, null);
                i15 = i11 - i12;
                i16 = i21;
                i14 = 0;
                i17 = 0;
                surfaceData3 = sourceSurfaceData2;
                transformHelper = TransformHelper.getFromCache(sourceSurfaceData2.getSurfaceType());
            } else {
                i13 = 1;
                i14 = i10;
                i15 = i11;
                surfaceData3 = surfaceData2;
                transformHelper = fromCache;
                i16 = i18;
                i17 = i12;
            }
            SurfaceType surfaceType = surfaceData.getSurfaceType();
            if (sunGraphics2D.compositeState <= i13) {
                MaskBlit fromCache2 = MaskBlit.getFromCache(SurfaceType.IntArgbPre, sunGraphics2D.imageComp, surfaceType);
                if (fromCache2.getNativePrim() != 0) {
                    transformHelper.Transform(fromCache2, surfaceData3, surfaceData, sunGraphics2D.composite, compClip, createInverse, i, i14, i17, i16, i15, i9, i6, i8, i7, null, 0, 0);
                    return;
                }
            }
            int i22 = i8;
            int i23 = i9;
            int i24 = i22 - i23;
            int i25 = i7 - i6;
            SurfaceData primarySurfaceData = SurfaceData.getPrimarySurfaceData(new BufferedImage(i24, i25, 3));
            SurfaceType surfaceType2 = primarySurfaceData.getSurfaceType();
            MaskBlit fromCache3 = MaskBlit.getFromCache(SurfaceType.IntArgbPre, CompositeType.SrcNoEa, surfaceType2);
            int[] iArr = new int[(i25 * 2) + 2];
            int i26 = i6;
            transformHelper.Transform(fromCache3, surfaceData3, primarySurfaceData, AlphaComposite.Src, null, createInverse, i, i14, i17, i16, i15, 0, 0, i24, i25, iArr, i23, i26);
            Blit.getFromCache(surfaceType2, sunGraphics2D.imageComp, surfaceType).Blit(primarySurfaceData, surfaceData, sunGraphics2D.composite, compClip.getIntersection(Region.getInstance(i23, i26, i22, i7, iArr)), 0, 0, i23, i26, i24, i25);
        } catch (NoninvertibleTransformException unused) {
        }
    }

    @Override // sun.java2d.pipe.DrawImagePipe
    public boolean scaleImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver) {
        return false;
    }

    public boolean scaleSurfaceData(SunGraphics2D sunGraphics2D, Region region, SurfaceData surfaceData, SurfaceData surfaceData2, SurfaceType surfaceType, SurfaceType surfaceType2, int i, int i2, int i3, int i4, double d, double d2, double d3, double d4) {
        CompositeType compositeType = sunGraphics2D.imageComp;
        if (CompositeType.SrcOverNoEa.equals(compositeType) && surfaceData.getTransparency() == 1) {
            compositeType = CompositeType.SrcNoEa;
        }
        ScaledBlit fromCache = ScaledBlit.getFromCache(surfaceType, compositeType, surfaceType2);
        if (fromCache == null) {
            return false;
        }
        fromCache.Scale(surfaceData, surfaceData2, sunGraphics2D.composite, region, i, i2, i3, i4, d, d2, d3, d4);
        return true;
    }

    @Override // sun.java2d.pipe.DrawImagePipe
    public boolean transformImage(SunGraphics2D sunGraphics2D, Image image, AffineTransform affineTransform, ImageObserver imageObserver) {
        return false;
    }

    public boolean tryCopyOrScale(SunGraphics2D sunGraphics2D, Image image, int i, int i2, int i3, int i4, Color color, int i5, double[] dArr) {
        double d;
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        double d5 = dArr[3];
        double d6 = d4 - d2;
        double d7 = d5 - d3;
        if (d2 < -2.147483648E9d || d2 > 2.147483647E9d || d3 < -2.147483648E9d || d3 > 2.147483647E9d || d4 < -2.147483648E9d || d4 > 2.147483647E9d || d5 < -2.147483648E9d || d5 > 2.147483647E9d) {
            return false;
        }
        int i6 = i3 - i;
        if (closeToInteger(i6, d6)) {
            int i7 = i4 - i2;
            if (closeToInteger(i7, d7)) {
                d = d6;
                int floor = (int) Math.floor(d2 + 0.5d);
                int floor2 = (int) Math.floor(0.5d + d3);
                if (i5 == 1 || (closeToInteger(floor, d2) && closeToInteger(floor2, d3))) {
                    renderImageCopy(sunGraphics2D, image, color, floor, floor2, i, i2, i6, i7);
                    return true;
                }
                return d <= 0.0d && d7 > 0.0d && renderImageScale(sunGraphics2D, image, color, i5, i, i2, i3, i4, d2, d3, d4, d5);
            }
        }
        d = d6;
        if (d <= 0.0d) {
        }
    }

    @Override // sun.java2d.pipe.DrawImagePipe
    public boolean copyImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, Color color, ImageObserver imageObserver) {
        return false;
    }

    @Override // sun.java2d.pipe.DrawImagePipe
    public boolean scaleImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, int i3, int i4, Color color, ImageObserver imageObserver) {
        return false;
    }

    public void transformImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, AffineTransform affineTransform, int i3) {
        int type = affineTransform.getType();
        int width = image.getWidth(null);
        int height = image.getHeight(null);
        int i4 = sunGraphics2D.transformState;
        boolean z = false;
        if (i4 <= 2 && (type == 0 || type == 1)) {
            double translateX = affineTransform.getTranslateX();
            double translateY = affineTransform.getTranslateY();
            double translateX2 = translateX + sunGraphics2D.transform.getTranslateX();
            double translateY2 = translateY + sunGraphics2D.transform.getTranslateY();
            int floor = (int) Math.floor(translateX2 + 0.5d);
            int floor2 = (int) Math.floor(0.5d + translateY2);
            if (i3 == 1 || (closeToInteger(floor, translateX2) && closeToInteger(floor2, translateY2))) {
                renderImageCopy(sunGraphics2D, image, null, i + floor, floor2 + i2, 0, 0, width, height);
                return;
            }
        } else if (i4 > 3 || (type & 120) != 0) {
            z = true;
        } else {
            double[] dArr = {0.0d, 0.0d, width, height};
            affineTransform.transform(dArr, 0, dArr, 0, 2);
            double d = i;
            dArr[0] = dArr[0] + d;
            double d2 = i2;
            dArr[1] = dArr[1] + d2;
            dArr[2] = dArr[2] + d;
            dArr[3] = dArr[3] + d2;
            sunGraphics2D.transform.transform(dArr, 0, dArr, 0, 2);
            if (tryCopyOrScale(sunGraphics2D, image, 0, 0, width, height, null, i3, dArr)) {
                return;
            }
        }
        AffineTransform affineTransform2 = new AffineTransform(sunGraphics2D.transform);
        affineTransform2.translate(i, i2);
        affineTransform2.concatenate(affineTransform);
        if (z) {
            transformImage(sunGraphics2D, image, affineTransform2, i3, 0, 0, width, height, null);
        } else {
            renderImageXform(sunGraphics2D, image, affineTransform2, i3, 0, 0, width, height, null);
        }
    }

    public boolean copyImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, Color color) {
        AffineTransform affineTransform;
        int width = image.getWidth(null);
        int height = image.getHeight(null);
        if (isSimpleTranslate(sunGraphics2D)) {
            return renderImageCopy(sunGraphics2D, image, color, sunGraphics2D.transX + i, i2 + sunGraphics2D.transY, 0, 0, width, height);
        }
        AffineTransform affineTransform2 = sunGraphics2D.transform;
        if ((i | i2) != 0) {
            AffineTransform affineTransform3 = new AffineTransform(affineTransform2);
            affineTransform3.translate(i, i2);
            affineTransform = affineTransform3;
        } else {
            affineTransform = affineTransform2;
        }
        transformImage(sunGraphics2D, image, affineTransform, sunGraphics2D.interpolationType, 0, 0, width, height, color);
        return true;
    }

    public boolean scaleImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, int i3, int i4, Color color) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        AffineTransform affineTransform;
        int width = image.getWidth(null);
        int height = image.getHeight(null);
        if (i3 <= 0 || i4 <= 0 || !isSimpleTranslate(sunGraphics2D)) {
            i5 = height;
            i6 = width;
        } else {
            double d = sunGraphics2D.transX + i;
            double d2 = sunGraphics2D.transY + i2;
            i6 = width;
            i5 = height;
            if (renderImageScale(sunGraphics2D, image, color, sunGraphics2D.interpolationType, 0, 0, i6, i5, d, d2, d + i3, d2 + i4)) {
                return true;
            }
        }
        AffineTransform affineTransform2 = sunGraphics2D.transform;
        if ((i | i2) == 0) {
            i7 = i3;
            i9 = i6;
            i8 = i4;
            i10 = i5;
            if (i7 == i9 && i8 == i10) {
                affineTransform = affineTransform2;
                transformImage(sunGraphics2D, image, affineTransform, sunGraphics2D.interpolationType, 0, 0, i9, i10, color);
                return true;
            }
        } else {
            i7 = i3;
            i8 = i4;
            i9 = i6;
            i10 = i5;
        }
        AffineTransform affineTransform3 = new AffineTransform(affineTransform2);
        affineTransform3.translate(i, i2);
        affineTransform3.scale(i7 / i9, i8 / i10);
        affineTransform = affineTransform3;
        transformImage(sunGraphics2D, image, affineTransform, sunGraphics2D.interpolationType, 0, 0, i9, i10, color);
        return true;
    }

    public boolean copyImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, int i3, int i4, int i5, int i6, Color color) {
        if (isSimpleTranslate(sunGraphics2D)) {
            return renderImageCopy(sunGraphics2D, image, color, i + sunGraphics2D.transX, i2 + sunGraphics2D.transY, i3, i4, i5, i6);
        }
        scaleImage(sunGraphics2D, image, i, i2, i + i5, i2 + i6, i3, i4, i3 + i5, i4 + i6, color);
        return true;
    }

    public boolean scaleImage(SunGraphics2D sunGraphics2D, Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color) {
        int i9;
        int i10;
        boolean z;
        int i11;
        int i12;
        boolean z2;
        int i13;
        int i14;
        boolean z3;
        boolean z4;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        if (i7 > i5) {
            i9 = i5;
            i10 = i7 - i5;
            z = false;
        } else {
            i9 = i7;
            i10 = i5 - i7;
            z = true;
        }
        if (i8 > i6) {
            i12 = i6;
            i11 = i8 - i6;
            z2 = false;
        } else {
            i11 = i6 - i8;
            i12 = i8;
            z2 = true;
        }
        if (i3 > i) {
            i13 = i3 - i;
            i14 = i;
            z3 = false;
        } else {
            i13 = i - i3;
            i14 = i3;
            z3 = true;
        }
        if (i4 > i2) {
            z4 = false;
            i16 = i4 - i2;
            i15 = i2;
        } else {
            z4 = true;
            i15 = i4;
            i16 = i2 - i4;
        }
        if (i10 > 0 && i11 > 0) {
            if (z == z3 && z2 == z4 && isSimpleTranslate(sunGraphics2D)) {
                double d = i14 + sunGraphics2D.transX;
                double d2 = i15 + sunGraphics2D.transY;
                double d3 = d + i13;
                int i20 = i9;
                int i21 = i12;
                i17 = i20;
                i18 = i21;
                if (renderImageScale(sunGraphics2D, image, color, sunGraphics2D.interpolationType, i20, i21, i20 + i10, i21 + i11, d, d2, d3, d2 + i16)) {
                    return true;
                }
            } else {
                i17 = i9;
                i18 = i12;
            }
            AffineTransform affineTransform = new AffineTransform(sunGraphics2D.transform);
            affineTransform.translate(i, i2);
            affineTransform.scale((i3 - i) / (i7 - i5), (i4 - i2) / (i8 - i6));
            int i22 = i17;
            int i23 = i18;
            affineTransform.translate(i22 - i5, i23 - i6);
            int imageScale = SurfaceManager.getImageScale(image);
            int width = image.getWidth(null) * imageScale;
            int height = image.getHeight(null) * imageScale;
            int i24 = i10 + i22;
            int i25 = i11 + i23;
            int i26 = i24 > width ? width : i24;
            if (i25 > height) {
                i25 = height;
            }
            if (i22 < 0) {
                affineTransform.translate(-i22, 0.0d);
                i19 = 0;
            } else {
                i19 = i22;
            }
            if (i23 < 0) {
                affineTransform.translate(0.0d, -i23);
                i23 = 0;
            }
            if (i19 < i26 && i23 < i25) {
                transformImage(sunGraphics2D, image, affineTransform, sunGraphics2D.interpolationType, i19, i23, i26, i25, color);
            }
        }
        return true;
    }

    public void transformImage(SunGraphics2D sunGraphics2D, Image image, AffineTransform affineTransform, int i, int i2, int i3, int i4, int i5, Color color) {
        double d = i5 - i3;
        double[] dArr = {0.0d, 0.0d, i4 - i2, d, 0.0d, d};
        affineTransform.transform(dArr, 0, dArr, 0, 3);
        if (Math.abs(dArr[0] - dArr[4]) >= 1.0E-4d || Math.abs(dArr[3] - dArr[5]) >= 1.0E-4d || !tryCopyOrScale(sunGraphics2D, image, i2, i3, i4, i5, color, i, dArr)) {
            renderImageXform(sunGraphics2D, image, affineTransform, i, i2, i3, i4, i5, color);
        }
    }

    @Override // sun.java2d.pipe.DrawImagePipe
    public void transformImage(SunGraphics2D sunGraphics2D, BufferedImage bufferedImage, BufferedImageOp bufferedImageOp, int i, int i2) {
        if (bufferedImageOp != null) {
            if (bufferedImageOp instanceof AffineTransformOp) {
                AffineTransformOp affineTransformOp = (AffineTransformOp) bufferedImageOp;
                transformImage(sunGraphics2D, bufferedImage, i, i2, affineTransformOp.getTransform(), affineTransformOp.getInterpolationType());
                return;
            }
            bufferedImage = bufferedImageOp.filter(bufferedImage, null);
        }
        copyImage(sunGraphics2D, bufferedImage, i, i2, null);
    }
}
