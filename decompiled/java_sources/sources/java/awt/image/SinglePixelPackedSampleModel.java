package java.awt.image;

import java.util.Arrays;

/* loaded from: classes5.dex */
public class SinglePixelPackedSampleModel extends SampleModel {
    private int[] bitMasks;
    private int[] bitOffsets;
    private int[] bitSizes;
    private int maxBitSize;
    private int scanlineStride;

    static {
        ColorModel.loadLibraries();
        initIDs();
    }

    public SinglePixelPackedSampleModel(int i, int i2, int i3, int[] iArr) {
        this(i, i2, i3, i2, iArr);
        if (i == 0 || i == 1 || i == 3) {
            return;
        }
        throw new IllegalArgumentException("Unsupported data type " + i);
    }

    private long getBufferSize() {
        return (this.scanlineStride * (this.height - 1)) + this.width;
    }

    private static void initIDs() {
    }

    @Override // java.awt.image.SampleModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        return new SinglePixelPackedSampleModel(this.dataType, i, i2, this.bitMasks);
    }

    @Override // java.awt.image.SampleModel
    public DataBuffer createDataBuffer() {
        int bufferSize = (int) getBufferSize();
        int i = this.dataType;
        if (i == 0) {
            return new DataBufferByte(bufferSize);
        }
        if (i == 1) {
            return new DataBufferUShort(bufferSize);
        }
        if (i != 3) {
            return null;
        }
        return new DataBufferInt(bufferSize);
    }

    @Override // java.awt.image.SampleModel
    public SampleModel createSubsetSampleModel(int[] iArr) {
        if (iArr.length > this.numBands) {
            throw new RasterFormatException("There are only " + this.numBands + " bands");
        }
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = this.bitMasks[iArr[i]];
        }
        return new SinglePixelPackedSampleModel(this.dataType, this.width, this.height, this.scanlineStride, iArr2);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SinglePixelPackedSampleModel)) {
            return false;
        }
        SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) obj;
        return this.width == singlePixelPackedSampleModel.width && this.height == singlePixelPackedSampleModel.height && this.numBands == singlePixelPackedSampleModel.numBands && this.dataType == singlePixelPackedSampleModel.dataType && Arrays.equals(this.bitMasks, singlePixelPackedSampleModel.bitMasks) && Arrays.equals(this.bitOffsets, singlePixelPackedSampleModel.bitOffsets) && Arrays.equals(this.bitSizes, singlePixelPackedSampleModel.bitSizes) && this.maxBitSize == singlePixelPackedSampleModel.maxBitSize && this.scanlineStride == singlePixelPackedSampleModel.scanlineStride;
    }

    public int[] getBitMasks() {
        return (int[]) this.bitMasks.clone();
    }

    public int[] getBitOffsets() {
        return (int[]) this.bitOffsets.clone();
    }

    @Override // java.awt.image.SampleModel
    public Object getDataElements(int i, int i2, Object obj, DataBuffer dataBuffer) {
        Object obj2;
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int transferType = getTransferType();
        if (transferType == 0) {
            byte[] bArr = obj == null ? new byte[1] : (byte[]) obj;
            bArr[0] = (byte) dataBuffer.getElem((i2 * this.scanlineStride) + i);
            obj2 = bArr;
        } else if (transferType != 1) {
            obj2 = obj;
            if (transferType == 3) {
                int[] iArr = obj == null ? new int[1] : (int[]) obj;
                iArr[0] = dataBuffer.getElem((i2 * this.scanlineStride) + i);
                obj2 = iArr;
            }
        } else {
            short[] sArr = obj == null ? new short[1] : (short[]) obj;
            sArr[0] = (short) dataBuffer.getElem((i2 * this.scanlineStride) + i);
            obj2 = sArr;
        }
        return obj2;
    }

    @Override // java.awt.image.SampleModel
    public int getNumDataElements() {
        return 1;
    }

    public int getOffset(int i, int i2) {
        return (i2 * this.scanlineStride) + i;
    }

    @Override // java.awt.image.SampleModel
    public int[] getPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[this.numBands];
        }
        int elem = dataBuffer.getElem((i2 * this.scanlineStride) + i);
        for (int i3 = 0; i3 < this.numBands; i3++) {
            iArr[i3] = (this.bitMasks[i3] & elem) >>> this.bitOffsets[i3];
        }
        return iArr;
    }

    @Override // java.awt.image.SampleModel
    public int[] getPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4 * this.numBands];
        }
        int i9 = (i2 * this.scanlineStride) + i;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            for (int i12 = 0; i12 < i3; i12++) {
                int elem = dataBuffer.getElem(i9 + i12);
                int i13 = 0;
                while (i13 < this.numBands) {
                    iArr[i10] = (this.bitMasks[i13] & elem) >>> this.bitOffsets[i13];
                    i13++;
                    i10++;
                }
            }
            i9 += this.scanlineStride;
        }
        return iArr;
    }

    @Override // java.awt.image.SampleModel
    public int getSample(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        return (dataBuffer.getElem((i2 * this.scanlineStride) + i) & this.bitMasks[i3]) >>> this.bitOffsets[i3];
    }

    @Override // java.awt.image.SampleModel
    public int[] getSampleSize() {
        return (int[]) this.bitSizes.clone();
    }

    @Override // java.awt.image.SampleModel
    public int[] getSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i + i3 > this.width || i2 + i4 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4];
        }
        int i6 = (i2 * this.scanlineStride) + i;
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            while (i9 < i3) {
                iArr[i7] = (dataBuffer.getElem(i6 + i9) & this.bitMasks[i5]) >>> this.bitOffsets[i5];
                i9++;
                i7++;
            }
            i6 += this.scanlineStride;
        }
        return iArr;
    }

    public int getScanlineStride() {
        return this.scanlineStride;
    }

    public int hashCode() {
        int i = ((((((this.width << 8) ^ this.height) << 8) ^ this.numBands) << 8) ^ this.dataType) << 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = this.bitMasks;
            if (i3 >= iArr.length) {
                break;
            }
            i = (i ^ iArr[i3]) << 8;
            i3++;
        }
        int i4 = 0;
        while (true) {
            int[] iArr2 = this.bitOffsets;
            if (i4 >= iArr2.length) {
                break;
            }
            i = (i ^ iArr2[i4]) << 8;
            i4++;
        }
        while (true) {
            int[] iArr3 = this.bitSizes;
            if (i2 >= iArr3.length) {
                return this.scanlineStride ^ ((i ^ this.maxBitSize) << 8);
            }
            i = (i ^ iArr3[i2]) << 8;
            i2++;
        }
    }

    @Override // java.awt.image.SampleModel
    public void setDataElements(int i, int i2, Object obj, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int transferType = getTransferType();
        if (transferType == 0) {
            dataBuffer.setElem((i2 * this.scanlineStride) + i, ((byte[]) obj)[0] & 255);
        } else if (transferType == 1) {
            dataBuffer.setElem((i2 * this.scanlineStride) + i, ((short[]) obj)[0] & 65535);
        } else {
            if (transferType != 3) {
                return;
            }
            dataBuffer.setElem((i2 * this.scanlineStride) + i, ((int[]) obj)[0]);
        }
    }

    @Override // java.awt.image.SampleModel
    public void setPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i3 = (i2 * this.scanlineStride) + i;
        int elem = dataBuffer.getElem(i3);
        for (int i4 = 0; i4 < this.numBands; i4++) {
            int i5 = this.bitMasks[i4];
            elem = (elem & (~i5)) | (i5 & (iArr[i4] << this.bitOffsets[i4]));
        }
        dataBuffer.setElem(i3, elem);
    }

    @Override // java.awt.image.SampleModel
    public void setPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i9 = (i2 * this.scanlineStride) + i;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            for (int i12 = 0; i12 < i3; i12++) {
                int i13 = i9 + i12;
                int elem = dataBuffer.getElem(i13);
                int i14 = 0;
                while (i14 < this.numBands) {
                    int i15 = this.bitMasks[i14];
                    elem = (elem & (~i15)) | ((iArr[i10] << this.bitOffsets[i14]) & i15);
                    i14++;
                    i10++;
                }
                dataBuffer.setElem(i13, elem);
            }
            i9 += this.scanlineStride;
        }
    }

    @Override // java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, int i4, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int elem = dataBuffer.getElem((this.scanlineStride * i2) + i);
        int i5 = this.bitMasks[i3];
        dataBuffer.setElem((i2 * this.scanlineStride) + i, ((i4 << this.bitOffsets[i3]) & i5) | (elem & (~i5)));
    }

    @Override // java.awt.image.SampleModel
    public void setSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i + i3 > this.width || i2 + i4 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i6 = (i2 * this.scanlineStride) + i;
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            while (i9 < i3) {
                int i10 = i6 + i9;
                int elem = dataBuffer.getElem(i10);
                int i11 = this.bitMasks[i5];
                dataBuffer.setElem(i10, ((iArr[i7] << this.bitOffsets[i5]) & i11) | (elem & (~i11)));
                i9++;
                i7++;
            }
            i6 += this.scanlineStride;
        }
    }

    @Override // java.awt.image.SampleModel
    public int getSampleSize(int i) {
        return this.bitSizes[i];
    }

    public SinglePixelPackedSampleModel(int i, int i2, int i3, int i4, int[] iArr) {
        super(i, i2, i3, iArr.length);
        int i5;
        if (i != 0 && i != 1 && i != 3) {
            throw new IllegalArgumentException("Unsupported data type " + i);
        }
        this.dataType = i;
        this.bitMasks = (int[]) iArr.clone();
        this.scanlineStride = i4;
        int i6 = this.numBands;
        this.bitOffsets = new int[i6];
        this.bitSizes = new int[i6];
        int dataTypeSize = (int) ((1 << DataBuffer.getDataTypeSize(i)) - 1);
        this.maxBitSize = 0;
        for (int i7 = 0; i7 < this.numBands; i7++) {
            int[] iArr2 = this.bitMasks;
            int i8 = iArr2[i7] & dataTypeSize;
            iArr2[i7] = i8;
            int i9 = 0;
            if (i8 != 0) {
                while ((i8 & 1) == 0) {
                    i8 >>>= 1;
                    i9++;
                }
                i5 = 0;
                while ((i8 & 1) == 1) {
                    i8 >>>= 1;
                    i5++;
                }
                if (i8 != 0) {
                    throw new IllegalArgumentException("Mask " + iArr[i7] + " must be contiguous");
                }
            } else {
                i5 = 0;
            }
            this.bitOffsets[i7] = i9;
            this.bitSizes[i7] = i5;
            if (i5 > this.maxBitSize) {
                this.maxBitSize = i5;
            }
        }
    }
}
