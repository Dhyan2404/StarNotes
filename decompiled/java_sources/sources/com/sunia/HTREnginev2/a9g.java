package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.Validate;
import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.Raster;
import java.awt.image.RasterOp;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.awt.image.WritableRaster;

/* loaded from: classes10.dex */
public class a9g implements RasterOp {
    /* renamed from: a */
    public final void m52981a(byte[] bArr, byte[] bArr2) {
        int i = bArr[3] & 255;
        int i2 = 255 - i;
        bArr2[0] = (byte) (255 - ((((bArr[0] & 255) * i2) / 255) + i));
        bArr2[1] = (byte) (255 - ((((bArr[1] & 255) * i2) / 255) + i));
        bArr2[2] = (byte) (255 - ((((bArr[2] & 255) * i2) / 255) + i));
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        return raster.createCompatibleWritableRaster().createWritableChild(0, 0, raster.getWidth(), raster.getHeight(), 0, 0, new int[]{0, 1, 2});
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        WritableRaster writableRaster2 = writableRaster;
        Validate.notNull(raster, "src may not be null");
        char c = 0;
        Validate.isTrue(raster != writableRaster2, "src and dest raster may not be same");
        Validate.isTrue(raster.getTransferType() == 0, raster, "only TYPE_BYTE rasters supported as src: %s");
        Validate.isTrue(raster.getNumDataElements() >= 4, Integer.valueOf(raster.getNumDataElements()), "CMYK raster must have at least 4 data elements: %s");
        if (writableRaster2 == null) {
            writableRaster2 = createCompatibleDestRaster(raster);
        } else {
            Validate.isTrue((writableRaster.getTransferType() == 0 && writableRaster.getNumDataElements() >= 3) || (writableRaster.getTransferType() == 3 && writableRaster.getNumDataElements() == 1), raster, "only 3 or 4 byte TYPE_BYTE or 1 int TYPE_INT rasters supported as dest: %s");
        }
        int height = raster.getHeight();
        int width = raster.getWidth();
        byte[] bArr = new byte[raster.getNumDataElements()];
        if (writableRaster2.getTransferType() == 0) {
            int numDataElements = writableRaster2.getNumDataElements();
            byte[] bArr2 = new byte[numDataElements];
            if (numDataElements > 3) {
                bArr2[3] = -1;
            }
            for (int minY = writableRaster2.getMinY(); minY < height; minY++) {
                for (int minX = writableRaster2.getMinX(); minX < width; minX++) {
                    raster.getDataElements(minX, minY, bArr);
                    m52981a(bArr, bArr2);
                    writableRaster2.setDataElements(minX, minY, bArr2);
                }
            }
        } else {
            if (writableRaster2.getTransferType() != 3) {
                throw new AssertionError();
            }
            int[] iArr = new int[writableRaster2.getNumDataElements()];
            byte[] bArr3 = new byte[3];
            SampleModel sampleModel = writableRaster2.getSampleModel();
            int[] bitOffsets = sampleModel instanceof SinglePixelPackedSampleModel ? ((SinglePixelPackedSampleModel) sampleModel).getBitOffsets() : new int[]{0, 8, 16};
            int i = bitOffsets.length > 3 ? 255 : 0;
            for (int minY2 = writableRaster2.getMinY(); minY2 < height; minY2++) {
                int minX2 = writableRaster2.getMinX();
                while (minX2 < width) {
                    raster.getDataElements(minX2, minY2, bArr);
                    m52981a(bArr, bArr3);
                    iArr[0] = ((bArr3[1] & 255) << bitOffsets[1]) | ((bArr3[c] & 255) << bitOffsets[c]) | (i << 24) | ((bArr3[2] & 255) << bitOffsets[2]);
                    writableRaster2.setDataElements(minX2, minY2, iArr);
                    minX2++;
                    c = 0;
                }
            }
        }
        return writableRaster2;
    }

    @Override // java.awt.image.RasterOp
    public Rectangle2D getBounds2D(Raster raster) {
        return raster.getBounds();
    }

    @Override // java.awt.image.RasterOp
    public Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        if (point2D2 == null) {
            return new Point2D.Double(point2D.getX(), point2D.getY());
        }
        point2D2.setLocation(point2D);
        return point2D2;
    }

    @Override // java.awt.image.RasterOp
    public RenderingHints getRenderingHints() {
        return null;
    }
}
