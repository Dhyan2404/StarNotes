package sun.awt.image;

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
public class IntegerInterleavedRaster extends IntegerComponentRaster {
    private int maxX;
    private int maxY;

    public IntegerInterleavedRaster(SampleModel sampleModel, Point point) {
        this(sampleModel, sampleModel.createDataBuffer(), new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.Raster
    public Raster createChild(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        return createWritableChild(i, i2, i3, i4, i5, i6, iArr);
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        if (i > 0 && i2 > 0) {
            return new IntegerInterleavedRaster(this.sampleModel.createCompatibleSampleModel(i, i2), new Point(0, 0));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("negative ");
        sb.append(i <= 0 ? "width" : "height");
        throw new RasterFormatException(sb.toString());
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.WritableRaster
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
        return new IntegerInterleavedRaster(iArr != null ? this.sampleModel.createSubsetSampleModel(iArr) : this.sampleModel, this.dataBuffer, new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.Raster
    public Object getDataElements(int i, int i2, Object obj) {
        int i3;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            int[] iArr = obj == null ? new int[1] : (int[]) obj;
            iArr[0] = this.data[((i2 - i3) * this.scanlineStride) + (i - i4) + this.dataOffsets[0]];
            return iArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // sun.awt.image.IntegerComponentRaster
    public int getDataOffset(int i) {
        return this.dataOffsets[i];
    }

    @Override // sun.awt.image.IntegerComponentRaster
    public int[] getDataOffsets() {
        return (int[]) this.dataOffsets.clone();
    }

    @Override // sun.awt.image.IntegerComponentRaster
    public int[] getDataStorage() {
        return this.data;
    }

    @Override // sun.awt.image.IntegerComponentRaster
    public int getPixelStride() {
        return this.pixelStride;
    }

    @Override // sun.awt.image.IntegerComponentRaster
    public int getScanlineStride() {
        return this.scanlineStride;
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Object obj) {
        int i3;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            this.data[((i2 - i3) * this.scanlineStride) + (i - i4) + this.dataOffsets[0]] = ((int[]) obj)[0];
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // sun.awt.image.IntegerComponentRaster
    public String toString() {
        return new String("IntegerInterleavedRaster: width = " + this.width + " height = " + this.height + " #Bands = " + this.numBands + " xOff = " + this.sampleModelTranslateX + " yOff = " + this.sampleModelTranslateY + " dataOffset[0] " + this.dataOffsets[0]);
    }

    public IntegerInterleavedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public IntegerInterleavedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, IntegerInterleavedRaster integerInterleavedRaster) {
        super(sampleModel, dataBuffer, rectangle, point, integerInterleavedRaster);
        this.maxX = this.minX + this.width;
        this.maxY = this.minY + this.height;
        if (dataBuffer instanceof DataBufferInt) {
            DataBufferInt dataBufferInt = (DataBufferInt) dataBuffer;
            this.data = SunWritableRaster.stealData(dataBufferInt, 0);
            if (sampleModel instanceof SinglePixelPackedSampleModel) {
                SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) sampleModel;
                this.scanlineStride = singlePixelPackedSampleModel.getScanlineStride();
                this.pixelStride = 1;
                this.dataOffsets = r0;
                int[] iArr = {dataBufferInt.getOffset()};
                int[] iArr2 = this.dataOffsets;
                int i = iArr2[0];
                this.bandOffset = i;
                iArr2[0] = i + (rectangle.f97732x - point.f97730x) + ((rectangle.f97733y - point.f97731y) * this.scanlineStride);
                this.numDataElems = singlePixelPackedSampleModel.getNumDataElements();
                verify();
                return;
            }
            throw new RasterFormatException("IntegerInterleavedRasters must have SinglePixelPackedSampleModel");
        }
        throw new RasterFormatException("IntegerInterleavedRasters must haveinteger DataBuffers");
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster() {
        return createCompatibleWritableRaster(this.width, this.height);
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.Raster
    public Object getDataElements(int i, int i2, int i3, int i4, Object obj) {
        int i5;
        int[] iArr;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (obj instanceof int[]) {
                iArr = (int[]) obj;
            } else {
                iArr = new int[i3 * i4];
            }
            int i7 = ((i2 - i5) * this.scanlineStride) + (i - i6);
            int i8 = i7 + this.dataOffsets[0];
            int i9 = 0;
            for (int i10 = 0; i10 < i4; i10++) {
                System.arraycopy(this.data, i8, iArr, i9, i3);
                i9 += i3;
                i8 += this.scanlineStride;
            }
            return iArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.WritableRaster
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
        if (!(raster instanceof IntegerInterleavedRaster)) {
            Object obj = null;
            for (int i5 = 0; i5 < i4; i5++) {
                obj = raster.getDataElements(minX, minY + i5, i3, 1, obj);
                setDataElements(i, i2 + i5, i3, 1, obj);
            }
            return;
        }
        IntegerInterleavedRaster integerInterleavedRaster = (IntegerInterleavedRaster) raster;
        int[] dataStorage = integerInterleavedRaster.getDataStorage();
        int scanlineStride = integerInterleavedRaster.getScanlineStride();
        int dataOffset = integerInterleavedRaster.getDataOffset(0);
        int i6 = this.dataOffsets[0] + ((i2 - this.minY) * this.scanlineStride) + (i - this.minX);
        for (int i7 = 0; i7 < i4; i7++) {
            System.arraycopy(dataStorage, dataOffset, this.data, i6, i3);
            dataOffset += scanlineStride;
            i6 += this.scanlineStride;
        }
        markDirty();
    }

    @Override // sun.awt.image.IntegerComponentRaster, java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, int i3, int i4, Object obj) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            int[] iArr = (int[]) obj;
            int i7 = ((i2 - i5) * this.scanlineStride) + (i - i6);
            int i8 = i7 + this.dataOffsets[0];
            int i9 = 0;
            for (int i10 = 0; i10 < i4; i10++) {
                System.arraycopy(iArr, i9, this.data, i8, i3);
                i9 += i3;
                i8 += this.scanlineStride;
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }
}
