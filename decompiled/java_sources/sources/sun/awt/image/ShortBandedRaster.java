package sun.awt.image;

import com.google.android.material.motion.MotionUtils;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.BandedSampleModel;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferUShort;
import java.awt.image.Raster;
import java.awt.image.RasterFormatException;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
public class ShortBandedRaster extends SunWritableRaster {
    short[][] data;
    int[] dataOffsets;
    private int maxX;
    private int maxY;
    int scanlineStride;

    public ShortBandedRaster(SampleModel sampleModel, Point point) {
        this(sampleModel, sampleModel.createDataBuffer(), new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    private void verify() {
        int i;
        int i2 = this.width;
        if (i2 <= 0 || (i = this.height) <= 0 || i > Integer.MAX_VALUE / i2) {
            throw new RasterFormatException("Invalid raster dimension");
        }
        int i3 = this.scanlineStride;
        if (i3 < 0 || i3 > Integer.MAX_VALUE / i) {
            throw new RasterFormatException("Incorrect scanline stride: " + this.scanlineStride);
        }
        if (this.minX - this.sampleModelTranslateX >= 0) {
            int i4 = this.minY;
            int i5 = this.sampleModelTranslateY;
            if (i4 - i5 >= 0) {
                if (i > 1 || i4 - i5 > 0) {
                    int i6 = 0;
                    while (true) {
                        short[][] sArr = this.data;
                        if (i6 >= sArr.length) {
                            break;
                        }
                        if (this.scanlineStride > sArr[i6].length) {
                            throw new RasterFormatException("Incorrect scanline stride: " + this.scanlineStride);
                        }
                        i6++;
                    }
                }
                int i7 = 0;
                while (true) {
                    int[] iArr = this.dataOffsets;
                    if (i7 >= iArr.length) {
                        int i8 = (this.height - 1) * this.scanlineStride;
                        int i9 = this.width;
                        if (i9 - 1 > Integer.MAX_VALUE - i8) {
                            throw new RasterFormatException("Invalid raster dimension");
                        }
                        int i10 = i8 + (i9 - 1);
                        int i11 = 0;
                        for (int i12 = 0; i12 < this.numDataElements; i12++) {
                            int i13 = this.dataOffsets[i12];
                            if (i13 > Integer.MAX_VALUE - i10) {
                                throw new RasterFormatException("Invalid raster dimension");
                            }
                            int i14 = i13 + i10;
                            if (i14 > i11) {
                                i11 = i14;
                            }
                        }
                        for (int i15 = 0; i15 < this.numDataElements; i15++) {
                            if (this.data[i15].length <= i11) {
                                throw new RasterFormatException("Data array too small (should be > " + i11 + " )");
                            }
                        }
                        return;
                    }
                    if (iArr[i7] < 0) {
                        throw new RasterFormatException("Data offsets for band " + i7 + MotionUtils.f31761c + this.dataOffsets[i7] + ") must be >= 0");
                    }
                    i7++;
                }
            }
        }
        throw new RasterFormatException("Incorrect origin/translate: (" + this.minX + ", " + this.minY + ") / (" + this.sampleModelTranslateX + ", " + this.sampleModelTranslateY + MotionUtils.f31762d);
    }

    @Override // java.awt.image.Raster
    public Raster createChild(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        return createWritableChild(i, i2, i3, i4, i5, i6, iArr);
    }

    @Override // java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        if (i > 0 && i2 > 0) {
            return new ShortBandedRaster(this.sampleModel.createCompatibleSampleModel(i, i2), new Point(0, 0));
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
            throw new RasterFormatException("(x + width) is outside of Raster");
        }
        int i10 = i2 + i4;
        if (i10 < i2 || i10 > i8 + this.height) {
            throw new RasterFormatException("(y + height) is outside of Raster");
        }
        return new ShortBandedRaster(iArr != null ? this.sampleModel.createSubsetSampleModel(iArr) : this.sampleModel, this.dataBuffer, new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
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
            int i5 = ((i2 - i3) * this.scanlineStride) + (i - i4);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                sArr[i6] = this.data[i6][this.dataOffsets[i6] + i5];
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

    public short[][] getDataStorage() {
        return this.data;
    }

    public int getPixelStride() {
        return 1;
    }

    public int getScanlineStride() {
        return this.scanlineStride;
    }

    public short[] getShortData(int i, int i2, int i3, int i4, int i5, short[] sArr) {
        int i6;
        int i7 = this.minX;
        if (i >= i7 && i2 >= (i6 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (sArr == null) {
                sArr = new short[this.scanlineStride * i4];
            }
            int i8 = i2 - i6;
            int i9 = this.scanlineStride;
            int i10 = (i8 * i9) + (i - i7) + this.dataOffsets[i5];
            int i11 = 0;
            if (i9 == i3) {
                System.arraycopy(this.data[i5], i10, sArr, 0, i3 * i4);
            } else {
                int i12 = i10;
                int i13 = 0;
                while (i11 < i4) {
                    System.arraycopy(this.data[i5], i12, sArr, i13, i3);
                    i13 += i3;
                    i11++;
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
            int i10 = (i8 * i9) + (i - i7) + this.dataOffsets[i5];
            int i11 = 0;
            if (i9 == i3) {
                System.arraycopy(sArr, 0, this.data[i5], i10, i3 * i4);
            } else {
                int i12 = i10;
                int i13 = 0;
                while (i11 < i4) {
                    System.arraycopy(sArr, i13, this.data[i5], i12, i3);
                    i13 += i3;
                    i11++;
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
            int i5 = ((i2 - i3) * this.scanlineStride) + (i - i4);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                this.data[i6][this.dataOffsets[i6] + i5] = sArr[i6];
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public String toString() {
        return new String("ShortBandedRaster: width = " + this.width + " height = " + this.height + " #numBands " + this.numBands + " #dataElements " + this.numDataElements);
    }

    public ShortBandedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public short[] getDataStorage(int i) {
        return this.data[i];
    }

    public ShortBandedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, ShortBandedRaster shortBandedRaster) {
        super(sampleModel, dataBuffer, rectangle, point, shortBandedRaster);
        this.maxX = this.minX + this.width;
        this.maxY = this.minY + this.height;
        if (dataBuffer instanceof DataBufferUShort) {
            DataBufferUShort dataBufferUShort = (DataBufferUShort) dataBuffer;
            if (sampleModel instanceof BandedSampleModel) {
                BandedSampleModel bandedSampleModel = (BandedSampleModel) sampleModel;
                this.scanlineStride = bandedSampleModel.getScanlineStride();
                int[] bankIndices = bandedSampleModel.getBankIndices();
                int[] bandOffsets = bandedSampleModel.getBandOffsets();
                int[] offsets = dataBufferUShort.getOffsets();
                this.dataOffsets = new int[bankIndices.length];
                this.data = new short[bankIndices.length];
                int i = rectangle.f97732x - point.f97730x;
                int i2 = rectangle.f97733y - point.f97731y;
                for (int i3 = 0; i3 < bankIndices.length; i3++) {
                    this.data[i3] = SunWritableRaster.stealData(dataBufferUShort, bankIndices[i3]);
                    this.dataOffsets[i3] = offsets[bankIndices[i3]] + i + (this.scanlineStride * i2) + bandOffsets[i3];
                }
                verify();
                return;
            }
            throw new RasterFormatException("ShortBandedRasters must have BandedSampleModels");
        }
        throw new RasterFormatException("ShortBandedRaster must have ushort DataBuffers");
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
                sArr = new short[this.numDataElements * i3 * i4];
            } else {
                sArr = (short[]) obj;
            }
            int i7 = ((i2 - i5) * this.scanlineStride) + (i - i6);
            for (int i8 = 0; i8 < this.numDataElements; i8++) {
                short[] sArr2 = this.data[i8];
                int i9 = this.dataOffsets[i8];
                int i10 = 0;
                int i11 = i7;
                int i12 = i8;
                while (i10 < i4) {
                    int i13 = i9 + i11;
                    int i14 = 0;
                    while (i14 < i3) {
                        sArr[i12] = sArr2[i13];
                        i12 += this.numDataElements;
                        i14++;
                        i13++;
                    }
                    i10++;
                    i11 += this.scanlineStride;
                }
            }
            return sArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public short[] getShortData(int i, int i2, int i3, int i4, short[] sArr) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (sArr == null) {
                sArr = new short[this.numDataElements * this.scanlineStride * i4];
            }
            int i7 = ((i2 - i5) * this.scanlineStride) + (i - i6);
            for (int i8 = 0; i8 < this.numDataElements; i8++) {
                short[] sArr2 = this.data[i8];
                int i9 = this.dataOffsets[i8];
                int i10 = 0;
                int i11 = i7;
                int i12 = i8;
                while (i10 < i4) {
                    int i13 = i9 + i11;
                    int i14 = 0;
                    while (i14 < i3) {
                        sArr[i12] = sArr2[i13];
                        i12 += this.numDataElements;
                        i14++;
                        i13++;
                    }
                    i10++;
                    i11 += this.scanlineStride;
                }
            }
            return sArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public void putShortData(int i, int i2, int i3, int i4, short[] sArr) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            int i7 = ((i2 - i5) * this.scanlineStride) + (i - i6);
            for (int i8 = 0; i8 < this.numDataElements; i8++) {
                short[] sArr2 = this.data[i8];
                int i9 = this.dataOffsets[i8];
                int i10 = 0;
                int i11 = i7;
                int i12 = i8;
                while (i10 < i4) {
                    int i13 = i9 + i11;
                    int i14 = 0;
                    while (i14 < i3) {
                        sArr2[i13] = sArr[i12];
                        i12 += this.numDataElements;
                        i14++;
                        i13++;
                    }
                    i10++;
                    i11 += this.scanlineStride;
                }
            }
            markDirty();
            return;
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
            int i7 = ((i2 - i5) * this.scanlineStride) + (i - i6);
            for (int i8 = 0; i8 < this.numDataElements; i8++) {
                short[] sArr2 = this.data[i8];
                int i9 = this.dataOffsets[i8];
                int i10 = 0;
                int i11 = i7;
                int i12 = i8;
                while (i10 < i4) {
                    int i13 = i9 + i11;
                    int i14 = 0;
                    while (i14 < i3) {
                        sArr2[i13] = sArr[i12];
                        i12 += this.numDataElements;
                        i14++;
                        i13++;
                    }
                    i10++;
                    i11 += this.scanlineStride;
                }
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }
}
