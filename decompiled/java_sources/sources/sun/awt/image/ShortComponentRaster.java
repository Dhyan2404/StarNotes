package sun.awt.image;

import com.google.android.material.motion.MotionUtils;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.ComponentSampleModel;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferUShort;
import java.awt.image.Raster;
import java.awt.image.RasterFormatException;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
public class ShortComponentRaster extends SunWritableRaster {
    protected int bandOffset;
    protected short[] data;
    protected int[] dataOffsets;
    private int maxX;
    private int maxY;
    protected int pixelStride;
    protected int scanlineStride;
    int type;

    public ShortComponentRaster(SampleModel sampleModel, Point point) {
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
            return new ShortComponentRaster(this.sampleModel.createCompatibleSampleModel(i, i2), new Point(0, 0));
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
            throw new RasterFormatException("x lies outside the raster");
        }
        int i8 = this.minY;
        if (i2 < i8) {
            throw new RasterFormatException("y lies outside the raster");
        }
        int i9 = i + i3;
        if (i9 < i || i9 > i7 + this.width) {
            throw new RasterFormatException("(x + width) is outside of Raster");
        }
        int i10 = i2 + i4;
        if (i10 < i2 || i10 > i8 + this.height) {
            throw new RasterFormatException("(y + height) is outside of Raster");
        }
        return new ShortComponentRaster(iArr != null ? this.sampleModel.createSubsetSampleModel(iArr) : this.sampleModel, this.dataBuffer, new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
    }

    @Override // java.awt.image.Raster
    public Object getDataElements(int i, int i2, Object obj) {
        int i3;
        short[] sArr;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            if (obj == null) {
                sArr = new short[this.numDataElements];
            } else {
                sArr = (short[]) obj;
            }
            int i5 = ((i2 - i3) * this.scanlineStride) + ((i - i4) * this.pixelStride);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                sArr[i6] = this.data[this.dataOffsets[i6] + i5];
            }
            return sArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public int getDataOffset(int i) {
        return this.dataOffsets[i];
    }

    public int[] getDataOffsets() {
        return (int[]) this.dataOffsets.clone();
    }

    public short[] getDataStorage() {
        return this.data;
    }

    public int getPixelStride() {
        return this.pixelStride;
    }

    public int getScanlineStride() {
        return this.scanlineStride;
    }

    public short[] getShortData(int i, int i2, int i3, int i4, int i5, short[] sArr) {
        int i6;
        int i7 = this.minX;
        if (i >= i7 && i2 >= (i6 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (sArr == null) {
                sArr = new short[this.numDataElements * i3 * i4];
            }
            int i8 = i2 - i6;
            int i9 = this.scanlineStride;
            int i10 = i - i7;
            int i11 = this.pixelStride;
            int i12 = (i8 * i9) + (i10 * i11) + this.dataOffsets[i5];
            int i13 = 0;
            if (i11 != 1) {
                int i14 = 0;
                int i15 = 0;
                while (i14 < i4) {
                    int i16 = i12;
                    int i17 = 0;
                    while (i17 < i3) {
                        sArr[i15] = this.data[i16];
                        i17++;
                        i16 += this.pixelStride;
                        i15++;
                    }
                    i14++;
                    i12 += this.scanlineStride;
                }
            } else if (i9 == i3) {
                System.arraycopy(this.data, i12, sArr, 0, i3 * i4);
            } else {
                int i18 = 0;
                while (i13 < i4) {
                    System.arraycopy(this.data, i12, sArr, i18, i3);
                    i18 += i3;
                    i13++;
                    i12 += this.scanlineStride;
                }
            }
            return sArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public void putShortData(int i, int i2, int i3, int i4, int i5, short[] sArr) {
        int i6;
        int i7 = this.minX;
        if (i >= i7 && i2 >= (i6 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            int i8 = i2 - i6;
            int i9 = this.scanlineStride;
            int i10 = i - i7;
            int i11 = this.pixelStride;
            int i12 = (i8 * i9) + (i10 * i11) + this.dataOffsets[i5];
            int i13 = 0;
            if (i11 != 1) {
                int i14 = 0;
                int i15 = 0;
                while (i14 < i4) {
                    int i16 = i12;
                    int i17 = 0;
                    while (i17 < i3) {
                        this.data[i16] = sArr[i15];
                        i17++;
                        i16 += this.pixelStride;
                        i15++;
                    }
                    i14++;
                    i12 += this.scanlineStride;
                }
            } else if (i9 == i3) {
                System.arraycopy(sArr, 0, this.data, i12, i3 * i4);
            } else {
                int i18 = 0;
                while (i13 < i4) {
                    System.arraycopy(sArr, i18, this.data, i12, i3);
                    i18 += i3;
                    i13++;
                    i12 += this.scanlineStride;
                }
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Object obj) {
        int i3;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            short[] sArr = (short[]) obj;
            int i5 = ((i2 - i3) * this.scanlineStride) + ((i - i4) * this.pixelStride);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                this.data[this.dataOffsets[i6] + i5] = sArr[i6];
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public String toString() {
        return new String("ShortComponentRaster: width = " + this.width + " height = " + this.height + " #numDataElements " + this.numDataElements);
    }

    public final void verify() {
        int i;
        int i2 = this.width;
        if (i2 <= 0 || (i = this.height) <= 0 || i > Integer.MAX_VALUE / i2) {
            throw new RasterFormatException("Invalid raster dimension");
        }
        int i3 = 0;
        while (true) {
            int[] iArr = this.dataOffsets;
            if (i3 >= iArr.length) {
                if (this.minX - this.sampleModelTranslateX >= 0) {
                    int i4 = this.minY;
                    int i5 = this.sampleModelTranslateY;
                    if (i4 - i5 >= 0) {
                        int i6 = this.scanlineStride;
                        if (i6 >= 0) {
                            int i7 = this.height;
                            if (i6 <= Integer.MAX_VALUE / i7) {
                                if ((i7 > 1 || i4 - i5 > 0) && i6 > this.data.length) {
                                    throw new RasterFormatException("Incorrect scanline stride: " + this.scanlineStride);
                                }
                                int i8 = (i7 - 1) * i6;
                                int i9 = this.pixelStride;
                                if (i9 >= 0) {
                                    int i10 = this.width;
                                    if (i9 <= Integer.MAX_VALUE / i10 && i9 <= this.data.length) {
                                        int i11 = (i10 - 1) * i9;
                                        if (i11 > Integer.MAX_VALUE - i8) {
                                            throw new RasterFormatException("Incorrect raster attributes");
                                        }
                                        int i12 = i11 + i8;
                                        int i13 = 0;
                                        for (int i14 = 0; i14 < this.numDataElements; i14++) {
                                            int i15 = this.dataOffsets[i14];
                                            if (i15 > Integer.MAX_VALUE - i12) {
                                                throw new RasterFormatException("Incorrect band offset: " + this.dataOffsets[i14]);
                                            }
                                            int i16 = i15 + i12;
                                            if (i16 > i13) {
                                                i13 = i16;
                                            }
                                        }
                                        if (this.data.length > i13) {
                                            return;
                                        }
                                        throw new RasterFormatException("Data array too small (should be > " + i13 + " )");
                                    }
                                }
                                throw new RasterFormatException("Incorrect pixel stride: " + this.pixelStride);
                            }
                        }
                        throw new RasterFormatException("Incorrect scanline stride: " + this.scanlineStride);
                    }
                }
                throw new RasterFormatException("Incorrect origin/translate: (" + this.minX + ", " + this.minY + ") / (" + this.sampleModelTranslateX + ", " + this.sampleModelTranslateY + MotionUtils.f31762d);
            }
            if (iArr[i3] < 0) {
                throw new RasterFormatException("Data offsets for band " + i3 + MotionUtils.f31761c + this.dataOffsets[i3] + ") must be >= 0");
            }
            i3++;
        }
    }

    public ShortComponentRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public ShortComponentRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, ShortComponentRaster shortComponentRaster) {
        super(sampleModel, dataBuffer, rectangle, point, shortComponentRaster);
        this.maxX = this.minX + this.width;
        this.maxY = this.minY + this.height;
        if (dataBuffer instanceof DataBufferUShort) {
            DataBufferUShort dataBufferUShort = (DataBufferUShort) dataBuffer;
            this.data = SunWritableRaster.stealData(dataBufferUShort, 0);
            if (dataBufferUShort.getNumBanks() == 1) {
                int offset = dataBufferUShort.getOffset();
                if (sampleModel instanceof ComponentSampleModel) {
                    ComponentSampleModel componentSampleModel = (ComponentSampleModel) sampleModel;
                    this.type = 2;
                    this.scanlineStride = componentSampleModel.getScanlineStride();
                    this.pixelStride = componentSampleModel.getPixelStride();
                    this.dataOffsets = componentSampleModel.getBandOffsets();
                    int i = rectangle.f97732x - point.f97730x;
                    int i2 = rectangle.f97733y - point.f97731y;
                    for (int i3 = 0; i3 < getNumDataElements(); i3++) {
                        int[] iArr = this.dataOffsets;
                        iArr[i3] = iArr[i3] + (this.pixelStride * i) + offset + (this.scanlineStride * i2);
                    }
                } else if (sampleModel instanceof SinglePixelPackedSampleModel) {
                    this.type = 8;
                    int scanlineStride = ((SinglePixelPackedSampleModel) sampleModel).getScanlineStride();
                    this.scanlineStride = scanlineStride;
                    this.pixelStride = 1;
                    this.dataOffsets = r0;
                    int[] iArr2 = {offset};
                    iArr2[0] = offset + (rectangle.f97732x - point.f97730x) + ((rectangle.f97733y - point.f97731y) * scanlineStride);
                } else {
                    throw new RasterFormatException("ShortComponentRasters must haveComponentSampleModel or SinglePixelPackedSampleModel");
                }
                this.bandOffset = this.dataOffsets[0];
                verify();
                return;
            }
            throw new RasterFormatException("DataBuffer for ShortComponentRasters must only have 1 bank.");
        }
        throw new RasterFormatException("ShortComponentRasters must have short DataBuffers");
    }

    @Override // java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster() {
        return createCompatibleWritableRaster(this.width, this.height);
    }

    @Override // java.awt.image.Raster
    public Object getDataElements(int i, int i2, int i3, int i4, Object obj) {
        int i5;
        short[] sArr;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (obj == null) {
                sArr = new short[i3 * i4 * this.numDataElements];
            } else {
                sArr = (short[]) obj;
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
                        sArr[i9] = this.data[this.dataOffsets[i12] + i11];
                        i12++;
                        i9++;
                    }
                    i10++;
                    i11 += this.pixelStride;
                }
                i8++;
                i7 += this.scanlineStride;
            }
            return sArr;
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

    public short[] getShortData(int i, int i2, int i3, int i4, short[] sArr) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (sArr == null) {
                sArr = new short[this.numDataElements * i3 * i4];
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
                        sArr[i9] = this.data[this.dataOffsets[i12] + i11];
                        i12++;
                        i9++;
                    }
                    i10++;
                    i11 += this.pixelStride;
                }
                i8++;
                i7 += this.scanlineStride;
            }
            return sArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public void putShortData(int i, int i2, int i3, int i4, short[] sArr) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            int i7 = ((i2 - i5) * this.scanlineStride) + ((i - i6) * this.pixelStride);
            int i8 = 0;
            int i9 = 0;
            while (i8 < i4) {
                int i10 = 0;
                int i11 = i7;
                while (i10 < i3) {
                    int i12 = 0;
                    while (i12 < this.numDataElements) {
                        this.data[this.dataOffsets[i12] + i11] = sArr[i9];
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

    private void setDataElements(int i, int i2, int i3, int i4, Raster raster) {
        if (i3 <= 0 || i4 <= 0) {
            return;
        }
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        Object obj = null;
        for (int i5 = 0; i5 < i4; i5++) {
            obj = raster.getDataElements(minX, minY + i5, i3, 1, obj);
            setDataElements(i, i2 + i5, i3, 1, obj);
        }
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, int i3, int i4, Object obj) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            short[] sArr = (short[]) obj;
            int i7 = ((i2 - i5) * this.scanlineStride) + ((i - i6) * this.pixelStride);
            int i8 = 0;
            int i9 = 0;
            while (i8 < i4) {
                int i10 = 0;
                int i11 = i7;
                while (i10 < i3) {
                    int i12 = 0;
                    while (i12 < this.numDataElements) {
                        this.data[this.dataOffsets[i12] + i11] = sArr[i9];
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
