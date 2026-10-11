package java.awt.image;

import java.awt.Point;
import java.awt.Rectangle;

/* loaded from: classes5.dex */
public class WritableRaster extends Raster {
    public WritableRaster(SampleModel sampleModel, Point point) {
        this(sampleModel, sampleModel.createDataBuffer(), new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public WritableRaster createWritableChild(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        int i7 = this.minX;
        if (i < i7) {
            throw new RasterFormatException("parentX lies outside raster");
        }
        int i8 = this.minY;
        if (i2 < i8) {
            throw new RasterFormatException("parentY lies outside raster");
        }
        int i9 = i + i3;
        if (i9 < i || i9 > this.width + i7) {
            throw new RasterFormatException("(parentX + width) is outside raster");
        }
        int i10 = i2 + i4;
        if (i10 < i2 || i10 > this.height + i8) {
            throw new RasterFormatException("(parentY + height) is outside raster");
        }
        return new WritableRaster(iArr != null ? this.sampleModel.createSubsetSampleModel(iArr) : this.sampleModel, getDataBuffer(), new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
    }

    public WritableRaster createWritableTranslatedChild(int i, int i2) {
        return createWritableChild(this.minX, this.minY, this.width, this.height, i, i2, null);
    }

    public WritableRaster getWritableParent() {
        return (WritableRaster) this.parent;
    }

    public void setDataElements(int i, int i2, Object obj) {
        this.sampleModel.setDataElements(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, obj, this.dataBuffer);
    }

    public void setPixel(int i, int i2, int[] iArr) {
        this.sampleModel.setPixel(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, iArr, this.dataBuffer);
    }

    public void setPixels(int i, int i2, int i3, int i4, int[] iArr) {
        this.sampleModel.setPixels(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, iArr, this.dataBuffer);
    }

    public void setRect(Raster raster) {
        setRect(0, 0, raster);
    }

    public void setSample(int i, int i2, int i3, int i4) {
        this.sampleModel.setSample(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, this.dataBuffer);
    }

    public void setSamples(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        this.sampleModel.setSamples(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, i5, iArr, this.dataBuffer);
    }

    public void setDataElements(int i, int i2, Raster raster) {
        int i3;
        int minX = i + raster.getMinX();
        int minY = i2 + raster.getMinY();
        int width = raster.getWidth();
        int height = raster.getHeight();
        int i4 = this.minX;
        if (minX >= i4 && minY >= (i3 = this.minY) && minX + width <= i4 + this.width && minY + height <= i3 + this.height) {
            int minX2 = raster.getMinX();
            int minY2 = raster.getMinY();
            Object obj = null;
            int i5 = 0;
            while (i5 < height) {
                Object dataElements = raster.getDataElements(minX2, minY2 + i5, width, 1, obj);
                setDataElements(minX, minY + i5, width, 1, dataElements);
                i5++;
                obj = dataElements;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public void setPixel(int i, int i2, float[] fArr) {
        this.sampleModel.setPixel(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, fArr, this.dataBuffer);
    }

    public void setPixels(int i, int i2, int i3, int i4, float[] fArr) {
        this.sampleModel.setPixels(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, fArr, this.dataBuffer);
    }

    public void setRect(int i, int i2, Raster raster) {
        int width = raster.getWidth();
        int height = raster.getHeight();
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        int i3 = i + minX;
        int i4 = i2 + minY;
        int i5 = this.minX;
        if (i3 < i5) {
            int i6 = i5 - i3;
            width -= i6;
            minX += i6;
            i3 = i5;
        }
        int i7 = this.minY;
        if (i4 < i7) {
            int i8 = i7 - i4;
            height -= i8;
            minY += i8;
            i4 = i7;
        }
        int i9 = i3 + width;
        int i10 = this.width;
        if (i9 > i5 + i10) {
            width = (i5 + i10) - i3;
        }
        int i11 = i4 + height;
        int i12 = this.height;
        if (i11 > i7 + i12) {
            height = (i7 + i12) - i4;
        }
        if (width <= 0 || height <= 0) {
            return;
        }
        int dataType = raster.getSampleModel().getDataType();
        if (dataType == 0 || dataType == 1 || dataType == 2 || dataType == 3) {
            int[] iArr = null;
            for (int i13 = 0; i13 < height; i13++) {
                int i14 = width;
                iArr = raster.getPixels(minX, minY + i13, i14, 1, iArr);
                setPixels(i3, i4 + i13, i14, 1, iArr);
            }
            return;
        }
        if (dataType == 4) {
            float[] fArr = null;
            for (int i15 = 0; i15 < height; i15++) {
                int i16 = width;
                fArr = raster.getPixels(minX, minY + i15, i16, 1, fArr);
                setPixels(i3, i4 + i15, i16, 1, fArr);
            }
            return;
        }
        if (dataType != 5) {
            return;
        }
        double[] dArr = null;
        for (int i17 = 0; i17 < height; i17++) {
            int i18 = width;
            dArr = raster.getPixels(minX, minY + i17, i18, 1, dArr);
            setPixels(i3, i4 + i17, i18, 1, dArr);
        }
    }

    public void setSample(int i, int i2, int i3, float f) {
        this.sampleModel.setSample(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, f, this.dataBuffer);
    }

    public void setSamples(int i, int i2, int i3, int i4, int i5, float[] fArr) {
        this.sampleModel.setSamples(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, i5, fArr, this.dataBuffer);
    }

    public void setPixel(int i, int i2, double[] dArr) {
        this.sampleModel.setPixel(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, dArr, this.dataBuffer);
    }

    public void setPixels(int i, int i2, int i3, int i4, double[] dArr) {
        this.sampleModel.setPixels(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, dArr, this.dataBuffer);
    }

    public void setSample(int i, int i2, int i3, double d) {
        this.sampleModel.setSample(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, d, this.dataBuffer);
    }

    public void setSamples(int i, int i2, int i3, int i4, int i5, double[] dArr) {
        this.sampleModel.setSamples(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, i5, dArr, this.dataBuffer);
    }

    public WritableRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public WritableRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, WritableRaster writableRaster) {
        super(sampleModel, dataBuffer, rectangle, point, writableRaster);
    }

    public void setDataElements(int i, int i2, int i3, int i4, Object obj) {
        this.sampleModel.setDataElements(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, obj, this.dataBuffer);
    }
}
