package java.awt.image;

import java.awt.Point;
import java.awt.color.ColorSpace;
import java.util.Arrays;

/* loaded from: classes5.dex */
public class DirectColorModel extends PackedColorModel {
    private int alpha_mask;
    private int alpha_offset;
    private int alpha_scale;
    private int blue_mask;
    private int blue_offset;
    private int blue_scale;
    private short[] fromsRGB8LUT16;
    private byte[] fromsRGB8LUT8;
    private int green_mask;
    private int green_offset;
    private int green_scale;
    private boolean is_LinearRGB;
    private int lRGBprecision;
    private int red_mask;
    private int red_offset;
    private int red_scale;
    private byte[] tosRGB8LUT;

    public DirectColorModel(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, 0);
    }

    private float[] getDefaultRGBComponents(int i) {
        return this.colorSpace.toRGB(getNormalizedComponents(getComponents(i, (int[]) null, 0), 0, null, 0));
    }

    private int getsRGBComponentFromLinearRGB(int i, int i2) {
        float f;
        float f2;
        int i3;
        int[] iArr = this.maskArray;
        int i4 = iArr[i2] & i;
        int[] iArr2 = this.maskOffsets;
        int i5 = i4 >>> iArr2[i2];
        if (this.isAlphaPremultiplied) {
            float f3 = (1 << this.lRGBprecision) - 1;
            int i6 = (i & iArr[3]) >>> iArr2[3];
            if (i6 == 0) {
                i3 = 0;
            } else {
                float f4 = i5;
                float[] fArr = this.scaleFactors;
                i3 = (int) ((((f4 * fArr[i2]) * f3) / (i6 * fArr[3])) + 0.5f);
            }
            i5 = i3;
        } else {
            int i7 = this.nBits[i2];
            int i8 = this.lRGBprecision;
            if (i7 != i8) {
                if (i8 == 16) {
                    f = i5 * this.scaleFactors[i2];
                    f2 = 257.0f;
                } else {
                    f = i5;
                    f2 = this.scaleFactors[i2];
                }
                i5 = (int) ((f * f2) + 0.5f);
            }
        }
        return this.tosRGB8LUT[i5] & 255;
    }

    private int getsRGBComponentFromsRGB(int i, int i2) {
        int i3;
        int[] iArr = this.maskArray;
        int i4 = iArr[i2] & i;
        int[] iArr2 = this.maskOffsets;
        int i5 = i4 >>> iArr2[i2];
        if (!this.isAlphaPremultiplied) {
            float f = this.scaleFactors[i2];
            return f != 1.0f ? (int) ((i5 * f) + 0.5f) : i5;
        }
        int i6 = (i & iArr[3]) >>> iArr2[3];
        if (i6 == 0) {
            i3 = 0;
        } else {
            float[] fArr = this.scaleFactors;
            i3 = (int) ((((i5 * fArr[i2]) * 255.0f) / (i6 * fArr[3])) + 0.5f);
        }
        return i3;
    }

    private void setFields() {
        int[] iArr = this.maskArray;
        this.red_mask = iArr[0];
        int[] iArr2 = this.maskOffsets;
        this.red_offset = iArr2[0];
        this.green_mask = iArr[1];
        this.green_offset = iArr2[1];
        this.blue_mask = iArr[2];
        this.blue_offset = iArr2[2];
        int[] iArr3 = this.nBits;
        int i = iArr3[0];
        if (i < 8) {
            this.red_scale = (1 << i) - 1;
        }
        int i2 = iArr3[1];
        if (i2 < 8) {
            this.green_scale = (1 << i2) - 1;
        }
        int i3 = iArr3[2];
        if (i3 < 8) {
            this.blue_scale = (1 << i3) - 1;
        }
        if (this.supportsAlpha) {
            this.alpha_mask = iArr[3];
            this.alpha_offset = iArr2[3];
            int i4 = iArr3[3];
            if (i4 < 8) {
                this.alpha_scale = (1 << i4) - 1;
            }
        }
    }

    @Override // java.awt.image.ColorModel
    public final ColorModel coerceData(WritableRaster writableRaster, boolean z) {
        int[] iArr;
        int[] iArr2;
        if (!this.supportsAlpha || isAlphaPremultiplied() == z) {
            return this;
        }
        int width = writableRaster.getWidth();
        int height = writableRaster.getHeight();
        int i = this.numColorComponents;
        float f = 1.0f;
        float f2 = 1.0f / ((1 << this.nBits[i]) - 1);
        int minX = writableRaster.getMinX();
        int minY = writableRaster.getMinY();
        float f3 = 0.0f;
        if (z) {
            int i2 = this.transferType;
            if (i2 == 0) {
                int i3 = 0;
                int[] iArr3 = null;
                int[] iArr4 = null;
                while (i3 < height) {
                    int i4 = minX;
                    int i5 = 0;
                    while (i5 < width) {
                        iArr3 = writableRaster.getPixel(i4, minY, iArr3);
                        float f4 = iArr3[i] * f2;
                        if (f4 != 0.0f) {
                            for (int i6 = 0; i6 < i; i6++) {
                                iArr3[i6] = (int) ((iArr3[i6] * f4) + 0.5f);
                            }
                            writableRaster.setPixel(i4, minY, iArr3);
                        } else {
                            if (iArr4 == null) {
                                iArr = new int[this.numComponents];
                                Arrays.fill(iArr, 0);
                            } else {
                                iArr = iArr4;
                            }
                            writableRaster.setPixel(i4, minY, iArr);
                            iArr4 = iArr;
                        }
                        i5++;
                        i4++;
                    }
                    i3++;
                    minY++;
                }
            } else if (i2 == 1) {
                int i7 = 0;
                int[] iArr5 = null;
                int[] iArr6 = null;
                while (i7 < height) {
                    int i8 = minX;
                    int i9 = 0;
                    while (i9 < width) {
                        iArr5 = writableRaster.getPixel(i8, minY, iArr5);
                        float f5 = iArr5[i] * f2;
                        if (f5 != 0.0f) {
                            for (int i10 = 0; i10 < i; i10++) {
                                iArr5[i10] = (int) ((iArr5[i10] * f5) + 0.5f);
                            }
                            writableRaster.setPixel(i8, minY, iArr5);
                        } else {
                            if (iArr6 == null) {
                                iArr2 = new int[this.numComponents];
                                Arrays.fill(iArr2, 0);
                            } else {
                                iArr2 = iArr6;
                            }
                            writableRaster.setPixel(i8, minY, iArr2);
                            iArr6 = iArr2;
                        }
                        i9++;
                        i8++;
                    }
                    i7++;
                    minY++;
                }
            } else {
                if (i2 != 3) {
                    throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
                }
                int[] iArr7 = null;
                int i11 = 0;
                int[] iArr8 = null;
                while (i11 < height) {
                    int i12 = minX;
                    int[] iArr9 = iArr8;
                    int i13 = 0;
                    while (i13 < width) {
                        iArr9 = writableRaster.getPixel(i12, minY, iArr9);
                        float f6 = iArr9[i] * f2;
                        if (f6 != f3) {
                            for (int i14 = 0; i14 < i; i14++) {
                                iArr9[i14] = (int) ((iArr9[i14] * f6) + 0.5f);
                            }
                            writableRaster.setPixel(i12, minY, iArr9);
                        } else {
                            if (iArr7 == null) {
                                int[] iArr10 = new int[this.numComponents];
                                Arrays.fill(iArr10, 0);
                                iArr7 = iArr10;
                            }
                            writableRaster.setPixel(i12, minY, iArr7);
                        }
                        i13++;
                        i12++;
                        f3 = 0.0f;
                    }
                    i11++;
                    minY++;
                    iArr8 = iArr9;
                    f3 = 0.0f;
                }
            }
        } else {
            int i15 = this.transferType;
            if (i15 == 0) {
                int i16 = 0;
                int[] iArr11 = null;
                while (i16 < height) {
                    int i17 = minX;
                    int i18 = 0;
                    while (i18 < width) {
                        iArr11 = writableRaster.getPixel(i17, minY, iArr11);
                        float f7 = iArr11[i] * f2;
                        if (f7 != 0.0f) {
                            float f8 = f / f7;
                            for (int i19 = 0; i19 < i; i19++) {
                                iArr11[i19] = (int) ((iArr11[i19] * f8) + 0.5f);
                            }
                            writableRaster.setPixel(i17, minY, iArr11);
                        }
                        i18++;
                        i17++;
                        f = 1.0f;
                    }
                    i16++;
                    minY++;
                    f = 1.0f;
                }
            } else if (i15 == 1) {
                int i20 = 0;
                int[] iArr12 = null;
                while (i20 < height) {
                    int i21 = minX;
                    int i22 = 0;
                    while (i22 < width) {
                        iArr12 = writableRaster.getPixel(i21, minY, iArr12);
                        float f9 = iArr12[i] * f2;
                        if (f9 != 0.0f) {
                            float f10 = 1.0f / f9;
                            for (int i23 = 0; i23 < i; i23++) {
                                iArr12[i23] = (int) ((iArr12[i23] * f10) + 0.5f);
                            }
                            writableRaster.setPixel(i21, minY, iArr12);
                        }
                        i22++;
                        i21++;
                    }
                    i20++;
                    minY++;
                }
            } else {
                if (i15 != 3) {
                    throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
                }
                int i24 = 0;
                int[] iArr13 = null;
                while (i24 < height) {
                    int i25 = minX;
                    int i26 = 0;
                    while (i26 < width) {
                        iArr13 = writableRaster.getPixel(i25, minY, iArr13);
                        float f11 = iArr13[i] * f2;
                        if (f11 != 0.0f) {
                            float f12 = 1.0f / f11;
                            for (int i27 = 0; i27 < i; i27++) {
                                iArr13[i27] = (int) ((iArr13[i27] * f12) + 0.5f);
                            }
                            writableRaster.setPixel(i25, minY, iArr13);
                        }
                        i26++;
                        i25++;
                    }
                    i24++;
                    minY++;
                }
            }
        }
        ColorSpace colorSpace = this.colorSpace;
        int i28 = this.pixel_bits;
        int[] iArr14 = this.maskArray;
        return new DirectColorModel(colorSpace, i28, iArr14[0], iArr14[1], iArr14[2], iArr14[3], z, this.transferType);
    }

    @Override // java.awt.image.ColorModel
    public final WritableRaster createCompatibleWritableRaster(int i, int i2) {
        int[] iArr;
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Width (" + i + ") and height (" + i2 + ") cannot be <= 0");
        }
        if (this.supportsAlpha) {
            iArr = new int[4];
            iArr[3] = this.alpha_mask;
        } else {
            iArr = new int[3];
        }
        iArr[0] = this.red_mask;
        iArr[1] = this.green_mask;
        iArr[2] = this.blue_mask;
        int i3 = this.pixel_bits;
        return i3 > 16 ? Raster.createPackedRaster(3, i, i2, iArr, (Point) null) : i3 > 8 ? Raster.createPackedRaster(1, i, i2, iArr, (Point) null) : Raster.createPackedRaster(0, i, i2, iArr, (Point) null);
    }

    @Override // java.awt.image.ColorModel
    public final int getAlpha(int i) {
        if (!this.supportsAlpha) {
            return 255;
        }
        int i2 = (i & this.maskArray[3]) >>> this.maskOffsets[3];
        float f = this.scaleFactors[3];
        return f != 1.0f ? (int) ((i2 * f) + 0.5f) : i2;
    }

    public final int getAlphaMask() {
        if (this.supportsAlpha) {
            return this.maskArray[3];
        }
        return 0;
    }

    @Override // java.awt.image.ColorModel
    public final int getBlue(int i) {
        if (this.is_sRGB) {
            return getsRGBComponentFromsRGB(i, 2);
        }
        if (this.is_LinearRGB) {
            return getsRGBComponentFromLinearRGB(i, 2);
        }
        return (int) ((getDefaultRGBComponents(i)[2] * 255.0f) + 0.5f);
    }

    public final int getBlueMask() {
        return this.maskArray[2];
    }

    @Override // java.awt.image.ColorModel
    public final int[] getComponents(int i, int[] iArr, int i2) {
        if (iArr == null) {
            iArr = new int[this.numComponents + i2];
        }
        for (int i3 = 0; i3 < this.numComponents; i3++) {
            iArr[i2 + i3] = (this.maskArray[i3] & i) >>> this.maskOffsets[i3];
        }
        return iArr;
    }

    @Override // java.awt.image.ColorModel
    public int getDataElement(int[] iArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.numComponents; i3++) {
            i2 |= (iArr[i + i3] << this.maskOffsets[i3]) & this.maskArray[i3];
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0134  */
    @Override // java.awt.image.ColorModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getDataElements(int r18, java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.DirectColorModel.getDataElements(int, java.lang.Object):java.lang.Object");
    }

    @Override // java.awt.image.ColorModel
    public final int getGreen(int i) {
        if (this.is_sRGB) {
            return getsRGBComponentFromsRGB(i, 1);
        }
        if (this.is_LinearRGB) {
            return getsRGBComponentFromLinearRGB(i, 1);
        }
        return (int) ((getDefaultRGBComponents(i)[1] * 255.0f) + 0.5f);
    }

    public final int getGreenMask() {
        return this.maskArray[1];
    }

    @Override // java.awt.image.ColorModel
    public final int getRGB(int i) {
        if (!this.is_sRGB && !this.is_LinearRGB) {
            float[] defaultRGBComponents = getDefaultRGBComponents(i);
            return (getAlpha(i) << 24) | (((int) ((defaultRGBComponents[0] * 255.0f) + 0.5f)) << 16) | (((int) ((defaultRGBComponents[1] * 255.0f) + 0.5f)) << 8) | (((int) ((defaultRGBComponents[2] * 255.0f) + 0.5f)) << 0);
        }
        return (getBlue(i) << 0) | (getAlpha(i) << 24) | (getRed(i) << 16) | (getGreen(i) << 8);
    }

    @Override // java.awt.image.ColorModel
    public final int getRed(int i) {
        if (this.is_sRGB) {
            return getsRGBComponentFromsRGB(i, 0);
        }
        if (this.is_LinearRGB) {
            return getsRGBComponentFromLinearRGB(i, 0);
        }
        return (int) ((getDefaultRGBComponents(i)[0] * 255.0f) + 0.5f);
    }

    public final int getRedMask() {
        return this.maskArray[0];
    }

    @Override // java.awt.image.ColorModel
    public boolean isCompatibleRaster(Raster raster) {
        SampleModel sampleModel = raster.getSampleModel();
        if (!(sampleModel instanceof SinglePixelPackedSampleModel)) {
            return false;
        }
        SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) sampleModel;
        if (singlePixelPackedSampleModel.getNumBands() != getNumComponents()) {
            return false;
        }
        int[] bitMasks = singlePixelPackedSampleModel.getBitMasks();
        for (int i = 0; i < this.numComponents; i++) {
            if (bitMasks[i] != this.maskArray[i]) {
                return false;
            }
        }
        return raster.getTransferType() == this.transferType;
    }

    @Override // java.awt.image.ColorModel
    public String toString() {
        return new String("DirectColorModel: rmask=" + Integer.toHexString(this.red_mask) + " gmask=" + Integer.toHexString(this.green_mask) + " bmask=" + Integer.toHexString(this.blue_mask) + " amask=" + Integer.toHexString(this.alpha_mask));
    }

    public DirectColorModel(int i, int i2, int i3, int i4, int i5) {
        super(ColorSpace.getInstance(1000), i, i2, i3, i4, i5, false, i5 == 0 ? 1 : 3, ColorModel.getDefaultTransferType(i));
        setFields();
    }

    @Override // java.awt.image.ColorModel
    public int getAlpha(Object obj) {
        int i;
        int i2 = this.transferType;
        if (i2 == 0) {
            i = ((byte[]) obj)[0] & 255;
        } else if (i2 == 1) {
            i = ((short[]) obj)[0] & 65535;
        } else if (i2 == 3) {
            i = ((int[]) obj)[0];
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        return getAlpha(i);
    }

    @Override // java.awt.image.ColorModel
    public final int[] getComponents(Object obj, int[] iArr, int i) {
        int i2;
        int i3 = this.transferType;
        if (i3 == 0) {
            i2 = ((byte[]) obj)[0] & 255;
        } else if (i3 == 1) {
            i2 = ((short[]) obj)[0] & 65535;
        } else if (i3 == 3) {
            i2 = ((int[]) obj)[0];
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        return getComponents(i2, iArr, i);
    }

    public DirectColorModel(ColorSpace colorSpace, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
        super(colorSpace, i, i2, i3, i4, i5, z, i5 == 0 ? 1 : 3, i6);
        if (ColorModel.isLinearRGBspace(this.colorSpace)) {
            this.is_LinearRGB = true;
            if (this.maxBits <= 8) {
                this.lRGBprecision = 8;
                this.tosRGB8LUT = ColorModel.getLinearRGB8TosRGB8LUT();
                this.fromsRGB8LUT8 = ColorModel.getsRGB8ToLinearRGB8LUT();
            } else {
                this.lRGBprecision = 16;
                this.tosRGB8LUT = ColorModel.getLinearRGB16TosRGB8LUT();
                this.fromsRGB8LUT16 = ColorModel.getsRGB8ToLinearRGB16LUT();
            }
        } else if (!this.is_sRGB) {
            for (int i7 = 0; i7 < 3; i7++) {
                if (colorSpace.getMinValue(i7) != 0.0f || colorSpace.getMaxValue(i7) != 1.0f) {
                    throw new IllegalArgumentException("Illegal min/max RGB component value");
                }
            }
        }
        setFields();
    }

    @Override // java.awt.image.ColorModel
    public int getBlue(Object obj) {
        int i;
        int i2 = this.transferType;
        if (i2 == 0) {
            i = ((byte[]) obj)[0] & 255;
        } else if (i2 == 1) {
            i = ((short[]) obj)[0] & 65535;
        } else if (i2 == 3) {
            i = ((int[]) obj)[0];
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        return getBlue(i);
    }

    @Override // java.awt.image.ColorModel
    public int getGreen(Object obj) {
        int i;
        int i2 = this.transferType;
        if (i2 == 0) {
            i = ((byte[]) obj)[0] & 255;
        } else if (i2 == 1) {
            i = ((short[]) obj)[0] & 65535;
        } else if (i2 == 3) {
            i = ((int[]) obj)[0];
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        return getGreen(i);
    }

    @Override // java.awt.image.ColorModel
    public int getRed(Object obj) {
        int i;
        int i2 = this.transferType;
        if (i2 == 0) {
            i = ((byte[]) obj)[0] & 255;
        } else if (i2 == 1) {
            i = ((short[]) obj)[0] & 65535;
        } else if (i2 == 3) {
            i = ((int[]) obj)[0];
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        return getRed(i);
    }

    @Override // java.awt.image.ColorModel
    public int getRGB(Object obj) {
        int i;
        int i2 = this.transferType;
        if (i2 == 0) {
            i = ((byte[]) obj)[0] & 255;
        } else if (i2 == 1) {
            i = ((short[]) obj)[0] & 65535;
        } else if (i2 == 3) {
            i = ((int[]) obj)[0];
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        return getRGB(i);
    }

    @Override // java.awt.image.ColorModel
    public Object getDataElements(int[] iArr, int i, Object obj) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.numComponents; i3++) {
            i2 |= (iArr[i + i3] << this.maskOffsets[i3]) & this.maskArray[i3];
        }
        int i4 = this.transferType;
        if (i4 == 0) {
            if (!(obj instanceof byte[])) {
                return new byte[]{(byte) (i2 & 255)};
            }
            byte[] bArr = (byte[]) obj;
            bArr[0] = (byte) (i2 & 255);
            return bArr;
        }
        if (i4 == 1) {
            if (!(obj instanceof short[])) {
                return new short[]{(short) (65535 & i2)};
            }
            short[] sArr = (short[]) obj;
            sArr[0] = (short) (i2 & 65535);
            return sArr;
        }
        if (i4 == 3) {
            if (obj instanceof int[]) {
                int[] iArr2 = (int[]) obj;
                iArr2[0] = i2;
                return iArr2;
            }
            return new int[]{i2};
        }
        throw new ClassCastException("This method has not been implemented for transferType " + this.transferType);
    }
}
