package sun.awt.image;

import com.google.android.material.motion.MotionUtils;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferByte;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.Raster;
import java.awt.image.RasterFormatException;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
public class BytePackedRaster extends SunWritableRaster {
    int bitMask;
    byte[] data;
    int dataBitOffset;
    private int maxX;
    private int maxY;
    int pixelBitStride;
    int scanlineStride;
    int shiftOffset;
    int type;

    public BytePackedRaster(SampleModel sampleModel, Point point) {
        this(sampleModel, sampleModel.createDataBuffer(), new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    private static void initIDs() {
    }

    private void verify(boolean z) {
        int i;
        int i2 = this.dataBitOffset;
        if (i2 < 0) {
            throw new RasterFormatException("Data offsets must be >= 0");
        }
        int i3 = this.width;
        if (i3 <= 0 || (i = this.height) <= 0 || i > Integer.MAX_VALUE / i3) {
            throw new RasterFormatException("Invalid raster dimension");
        }
        int i4 = i3 - 1;
        int i5 = this.pixelBitStride;
        if (i4 > Integer.MAX_VALUE / i5) {
            throw new RasterFormatException("Invalid raster dimension");
        }
        if (this.minX - this.sampleModelTranslateX >= 0) {
            int i6 = this.minY;
            int i7 = this.sampleModelTranslateY;
            if (i6 - i7 >= 0) {
                int i8 = this.scanlineStride;
                if (i8 < 0 || i8 > Integer.MAX_VALUE / i) {
                    throw new RasterFormatException("Invalid scanline stride");
                }
                if ((i > 1 || i6 - i7 > 0) && i8 > this.data.length) {
                    throw new RasterFormatException("Incorrect scanline stride: " + this.scanlineStride);
                }
                long j = (((i2 + (((i - 1) * i8) * 8)) + ((i3 - 1) * i5)) + i5) - 1;
                if (j < 0 || j / 8 >= this.data.length) {
                    throw new RasterFormatException("raster dimensions overflow array bounds");
                }
                if (z && i > 1 && ((i3 * i5) - 1) / 8 >= i8) {
                    throw new RasterFormatException("data for adjacent scanlines overlaps");
                }
                return;
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
            return new BytePackedRaster(this.sampleModel.createCompatibleSampleModel(i, i2), new Point(0, 0));
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
        return new BytePackedRaster(iArr != null ? this.sampleModel.createSubsetSampleModel(iArr) : this.sampleModel, this.dataBuffer, new Rectangle(i5, i6, i3, i4), new Point(this.sampleModelTranslateX + (i5 - i), this.sampleModelTranslateY + (i6 - i2)), this);
    }

    public byte[] getByteData(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
        return getByteData(i, i2, i3, i4, bArr);
    }

    public int getDataBitOffset() {
        return this.dataBitOffset;
    }

    @Override // java.awt.image.Raster
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
            int i5 = this.dataBitOffset + ((i - i4) * this.pixelBitStride);
            bArr[0] = (byte) (this.bitMask & ((this.data[((i2 - i3) * this.scanlineStride) + (i5 >> 3)] & 255) >> (this.shiftOffset - (i5 & 7))));
            return bArr;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public byte[] getDataStorage() {
        return this.data;
    }

    public int getPixelBitStride() {
        return this.pixelBitStride;
    }

    public Object getPixelData(int i, int i2, int i3, int i4, Object obj) {
        int i5;
        int i6 = this.minX;
        if (i < i6 || i2 < (i5 = this.minY) || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        byte[] bArr = obj == null ? new byte[this.numDataElements * i3 * i4] : (byte[]) obj;
        int i7 = this.pixelBitStride;
        int i8 = this.dataBitOffset + ((i - i6) * i7);
        int i9 = (i2 - i5) * this.scanlineStride;
        byte[] bArr2 = this.data;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = 0;
            int i13 = i8;
            while (i12 < i3) {
                bArr[i10] = (byte) ((bArr2[i9 + (i13 >> 3)] >> (this.shiftOffset - (i13 & 7))) & this.bitMask);
                i13 += i7;
                i12++;
                i10++;
            }
            i9 += this.scanlineStride;
        }
        return bArr;
    }

    @Override // java.awt.image.Raster
    public int[] getPixels(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6 = this.minX;
        if (i < i6 || i2 < (i5 = this.minY) || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int[] iArr2 = iArr == null ? new int[i3 * i4] : iArr;
        int i7 = this.pixelBitStride;
        int i8 = this.dataBitOffset + ((i - i6) * i7);
        int i9 = (i2 - i5) * this.scanlineStride;
        byte[] bArr = this.data;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = 0;
            int i13 = i8;
            while (i12 < i3) {
                int i14 = i13 & 7;
                if (i14 == 0) {
                    break;
                }
                iArr2[i10] = (bArr[i9 + (i13 >> 3)] >> (this.shiftOffset - i14)) & this.bitMask;
                i13 += i7;
                i12++;
                i10++;
            }
            int i15 = (i13 >> 3) + i9;
            if (i7 == 1) {
                while (i12 < i3 - 7) {
                    int i16 = i15 + 1;
                    byte b = bArr[i15];
                    int i17 = i10 + 1;
                    iArr2[i10] = (b >> 7) & 1;
                    int i18 = i17 + 1;
                    iArr2[i17] = (b >> 6) & 1;
                    int i19 = i18 + 1;
                    iArr2[i18] = (b >> 5) & 1;
                    int i20 = i19 + 1;
                    iArr2[i19] = (b >> 4) & 1;
                    int i21 = i20 + 1;
                    iArr2[i20] = (b >> 3) & 1;
                    int i22 = i21 + 1;
                    iArr2[i21] = (b >> 2) & 1;
                    int i23 = i22 + 1;
                    iArr2[i22] = (b >> 1) & 1;
                    i10 = i23 + 1;
                    iArr2[i23] = b & 1;
                    i13 += 8;
                    i12 += 8;
                    i15 = i16;
                }
            } else if (i7 == 2) {
                while (i12 < i3 - 7) {
                    int i24 = i15 + 1;
                    byte b2 = bArr[i15];
                    int i25 = i10 + 1;
                    iArr2[i10] = (b2 >> 6) & 3;
                    int i26 = i25 + 1;
                    iArr2[i25] = (b2 >> 4) & 3;
                    int i27 = i26 + 1;
                    iArr2[i26] = (b2 >> 2) & 3;
                    int i28 = i27 + 1;
                    iArr2[i27] = b2 & 3;
                    i15 = i24 + 1;
                    byte b3 = bArr[i24];
                    int i29 = i28 + 1;
                    iArr2[i28] = (b3 >> 6) & 3;
                    int i30 = i29 + 1;
                    iArr2[i29] = (b3 >> 4) & 3;
                    int i31 = i30 + 1;
                    iArr2[i30] = (b3 >> 2) & 3;
                    i10 = i31 + 1;
                    iArr2[i31] = b3 & 3;
                    i13 += 16;
                    i12 += 8;
                }
            } else if (i7 == 4) {
                while (i12 < i3 - 7) {
                    int i32 = i15 + 1;
                    byte b4 = bArr[i15];
                    int i33 = i10 + 1;
                    iArr2[i10] = (b4 >> 4) & 15;
                    int i34 = i33 + 1;
                    iArr2[i33] = b4 & 15;
                    int i35 = i32 + 1;
                    byte b5 = bArr[i32];
                    int i36 = i34 + 1;
                    iArr2[i34] = (b5 >> 4) & 15;
                    int i37 = i36 + 1;
                    iArr2[i36] = b5 & 15;
                    int i38 = i35 + 1;
                    byte b6 = bArr[i35];
                    int i39 = i37 + 1;
                    iArr2[i37] = (b6 >> 4) & 15;
                    int i40 = i39 + 1;
                    iArr2[i39] = b6 & 15;
                    i15 = i38 + 1;
                    byte b7 = bArr[i38];
                    int i41 = i40 + 1;
                    iArr2[i40] = (b7 >> 4) & 15;
                    i10 = i41 + 1;
                    iArr2[i41] = b7 & 15;
                    i13 += 32;
                    i12 += 8;
                }
            }
            while (i12 < i3) {
                iArr2[i10] = (bArr[i9 + (i13 >> 3)] >> (this.shiftOffset - (i13 & 7))) & this.bitMask;
                i13 += i7;
                i12++;
                i10++;
            }
            i9 += this.scanlineStride;
        }
        return iArr2;
    }

    public int getScanlineStride() {
        return this.scanlineStride;
    }

    public void putByteData(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
        putByteData(i, i2, i3, i4, bArr);
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Object obj) {
        int i3;
        int i4 = this.minX;
        if (i >= i4 && i2 >= (i3 = this.minY) && i < this.maxX && i2 < this.maxY) {
            int i5 = this.dataBitOffset + ((i - i4) * this.pixelBitStride);
            int i6 = ((i2 - i3) * this.scanlineStride) + (i5 >> 3);
            int i7 = this.shiftOffset - (i5 & 7);
            byte[] bArr = this.data;
            byte b = bArr[i6];
            int i8 = this.bitMask;
            bArr[i6] = (byte) (((((byte[]) obj)[0] & i8) << i7) | ((byte) (b & (~(i8 << i7)))));
            markDirty();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.WritableRaster
    public void setPixels(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6 = this.minX;
        if (i < i6 || i2 < (i5 = this.minY) || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i7 = this.pixelBitStride;
        int i8 = this.dataBitOffset + ((i - i6) * i7);
        int i9 = (i2 - i5) * this.scanlineStride;
        byte[] bArr = this.data;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = i8;
            int i13 = 0;
            while (i13 < i3) {
                int i14 = i12 & 7;
                if (i14 == 0) {
                    break;
                }
                int i15 = this.shiftOffset - i14;
                int i16 = (i12 >> 3) + i9;
                byte b = bArr[i16];
                int i17 = this.bitMask;
                bArr[i16] = (byte) (((~(i17 << i15)) & b) | ((iArr[i10] & i17) << i15));
                i12 += i7;
                i13++;
                i10++;
            }
            int i18 = (i12 >> 3) + i9;
            if (i7 == 1) {
                while (i13 < i3 - 7) {
                    int i19 = i10 + 1;
                    int i20 = i19 + 1;
                    int i21 = ((iArr[i10] & 1) << 7) | ((iArr[i19] & 1) << 6);
                    int i22 = i20 + 1;
                    int i23 = i21 | ((iArr[i20] & 1) << 5);
                    int i24 = i22 + 1;
                    int i25 = i23 | ((iArr[i22] & 1) << 4);
                    int i26 = i24 + 1;
                    int i27 = i25 | ((iArr[i24] & 1) << 3);
                    int i28 = i26 + 1;
                    int i29 = i27 | ((iArr[i26] & 1) << 2);
                    int i30 = i28 + 1;
                    bArr[i18] = (byte) (i29 | ((iArr[i28] & 1) << 1) | (iArr[i30] & 1));
                    i12 += 8;
                    i13 += 8;
                    i18++;
                    i10 = i30 + 1;
                }
            } else if (i7 == 2) {
                while (i13 < i3 - 7) {
                    int i31 = i10 + 1;
                    int i32 = i31 + 1;
                    int i33 = ((iArr[i10] & 3) << 6) | ((iArr[i31] & 3) << 4);
                    int i34 = i32 + 1;
                    int i35 = i33 | ((iArr[i32] & 3) << 2);
                    int i36 = i34 + 1;
                    int i37 = i35 | (iArr[i34] & 3);
                    int i38 = i18 + 1;
                    bArr[i18] = (byte) i37;
                    int i39 = i36 + 1;
                    int i40 = (iArr[i36] & 3) << 6;
                    int i41 = i39 + 1;
                    int i42 = ((iArr[i39] & 3) << 4) | i40;
                    int i43 = i41 + 1;
                    bArr[i38] = (byte) (i42 | ((iArr[i41] & 3) << 2) | (iArr[i43] & 3));
                    i12 += 16;
                    i13 += 8;
                    i18 = i38 + 1;
                    i10 = i43 + 1;
                }
            } else if (i7 == 4) {
                while (i13 < i3 - 7) {
                    int i44 = i10 + 1;
                    int i45 = i44 + 1;
                    int i46 = ((iArr[i10] & 15) << 4) | (iArr[i44] & 15);
                    int i47 = i18 + 1;
                    bArr[i18] = (byte) i46;
                    int i48 = i45 + 1;
                    int i49 = (iArr[i45] & 15) << 4;
                    int i50 = i48 + 1;
                    int i51 = (iArr[i48] & 15) | i49;
                    int i52 = i47 + 1;
                    bArr[i47] = (byte) i51;
                    int i53 = i50 + 1;
                    int i54 = (iArr[i50] & 15) << 4;
                    int i55 = i53 + 1;
                    int i56 = (iArr[i53] & 15) | i54;
                    int i57 = i52 + 1;
                    bArr[i52] = (byte) i56;
                    int i58 = i55 + 1;
                    int i59 = (iArr[i55] & 15) << 4;
                    int i60 = i58 + 1;
                    bArr[i57] = (byte) ((iArr[i58] & 15) | i59);
                    i12 += 32;
                    i13 += 8;
                    i18 = i57 + 1;
                    i10 = i60;
                }
            }
            while (i13 < i3) {
                int i61 = this.shiftOffset - (i12 & 7);
                int i62 = (i12 >> 3) + i9;
                byte b2 = bArr[i62];
                int i63 = this.bitMask;
                bArr[i62] = (byte) (((iArr[i10] & i63) << i61) | (b2 & (~(i63 << i61))));
                i12 += i7;
                i13++;
                i10++;
            }
            i9 += this.scanlineStride;
        }
        markDirty();
    }

    @Override // java.awt.image.WritableRaster
    public void setRect(int i, int i2, Raster raster) {
        if (!(raster instanceof BytePackedRaster) || ((BytePackedRaster) raster).pixelBitStride != this.pixelBitStride) {
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
        setDataElements(i3, i4, minX, minY, i11, i12 > i13 ? i13 - i4 : height, (BytePackedRaster) raster);
    }

    public String toString() {
        return new String("BytePackedRaster: width = " + this.width + " height = " + this.height + " #channels " + this.numBands + " xOff = " + this.sampleModelTranslateX + " yOff = " + this.sampleModelTranslateY);
    }

    public BytePackedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Point point) {
        this(sampleModel, dataBuffer, new Rectangle(point.f97730x, point.f97731y, sampleModel.getWidth(), sampleModel.getHeight()), point, null);
    }

    public byte[] getByteData(int i, int i2, int i3, int i4, byte[] bArr) {
        int i5;
        BytePackedRaster bytePackedRaster = this;
        int i6 = bytePackedRaster.minX;
        if (i >= i6 && i2 >= (i5 = bytePackedRaster.minY) && i + i3 <= bytePackedRaster.maxX && i2 + i4 <= bytePackedRaster.maxY) {
            byte[] bArr2 = bArr == null ? new byte[i3 * i4] : bArr;
            int i7 = bytePackedRaster.pixelBitStride;
            int i8 = bytePackedRaster.dataBitOffset + ((i - i6) * i7);
            int i9 = (i2 - i5) * bytePackedRaster.scanlineStride;
            byte[] bArr3 = bytePackedRaster.data;
            int i10 = 0;
            for (int i11 = 0; i11 < i4; i11++) {
                int i12 = i8;
                int i13 = 0;
                while (i13 < i3) {
                    int i14 = i12 & 7;
                    if (i14 == 0) {
                        break;
                    }
                    bArr2[i10] = (byte) ((bArr3[i9 + (i12 >> 3)] >> (bytePackedRaster.shiftOffset - i14)) & bytePackedRaster.bitMask);
                    i12 += i7;
                    i13++;
                    i10++;
                }
                int i15 = (i12 >> 3) + i9;
                if (i7 == 1) {
                    while (i13 < i3 - 7) {
                        int i16 = i15 + 1;
                        byte b = bArr3[i15];
                        int i17 = i10 + 1;
                        bArr2[i10] = (byte) ((b >> 7) & 1);
                        int i18 = i17 + 1;
                        bArr2[i17] = (byte) ((b >> 6) & 1);
                        int i19 = i18 + 1;
                        bArr2[i18] = (byte) ((b >> 5) & 1);
                        int i20 = i19 + 1;
                        bArr2[i19] = (byte) ((b >> 4) & 1);
                        int i21 = i20 + 1;
                        bArr2[i20] = (byte) ((b >> 3) & 1);
                        int i22 = i21 + 1;
                        bArr2[i21] = (byte) ((b >> 2) & 1);
                        int i23 = i22 + 1;
                        bArr2[i22] = (byte) ((b >> 1) & 1);
                        bArr2[i23] = (byte) (b & 1);
                        i12 += 8;
                        i13 += 8;
                        i10 = i23 + 1;
                        i15 = i16;
                        bytePackedRaster = this;
                    }
                } else if (i7 == 2) {
                    while (i13 < i3 - 7) {
                        int i24 = i15 + 1;
                        byte b2 = bArr3[i15];
                        int i25 = i10 + 1;
                        bArr2[i10] = (byte) ((b2 >> 6) & 3);
                        int i26 = i25 + 1;
                        bArr2[i25] = (byte) ((b2 >> 4) & 3);
                        int i27 = i26 + 1;
                        bArr2[i26] = (byte) ((b2 >> 2) & 3);
                        int i28 = i27 + 1;
                        bArr2[i27] = (byte) (b2 & 3);
                        i15 = i24 + 1;
                        byte b3 = bArr3[i24];
                        int i29 = i28 + 1;
                        bArr2[i28] = (byte) ((b3 >> 6) & 3);
                        int i30 = i29 + 1;
                        bArr2[i29] = (byte) ((b3 >> 4) & 3);
                        int i31 = i30 + 1;
                        bArr2[i30] = (byte) ((b3 >> 2) & 3);
                        i10 = i31 + 1;
                        bArr2[i31] = (byte) (b3 & 3);
                        i12 += 16;
                        i13 += 8;
                    }
                } else if (i7 == 4) {
                    while (i13 < i3 - 7) {
                        int i32 = i15 + 1;
                        byte b4 = bArr3[i15];
                        int i33 = i10 + 1;
                        bArr2[i10] = (byte) ((b4 >> 4) & 15);
                        int i34 = i33 + 1;
                        bArr2[i33] = (byte) (b4 & 15);
                        int i35 = i32 + 1;
                        byte b5 = bArr3[i32];
                        int i36 = i34 + 1;
                        bArr2[i34] = (byte) ((b5 >> 4) & 15);
                        int i37 = i36 + 1;
                        bArr2[i36] = (byte) (b5 & 15);
                        int i38 = i35 + 1;
                        byte b6 = bArr3[i35];
                        int i39 = i37 + 1;
                        bArr2[i37] = (byte) ((b6 >> 4) & 15);
                        int i40 = i39 + 1;
                        bArr2[i39] = (byte) (b6 & 15);
                        int i41 = i38 + 1;
                        byte b7 = bArr3[i38];
                        int i42 = i40 + 1;
                        bArr2[i40] = (byte) ((b7 >> 4) & 15);
                        bArr2[i42] = (byte) (b7 & 15);
                        i12 += 32;
                        i13 += 8;
                        i15 = i41;
                        i10 = i42 + 1;
                    }
                }
                while (i13 < i3) {
                    bArr2[i10] = (byte) ((bArr3[(i12 >> 3) + i9] >> (bytePackedRaster.shiftOffset - (i12 & 7))) & bytePackedRaster.bitMask);
                    i12 += i7;
                    i13++;
                    i10++;
                }
                i9 += bytePackedRaster.scanlineStride;
            }
            return bArr2;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public void putByteData(int i, int i2, int i3, int i4, byte[] bArr) {
        int i5;
        int i6 = this.minX;
        if (i < i6 || i2 < (i5 = this.minY) || i + i3 > this.maxX || i2 + i4 > this.maxY) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (i3 == 0 || i4 == 0) {
            return;
        }
        int i7 = this.pixelBitStride;
        int i8 = this.dataBitOffset + ((i - i6) * i7);
        int i9 = (i2 - i5) * this.scanlineStride;
        byte[] bArr2 = this.data;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = i8;
            int i13 = 0;
            while (i13 < i3) {
                int i14 = i12 & 7;
                if (i14 == 0) {
                    break;
                }
                int i15 = this.shiftOffset - i14;
                int i16 = (i12 >> 3) + i9;
                byte b = bArr2[i16];
                int i17 = this.bitMask;
                bArr2[i16] = (byte) (((~(i17 << i15)) & b) | ((bArr[i10] & i17) << i15));
                i12 += i7;
                i13++;
                i10++;
            }
            int i18 = (i12 >> 3) + i9;
            if (i7 == 1) {
                while (i13 < i3 - 7) {
                    int i19 = i10 + 1;
                    int i20 = i19 + 1;
                    int i21 = ((bArr[i10] & 1) << 7) | ((bArr[i19] & 1) << 6);
                    int i22 = i20 + 1;
                    int i23 = i21 | ((bArr[i20] & 1) << 5);
                    int i24 = i22 + 1;
                    int i25 = i23 | ((bArr[i22] & 1) << 4);
                    int i26 = i24 + 1;
                    int i27 = i25 | ((bArr[i24] & 1) << 3);
                    int i28 = i26 + 1;
                    int i29 = i27 | ((bArr[i26] & 1) << 2);
                    int i30 = i28 + 1;
                    bArr2[i18] = (byte) (i29 | ((bArr[i28] & 1) << 1) | (bArr[i30] & 1));
                    i12 += 8;
                    i13 += 8;
                    i18++;
                    i10 = i30 + 1;
                }
            } else if (i7 == 2) {
                while (i13 < i3 - 7) {
                    int i31 = i10 + 1;
                    int i32 = i31 + 1;
                    int i33 = ((bArr[i10] & 3) << 6) | ((bArr[i31] & 3) << 4);
                    int i34 = i32 + 1;
                    int i35 = i33 | ((bArr[i32] & 3) << 2);
                    int i36 = i34 + 1;
                    int i37 = i35 | (bArr[i34] & 3);
                    int i38 = i18 + 1;
                    bArr2[i18] = (byte) i37;
                    int i39 = i36 + 1;
                    int i40 = (bArr[i36] & 3) << 6;
                    int i41 = i39 + 1;
                    int i42 = ((bArr[i39] & 3) << 4) | i40;
                    int i43 = i41 + 1;
                    bArr2[i38] = (byte) (i42 | ((bArr[i41] & 3) << 2) | (bArr[i43] & 3));
                    i12 += 16;
                    i13 += 8;
                    i18 = i38 + 1;
                    i10 = i43 + 1;
                }
            } else if (i7 == 4) {
                while (i13 < i3 - 7) {
                    int i44 = i10 + 1;
                    int i45 = i44 + 1;
                    int i46 = ((bArr[i10] & 15) << 4) | (bArr[i44] & 15);
                    int i47 = i18 + 1;
                    bArr2[i18] = (byte) i46;
                    int i48 = i45 + 1;
                    int i49 = (bArr[i45] & 15) << 4;
                    int i50 = i48 + 1;
                    int i51 = (bArr[i48] & 15) | i49;
                    int i52 = i47 + 1;
                    bArr2[i47] = (byte) i51;
                    int i53 = i50 + 1;
                    int i54 = (bArr[i50] & 15) << 4;
                    int i55 = i53 + 1;
                    int i56 = (bArr[i53] & 15) | i54;
                    int i57 = i52 + 1;
                    bArr2[i52] = (byte) i56;
                    int i58 = i55 + 1;
                    int i59 = (bArr[i55] & 15) << 4;
                    int i60 = i58 + 1;
                    bArr2[i57] = (byte) ((bArr[i58] & 15) | i59);
                    i12 += 32;
                    i13 += 8;
                    i18 = i57 + 1;
                    i10 = i60;
                }
            }
            while (i13 < i3) {
                int i61 = this.shiftOffset - (i12 & 7);
                int i62 = (i12 >> 3) + i9;
                byte b2 = bArr2[i62];
                int i63 = this.bitMask;
                bArr2[i62] = (byte) (((bArr[i10] & i63) << i61) | (b2 & (~(i63 << i61))));
                i12 += i7;
                i13++;
                i10++;
            }
            i9 += this.scanlineStride;
        }
        markDirty();
    }

    public BytePackedRaster(SampleModel sampleModel, DataBuffer dataBuffer, Rectangle rectangle, Point point, BytePackedRaster bytePackedRaster) {
        super(sampleModel, dataBuffer, rectangle, point, bytePackedRaster);
        this.maxX = this.minX + this.width;
        this.maxY = this.minY + this.height;
        if (dataBuffer instanceof DataBufferByte) {
            DataBufferByte dataBufferByte = (DataBufferByte) dataBuffer;
            this.data = SunWritableRaster.stealData(dataBufferByte, 0);
            if (dataBufferByte.getNumBanks() == 1) {
                int offset = dataBufferByte.getOffset();
                if (sampleModel instanceof MultiPixelPackedSampleModel) {
                    MultiPixelPackedSampleModel multiPixelPackedSampleModel = (MultiPixelPackedSampleModel) sampleModel;
                    this.type = 11;
                    int pixelBitStride = multiPixelPackedSampleModel.getPixelBitStride();
                    this.pixelBitStride = pixelBitStride;
                    if (pixelBitStride != 1 && pixelBitStride != 2 && pixelBitStride != 4) {
                        throw new RasterFormatException("BytePackedRasters must have a bit depth of 1, 2, or 4");
                    }
                    this.scanlineStride = multiPixelPackedSampleModel.getScanlineStride();
                    int dataBitOffset = multiPixelPackedSampleModel.getDataBitOffset() + (offset * 8);
                    this.dataBitOffset = dataBitOffset;
                    int i = rectangle.f97732x - point.f97730x;
                    int i2 = rectangle.f97733y - point.f97731y;
                    int i3 = this.pixelBitStride;
                    this.dataBitOffset = dataBitOffset + (i * i3) + (i2 * this.scanlineStride * 8);
                    this.bitMask = (1 << i3) - 1;
                    this.shiftOffset = 8 - i3;
                    verify(false);
                    return;
                }
                throw new RasterFormatException("BytePackedRasters must haveMultiPixelPackedSampleModel");
            }
            throw new RasterFormatException("DataBuffer for BytePackedRasters must only have 1 bank.");
        }
        throw new RasterFormatException("BytePackedRasters must havebyte DataBuffers");
    }

    @Override // java.awt.image.Raster
    public WritableRaster createCompatibleWritableRaster() {
        return createCompatibleWritableRaster(this.width, this.height);
    }

    @Override // java.awt.image.Raster
    public Object getDataElements(int i, int i2, int i3, int i4, Object obj) {
        return getByteData(i, i2, i3, i4, (byte[]) obj);
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, Raster raster) {
        if ((raster instanceof BytePackedRaster) && ((BytePackedRaster) raster).pixelBitStride == this.pixelBitStride) {
            int minX = raster.getMinX();
            int minY = raster.getMinY();
            int i3 = minX + i;
            int i4 = minY + i2;
            int width = raster.getWidth();
            int height = raster.getHeight();
            if (i3 >= this.minX && i4 >= this.minY && i3 + width <= this.maxX && i4 + height <= this.maxY) {
                setDataElements(i3, i4, minX, minY, width, height, (BytePackedRaster) raster);
                return;
            }
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        super.setDataElements(i, i2, raster);
    }

    private void setDataElements(int i, int i2, int i3, int i4, int i5, int i6, BytePackedRaster bytePackedRaster) {
        byte[] bArr;
        int i7;
        int i8;
        byte b;
        if (i5 <= 0 || i6 <= 0) {
            return;
        }
        byte[] bArr2 = bytePackedRaster.data;
        byte[] bArr3 = this.data;
        int i9 = bytePackedRaster.scanlineStride;
        int i10 = this.scanlineStride;
        int i11 = bytePackedRaster.dataBitOffset + ((i4 - bytePackedRaster.minY) * 8 * i9) + ((i3 - bytePackedRaster.minX) * bytePackedRaster.pixelBitStride);
        int i12 = this.dataBitOffset + ((i2 - this.minY) * 8 * i10);
        int i13 = i - this.minX;
        int i14 = this.pixelBitStride;
        int i15 = i12 + (i13 * i14);
        int i16 = i5 * i14;
        int i17 = i11 & 7;
        int i18 = i15 & 7;
        if (i17 == i18) {
            if (i18 != 0) {
                int i19 = 8 - i18;
                int i20 = i11 >> 3;
                int i21 = i15 >> 3;
                int i22 = 255 >> i18;
                if (i16 < i19) {
                    i22 &= 255 << (i19 - i16);
                    i19 = i16;
                }
                for (int i23 = 0; i23 < i6; i23++) {
                    bArr3[i21] = (byte) ((bArr3[i21] & (~i22)) | (bArr2[i20] & i22));
                    i20 += i9;
                    i21 += i10;
                }
                i11 += i19;
                i15 += i19;
                i16 -= i19;
            }
            if (i16 >= 8) {
                int i24 = i11 >> 3;
                int i25 = i15 >> 3;
                int i26 = i16 >> 3;
                if (i26 == i9 && i9 == i10) {
                    System.arraycopy(bArr2, i24, bArr3, i25, i9 * i6);
                } else {
                    for (int i27 = 0; i27 < i6; i27++) {
                        System.arraycopy(bArr2, i24, bArr3, i25, i26);
                        i24 += i9;
                        i25 += i10;
                    }
                }
                int i28 = i26 * 8;
                i11 += i28;
                i15 += i28;
                i16 -= i28;
            }
            if (i16 > 0) {
                int i29 = i11 >> 3;
                int i30 = i15 >> 3;
                int i31 = (65280 >> i16) & 255;
                for (int i32 = 0; i32 < i6; i32++) {
                    bArr3[i30] = (byte) ((bArr3[i30] & (~i31)) | (bArr2[i29] & i31));
                    i29 += i9;
                    i30 += i10;
                }
            }
        } else {
            if (i18 != 0 || i16 < 8) {
                int i33 = 8 - i18;
                int i34 = i11 >> 3;
                int i35 = i15 >> 3;
                int i36 = 8 - i17;
                int i37 = 255 >> i18;
                if (i16 < i33) {
                    i37 &= 255 << (i33 - i16);
                    i33 = i16;
                }
                int i38 = i37;
                int length = bArr2.length - 1;
                int i39 = 0;
                while (i39 < i6) {
                    byte b2 = bArr2[i34];
                    if (i34 < length) {
                        i8 = length;
                        b = bArr2[i34 + 1];
                    } else {
                        i8 = length;
                        b = 0;
                    }
                    bArr3[i35] = (byte) ((bArr3[i35] & (~i38)) | ((((b2 << i17) | ((b & 255) >> i36)) >> i18) & i38));
                    i34 += i9;
                    i35 += i10;
                    i39++;
                    length = i8;
                    i17 = i17;
                    bArr2 = bArr2;
                }
                bArr = bArr2;
                i11 += i33;
                i15 += i33;
                i16 -= i33;
                i7 = 8;
            } else {
                bArr = bArr2;
                i7 = 8;
            }
            if (i16 >= i7) {
                int i40 = i11 >> 3;
                int i41 = i15 >> 3;
                int i42 = i16 >> 3;
                int i43 = i11 & 7;
                int i44 = 8 - i43;
                for (int i45 = 0; i45 < i6; i45++) {
                    int i46 = (i45 * i9) + i40;
                    int i47 = (i45 * i10) + i41;
                    byte b3 = bArr[i46];
                    int i48 = 0;
                    while (i48 < i42) {
                        i46++;
                        int i49 = i40;
                        byte b4 = bArr[i46];
                        bArr3[i47] = (byte) ((b3 << i43) | ((b4 & 255) >> i44));
                        i47++;
                        i48++;
                        i15 = i15;
                        b3 = b4;
                        i40 = i49;
                    }
                }
                int i50 = i42 * 8;
                i11 += i50;
                i15 += i50;
                i16 -= i50;
            }
            if (i16 > 0) {
                int i51 = i11 >> 3;
                int i52 = i15 >> 3;
                int i53 = (65280 >> i16) & 255;
                int i54 = i11 & 7;
                int i55 = 8 - i54;
                byte[] bArr4 = bArr;
                int length2 = bArr4.length - 1;
                for (int i56 = 0; i56 < i6; i56++) {
                    bArr3[i52] = (byte) ((((bArr4[i51] << i54) | (((i51 < length2 ? bArr4[i51 + 1] : (byte) 0) & 255) >> i55)) & i53) | (bArr3[i52] & (~i53)));
                    i51 += i9;
                    i52 += i10;
                }
            }
        }
        markDirty();
    }

    @Override // java.awt.image.WritableRaster
    public void setDataElements(int i, int i2, int i3, int i4, Object obj) {
        putByteData(i, i2, i3, i4, (byte[]) obj);
    }
}
