package java.awt.image;

import java.awt.Point;
import java.awt.Rectangle;
import sun.awt.image.ByteBandedRaster;
import sun.awt.image.ByteInterleavedRaster;
import sun.awt.image.BytePackedRaster;
import sun.awt.image.IntegerInterleavedRaster;
import sun.awt.image.ShortBandedRaster;
import sun.awt.image.ShortInterleavedRaster;
import sun.awt.image.SunWritableRaster;

/* loaded from: classes5.dex */
public class Raster {
    protected DataBuffer dataBuffer;
    protected int height;
    protected int minX;
    protected int minY;
    protected int numBands;
    protected int numDataElements;
    protected Raster parent;
    protected SampleModel sampleModel;
    protected int sampleModelTranslateX;
    protected int sampleModelTranslateY;
    protected int width;

    static {
        ColorModel.loadLibraries();
        initIDs();
    }

    public Raster(SampleModel sampleModel, Point point) {
        this(sampleModel, sampleModel.createDataBuffer(), new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public static WritableRaster createBandedRaster(int i, int i2, int i3, int i4, Point point) {
        if (i4 >= 1) {
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            for (int i5 = 0; i5 < i4; i5++) {
                iArr[i5] = i5;
                iArr2[i5] = 0;
            }
            return createBandedRaster(i, i2, i3, i2, iArr, iArr2, point);
        }
        throw new ArrayIndexOutOfBoundsException("Number of bands (" + i4 + ") must be greater than 0");
    }

    public static WritableRaster createInterleavedRaster(int i, int i2, int i3, int i4, Point point) {
        int[] iArr = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            iArr[i5] = i5;
        }
        return createInterleavedRaster(i, i2, i3, i2 * i4, i4, iArr, point);
    }

    public static WritableRaster createPackedRaster(int i, int i2, int i3, int[] iArr, Point point) {
        DataBuffer dataBufferByte;
        if (i == 0) {
            dataBufferByte = new DataBufferByte(i2 * i3);
        } else if (i == 1) {
            dataBufferByte = new DataBufferUShort(i2 * i3);
        } else if (i == 3) {
            dataBufferByte = new DataBufferInt(i2 * i3);
        } else {
            throw new IllegalArgumentException("Unsupported data type " + i);
        }
        return createPackedRaster(dataBufferByte, i2, i3, i2, iArr, point);
    }

    public static Raster createRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        if (sampleModel == null || dataBuffer == null) {
            throw new NullPointerException("SampleModel and DataBuffer cannot be null");
        }
        if (point == null) {
            point = new Point(0, 0);
        }
        int dataType = sampleModel.getDataType();
        if (sampleModel instanceof PixelInterleavedSampleModel) {
            if (dataType == 0) {
                return new ByteInterleavedRaster(sampleModel, dataBuffer, point);
            }
            if (dataType == 1) {
                return new ShortInterleavedRaster(sampleModel, dataBuffer, point);
            }
        } else if (sampleModel instanceof SinglePixelPackedSampleModel) {
            if (dataType == 0) {
                return new ByteInterleavedRaster(sampleModel, dataBuffer, point);
            }
            if (dataType == 1) {
                return new ShortInterleavedRaster(sampleModel, dataBuffer, point);
            }
            if (dataType == 3) {
                return new IntegerInterleavedRaster(sampleModel, dataBuffer, point);
            }
        } else if ((sampleModel instanceof MultiPixelPackedSampleModel) && dataType == 0 && sampleModel.getSampleSize(0) < 8) {
            return new BytePackedRaster(sampleModel, dataBuffer, point);
        }
        return new Raster(sampleModel, dataBuffer, point);
    }

    public static WritableRaster createWritableRaster(SampleModel sampleModel, Point point) {
        if (point == null) {
            point = new Point(0, 0);
        }
        return createWritableRaster(sampleModel, sampleModel.createDataBuffer(), point);
    }

    private static void initIDs() {
    }

    public Raster createChild(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
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
        return new Raster(iArr == null ? this.sampleModel : this.sampleModel.createSubsetSampleModel(iArr), getDataBuffer(), new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
    }

    public WritableRaster createCompatibleWritableRaster() {
        return new SunWritableRaster(this.sampleModel, new Point(0, 0));
    }

    public Raster createTranslatedChild(int i, int i2) {
        return createChild(this.minX, this.minY, this.width, this.height, i, i2, null);
    }

    public Rectangle getBounds() {
        return new Rectangle(this.minX, this.minY, this.width, this.height);
    }

    public DataBuffer getDataBuffer() {
        return this.dataBuffer;
    }

    public Object getDataElements(int i, int i2, Object obj) {
        return this.sampleModel.getDataElements(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, obj, this.dataBuffer);
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getMinX() {
        return this.minX;
    }

    public final int getMinY() {
        return this.minY;
    }

    public final int getNumBands() {
        return this.numBands;
    }

    public final int getNumDataElements() {
        return this.sampleModel.getNumDataElements();
    }

    public Raster getParent() {
        return this.parent;
    }

    public int[] getPixel(int i, int i2, int[] iArr) {
        return this.sampleModel.getPixel(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, iArr, this.dataBuffer);
    }

    public int[] getPixels(int i, int i2, int i3, int i4, int[] iArr) {
        return this.sampleModel.getPixels(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, iArr, this.dataBuffer);
    }

    public int getSample(int i, int i2, int i3) {
        return this.sampleModel.getSample(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, this.dataBuffer);
    }

    public double getSampleDouble(int i, int i2, int i3) {
        return this.sampleModel.getSampleDouble(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, this.dataBuffer);
    }

    public float getSampleFloat(int i, int i2, int i3) {
        return this.sampleModel.getSampleFloat(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, this.dataBuffer);
    }

    public SampleModel getSampleModel() {
        return this.sampleModel;
    }

    public final int getSampleModelTranslateX() {
        return this.sampleModelTranslateX;
    }

    public final int getSampleModelTranslateY() {
        return this.sampleModelTranslateY;
    }

    public int[] getSamples(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        return this.sampleModel.getSamples(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, i5, iArr, this.dataBuffer);
    }

    public final int getTransferType() {
        return this.sampleModel.getTransferType();
    }

    public final int getWidth() {
        return this.width;
    }

    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        if (i > 0 && i2 > 0) {
            return new SunWritableRaster(this.sampleModel.createCompatibleSampleModel(i, i2), new Point(0, 0));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("negative ");
        sb.append(i <= 0 ? "width" : "height");
        throw new RasterFormatException(sb.toString());
    }

    public Object getDataElements(int i, int i2, int i3, int i4, Object obj) {
        return this.sampleModel.getDataElements(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, obj, this.dataBuffer);
    }

    public float[] getPixel(int i, int i2, float[] fArr) {
        return this.sampleModel.getPixel(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, fArr, this.dataBuffer);
    }

    public float[] getPixels(int i, int i2, int i3, int i4, float[] fArr) {
        return this.sampleModel.getPixels(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, fArr, this.dataBuffer);
    }

    public float[] getSamples(int i, int i2, int i3, int i4, int i5, float[] fArr) {
        return this.sampleModel.getSamples(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, i5, fArr, this.dataBuffer);
    }

    public static WritableRaster createWritableRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        if (sampleModel != null && dataBuffer != null) {
            if (point == null) {
                point = new Point(0, 0);
            }
            int dataType = sampleModel.getDataType();
            if (sampleModel instanceof PixelInterleavedSampleModel) {
                if (dataType == 0) {
                    return new ByteInterleavedRaster(sampleModel, dataBuffer, point);
                }
                if (dataType == 1) {
                    return new ShortInterleavedRaster(sampleModel, dataBuffer, point);
                }
            } else if (sampleModel instanceof SinglePixelPackedSampleModel) {
                if (dataType == 0) {
                    return new ByteInterleavedRaster(sampleModel, dataBuffer, point);
                }
                if (dataType == 1) {
                    return new ShortInterleavedRaster(sampleModel, dataBuffer, point);
                }
                if (dataType == 3) {
                    return new IntegerInterleavedRaster(sampleModel, dataBuffer, point);
                }
            } else if ((sampleModel instanceof MultiPixelPackedSampleModel) && dataType == 0 && sampleModel.getSampleSize(0) < 8) {
                return new BytePackedRaster(sampleModel, dataBuffer, point);
            }
            return new SunWritableRaster(sampleModel, dataBuffer, point);
        }
        throw new NullPointerException("SampleModel and DataBuffer cannot be null");
    }

    public double[] getPixel(int i, int i2, double[] dArr) {
        return this.sampleModel.getPixel(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, dArr, this.dataBuffer);
    }

    public double[] getPixels(int i, int i2, int i3, int i4, double[] dArr) {
        return this.sampleModel.getPixels(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, dArr, this.dataBuffer);
    }

    public double[] getSamples(int i, int i2, int i3, int i4, int i5, double[] dArr) {
        return this.sampleModel.getSamples(i - this.sampleModelTranslateX, i2 - this.sampleModelTranslateY, i3, i4, i5, dArr, this.dataBuffer);
    }

    public static WritableRaster createInterleavedRaster(int i, int i2, int i3, int i4, int i5, int[] iArr, Point point) {
        DataBuffer dataBufferByte;
        int i6 = ((i3 - 1) * i4) + (i5 * i2);
        if (i == 0) {
            dataBufferByte = new DataBufferByte(i6);
        } else if (i == 1) {
            dataBufferByte = new DataBufferUShort(i6);
        } else {
            throw new IllegalArgumentException("Unsupported data type " + i);
        }
        return createInterleavedRaster(dataBufferByte, i2, i3, i4, i5, iArr, point);
    }

    public Raster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public WritableRaster createCompatibleWritableRaster(Rectangle rectangle) {
        if (rectangle != null) {
            return createCompatibleWritableRaster(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
        }
        throw new NullPointerException("Rect cannot be null");
    }

    public static WritableRaster createPackedRaster(int i, int i2, int i3, int i4, int i5, Point point) {
        DataBuffer dataBufferByte;
        if (i4 <= 0) {
            throw new IllegalArgumentException("Number of bands (" + i4 + ") must be greater than 0");
        }
        if (i5 <= 0) {
            throw new IllegalArgumentException("Bits per band (" + i5 + ") must be greater than 0");
        }
        if (i4 != 1) {
            int[] iArr = new int[i4];
            int i6 = (1 << i5) - 1;
            int i7 = (i4 - 1) * i5;
            if (i7 + i5 > DataBuffer.getDataTypeSize(i)) {
                throw new IllegalArgumentException("bitsPerBand(" + i5 + ") * bands is  greater than data type size.");
            }
            if (i != 0 && i != 1 && i != 3) {
                throw new IllegalArgumentException("Unsupported data type " + i);
            }
            for (int i8 = 0; i8 < i4; i8++) {
                iArr[i8] = i6 << i7;
                i7 -= i5;
            }
            return createPackedRaster(i, i2, i3, iArr, point);
        }
        double d = i2;
        if (i == 0) {
            dataBufferByte = new DataBufferByte(((int) Math.ceil(d / (8 / i5))) * i3);
        } else if (i == 1) {
            dataBufferByte = new DataBufferUShort(((int) Math.ceil(d / (16 / i5))) * i3);
        } else if (i == 3) {
            dataBufferByte = new DataBufferInt(((int) Math.ceil(d / (32 / i5))) * i3);
        } else {
            throw new IllegalArgumentException("Unsupported data type " + i);
        }
        return createPackedRaster(dataBufferByte, i2, i3, i5, point);
    }

    public static WritableRaster createBandedRaster(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2, Point point) {
        DataBuffer dataBufferByte;
        int length = iArr2.length;
        if (iArr != null) {
            int i5 = iArr[0];
            int i6 = iArr2[0];
            for (int i7 = 1; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i5) {
                    i5 = i8;
                }
                int i9 = iArr2[i7];
                if (i9 > i6) {
                    i6 = i9;
                }
            }
            int i10 = i5 + 1;
            int i11 = i6 + ((i3 - 1) * i4) + i2;
            if (i == 0) {
                dataBufferByte = new DataBufferByte(i11, i10);
            } else if (i == 1) {
                dataBufferByte = new DataBufferUShort(i11, i10);
            } else if (i == 3) {
                dataBufferByte = new DataBufferInt(i11, i10);
            } else {
                throw new IllegalArgumentException("Unsupported data type " + i);
            }
            return createBandedRaster(dataBufferByte, i2, i3, i4, iArr, iArr2, point);
        }
        throw new ArrayIndexOutOfBoundsException("Bank indices array is null");
    }

    public WritableRaster createCompatibleWritableRaster(int i, int i2, int i3, int i4) {
        return createCompatibleWritableRaster(i3, i4).createWritableChild(0, 0, i3, i4, i, i2, null);
    }

    public static WritableRaster createInterleavedRaster(DataBuffer dataBuffer, int i, int i2, int i3, int i4, int[] iArr, Point point) {
        if (dataBuffer != null) {
            if (point == null) {
                point = new Point(0, 0);
            }
            int dataType = dataBuffer.getDataType();
            PixelInterleavedSampleModel pixelInterleavedSampleModel = new PixelInterleavedSampleModel(dataType, i, i2, i4, i3, iArr);
            if (dataType == 0) {
                return new ByteInterleavedRaster(pixelInterleavedSampleModel, dataBuffer, point);
            }
            if (dataType == 1) {
                return new ShortInterleavedRaster(pixelInterleavedSampleModel, dataBuffer, point);
            }
            throw new IllegalArgumentException("Unsupported data type " + dataType);
        }
        throw new NullPointerException("DataBuffer cannot be null");
    }

    public Raster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, Raster raster) {
        if (sampleModel != null && dataBuffer != null && rectangle != null && point != null) {
            this.sampleModel = sampleModel;
            this.dataBuffer = dataBuffer;
            int i = rectangle.f97732x;
            this.minX = i;
            int i2 = rectangle.f97733y;
            this.minY = i2;
            int i3 = rectangle.width;
            this.width = i3;
            int i4 = rectangle.height;
            this.height = i4;
            if (i3 <= 0 || i4 <= 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("negative or zero ");
                sb.append(this.width <= 0 ? "width" : "height");
                throw new RasterFormatException(sb.toString());
            }
            if (i3 + i < i) {
                throw new RasterFormatException("overflow condition for X coordinates of Raster");
            }
            if (i4 + i2 >= i2) {
                this.sampleModelTranslateX = point.f97730x;
                this.sampleModelTranslateY = point.f97731y;
                this.numBands = sampleModel.getNumBands();
                this.numDataElements = sampleModel.getNumDataElements();
                this.parent = raster;
                return;
            }
            throw new RasterFormatException("overflow condition for Y coordinates of Raster");
        }
        throw new NullPointerException("SampleModel, dataBuffer, aRegion and sampleModelTranslate cannot be null");
    }

    public static WritableRaster createBandedRaster(DataBuffer dataBuffer, int i, int i2, int i3, int[] iArr, int[] iArr2, Point point) {
        if (dataBuffer != null) {
            if (point == null) {
                point = new Point(0, 0);
            }
            int dataType = dataBuffer.getDataType();
            if (iArr2.length == iArr.length) {
                BandedSampleModel bandedSampleModel = new BandedSampleModel(dataType, i, i2, i3, iArr, iArr2);
                if (dataType == 0) {
                    return new ByteBandedRaster(bandedSampleModel, dataBuffer, point);
                }
                if (dataType == 1) {
                    return new ShortBandedRaster(bandedSampleModel, dataBuffer, point);
                }
                if (dataType == 3) {
                    return new SunWritableRaster(bandedSampleModel, dataBuffer, point);
                }
                throw new IllegalArgumentException("Unsupported data type " + dataType);
            }
            throw new IllegalArgumentException("bankIndices.length != bandOffsets.length");
        }
        throw new NullPointerException("DataBuffer cannot be null");
    }

    public static WritableRaster createPackedRaster(DataBuffer dataBuffer, int i, int i2, int i3, int[] iArr, Point point) {
        if (dataBuffer != null) {
            if (point == null) {
                point = new Point(0, 0);
            }
            int dataType = dataBuffer.getDataType();
            SinglePixelPackedSampleModel singlePixelPackedSampleModel = new SinglePixelPackedSampleModel(dataType, i, i2, i3, iArr);
            if (dataType == 0) {
                return new ByteInterleavedRaster(singlePixelPackedSampleModel, dataBuffer, point);
            }
            if (dataType == 1) {
                return new ShortInterleavedRaster(singlePixelPackedSampleModel, dataBuffer, point);
            }
            if (dataType == 3) {
                return new IntegerInterleavedRaster(singlePixelPackedSampleModel, dataBuffer, point);
            }
            throw new IllegalArgumentException("Unsupported data type " + dataType);
        }
        throw new NullPointerException("DataBuffer cannot be null");
    }

    public static WritableRaster createPackedRaster(DataBuffer dataBuffer, int i, int i2, int i3, Point point) {
        if (dataBuffer != null) {
            if (point == null) {
                point = new Point(0, 0);
            }
            int dataType = dataBuffer.getDataType();
            if (dataType != 0 && dataType != 1 && dataType != 3) {
                throw new IllegalArgumentException("Unsupported data type " + dataType);
            }
            if (dataBuffer.getNumBanks() == 1) {
                MultiPixelPackedSampleModel multiPixelPackedSampleModel = new MultiPixelPackedSampleModel(dataType, i, i2, i3);
                if (dataType == 0 && (i3 == 1 || i3 == 2 || i3 == 4)) {
                    return new BytePackedRaster(multiPixelPackedSampleModel, dataBuffer, point);
                }
                return new SunWritableRaster(multiPixelPackedSampleModel, dataBuffer, point);
            }
            throw new RasterFormatException("DataBuffer for packed Rasters must only have 1 bank.");
        }
        throw new NullPointerException("DataBuffer cannot be null");
    }
}
