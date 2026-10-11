package sun.awt.image;

import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.ComponentSampleModel;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferByte;
import java.awt.image.PixelInterleavedSampleModel;
import java.awt.image.Raster;
import java.awt.image.RasterFormatException;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
public class ByteInterleavedRaster extends ByteComponentRaster {
    int[] bitMasks;
    int[] bitOffsets;
    int dbOffset;
    int dbOffsetPacked;
    boolean inOrder;
    private int maxX;
    private int maxY;
    boolean packed;

    public ByteInterleavedRaster(SampleModel sampleModel, Point point) {
        this(sampleModel, sampleModel.createDataBuffer(), new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    private boolean isInterleaved(ComponentSampleModel componentSampleModel) {
        int numBands = this.sampleModel.getNumBands();
        if (numBands == 1) {
            return true;
        }
        int[] bankIndices = componentSampleModel.getBankIndices();
        for (int i = 0; i < numBands; i++) {
            if (bankIndices[i] != 0) {
                return false;
            }
        }
        int[] bandOffsets = componentSampleModel.getBandOffsets();
        int i2 = bandOffsets[0];
        int i3 = i2;
        for (int i4 = 1; i4 < numBands; i4++) {
            int i5 = bandOffsets[i4];
            if (i5 < i3) {
                i3 = i5;
            }
            if (i5 > i2) {
                i2 = i5;
            }
        }
        return i2 - i3 < componentSampleModel.getPixelStride();
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.Raster
    public Raster createChild(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        return createWritableChild(i, i2, i3, i4, i5, i6, iArr);
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        if (i > 0 && i2 > 0) {
            return new ByteInterleavedRaster(this.sampleModel.createCompatibleSampleModel(i, i2), new Point(0, 0));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("negative ");
        sb.append(i <= 0 ? "width" : "height");
        throw new RasterFormatException(sb.toString());
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.WritableRaster
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
        return new ByteInterleavedRaster(iArr != null ? this.sampleModel.createSubsetSampleModel(iArr) : this.sampleModel, this.dataBuffer, new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
    }

    @Override // sun.awt.image.ByteComponentRaster
    public byte[] getByteData(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
        int i6;
        int i7 = this.minX;
        if (i >= i7 && i2 >= (i6 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (bArr == null) {
                bArr = new byte[i3 * i4];
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
                        bArr[i15] = this.data[i16];
                        i17++;
                        i16 += this.pixelStride;
                        i15++;
                    }
                    i14++;
                    i12 += this.scanlineStride;
                }
            } else if (i9 == i3) {
                System.arraycopy(this.data, i12, bArr, 0, i3 * i4);
            } else {
                int i18 = 0;
                while (i13 < i4) {
                    System.arraycopy(this.data, i12, bArr, i18, i3);
                    i18 += i3;
                    i13++;
                    i12 += this.scanlineStride;
                }
            }
            return bArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.Raster
    public Object getDataElements(int i, int i2, Object obj) {
        int i3;
        byte[] bArr;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            if (obj == null) {
                bArr = new byte[this.numDataElements];
            } else {
                bArr = (byte[]) obj;
            }
            int i5 = ((i2 - i3) * this.scanlineStride) + ((i - i4) * this.pixelStride);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                bArr[i6] = this.data[this.dataOffsets[i6] + i5];
            }
            return bArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // sun.awt.image.ByteComponentRaster
    public int getDataOffset(int i) {
        return this.dataOffsets[i];
    }

    @Override // sun.awt.image.ByteComponentRaster
    public int[] getDataOffsets() {
        return (int[]) this.dataOffsets.clone();
    }

    @Override // sun.awt.image.ByteComponentRaster
    public byte[] getDataStorage() {
        return this.data;
    }

    @Override // sun.awt.image.ByteComponentRaster
    public int getPixelStride() {
        return this.pixelStride;
    }

    @Override // java.awt.image.Raster
    public int[] getPixels(int i, int i2, int i3, int i4, int[] iArr) {
        if (i < this.minX || i2 < this.minY || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int[] iArr2 = iArr != null ? iArr : new int[i3 * i4 * this.numBands];
        int i5 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        int i6 = 0;
        if (this.packed) {
            int i7 = i5 + this.dbOffsetPacked;
            int i8 = 0;
            for (int i9 = 0; i9 < i4; i9++) {
                for (int i10 = 0; i10 < i3; i10++) {
                    byte b = this.data[i7 + i10];
                    int i11 = 0;
                    while (i11 < this.numBands) {
                        iArr2[i8] = (this.bitMasks[i11] & b) >>> this.bitOffsets[i11];
                        i11++;
                        i8++;
                    }
                }
                i7 += this.scanlineStride;
            }
        } else {
            int i12 = i5 + this.dbOffset;
            int[] iArr3 = this.dataOffsets;
            int i13 = iArr3[0];
            int i14 = this.numBands;
            if (i14 == 1) {
                int i15 = 0;
                for (int i16 = 0; i16 < i4; i16++) {
                    int i17 = i12 + i13;
                    int i18 = 0;
                    while (i18 < i3) {
                        iArr2[i15] = this.data[i17] & 255;
                        i17 += this.pixelStride;
                        i18++;
                        i15++;
                    }
                    i12 += this.scanlineStride;
                }
            } else if (i14 == 2) {
                int i19 = iArr3[1] - i13;
                int i20 = 0;
                for (int i21 = 0; i21 < i4; i21++) {
                    int i22 = i12 + i13;
                    for (int i23 = 0; i23 < i3; i23++) {
                        int i24 = i20 + 1;
                        byte[] bArr = this.data;
                        iArr2[i20] = bArr[i22] & 255;
                        i20 = i24 + 1;
                        iArr2[i24] = bArr[i22 + i19] & 255;
                        i22 += this.pixelStride;
                    }
                    i12 += this.scanlineStride;
                }
            } else if (i14 == 3) {
                int i25 = iArr3[1] - i13;
                int i26 = iArr3[2] - i13;
                int i27 = 0;
                for (int i28 = 0; i28 < i4; i28++) {
                    int i29 = i12 + i13;
                    int i30 = 0;
                    while (i30 < i3) {
                        int i31 = i27 + 1;
                        byte[] bArr2 = this.data;
                        iArr2[i27] = bArr2[i29] & 255;
                        int i32 = i31 + 1;
                        iArr2[i31] = bArr2[i29 + i25] & 255;
                        iArr2[i32] = bArr2[i29 + i26] & 255;
                        i29 += this.pixelStride;
                        i30++;
                        i27 = i32 + 1;
                    }
                    i12 += this.scanlineStride;
                }
            } else if (i14 == 4) {
                int i33 = iArr3[1] - i13;
                int i34 = iArr3[2] - i13;
                int i35 = iArr3[3] - i13;
                int i36 = 0;
                int i37 = 0;
                while (i36 < i4) {
                    int i38 = i12 + i13;
                    int i39 = i6;
                    while (i39 < i3) {
                        int i40 = i37 + 1;
                        byte[] bArr3 = this.data;
                        iArr2[i37] = bArr3[i38] & 255;
                        int i41 = i40 + 1;
                        iArr2[i40] = bArr3[i38 + i33] & 255;
                        int i42 = i41 + 1;
                        iArr2[i41] = bArr3[i38 + i34] & 255;
                        iArr2[i42] = bArr3[i38 + i35] & 255;
                        i38 += this.pixelStride;
                        i39++;
                        i37 = i42 + 1;
                    }
                    i12 += this.scanlineStride;
                    i36++;
                    i6 = 0;
                }
            } else {
                int i43 = 0;
                for (int i44 = 0; i44 < i4; i44++) {
                    int i45 = i12;
                    for (int i46 = 0; i46 < i3; i46++) {
                        int i47 = 0;
                        while (i47 < this.numBands) {
                            iArr2[i43] = this.data[this.dataOffsets[i47] + i45] & 255;
                            i47++;
                            i43++;
                        }
                        i45 += this.pixelStride;
                    }
                    i12 += this.scanlineStride;
                }
            }
        }
        return iArr2;
    }

    @Override // java.awt.image.Raster
    public int getSample(int i, int i2, int i3) {
        if (i < this.minX || i2 < this.minY || i >= this.maxX || i2 >= this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (this.packed) {
            return (this.data[((i2 * this.scanlineStride) + i) + this.dbOffsetPacked] & this.bitMasks[i3]) >>> this.bitOffsets[i3];
        }
        return this.data[(i2 * this.scanlineStride) + (i * this.pixelStride) + this.dbOffset + this.dataOffsets[i3]] & 255;
    }

    @Override // java.awt.image.Raster
    public int[] getSamples(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i < this.minX || i2 < this.minY || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4];
        }
        int i6 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        if (this.packed) {
            int i7 = i6 + this.dbOffsetPacked;
            int i8 = this.bitMasks[i5];
            int i9 = this.bitOffsets[i5];
            int i10 = 0;
            for (int i11 = 0; i11 < i4; i11++) {
                int i12 = i7;
                int i13 = 0;
                while (i13 < i3) {
                    iArr[i10] = (this.data[i12] & i8) >>> i9;
                    i13++;
                    i10++;
                    i12++;
                }
                i7 += this.scanlineStride;
            }
        } else {
            int i14 = i6 + this.dbOffset + this.dataOffsets[i5];
            int i15 = 0;
            for (int i16 = 0; i16 < i4; i16++) {
                int i17 = i14;
                int i18 = 0;
                while (i18 < i3) {
                    iArr[i15] = this.data[i17] & 255;
                    i17 += this.pixelStride;
                    i18++;
                    i15++;
                }
                i14 += this.scanlineStride;
            }
        }
        return iArr;
    }

    @Override // sun.awt.image.ByteComponentRaster
    public int getScanlineStride() {
        return this.scanlineStride;
    }

    @Override // sun.awt.image.ByteComponentRaster
    public void putByteData(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
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
                        this.data[i16] = bArr[i15];
                        i17++;
                        i16 += this.pixelStride;
                        i15++;
                    }
                    i14++;
                    i12 += this.scanlineStride;
                }
            } else if (i9 == i3) {
                System.arraycopy(bArr, 0, this.data, i12, i3 * i4);
            } else {
                int i18 = 0;
                while (i13 < i4) {
                    System.arraycopy(bArr, i18, this.data, i12, i3);
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

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Object obj) {
        int i3;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            byte[] bArr = (byte[]) obj;
            int i5 = ((i2 - i3) * this.scanlineStride) + ((i - i4) * this.pixelStride);
            for (int i6 = 0; i6 < this.numDataElements; i6++) {
                this.data[this.dataOffsets[i6] + i5] = bArr[i6];
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.WritableRaster
    public void setPixels(int i, int i2, int i3, int i4, int[] iArr) {
        if (i < this.minX || i2 < this.minY || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i5 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        if (this.packed) {
            int i6 = i5 + this.dbOffsetPacked;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                for (int i9 = 0; i9 < i3; i9++) {
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < this.numBands) {
                        i11 |= (iArr[i7] << this.bitOffsets[i10]) & this.bitMasks[i10];
                        i10++;
                        i7++;
                    }
                    this.data[i6 + i9] = (byte) i11;
                }
                i6 += this.scanlineStride;
            }
        } else {
            int i12 = i5 + this.dbOffset;
            int[] iArr2 = this.dataOffsets;
            int i13 = iArr2[0];
            int i14 = this.numBands;
            if (i14 == 1) {
                int i15 = 0;
                for (int i16 = 0; i16 < i4; i16++) {
                    int i17 = i12 + i13;
                    int i18 = 0;
                    while (i18 < i3) {
                        this.data[i17] = (byte) iArr[i15];
                        i17 += this.pixelStride;
                        i18++;
                        i15++;
                    }
                    i12 += this.scanlineStride;
                }
            } else if (i14 == 2) {
                int i19 = iArr2[1] - i13;
                int i20 = 0;
                for (int i21 = 0; i21 < i4; i21++) {
                    int i22 = i12 + i13;
                    int i23 = 0;
                    while (i23 < i3) {
                        byte[] bArr = this.data;
                        int i24 = i20 + 1;
                        bArr[i22] = (byte) iArr[i20];
                        bArr[i22 + i19] = (byte) iArr[i24];
                        i22 += this.pixelStride;
                        i23++;
                        i20 = i24 + 1;
                    }
                    i12 += this.scanlineStride;
                }
            } else if (i14 == 3) {
                int i25 = iArr2[1] - i13;
                int i26 = iArr2[2] - i13;
                int i27 = 0;
                for (int i28 = 0; i28 < i4; i28++) {
                    int i29 = i12 + i13;
                    int i30 = 0;
                    while (i30 < i3) {
                        byte[] bArr2 = this.data;
                        int i31 = i27 + 1;
                        bArr2[i29] = (byte) iArr[i27];
                        int i32 = i31 + 1;
                        bArr2[i29 + i25] = (byte) iArr[i31];
                        bArr2[i29 + i26] = (byte) iArr[i32];
                        i29 += this.pixelStride;
                        i30++;
                        i27 = i32 + 1;
                    }
                    i12 += this.scanlineStride;
                }
            } else if (i14 == 4) {
                int i33 = iArr2[1] - i13;
                int i34 = iArr2[2] - i13;
                int i35 = iArr2[3] - i13;
                int i36 = 0;
                for (int i37 = 0; i37 < i4; i37++) {
                    int i38 = i12 + i13;
                    int i39 = 0;
                    while (i39 < i3) {
                        byte[] bArr3 = this.data;
                        int i40 = i36 + 1;
                        bArr3[i38] = (byte) iArr[i36];
                        int i41 = i40 + 1;
                        bArr3[i38 + i33] = (byte) iArr[i40];
                        int i42 = i41 + 1;
                        bArr3[i38 + i34] = (byte) iArr[i41];
                        bArr3[i38 + i35] = (byte) iArr[i42];
                        i38 += this.pixelStride;
                        i39++;
                        i36 = i42 + 1;
                    }
                    i12 += this.scanlineStride;
                }
            } else {
                int i43 = 0;
                for (int i44 = 0; i44 < i4; i44++) {
                    int i45 = i12;
                    for (int i46 = 0; i46 < i3; i46++) {
                        int i47 = 0;
                        while (i47 < this.numBands) {
                            this.data[this.dataOffsets[i47] + i45] = (byte) iArr[i43];
                            i47++;
                            i43++;
                        }
                        i45 += this.pixelStride;
                    }
                    i12 += this.scanlineStride;
                }
            }
        }
        markDirty();
    }

    @Override // java.awt.image.WritableRaster
    public void setRect(int i, int i2, Raster raster) {
        if (!(raster instanceof ByteInterleavedRaster)) {
            super.setRect(i, i2, raster);
            return;
        }
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
        int i10 = this.maxX;
        int i11 = i9 > i10 ? i10 - i3 : width;
        int i12 = i4 + height;
        int i13 = this.maxY;
        setDataElements(i3, i4, minX, minY, i11, i12 > i13 ? i13 - i4 : height, raster);
    }

    @Override // java.awt.image.WritableRaster
    public void setSample(int i, int i2, int i3, int i4) {
        if (i < this.minX || i2 < this.minY || i >= this.maxX || i2 >= this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (this.packed) {
            int i5 = (i2 * this.scanlineStride) + i + this.dbOffsetPacked;
            int i6 = this.bitMasks[i3];
            byte[] bArr = this.data;
            bArr[i5] = (byte) ((i6 & (i4 << this.bitOffsets[i3])) | ((byte) (bArr[i5] & (~i6))));
        } else {
            this.data[(i2 * this.scanlineStride) + (i * this.pixelStride) + this.dbOffset + this.dataOffsets[i3]] = (byte) i4;
        }
        markDirty();
    }

    @Override // java.awt.image.WritableRaster
    public void setSamples(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i < this.minX || i2 < this.minY || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i6 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        if (this.packed) {
            int i7 = i6 + this.dbOffsetPacked;
            int i8 = this.bitMasks[i5];
            int i9 = 0;
            for (int i10 = 0; i10 < i4; i10++) {
                int i11 = i7;
                int i12 = 0;
                while (i12 < i3) {
                    byte[] bArr = this.data;
                    bArr[i11] = (byte) (((iArr[i9] << this.bitOffsets[i5]) & i8) | ((byte) (bArr[i11] & (~i8))));
                    i12++;
                    i11++;
                    i9++;
                }
                i7 += this.scanlineStride;
            }
        } else {
            int i13 = i6 + this.dbOffset + this.dataOffsets[i5];
            int i14 = 0;
            for (int i15 = 0; i15 < i4; i15++) {
                int i16 = i13;
                int i17 = 0;
                while (i17 < i3) {
                    this.data[i16] = (byte) iArr[i14];
                    i16 += this.pixelStride;
                    i17++;
                    i14++;
                }
                i13 += this.scanlineStride;
            }
        }
        markDirty();
    }

    @Override // sun.awt.image.ByteComponentRaster
    public String toString() {
        return new String("ByteInterleavedRaster: width = " + this.width + " height = " + this.height + " #numDataElements " + this.numDataElements + " dataOff[0] = " + this.dataOffsets[0]);
    }

    public ByteInterleavedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public ByteInterleavedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, ByteInterleavedRaster byteInterleavedRaster) {
        super(sampleModel, dataBuffer, rectangle, point, byteInterleavedRaster);
        this.packed = false;
        this.maxX = this.minX + this.width;
        this.maxY = this.minY + this.height;
        if (dataBuffer instanceof DataBufferByte) {
            DataBufferByte dataBufferByte = (DataBufferByte) dataBuffer;
            this.data = SunWritableRaster.stealData(dataBufferByte, 0);
            int i = rectangle.f97732x - point.f97730x;
            int i2 = rectangle.f97733y - point.f97731y;
            int i3 = 1;
            if (!(sampleModel instanceof PixelInterleavedSampleModel) && (!(sampleModel instanceof ComponentSampleModel) || !isInterleaved((ComponentSampleModel) sampleModel))) {
                if (sampleModel instanceof SinglePixelPackedSampleModel) {
                    SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) sampleModel;
                    this.packed = true;
                    this.bitMasks = singlePixelPackedSampleModel.getBitMasks();
                    this.bitOffsets = singlePixelPackedSampleModel.getBitOffsets();
                    this.scanlineStride = singlePixelPackedSampleModel.getScanlineStride();
                    this.pixelStride = 1;
                    this.dataOffsets = r6;
                    int[] iArr = {dataBufferByte.getOffset()};
                    int[] iArr2 = this.dataOffsets;
                    iArr2[0] = iArr2[0] + (this.pixelStride * i) + (this.scanlineStride * i2);
                } else {
                    throw new RasterFormatException("ByteInterleavedRasters must have PixelInterleavedSampleModel, SinglePixelPackedSampleModel or interleaved ComponentSampleModel.  Sample model is " + sampleModel);
                }
            } else {
                ComponentSampleModel componentSampleModel = (ComponentSampleModel) sampleModel;
                this.scanlineStride = componentSampleModel.getScanlineStride();
                this.pixelStride = componentSampleModel.getPixelStride();
                this.dataOffsets = componentSampleModel.getBandOffsets();
                for (int i4 = 0; i4 < getNumDataElements(); i4++) {
                    int[] iArr3 = this.dataOffsets;
                    iArr3[i4] = iArr3[i4] + (this.pixelStride * i) + (this.scanlineStride * i2);
                }
            }
            this.bandOffset = this.dataOffsets[0];
            int offset = dataBuffer.getOffset();
            int i5 = this.sampleModelTranslateY;
            int i6 = this.scanlineStride;
            int i7 = offset - (i5 * i6);
            int i8 = this.sampleModelTranslateX;
            int i9 = this.pixelStride;
            int i10 = i7 - (i8 * i9);
            this.dbOffsetPacked = i10;
            this.dbOffset = i10 - ((i * i9) + (i2 * i6));
            this.inOrder = false;
            if (this.numDataElements == i9) {
                this.inOrder = true;
                while (true) {
                    if (i3 >= this.numDataElements) {
                        break;
                    }
                    int[] iArr4 = this.dataOffsets;
                    if (iArr4[i3] - iArr4[0] != i3) {
                        this.inOrder = false;
                        break;
                    }
                    i3++;
                }
            }
            verify();
            return;
        }
        throw new RasterFormatException("ByteInterleavedRasters must have byte DataBuffers");
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster() {
        return createCompatibleWritableRaster(this.width, this.height);
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.Raster
    public Object getDataElements(int i, int i2, int i3, int i4, Object obj) {
        return getByteData(i, i2, i3, i4, (byte[]) obj);
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Raster raster) {
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        int i3 = i + minX;
        int i4 = i2 + minY;
        int width = raster.getWidth();
        int height = raster.getHeight();
        if (i3 >= this.minX && i4 >= this.minY && i3 + width <= this.maxX && i4 + height <= this.maxY) {
            setDataElements(i3, i4, minX, minY, width, height, raster);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // sun.awt.image.ByteComponentRaster
    public byte[] getByteData(int i, int i2, int i3, int i4, byte[] bArr) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            if (bArr == null) {
                bArr = new byte[this.numDataElements * i3 * i4];
            }
            int i7 = i2 - i5;
            int i8 = this.scanlineStride;
            int i9 = i - i6;
            int i10 = this.pixelStride;
            int i11 = (i7 * i8) + (i9 * i10);
            int i12 = 0;
            if (this.inOrder) {
                int i13 = i11 + this.dataOffsets[0];
                int i14 = i3 * i10;
                if (i8 == i14) {
                    System.arraycopy(this.data, i13, bArr, 0, i14 * i4);
                } else {
                    int i15 = 0;
                    while (i12 < i4) {
                        System.arraycopy(this.data, i13, bArr, i15, i14);
                        i15 += i14;
                        i12++;
                        i13 += this.scanlineStride;
                    }
                }
            } else {
                int i16 = this.numDataElements;
                if (i16 == 1) {
                    int i17 = i11 + this.dataOffsets[0];
                    int i18 = 0;
                    int i19 = 0;
                    while (i18 < i4) {
                        int i20 = i17;
                        int i21 = 0;
                        while (i21 < i3) {
                            bArr[i19] = this.data[i20];
                            i21++;
                            i20 += this.pixelStride;
                            i19++;
                        }
                        i18++;
                        i17 += this.scanlineStride;
                    }
                } else if (i16 == 2) {
                    int[] iArr = this.dataOffsets;
                    int i22 = iArr[0];
                    int i23 = i11 + i22;
                    int i24 = iArr[1] - i22;
                    int i25 = 0;
                    int i26 = 0;
                    while (i25 < i4) {
                        int i27 = i23;
                        int i28 = 0;
                        while (i28 < i3) {
                            int i29 = i26 + 1;
                            byte[] bArr2 = this.data;
                            bArr[i26] = bArr2[i27];
                            i26 = i29 + 1;
                            bArr[i29] = bArr2[i27 + i24];
                            i28++;
                            i27 += this.pixelStride;
                        }
                        i25++;
                        i23 += this.scanlineStride;
                    }
                } else if (i16 == 3) {
                    int[] iArr2 = this.dataOffsets;
                    int i30 = iArr2[0];
                    int i31 = i11 + i30;
                    int i32 = iArr2[1] - i30;
                    int i33 = iArr2[2] - i30;
                    int i34 = 0;
                    int i35 = 0;
                    while (i34 < i4) {
                        int i36 = i31;
                        int i37 = 0;
                        while (i37 < i3) {
                            int i38 = i35 + 1;
                            byte[] bArr3 = this.data;
                            bArr[i35] = bArr3[i36];
                            int i39 = i38 + 1;
                            bArr[i38] = bArr3[i36 + i32];
                            bArr[i39] = bArr3[i36 + i33];
                            i37++;
                            i36 += this.pixelStride;
                            i35 = i39 + 1;
                        }
                        i34++;
                        i31 += this.scanlineStride;
                    }
                } else if (i16 == 4) {
                    int[] iArr3 = this.dataOffsets;
                    int i40 = iArr3[0];
                    int i41 = i11 + i40;
                    int i42 = iArr3[1] - i40;
                    int i43 = iArr3[2] - i40;
                    int i44 = iArr3[3] - i40;
                    int i45 = 0;
                    int i46 = 0;
                    while (i45 < i4) {
                        int i47 = i41;
                        int i48 = 0;
                        while (i48 < i3) {
                            int i49 = i46 + 1;
                            byte[] bArr4 = this.data;
                            bArr[i46] = bArr4[i47];
                            int i50 = i49 + 1;
                            bArr[i49] = bArr4[i47 + i42];
                            int i51 = i50 + 1;
                            bArr[i50] = bArr4[i47 + i43];
                            i46 = i51 + 1;
                            bArr[i51] = bArr4[i47 + i44];
                            i48++;
                            i47 += this.pixelStride;
                        }
                        i45++;
                        i41 += this.scanlineStride;
                    }
                } else {
                    int i52 = 0;
                    int i53 = 0;
                    while (i52 < i4) {
                        int i54 = i11;
                        int i55 = 0;
                        while (i55 < i3) {
                            int i56 = 0;
                            while (i56 < this.numDataElements) {
                                bArr[i53] = this.data[this.dataOffsets[i56] + i54];
                                i56++;
                                i53++;
                            }
                            i55++;
                            i54 += this.pixelStride;
                        }
                        i52++;
                        i11 += this.scanlineStride;
                    }
                }
            }
            return bArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // sun.awt.image.ByteComponentRaster
    public void putByteData(int i, int i2, int i3, int i4, byte[] bArr) {
        int i5;
        int i6 = this.minX;
        if (i >= i6 && i2 >= (i5 = this.minY) && i + i3 <= this.maxX && i2 + i4 <= this.maxY) {
            int i7 = i2 - i5;
            int i8 = this.scanlineStride;
            int i9 = i - i6;
            int i10 = this.pixelStride;
            int i11 = (i7 * i8) + (i9 * i10);
            int i12 = 0;
            if (this.inOrder) {
                int i13 = i11 + this.dataOffsets[0];
                int i14 = i3 * i10;
                if (i14 == i8) {
                    System.arraycopy(bArr, 0, this.data, i13, i14 * i4);
                } else {
                    int i15 = 0;
                    while (i12 < i4) {
                        System.arraycopy(bArr, i15, this.data, i13, i14);
                        i15 += i14;
                        i12++;
                        i13 += this.scanlineStride;
                    }
                }
            } else {
                int i16 = this.numDataElements;
                if (i16 == 1) {
                    int i17 = i11 + this.dataOffsets[0];
                    int i18 = 0;
                    int i19 = 0;
                    while (i18 < i4) {
                        int i20 = i17;
                        int i21 = 0;
                        while (i21 < i3) {
                            this.data[i20] = bArr[i19];
                            i21++;
                            i20 += this.pixelStride;
                            i19++;
                        }
                        i18++;
                        i17 += this.scanlineStride;
                    }
                } else if (i16 == 2) {
                    int[] iArr = this.dataOffsets;
                    int i22 = iArr[0];
                    int i23 = i11 + i22;
                    int i24 = iArr[1] - i22;
                    int i25 = 0;
                    int i26 = 0;
                    while (i25 < i4) {
                        int i27 = i23;
                        int i28 = 0;
                        while (i28 < i3) {
                            byte[] bArr2 = this.data;
                            int i29 = i26 + 1;
                            bArr2[i27] = bArr[i26];
                            bArr2[i27 + i24] = bArr[i29];
                            i28++;
                            i27 += this.pixelStride;
                            i26 = i29 + 1;
                        }
                        i25++;
                        i23 += this.scanlineStride;
                    }
                } else if (i16 == 3) {
                    int[] iArr2 = this.dataOffsets;
                    int i30 = iArr2[0];
                    int i31 = i11 + i30;
                    int i32 = iArr2[1] - i30;
                    int i33 = iArr2[2] - i30;
                    int i34 = 0;
                    int i35 = 0;
                    while (i34 < i4) {
                        int i36 = i31;
                        int i37 = 0;
                        while (i37 < i3) {
                            byte[] bArr3 = this.data;
                            int i38 = i35 + 1;
                            bArr3[i36] = bArr[i35];
                            int i39 = i38 + 1;
                            bArr3[i36 + i32] = bArr[i38];
                            bArr3[i36 + i33] = bArr[i39];
                            i37++;
                            i36 += this.pixelStride;
                            i35 = i39 + 1;
                        }
                        i34++;
                        i31 += this.scanlineStride;
                    }
                } else if (i16 == 4) {
                    int[] iArr3 = this.dataOffsets;
                    int i40 = iArr3[0];
                    int i41 = i11 + i40;
                    int i42 = iArr3[1] - i40;
                    int i43 = iArr3[2] - i40;
                    int i44 = iArr3[3] - i40;
                    int i45 = 0;
                    int i46 = 0;
                    while (i45 < i4) {
                        int i47 = i41;
                        int i48 = 0;
                        while (i48 < i3) {
                            byte[] bArr4 = this.data;
                            int i49 = i46 + 1;
                            bArr4[i47] = bArr[i46];
                            int i50 = i49 + 1;
                            bArr4[i47 + i42] = bArr[i49];
                            int i51 = i50 + 1;
                            bArr4[i47 + i43] = bArr[i50];
                            bArr4[i47 + i44] = bArr[i51];
                            i48++;
                            i47 += this.pixelStride;
                            i46 = i51 + 1;
                        }
                        i45++;
                        i41 += this.scanlineStride;
                    }
                } else {
                    int i52 = 0;
                    int i53 = 0;
                    while (i52 < i4) {
                        int i54 = i11;
                        int i55 = 0;
                        while (i55 < i3) {
                            int i56 = 0;
                            while (i56 < this.numDataElements) {
                                this.data[this.dataOffsets[i56] + i54] = bArr[i53];
                                i56++;
                                i53++;
                            }
                            i55++;
                            i54 += this.pixelStride;
                        }
                        i52++;
                        i11 += this.scanlineStride;
                    }
                }
            }
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    private void setDataElements(int i, int i2, int i3, int i4, int i5, int i6, Raster raster) {
        if (i5 <= 0 || i6 <= 0) {
            return;
        }
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        if (raster instanceof ByteInterleavedRaster) {
            ByteInterleavedRaster byteInterleavedRaster = (ByteInterleavedRaster) raster;
            byte[] dataStorage = byteInterleavedRaster.getDataStorage();
            if (this.inOrder && byteInterleavedRaster.inOrder && this.pixelStride == byteInterleavedRaster.pixelStride) {
                int dataOffset = byteInterleavedRaster.getDataOffset(0);
                int scanlineStride = byteInterleavedRaster.getScanlineStride();
                int pixelStride = dataOffset + ((i4 - minY) * scanlineStride) + ((i3 - minX) * byteInterleavedRaster.getPixelStride());
                int i7 = this.dataOffsets[0] + ((i2 - this.minY) * this.scanlineStride);
                int i8 = i - this.minX;
                int i9 = this.pixelStride;
                int i10 = i7 + (i8 * i9);
                int i11 = i5 * i9;
                for (int i12 = 0; i12 < i6; i12++) {
                    System.arraycopy(dataStorage, pixelStride, this.data, i10, i11);
                    pixelStride += scanlineStride;
                    i10 += this.scanlineStride;
                }
                markDirty();
                return;
            }
        }
        Object obj = null;
        for (int i13 = 0; i13 < i6; i13++) {
            obj = raster.getDataElements(minX, minY + i13, i5, 1, obj);
            setDataElements(i, i2 + i13, i5, 1, obj);
        }
    }

    @Override // sun.awt.image.ByteComponentRaster, java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, int i3, int i4, Object obj) {
        putByteData(i, i2, i3, i4, (byte[]) obj);
    }
}
