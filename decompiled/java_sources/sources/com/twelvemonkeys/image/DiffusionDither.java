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
import java.lang.reflect.Array;
import java.util.Random;

/* loaded from: classes10.dex */
public class DiffusionDither implements BufferedImageOp, RasterOp {

    /* renamed from: b */
    public static final int f93934b = 256;

    /* renamed from: c */
    public static final Random f93935c = new Random();

    /* renamed from: a */
    public boolean f93936a;
    protected final IndexColorModel indexColorModel;

    public DiffusionDither(IndexColorModel indexColorModel) {
        this.f93936a = true;
        this.indexColorModel = indexColorModel;
    }

    /* renamed from: d */
    public static int m60345d(int[] iArr) {
        return iArr[2] | (iArr[0] << 16) | (-16777216) | (iArr[1] << 8);
    }

    /* renamed from: e */
    public static int[] m60346e(int i, int[] iArr) {
        iArr[0] = (16711680 & i) >> 16;
        iArr[1] = (65280 & i) >> 8;
        iArr[2] = i & 255;
        return iArr;
    }

    /* renamed from: a */
    public final IndexColorModel m60347a(Raster raster) {
        BufferedImage bufferedImage = new BufferedImage(raster.getWidth(), raster.getHeight(), 2);
        bufferedImage.setData(raster);
        return qji.m56703d(bufferedImage, 256, 131072);
    }

    /* renamed from: b */
    public final IndexColorModel m60348b(BufferedImage bufferedImage) {
        IndexColorModel indexColorModel = this.indexColorModel;
        return indexColorModel != null ? indexColorModel : qji.m56703d(bufferedImage, 256, 131072);
    }

    /* renamed from: c */
    public final IndexColorModel m60349c(Raster raster) {
        IndexColorModel indexColorModel = this.indexColorModel;
        return indexColorModel != null ? indexColorModel : m60347a(raster);
    }

    @Override // java.awt.image.BufferedImageOp
    public final BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        if (colorModel == null) {
            return new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), 13, m60348b(bufferedImage));
        }
        if (colorModel instanceof IndexColorModel) {
            return new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), 13, (IndexColorModel) colorModel);
        }
        throw new ImageFilterException("Only IndexColorModel allowed.");
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster createCompatibleDestRaster(Raster raster) {
        return createCompatibleDestRaster(raster, m60349c(raster));
    }

    @Override // java.awt.image.BufferedImageOp
    public final BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        if (bufferedImage2 == null) {
            bufferedImage2 = createCompatibleDestImage(bufferedImage, m60348b(bufferedImage));
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

    public void setAlternateScans(boolean z) {
        this.f93936a = z;
    }

    public final WritableRaster createCompatibleDestRaster(Raster raster, IndexColorModel indexColorModel) {
        return indexColorModel.createCompatibleWritableRaster(raster.getWidth(), raster.getHeight());
    }

    @Override // java.awt.image.RasterOp
    public final Rectangle2D getBounds2D(Raster raster) {
        return raster.getBounds();
    }

    public DiffusionDither() {
        this(null);
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        return filter(raster, writableRaster, m60349c(raster));
    }

    public final WritableRaster filter(Raster raster, WritableRaster writableRaster, IndexColorModel indexColorModel) {
        char c;
        int i;
        int i2;
        int i3;
        Raster raster2 = raster;
        int width = raster.getWidth();
        int height = raster.getHeight();
        WritableRaster createCompatibleDestRaster = writableRaster == null ? createCompatibleDestRaster(raster2, indexColorModel) : writableRaster;
        int i4 = width + 2;
        int i5 = 3;
        Class cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) cls, i4, 3);
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) cls, i4, 3);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            c = 1;
            if (i7 >= i4) {
                break;
            }
            int[] iArr3 = iArr[i7];
            Random random = f93935c;
            iArr3[0] = random.nextInt(512) - 256;
            iArr[i7][1] = random.nextInt(512) - 256;
            iArr[i7][2] = random.nextInt(512) - 256;
            i7++;
            i5 = 3;
        }
        int[] iArr4 = new int[i5];
        int[] iArr5 = new int[4];
        int[] iArr6 = new int[4];
        Object obj = null;
        int i8 = 0;
        boolean z = true;
        while (true) {
            int[][] iArr7 = iArr2;
            iArr2 = iArr;
            iArr = iArr7;
            if (i8 >= height) {
                return createCompatibleDestRaster;
            }
            int length = iArr.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                int[] iArr8 = iArr[length];
                iArr8[i6] = i6;
                iArr8[c] = i6;
                iArr8[2] = i6;
            }
            if (z) {
                i2 = width;
                i = i6;
            } else {
                i = width - 1;
                i2 = -1;
            }
            while (true) {
                raster2.getPixel(i, i8, iArr5);
                for (int i9 = i6; i9 < 3; i9++) {
                    int i10 = (((iArr5[i9] << 4) + iArr2[i + 1][i9]) + 8) >> 4;
                    iArr5[i9] = i10;
                    if (i10 > 255) {
                        iArr5[i9] = 255;
                    } else if (i10 < 0) {
                        iArr5[i9] = 0;
                    }
                }
                obj = indexColorModel.getDataElements(m60345d(iArr5), obj);
                createCompatibleDestRaster.setDataElements(i, i8, obj);
                createCompatibleDestRaster.getPixel(i, i8, iArr6);
                m60346e(indexColorModel.getRGB(iArr6[0]), iArr6);
                int i11 = iArr5[0] - iArr6[0];
                iArr4[0] = i11;
                int i12 = iArr5[1] - iArr6[1];
                iArr4[1] = i12;
                int i13 = iArr5[2] - iArr6[2];
                iArr4[2] = i13;
                if (z) {
                    int i14 = i + 2;
                    int[] iArr9 = iArr2[i14];
                    iArr9[0] = iArr9[0] + (i11 * 7);
                    iArr9[1] = iArr9[1] + (i12 * 7);
                    iArr9[2] = iArr9[2] + (i13 * 7);
                    int[] iArr10 = iArr[i];
                    iArr10[0] = iArr10[0] + (iArr4[0] * 3);
                    iArr10[1] = iArr10[1] + (iArr4[1] * 3);
                    iArr10[2] = iArr10[2] + (iArr4[2] * 3);
                    i++;
                    int[] iArr11 = iArr[i];
                    iArr11[0] = iArr11[0] + (iArr4[0] * 5);
                    iArr11[1] = iArr11[1] + (iArr4[1] * 5);
                    iArr11[2] = iArr11[2] + (iArr4[2] * 5);
                    int[] iArr12 = iArr[i14];
                    iArr12[0] = iArr12[0] + iArr4[0];
                    iArr12[1] = iArr12[1] + iArr4[1];
                    iArr12[2] = iArr12[2] + iArr4[2];
                    int i15 = i2;
                    if (i >= i15) {
                        c = 1;
                        i3 = 0;
                        break;
                    }
                    i2 = i15;
                    i6 = 0;
                    raster2 = raster;
                } else {
                    int i16 = i2;
                    int[] iArr13 = iArr2[i];
                    iArr13[0] = iArr13[0] + (i11 * 7);
                    iArr13[1] = iArr13[1] + (i12 * 7);
                    iArr13[2] = iArr13[2] + (i13 * 7);
                    int[] iArr14 = iArr[i + 2];
                    iArr14[0] = iArr14[0] + (iArr4[0] * 3);
                    iArr14[1] = iArr14[1] + (iArr4[1] * 3);
                    iArr14[2] = iArr14[2] + (iArr4[2] * 3);
                    int[] iArr15 = iArr[i + 1];
                    iArr15[0] = iArr15[0] + (iArr4[0] * 5);
                    c = 1;
                    iArr15[1] = iArr15[1] + (iArr4[1] * 5);
                    iArr15[2] = iArr15[2] + (iArr4[2] * 5);
                    int[] iArr16 = iArr[i];
                    i3 = 0;
                    iArr16[0] = iArr16[0] + iArr4[0];
                    iArr16[1] = iArr16[1] + iArr4[1];
                    iArr16[2] = iArr16[2] + iArr4[2];
                    i--;
                    if (i <= i16) {
                        break;
                    }
                    i2 = i16;
                    i6 = 0;
                    raster2 = raster;
                }
            }
            if (this.f93936a) {
                z = !z;
            }
            i8++;
            raster2 = raster;
            i6 = i3;
        }
    }
}
