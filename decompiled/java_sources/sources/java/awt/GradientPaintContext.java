package java.awt;

import java.awt.image.ColorModel;
import java.awt.image.DirectColorModel;
import java.awt.image.Raster;
import java.lang.ref.WeakReference;
import sun.awt.image.IntegerComponentRaster;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class GradientPaintContext implements PaintContext {
    static WeakReference<Raster> cached;
    static ColorModel cachedModel;
    boolean cyclic;

    /* renamed from: dx */
    double f97725dx;

    /* renamed from: dy */
    double f97726dy;
    int[] interp;
    ColorModel model;
    Raster saved;

    /* renamed from: x1 */
    double f97727x1;

    /* renamed from: y1 */
    double f97728y1;
    static ColorModel xrgbmodel = new DirectColorModel(24, 16711680, 65280, 255);
    static ColorModel xbgrmodel = new DirectColorModel(24, 255, 65280, 16711680);

    /* JADX WARN: Removed duplicated region for block: B:24:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GradientPaintContext(java.awt.image.ColorModel r22, java.awt.geom.Point2D r23, java.awt.geom.Point2D r24, java.awt.geom.AffineTransform r25, java.awt.Color r26, java.awt.Color r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.GradientPaintContext.<init>(java.awt.image.ColorModel, java.awt.geom.Point2D, java.awt.geom.Point2D, java.awt.geom.AffineTransform, java.awt.Color, java.awt.Color, boolean):void");
    }

    public static synchronized Raster getCachedRaster(ColorModel colorModel, int i, int i2) {
        WeakReference<Raster> weakReference;
        Raster raster;
        synchronized (GradientPaintContext.class) {
            if (colorModel != cachedModel || (weakReference = cached) == null || (raster = weakReference.get()) == null || raster.getWidth() < i || raster.getHeight() < i2) {
                return colorModel.createCompatibleWritableRaster(i, i2);
            }
            cached = null;
            return raster;
        }
    }

    public static synchronized void putCachedRaster(ColorModel colorModel, Raster raster) {
        Raster raster2;
        synchronized (GradientPaintContext.class) {
            WeakReference<Raster> weakReference = cached;
            if (weakReference != null && (raster2 = weakReference.get()) != null) {
                int width = raster2.getWidth();
                int height = raster2.getHeight();
                int width2 = raster.getWidth();
                int height2 = raster.getHeight();
                if (width >= width2 && height >= height2) {
                    return;
                }
                if (width * height >= width2 * height2) {
                    return;
                }
            }
            cachedModel = colorModel;
            cached = new WeakReference<>(raster);
        }
    }

    public void clipFillRaster(int[] iArr, int i, int i2, int i3, int i4, double d, double d2, double d3) {
        int i5;
        double d4;
        int i6;
        int i7 = i;
        int i8 = i4;
        double d5 = d;
        while (true) {
            i8--;
            if (i8 < 0) {
                return;
            }
            if (d5 <= 0.0d) {
                int i9 = this.interp[0];
                i5 = i3;
                d4 = d5;
                while (true) {
                    i6 = i7 + 1;
                    iArr[i7] = i9;
                    d4 += d2;
                    i5--;
                    if (i5 <= 0 || d4 > 0.0d) {
                        break;
                    } else {
                        i7 = i6;
                    }
                }
                i7 = i6;
            } else {
                i5 = i3;
                d4 = d5;
            }
            while (d4 < 1.0d && i5 - 1 >= 0) {
                iArr[i7] = this.interp[(int) (256.0d * d4)];
                d4 += d2;
                i7++;
            }
            if (i5 > 0) {
                int i10 = this.interp[256];
                do {
                    iArr[i7] = i10;
                    i5--;
                    i7++;
                } while (i5 > 0);
            }
            i7 += i2;
            d5 += d3;
        }
    }

    public void cycleFillRaster(int[] iArr, int i, int i2, int i3, int i4, double d, double d2, double d3) {
        int i5 = ((int) ((d % 2.0d) * 1.073741824E9d)) << 1;
        int i6 = (int) ((-d2) * (-2.147483648E9d));
        int i7 = (int) ((-d3) * (-2.147483648E9d));
        while (true) {
            i4--;
            if (i4 < 0) {
                return;
            }
            int i8 = i3;
            int i9 = i5;
            while (i8 > 0) {
                iArr[i] = this.interp[i9 >>> 23];
                i9 += i6;
                i8--;
                i++;
            }
            i += i2;
            i5 += i7;
        }
    }

    @Override // java.awt.PaintContext
    public void dispose() {
        Raster raster = this.saved;
        if (raster != null) {
            putCachedRaster(this.model, raster);
            this.saved = null;
        }
    }

    @Override // java.awt.PaintContext
    public ColorModel getColorModel() {
        return this.model;
    }

    @Override // java.awt.PaintContext
    public Raster getRaster(int i, int i2, int i3, int i4) {
        double d = ((i2 - this.f97728y1) * this.f97726dy) + ((i - this.f97727x1) * this.f97725dx);
        Raster raster = this.saved;
        if (raster == null || raster.getWidth() < i3 || raster.getHeight() < i4) {
            raster = getCachedRaster(this.model, i3, i4);
            this.saved = raster;
        }
        Raster raster2 = raster;
        IntegerComponentRaster integerComponentRaster = (IntegerComponentRaster) raster2;
        int dataOffset = integerComponentRaster.getDataOffset(0);
        int scanlineStride = integerComponentRaster.getScanlineStride() - i3;
        int[] dataStorage = integerComponentRaster.getDataStorage();
        if (this.cyclic) {
            cycleFillRaster(dataStorage, dataOffset, scanlineStride, i3, i4, d, this.f97725dx, this.f97726dy);
        } else {
            clipFillRaster(dataStorage, dataOffset, scanlineStride, i3, i4, d, this.f97725dx, this.f97726dy);
        }
        integerComponentRaster.markDirty();
        return raster2;
    }
}
