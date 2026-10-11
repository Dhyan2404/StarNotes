package sun.awt.image;

import com.google.android.material.motion.MotionUtils;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferInt;
import java.awt.image.Raster;
import java.awt.image.RasterFormatException;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
public class IntegerComponentRaster extends SunWritableRaster {
    static final int TYPE_BYTE_BANDED_SAMPLES = 4;
    static final int TYPE_BYTE_BINARY_SAMPLES = 11;
    static final int TYPE_BYTE_PACKED_SAMPLES = 7;
    static final int TYPE_BYTE_SAMPLES = 1;
    static final int TYPE_CUSTOM = 0;
    static final int TYPE_INT_8BIT_SAMPLES = 10;
    static final int TYPE_INT_BANDED_SAMPLES = 6;
    static final int TYPE_INT_PACKED_SAMPLES = 9;
    static final int TYPE_INT_SAMPLES = 3;
    static final int TYPE_USHORT_BANDED_SAMPLES = 5;
    static final int TYPE_USHORT_PACKED_SAMPLES = 8;
    static final int TYPE_USHORT_SAMPLES = 2;
    protected int bandOffset;
    protected int[] data;
    protected int[] dataOffsets;
    private int maxX;
    private int maxY;
    protected int numDataElems;
    protected int pixelStride;
    protected int scanlineStride;
    int type;

    public IntegerComponentRaster(SampleModel sampleModel, Point point) {
        this(sampleModel, sampleModel.createDataBuffer(), new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    private static void initIDs() {
    }

    @Override // java.awt.image.Raster
    public Raster createChild(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        return createWritableChild(i, i2, i3, i4, i5, i6, iArr);
    }

    @Override // java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        if (i > 0 && i2 > 0) {
            return new IntegerComponentRaster(this.sampleModel.createCompatibleSampleModel(i, i2), new Point(0, 0));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("negative ");
        sb.append(i <= 0 ? "width" : "height");
        throw new RasterFormatException(sb.toString());
    }

    @Override // java.awt.image.WritableRaster
    public WritableRaster createWritableChild(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        int i7 = this.minX;
        if (i < i7) {
            throw new RasterFormatException("x lies outside raster");
        }
        int i8 = this.minY;
        if (i2 < i8) {
            throw new RasterFormatException("y lies outside raster");
        }
        int i9 = i + i3;
        if (i9 < i || i9 > i7 + this.width) {
            throw new RasterFormatException("(x + width) is outside raster");
        }
        int i10 = i2 + i4;
        if (i10 < i2 || i10 > i8 + this.height) {
            throw new RasterFormatException("(y + height) is outside raster");
        }
        return new IntegerComponentRaster(iArr != null ? this.sampleModel.createSubsetSampleModel(iArr) : this.sampleModel, this.dataBuffer, new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
    }

    @Override // java.awt.image.Raster
    public Object getDataElements(int i, int i2, Object obj) {
        int i3;
        int[] iArr;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            if (obj == null) {
                iArr = new int[this.numDataElements];
            } else {
                iArr = (int[]) obj;
            }
            int i5 = ((i2 - i3) * this.scanlineStride) + ((i - i4) * this.pixelStride);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                iArr[i6] = this.data[this.dataOffsets[i6] + i5];
            }
            return iArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public int getDataOffset(int i) {
        return this.dataOffsets[i];
    }

    public int[] getDataOffsets() {
        return (int[]) this.dataOffsets.clone();
    }

    public int[] getDataStorage() {
        return this.data;
    }

    public int getPixelStride() {
        return this.pixelStride;
    }

    public int getScanlineStride() {
        return this.scanlineStride;
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Object obj) {
        int i3;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            int[] iArr = (int[]) obj;
            int i5 = ((i2 - i3) * this.scanlineStride) + ((i - i4) * this.pixelStride);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                this.data[this.dataOffsets[i6] + i5] = iArr[i6];
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public String toString() {
        return new String("IntegerComponentRaster: width = " + this.width + " height = " + this.height + " #Bands = " + this.numBands + " #DataElements " + this.numDataElements + " xOff = " + this.sampleModelTranslateX + " yOff = " + this.sampleModelTranslateY + " dataOffset[0] " + this.dataOffsets[0]);
    }

    public final void verify() {
        int i;
        int i2 = this.width;
        if (i2 <= 0 || (i = this.height) <= 0 || i > Integer.MAX_VALUE / i2) {
            throw new RasterFormatException("Invalid raster dimension");
        }
        if (this.dataOffsets[0] < 0) {
            throw new RasterFormatException("Data offset (" + this.dataOffsets[0] + ") must be >= 0");
        }
        if (this.minX - this.sampleModelTranslateX >= 0) {
            int i3 = this.minY;
            int i4 = this.sampleModelTranslateY;
            if (i3 - i4 >= 0) {
                int i5 = this.scanlineStride;
                if (i5 < 0 || i5 > Integer.MAX_VALUE / i) {
                    throw new RasterFormatException("Incorrect scanline stride: " + this.scanlineStride);
                }
                if ((i > 1 || i3 - i4 > 0) && i5 > this.data.length) {
                    throw new RasterFormatException("Incorrect scanline stride: " + this.scanlineStride);
                }
                int i6 = (i - 1) * i5;
                int i7 = this.pixelStride;
                if (i7 < 0 || i7 > Integer.MAX_VALUE / i2 || i7 > this.data.length) {
                    throw new RasterFormatException("Incorrect pixel stride: " + this.pixelStride);
                }
                int i8 = (i2 - 1) * i7;
                if (i8 > Integer.MAX_VALUE - i6) {
                    throw new RasterFormatException("Incorrect raster attributes");
                }
                int i9 = i8 + i6;
                int i10 = 0;
                for (int i11 = 0; i11 < this.numDataElements; i11++) {
                    int i12 = this.dataOffsets[i11];
                    if (i12 > Integer.MAX_VALUE - i9) {
                        throw new RasterFormatException("Incorrect band offset: " + this.dataOffsets[i11]);
                    }
                    int i13 = i12 + i9;
                    if (i13 > i10) {
                        i10 = i13;
                    }
                }
                if (this.data.length > i10) {
                    return;
                }
                throw new RasterFormatException("Data array too small (should be > " + i10 + " )");
            }
        }
        throw new RasterFormatException("Incorrect origin/translate: (" + this.minX + ", " + this.minY + ") / (" + this.sampleModelTranslateX + ", " + this.sampleModelTranslateY + MotionUtils.f31762d);
    }

    public IntegerComponentRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public IntegerComponentRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, IntegerComponentRaster integerComponentRaster) {
        super(sampleModel, dataBuffer, rectangle, point, integerComponentRaster);
        this.maxX = this.minX + this.width;
        this.maxY = this.minY + this.height;
        if (dataBuffer instanceof DataBufferInt) {
            DataBufferInt dataBufferInt = (DataBufferInt) dataBuffer;
            if (dataBufferInt.getNumBanks() == 1) {
                this.data = SunWritableRaster.stealData(dataBufferInt, 0);
                if (sampleModel instanceof SinglePixelPackedSampleModel) {
                    SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) sampleModel;
                    int[] bitOffsets = singlePixelPackedSampleModel.getBitOffsets();
                    boolean z = false;
                    for (int i = 1; i < bitOffsets.length; i++) {
                        if (bitOffsets[i] % 8 != 0) {
                            z = true;
                        }
                    }
                    this.type = z ? 9 : 10;
                    this.scanlineStride = singlePixelPackedSampleModel.getScanlineStride();
                    this.pixelStride = 1;
                    this.dataOffsets = r0;
                    int[] iArr = {dataBufferInt.getOffset()};
                    int[] iArr2 = this.dataOffsets;
                    int i2 = iArr2[0];
                    this.bandOffset = i2;
                    iArr2[0] = i2 + (rectangle.f97732x - point.f97730x) + ((rectangle.f97733y - point.f97731y) * this.scanlineStride);
                    this.numDataElems = singlePixelPackedSampleModel.getNumDataElements();
                    verify();
                    return;
                }
                throw new RasterFormatException("IntegerComponentRasters must have SinglePixelPackedSampleModel");
            }
            throw new RasterFormatException("DataBuffer for IntegerComponentRasters must only have 1 bank.");
        }
        throw new RasterFormatException("IntegerComponentRasters must haveinteger DataBuffers");
    }

    @Override // java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster() {
        return createCompatibleWritableRaster(this.width, this.height);
    }

    @Override // java.awt.image.Raster
    public Object getDataElements(int i, int i2, int i3, int i4, Object obj) {
        int i5;
        int[] iArr;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (obj instanceof int[]) {
                iArr = (int[]) obj;
            } else {
                iArr = new int[this.numDataElements * i3 * i4];
            }
            int i7 = ((i2 - i5) * this.scanlineStride) + ((i - i6) * this.pixelStride);
            int i8 = 0;
            int i9 = 0;
            while (i8 < i4) {
                int i10 = 0;
                int i11 = i7;
                while (i10 < i3) {
                    int i12 = 0;
                    while (i12 < this.numDataElements) {
                        iArr[i9] = this.data[this.dataOffsets[i12] + i11];
                        i12++;
                        i9++;
                    }
                    i10++;
                    i11 += this.pixelStride;
                }
                i8++;
                i7 += this.scanlineStride;
            }
            return iArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Raster raster) {
        int minX = i + raster.getMinX();
        int minY = i2 + raster.getMinY();
        int width = raster.getWidth();
        int height = raster.getHeight();
        if (minX >= this.minX && minY >= this.minY && minX + width <= this.maxX && minY + height <= this.maxY) {
            setDataElements(minX, minY, width, height, raster);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    private void setDataElements(int i, int i2, int i3, int i4, Raster raster) {
        if (i3 <= 0 || i4 <= 0) {
            return;
        }
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        if ((raster instanceof IntegerComponentRaster) && this.pixelStride == 1 && this.numDataElements == 1) {
            IntegerComponentRaster integerComponentRaster = (IntegerComponentRaster) raster;
            if (integerComponentRaster.getNumDataElements() == 1) {
                int[] dataStorage = integerComponentRaster.getDataStorage();
                int scanlineStride = integerComponentRaster.getScanlineStride();
                int dataOffset = integerComponentRaster.getDataOffset(0);
                int i5 = this.dataOffsets[0] + ((i2 - this.minY) * this.scanlineStride) + (i - this.minX);
                int pixelStride = integerComponentRaster.getPixelStride();
                int i6 = this.pixelStride;
                if (pixelStride == i6) {
                    int i7 = i3 * i6;
                    for (int i8 = 0; i8 < i4; i8++) {
                        System.arraycopy(dataStorage, dataOffset, this.data, i5, i7);
                        dataOffset += scanlineStride;
                        i5 += this.scanlineStride;
                    }
                    markDirty();
                    return;
                }
            } else {
                throw new ArrayIndexOutOfBoundsException("Number of bands does not match");
            }
        }
        Object obj = null;
        for (int i9 = 0; i9 < i4; i9++) {
            obj = raster.getDataElements(minX, minY + i9, i3, 1, obj);
            setDataElements(i, i2 + i9, i3, 1, obj);
        }
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, int i3, int i4, Object obj) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            int[] iArr = (int[]) obj;
            int i7 = ((i2 - i5) * this.scanlineStride) + ((i - i6) * this.pixelStride);
            int i8 = 0;
            int i9 = 0;
            while (i8 < i4) {
                int i10 = 0;
                int i11 = i7;
                while (i10 < i3) {
                    int i12 = 0;
                    while (i12 < this.numDataElements) {
                        this.data[this.dataOffsets[i12] + i11] = iArr[i9];
                        i12++;
                        i9++;
                    }
                    i10++;
                    i11 += this.pixelStride;
                }
                i8++;
                i7 += this.scanlineStride;
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }
}
