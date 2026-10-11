package java.awt.image;

/* loaded from: classes5.dex */
public class MultiPixelPackedSampleModel extends SampleModel {
    int bitMask;
    int dataBitOffset;
    int dataElementSize;
    int pixelBitStride;
    int pixelsPerDataElement;
    int scanlineStride;

    public MultiPixelPackedSampleModel(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, (((i2 * i4) + DataBuffer.getDataTypeSize(i)) - 1) / DataBuffer.getDataTypeSize(i), 0);
        if (i == 0 || i == 1 || i == 3) {
            return;
        }
        throw new IllegalArgumentException("Unsupported data type " + i);
    }

    @Override // java.awt.image.SampleModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        return new MultiPixelPackedSampleModel(this.dataType, i, i2, this.pixelBitStride);
    }

    @Override // java.awt.image.SampleModel
    public DataBuffer createDataBuffer() {
        DataBuffer dataBufferByte;
        int i = this.scanlineStride * this.height;
        int i2 = this.dataType;
        if (i2 == 0) {
            dataBufferByte = new DataBufferByte(i + ((this.dataBitOffset + 7) / 8));
        } else if (i2 == 1) {
            dataBufferByte = new DataBufferUShort(i + ((this.dataBitOffset + 15) / 16));
        } else {
            if (i2 != 3) {
                return null;
            }
            dataBufferByte = new DataBufferInt(i + ((this.dataBitOffset + 31) / 32));
        }
        return dataBufferByte;
    }

    @Override // java.awt.image.SampleModel
    public SampleModel createSubsetSampleModel(int[] iArr) {
        if (iArr == null || iArr.length == 1) {
            return createCompatibleSampleModel(this.width, this.height);
        }
        throw new RasterFormatException("MultiPixelPackedSampleModel has only one band.");
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof MultiPixelPackedSampleModel)) {
            return false;
        }
        MultiPixelPackedSampleModel multiPixelPackedSampleModel = (MultiPixelPackedSampleModel) obj;
        return this.width == multiPixelPackedSampleModel.width && this.height == multiPixelPackedSampleModel.height && this.numBands == multiPixelPackedSampleModel.numBands && this.dataType == multiPixelPackedSampleModel.dataType && this.pixelBitStride == multiPixelPackedSampleModel.pixelBitStride && this.bitMask == multiPixelPackedSampleModel.bitMask && this.pixelsPerDataElement == multiPixelPackedSampleModel.pixelsPerDataElement && this.dataElementSize == multiPixelPackedSampleModel.dataElementSize && this.dataBitOffset == multiPixelPackedSampleModel.dataBitOffset && this.scanlineStride == multiPixelPackedSampleModel.scanlineStride;
    }

    public int getBitOffset(int i) {
        return ((i * this.pixelBitStride) + this.dataBitOffset) % this.dataElementSize;
    }

    public int getDataBitOffset() {
        return this.dataBitOffset;
    }

    @Override // java.awt.image.SampleModel
    public Object getDataElements(int i, int i2, Object obj, DataBuffer dataBuffer) {
        Object obj2;
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int transferType = getTransferType();
        int i3 = this.dataBitOffset;
        int i4 = this.pixelBitStride;
        int i5 = i3 + (i * i4);
        int i6 = this.dataElementSize;
        int i7 = (i6 - ((i6 - 1) & i5)) - i4;
        if (transferType == 0) {
            byte[] bArr = obj == null ? new byte[1] : (byte[]) obj;
            bArr[0] = (byte) (this.bitMask & (dataBuffer.getElem((i2 * this.scanlineStride) + (i5 / i6)) >> i7));
            obj2 = bArr;
        } else if (transferType != 1) {
            obj2 = obj;
            if (transferType == 3) {
                int[] iArr = obj == null ? new int[1] : (int[]) obj;
                iArr[0] = this.bitMask & (dataBuffer.getElem((i2 * this.scanlineStride) + (i5 / i6)) >> i7);
                obj2 = iArr;
            }
        } else {
            short[] sArr = obj == null ? new short[1] : (short[]) obj;
            sArr[0] = (short) (this.bitMask & (dataBuffer.getElem((i2 * this.scanlineStride) + (i5 / i6)) >> i7));
            obj2 = sArr;
        }
        return obj2;
    }

    @Override // java.awt.image.SampleModel
    public int getNumDataElements() {
        return 1;
    }

    public int getOffset(int i, int i2) {
        return (i2 * this.scanlineStride) + (((i * this.pixelBitStride) + this.dataBitOffset) / this.dataElementSize);
    }

    @Override // java.awt.image.SampleModel
    public int[] getPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[this.numBands];
        }
        int i3 = this.dataBitOffset + (i * this.pixelBitStride);
        int elem = dataBuffer.getElem((i2 * this.scanlineStride) + (i3 / this.dataElementSize));
        int i4 = this.dataElementSize;
        iArr[0] = this.bitMask & (elem >> ((i4 - ((i4 - 1) & i3)) - this.pixelBitStride));
        return iArr;
    }

    public int getPixelBitStride() {
        return this.pixelBitStride;
    }

    @Override // java.awt.image.SampleModel
    public int getSample(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height || i3 != 0) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i4 = this.dataBitOffset + (i * this.pixelBitStride);
        int elem = dataBuffer.getElem((i2 * this.scanlineStride) + (i4 / this.dataElementSize));
        int i5 = this.dataElementSize;
        return this.bitMask & (elem >> ((i5 - (i4 & (i5 - 1))) - this.pixelBitStride));
    }

    @Override // java.awt.image.SampleModel
    public int[] getSampleSize() {
        return new int[]{this.pixelBitStride};
    }

    public int getScanlineStride() {
        return this.scanlineStride;
    }

    @Override // java.awt.image.SampleModel
    public int getTransferType() {
        int i = this.pixelBitStride;
        if (i > 16) {
            return 3;
        }
        return i > 8 ? 1 : 0;
    }

    public int hashCode() {
        return this.scanlineStride ^ (((((((((((((((((this.width << 8) ^ this.height) << 8) ^ this.numBands) << 8) ^ this.dataType) << 8) ^ this.pixelBitStride) << 8) ^ this.bitMask) << 8) ^ this.pixelsPerDataElement) << 8) ^ this.dataElementSize) << 8) ^ this.dataBitOffset) << 8);
    }

    @Override // java.awt.image.SampleModel
    public void setDataElements(int i, int i2, Object obj, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int transferType = getTransferType();
        int i3 = this.dataBitOffset;
        int i4 = this.pixelBitStride;
        int i5 = i3 + (i * i4);
        int i6 = i2 * this.scanlineStride;
        int i7 = this.dataElementSize;
        int i8 = i6 + (i5 / i7);
        int i9 = (i7 - (i5 & (i7 - 1))) - i4;
        int elem = dataBuffer.getElem(i8);
        int i10 = this.bitMask;
        int i11 = elem & (~(i10 << i9));
        if (transferType == 0) {
            dataBuffer.setElem(i8, ((i10 & (((byte[]) obj)[0] & 255)) << i9) | i11);
        } else if (transferType == 1) {
            dataBuffer.setElem(i8, ((i10 & (((short[]) obj)[0] & 65535)) << i9) | i11);
        } else {
            if (transferType != 3) {
                return;
            }
            dataBuffer.setElem(i8, ((i10 & ((int[]) obj)[0]) << i9) | i11);
        }
    }

    @Override // java.awt.image.SampleModel
    public void setPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i3 = this.dataBitOffset;
        int i4 = this.pixelBitStride;
        int i5 = i3 + (i * i4);
        int i6 = i2 * this.scanlineStride;
        int i7 = this.dataElementSize;
        int i8 = i6 + (i5 / i7);
        int i9 = (i7 - (i5 & (i7 - 1))) - i4;
        int elem = dataBuffer.getElem(i8);
        int i10 = this.bitMask;
        dataBuffer.setElem(i8, ((i10 & iArr[0]) << i9) | (elem & (~(i10 << i9))));
    }

    @Override // java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, int i4, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height || i3 != 0) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i5 = this.dataBitOffset;
        int i6 = this.pixelBitStride;
        int i7 = i5 + (i * i6);
        int i8 = i2 * this.scanlineStride;
        int i9 = this.dataElementSize;
        int i10 = i8 + (i7 / i9);
        int i11 = (i9 - (i7 & (i9 - 1))) - i6;
        int elem = dataBuffer.getElem(i10);
        int i12 = this.bitMask;
        dataBuffer.setElem(i10, ((i12 & i4) << i11) | (elem & (~(i12 << i11))));
    }

    @Override // java.awt.image.SampleModel
    public int getSampleSize(int i) {
        return this.pixelBitStride;
    }

    public MultiPixelPackedSampleModel(int i, int i2, int i3, int i4, int i5, int i6) {
        super(i, i2, i3, 1);
        if (i != 0 && i != 1 && i != 3) {
            throw new IllegalArgumentException("Unsupported data type " + i);
        }
        this.dataType = i;
        this.pixelBitStride = i4;
        this.scanlineStride = i5;
        this.dataBitOffset = i6;
        int dataTypeSize = DataBuffer.getDataTypeSize(i);
        this.dataElementSize = dataTypeSize;
        int i7 = dataTypeSize / i4;
        this.pixelsPerDataElement = i7;
        if (i7 * i4 == dataTypeSize) {
            this.bitMask = (1 << i4) - 1;
            return;
        }
        throw new RasterFormatException("MultiPixelPackedSampleModel does not allow pixels to span data element boundaries");
    }
}
