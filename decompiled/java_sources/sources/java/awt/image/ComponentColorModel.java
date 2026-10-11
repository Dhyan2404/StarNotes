package java.awt.image;

import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.util.Arrays;

/* loaded from: classes5.dex */
public class ComponentColorModel extends ColorModel {
    private float[] compOffset;
    private float[] compScale;
    private float[] diffMinMax;
    private short[] fromLinearGray16ToOtherGray16LUT;
    private byte[] fromLinearGray16ToOtherGray8LUT;
    private short[] fromsRGB8LUT16;
    private byte[] fromsRGB8LUT8;
    private boolean is_ICCGray_stdScale;
    private boolean is_LinearGray_stdScale;
    private boolean is_LinearRGB_stdScale;
    private boolean is_sRGB_stdScale;
    private float[] min;
    private boolean needScaleInit;
    private boolean noUnnorm;
    private boolean nonStdScale;
    private boolean signed;
    private byte[] tosRGB8LUT;

    public ComponentColorModel(ColorSpace colorSpace, int[] iArr, boolean z, boolean z2, int i, int i2) {
        super(bitsHelper(i2, colorSpace, z), bitsArrayHelper(iArr, i2, colorSpace, z), colorSpace, z, z2, i, i2);
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                this.signed = true;
                this.needScaleInit = true;
            } else if (i2 != 3) {
                if (i2 != 4 && i2 != 5) {
                    throw new IllegalArgumentException("This constructor is not compatible with transferType " + i2);
                }
                this.signed = true;
                this.needScaleInit = false;
                this.noUnnorm = true;
                this.nonStdScale = false;
            }
            setupLUTs();
        }
        this.signed = false;
        this.needScaleInit = true;
        setupLUTs();
    }

    private static int[] bitsArrayHelper(int[] iArr, int i, ColorSpace colorSpace, boolean z) {
        if ((i == 0 || i == 1 || i == 3) && iArr != null) {
            return iArr;
        }
        int dataTypeSize = DataBuffer.getDataTypeSize(i);
        int numComponents = colorSpace.getNumComponents();
        if (z) {
            numComponents++;
        }
        int[] iArr2 = new int[numComponents];
        for (int i2 = 0; i2 < numComponents; i2++) {
            iArr2[i2] = dataTypeSize;
        }
        return iArr2;
    }

    private static int bitsHelper(int i, ColorSpace colorSpace, boolean z) {
        int dataTypeSize = DataBuffer.getDataTypeSize(i);
        int numComponents = colorSpace.getNumComponents();
        if (z) {
            numComponents++;
        }
        return dataTypeSize * numComponents;
    }

    private int extractComponent(Object obj, int i, int i2) {
        int i3;
        short s;
        int i4;
        boolean z = this.supportsAlpha && this.isAlphaPremultiplied;
        int i5 = this.nBits[i];
        int i6 = (1 << i5) - 1;
        int i7 = this.transferType;
        if (i7 != 0) {
            if (i7 == 1) {
                short[] sArr = (short[]) obj;
                i3 = sArr[i] & i6;
                if (z) {
                    s = sArr[this.numColorComponents];
                    i4 = s & i6;
                }
            } else {
                if (i7 == 2) {
                    short[] sArr2 = (short[]) obj;
                    float f = (1 << i2) - 1;
                    if (!z) {
                        return (int) (((sArr2[i] / 32767.0f) * f) + 0.5f);
                    }
                    short s2 = sArr2[this.numColorComponents];
                    if (s2 != 0) {
                        return (int) (((sArr2[i] / s2) * f) + 0.5f);
                    }
                    return 0;
                }
                if (i7 != 3) {
                    if (i7 == 4) {
                        float[] fArr = (float[]) obj;
                        float f2 = (1 << i2) - 1;
                        if (!z) {
                            return (int) ((fArr[i] * f2) + 0.5f);
                        }
                        float f3 = fArr[this.numColorComponents];
                        if (f3 != 0.0f) {
                            return (int) (((fArr[i] / f3) * f2) + 0.5f);
                        }
                        return 0;
                    }
                    if (i7 != 5) {
                        throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
                    }
                    double[] dArr = (double[]) obj;
                    double d = (1 << i2) - 1;
                    if (!z) {
                        return (int) ((dArr[i] * d) + 0.5d);
                    }
                    double d2 = dArr[this.numColorComponents];
                    if (d2 != 0.0d) {
                        return (int) (((dArr[i] / d2) * d) + 0.5d);
                    }
                    return 0;
                }
                int[] iArr = (int[]) obj;
                i3 = iArr[i];
                if (z) {
                    i4 = iArr[this.numColorComponents];
                }
            }
            i4 = 0;
        } else {
            byte[] bArr = (byte[]) obj;
            i3 = bArr[i] & i6;
            i2 = 8;
            if (z) {
                s = bArr[this.numColorComponents];
                i4 = s & i6;
            }
            i4 = 0;
        }
        if (z) {
            if (i4 != 0) {
                return (int) (((i3 / i6) * (((1 << r3[this.numColorComponents]) - 1) / i4) * ((1 << i2) - 1)) + 0.5f);
            }
            return 0;
        }
        if (i5 != i2) {
            return (int) (((i3 / i6) * ((1 << i2) - 1)) + 0.5f);
        }
        return i3;
    }

    private int getRGBComponent(int i, int i2) {
        short[] sArr;
        int[] iArr;
        if (this.numComponents <= 1) {
            if (!this.signed) {
                if (this.needScaleInit) {
                    initScale();
                }
                int i3 = this.transferType;
                if (i3 == 0) {
                    sArr = new byte[]{(byte) i};
                } else {
                    if (i3 != 1) {
                        iArr = i3 != 3 ? null : new int[]{i};
                        return (int) ((this.colorSpace.toRGB(getNormalizedComponents(iArr, null, 0))[i2] * 255.0f) + 0.5f);
                    }
                    sArr = new short[]{(short) i};
                }
                iArr = sArr;
                return (int) ((this.colorSpace.toRGB(getNormalizedComponents(iArr, null, 0))[i2] * 255.0f) + 0.5f);
            }
            throw new IllegalArgumentException("Component value is signed");
        }
        throw new IllegalArgumentException("More than one component per pixel");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010d A[EDGE_INSN: B:35:0x010d->B:24:0x010d BREAK  A[LOOP:0: B:15:0x00f4->B:21:0x0108], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void initScale() {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.ComponentColorModel.initScale():void");
    }

    private void setupLUTs() {
        if (this.is_sRGB) {
            this.is_sRGB_stdScale = true;
            this.nonStdScale = false;
            return;
        }
        if (ColorModel.isLinearRGBspace(this.colorSpace)) {
            this.is_LinearRGB_stdScale = true;
            this.nonStdScale = false;
            if (this.transferType == 0) {
                this.tosRGB8LUT = ColorModel.getLinearRGB8TosRGB8LUT();
                this.fromsRGB8LUT8 = ColorModel.getsRGB8ToLinearRGB8LUT();
                return;
            } else {
                this.tosRGB8LUT = ColorModel.getLinearRGB16TosRGB8LUT();
                this.fromsRGB8LUT16 = ColorModel.getsRGB8ToLinearRGB16LUT();
                return;
            }
        }
        if (this.colorSpaceType == 6) {
            ColorSpace colorSpace = this.colorSpace;
            if ((colorSpace instanceof ICC_ColorSpace) && colorSpace.getMinValue(0) == 0.0f && this.colorSpace.getMaxValue(0) == 1.0f) {
                ICC_ColorSpace iCC_ColorSpace = (ICC_ColorSpace) this.colorSpace;
                this.is_ICCGray_stdScale = true;
                this.nonStdScale = false;
                this.fromsRGB8LUT16 = ColorModel.getsRGB8ToLinearRGB16LUT();
                if (ColorModel.isLinearGRAYspace(iCC_ColorSpace)) {
                    this.is_LinearGray_stdScale = true;
                    if (this.transferType == 0) {
                        this.tosRGB8LUT = ColorModel.getGray8TosRGB8LUT(iCC_ColorSpace);
                        return;
                    } else {
                        this.tosRGB8LUT = ColorModel.getGray16TosRGB8LUT(iCC_ColorSpace);
                        return;
                    }
                }
                if (this.transferType == 0) {
                    this.tosRGB8LUT = ColorModel.getGray8TosRGB8LUT(iCC_ColorSpace);
                    this.fromLinearGray16ToOtherGray8LUT = ColorModel.getLinearGray16ToOtherGray8LUT(iCC_ColorSpace);
                    return;
                } else {
                    this.tosRGB8LUT = ColorModel.getGray16TosRGB8LUT(iCC_ColorSpace);
                    this.fromLinearGray16ToOtherGray16LUT = ColorModel.getLinearGray16ToOtherGray16LUT(iCC_ColorSpace);
                    return;
                }
            }
        }
        if (this.needScaleInit) {
            this.nonStdScale = false;
            for (int i = 0; i < this.numColorComponents; i++) {
                if (this.colorSpace.getMinValue(i) != 0.0f || this.colorSpace.getMaxValue(i) != 1.0f) {
                    this.nonStdScale = true;
                    break;
                }
            }
            if (this.nonStdScale) {
                int i2 = this.numColorComponents;
                this.min = new float[i2];
                this.diffMinMax = new float[i2];
                for (int i3 = 0; i3 < this.numColorComponents; i3++) {
                    this.min[i3] = this.colorSpace.getMinValue(i3);
                    this.diffMinMax[i3] = this.colorSpace.getMaxValue(i3) - this.min[i3];
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v38, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r10v42, types: [java.lang.Object, float[]] */
    /* JADX WARN: Type inference failed for: r10v53 */
    /* JADX WARN: Type inference failed for: r10v54 */
    /* JADX WARN: Type inference failed for: r10v56 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v13, types: [float] */
    /* JADX WARN: Type inference failed for: r11v15, types: [double] */
    /* JADX WARN: Type inference failed for: r12v13, types: [int] */
    /* JADX WARN: Type inference failed for: r12v42, types: [java.lang.Object, double[]] */
    /* JADX WARN: Type inference failed for: r13v29, types: [int] */
    /* JADX WARN: Type inference failed for: r13v33, types: [float] */
    /* JADX WARN: Type inference failed for: r14v23, types: [float] */
    /* JADX WARN: Type inference failed for: r15v24, types: [int] */
    /* JADX WARN: Type inference failed for: r15v58, types: [int] */
    /* JADX WARN: Type inference failed for: r15v64, types: [float] */
    /* JADX WARN: Type inference failed for: r15v66, types: [double] */
    /* JADX WARN: Type inference failed for: r17v2, types: [double] */
    /* JADX WARN: Type inference failed for: r20v1, types: [double] */
    /* JADX WARN: Type inference failed for: r23v0, types: [java.awt.image.Raster, java.awt.image.WritableRaster] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v29, types: [java.lang.Object, float[]] */
    /* JADX WARN: Type inference failed for: r9v33, types: [java.lang.Object, double[]] */
    /* JADX WARN: Type inference failed for: r9v66 */
    @Override // java.awt.image.ColorModel
    public ColorModel coerceData(WritableRaster writableRaster, boolean z) {
        if (!this.supportsAlpha || this.isAlphaPremultiplied == z) {
            return this;
        }
        int width = writableRaster.getWidth();
        int height = writableRaster.getHeight();
        int numBands = writableRaster.getNumBands() - 1;
        int minX = writableRaster.getMinX();
        int minY = writableRaster.getMinY();
        double d = 0.0d;
        byte[] bArr = null;
        if (z) {
            int i = this.transferType;
            if (i == 0) {
                float f = 1.0f / ((1 << this.nBits[numBands]) - 1);
                byte[] bArr2 = null;
                int i2 = 0;
                while (i2 < height) {
                    int i3 = minX;
                    byte[] bArr3 = bArr;
                    int i4 = 0;
                    while (i4 < width) {
                        bArr3 = (byte[]) writableRaster.getDataElements(i3, minY, bArr3);
                        if ((bArr3[numBands] & 255) * f != 0.0f) {
                            for (int i5 = 0; i5 < numBands; i5++) {
                                bArr3[i5] = (byte) (((bArr3[i5] & 255) * r12) + 0.5f);
                            }
                            writableRaster.setDataElements(i3, minY, bArr3);
                        } else {
                            if (bArr2 == null) {
                                bArr2 = new byte[this.numComponents];
                                Arrays.fill(bArr2, (byte) 0);
                            }
                            writableRaster.setDataElements(i3, minY, bArr2);
                        }
                        i4++;
                        i3++;
                    }
                    i2++;
                    minY++;
                    bArr = bArr3;
                }
            } else if (i == 1) {
                float f2 = 1.0f / ((1 << this.nBits[numBands]) - 1);
                short[] sArr = null;
                int i6 = 0;
                while (i6 < height) {
                    int i7 = minX;
                    ?? r10 = bArr;
                    int i8 = 0;
                    while (i8 < width) {
                        short[] sArr2 = (short[]) writableRaster.getDataElements(i7, minY, r10);
                        if ((sArr2[numBands] & 65535) * f2 != 0.0f) {
                            for (int i9 = 0; i9 < numBands; i9++) {
                                sArr2[i9] = (short) (((sArr2[i9] & 65535) * r12) + 0.5f);
                            }
                            writableRaster.setDataElements(i7, minY, sArr2);
                        } else {
                            if (sArr == null) {
                                sArr = new short[this.numComponents];
                                Arrays.fill(sArr, (short) 0);
                            }
                            writableRaster.setDataElements(i7, minY, sArr);
                        }
                        i8++;
                        i7++;
                        r10 = sArr2;
                    }
                    i6++;
                    minY++;
                    bArr = r10;
                }
            } else if (i == 2) {
                short[] sArr3 = null;
                int i10 = 0;
                while (i10 < height) {
                    int i11 = minX;
                    ?? r102 = bArr;
                    int i12 = 0;
                    while (i12 < width) {
                        short[] sArr4 = (short[]) writableRaster.getDataElements(i11, minY, r102);
                        if (sArr4[numBands] * 3.051851E-5f != 0.0f) {
                            for (int i13 = 0; i13 < numBands; i13++) {
                                sArr4[i13] = (short) ((sArr4[i13] * r13) + 0.5f);
                            }
                            writableRaster.setDataElements(i11, minY, sArr4);
                        } else {
                            if (sArr3 == null) {
                                sArr3 = new short[this.numComponents];
                                Arrays.fill(sArr3, (short) 0);
                            }
                            writableRaster.setDataElements(i11, minY, sArr3);
                        }
                        i12++;
                        i11++;
                        r102 = sArr4;
                    }
                    i10++;
                    minY++;
                    bArr = r102;
                }
            } else if (i == 3) {
                float f3 = 1.0f / ((1 << this.nBits[numBands]) - 1);
                int[] iArr = null;
                int i14 = 0;
                while (i14 < height) {
                    int i15 = minX;
                    byte[] bArr4 = bArr;
                    int i16 = 0;
                    while (i16 < width) {
                        ?? r103 = (int[]) writableRaster.getDataElements(i15, minY, bArr4);
                        float f4 = ((float) r103[numBands]) * f3;
                        if (f4 != 0.0f) {
                            for (int i17 = 0; i17 < numBands; i17++) {
                                r103[i17] = (int) ((((float) r103[i17]) * f4) + 0.5f);
                            }
                            writableRaster.setDataElements(i15, minY, r103);
                        } else {
                            if (iArr == null) {
                                iArr = new int[this.numComponents];
                                Arrays.fill(iArr, 0);
                            }
                            writableRaster.setDataElements(i15, minY, iArr);
                        }
                        i16++;
                        i15++;
                        bArr4 = r103;
                    }
                    i14++;
                    minY++;
                    bArr = bArr4;
                }
            } else if (i == 4) {
                float[] fArr = null;
                int i18 = 0;
                while (i18 < height) {
                    int i19 = minX;
                    byte[] bArr5 = bArr;
                    int i20 = 0;
                    while (i20 < width) {
                        ?? r104 = (float[]) writableRaster.getDataElements(i19, minY, bArr5);
                        ?? r13 = r104[numBands];
                        if (r13 != 0.0f) {
                            for (int i21 = 0; i21 < numBands; i21++) {
                                r104[i21] = r104[i21] * r13;
                            }
                            writableRaster.setDataElements(i19, minY, r104);
                        } else {
                            if (fArr == null) {
                                fArr = new float[this.numComponents];
                                Arrays.fill(fArr, 0.0f);
                            }
                            writableRaster.setDataElements(i19, minY, fArr);
                        }
                        i20++;
                        i19++;
                        bArr5 = r104;
                    }
                    i18++;
                    minY++;
                    bArr = bArr5;
                }
            } else {
                if (i != 5) {
                    throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
                }
                double[] dArr = null;
                int i22 = 0;
                while (i22 < height) {
                    int i23 = minX;
                    byte[] bArr6 = bArr;
                    int i24 = 0;
                    while (i24 < width) {
                        ?? r12 = (double[]) writableRaster.getDataElements(i23, minY, bArr6);
                        ?? r15 = r12[numBands];
                        if (r15 != d) {
                            for (int i25 = 0; i25 < numBands; i25++) {
                                r12[i25] = r12[i25] * r15;
                            }
                            writableRaster.setDataElements(i23, minY, r12);
                        } else {
                            if (dArr == null) {
                                dArr = new double[this.numComponents];
                                Arrays.fill(dArr, 0.0d);
                            }
                            writableRaster.setDataElements(i23, minY, dArr);
                        }
                        i24++;
                        i23++;
                        d = 0.0d;
                        bArr6 = r12;
                    }
                    i22++;
                    minY++;
                    bArr = bArr6;
                    d = 0.0d;
                }
            }
        } else {
            int i26 = 0;
            int i27 = this.transferType;
            if (i27 == 0) {
                float f5 = 1.0f / ((1 << this.nBits[numBands]) - 1);
                int i28 = 0;
                while (i28 < height) {
                    int i29 = minX;
                    byte[] bArr7 = bArr;
                    int i30 = 0;
                    while (i30 < width) {
                        bArr7 = (byte[]) writableRaster.getDataElements(i29, minY, bArr7);
                        float f6 = (bArr7[numBands] & 255) * f5;
                        if (f6 != 0.0f) {
                            float f7 = 1.0f / f6;
                            for (int i31 = 0; i31 < numBands; i31++) {
                                bArr7[i31] = (byte) (((bArr7[i31] & 255) * f7) + 0.5f);
                            }
                            writableRaster.setDataElements(i29, minY, bArr7);
                        }
                        i30++;
                        i29++;
                    }
                    i28++;
                    minY++;
                    bArr = bArr7;
                }
            } else if (i27 == 1) {
                float f8 = 1.0f / ((1 << this.nBits[numBands]) - 1);
                int i32 = 0;
                while (i32 < height) {
                    int i33 = minX;
                    ?? r105 = bArr;
                    int i34 = 0;
                    while (i34 < width) {
                        short[] sArr5 = (short[]) writableRaster.getDataElements(i33, minY, r105);
                        float f9 = (sArr5[numBands] & 65535) * f8;
                        if (f9 != 0.0f) {
                            float f10 = 1.0f / f9;
                            for (int i35 = 0; i35 < numBands; i35++) {
                                sArr5[i35] = (short) (((sArr5[i35] & 65535) * f10) + 0.5f);
                            }
                            writableRaster.setDataElements(i33, minY, sArr5);
                        }
                        i34++;
                        i33++;
                        r105 = sArr5;
                    }
                    i32++;
                    minY++;
                    bArr = r105;
                }
            } else if (i27 == 2) {
                int i36 = 0;
                while (i36 < height) {
                    int i37 = minX;
                    ?? r9 = bArr;
                    int i38 = 0;
                    while (i38 < width) {
                        short[] sArr6 = (short[]) writableRaster.getDataElements(i37, minY, r9);
                        float f11 = sArr6[numBands] * 3.051851E-5f;
                        if (f11 != 0.0f) {
                            float f12 = 1.0f / f11;
                            for (int i39 = 0; i39 < numBands; i39++) {
                                sArr6[i39] = (short) ((sArr6[i39] * f12) + 0.5f);
                            }
                            writableRaster.setDataElements(i37, minY, sArr6);
                        }
                        i38++;
                        i37++;
                        r9 = sArr6;
                    }
                    i36++;
                    minY++;
                    bArr = r9;
                }
            } else if (i27 == 3) {
                float f13 = 1.0f / ((1 << this.nBits[numBands]) - 1);
                int i40 = 0;
                while (i40 < height) {
                    int i41 = minX;
                    int i42 = i26;
                    byte[] bArr8 = bArr;
                    while (i42 < width) {
                        ?? r106 = (int[]) writableRaster.getDataElements(i41, minY, bArr8);
                        float f14 = ((float) r106[numBands]) * f13;
                        if (f14 != 0.0f) {
                            float f15 = 1.0f / f14;
                            for (int i43 = i26; i43 < numBands; i43++) {
                                r106[i43] = (int) ((((float) r106[i43]) * f15) + 0.5f);
                            }
                            writableRaster.setDataElements(i41, minY, r106);
                        }
                        i42++;
                        i41++;
                        i26 = 0;
                        bArr8 = r106;
                    }
                    i40++;
                    minY++;
                    bArr = bArr8;
                    i26 = 0;
                }
            } else if (i27 == 4) {
                int i44 = 0;
                while (i44 < height) {
                    int i45 = minX;
                    int i46 = 0;
                    byte[] bArr9 = bArr;
                    while (i46 < width) {
                        ?? r92 = (float[]) writableRaster.getDataElements(i45, minY, bArr9);
                        ?? r11 = r92[numBands];
                        if (r11 != 0.0f) {
                            float f16 = 1.0f / r11;
                            for (int i47 = 0; i47 < numBands; i47++) {
                                r92[i47] = r92[i47] * f16;
                            }
                            writableRaster.setDataElements(i45, minY, r92);
                        }
                        i46++;
                        i45++;
                        bArr9 = r92;
                    }
                    i44++;
                    minY++;
                    bArr = bArr9;
                }
            } else {
                if (i27 != 5) {
                    throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
                }
                int i48 = 0;
                while (i48 < height) {
                    int i49 = minX;
                    int i50 = 0;
                    byte[] bArr10 = bArr;
                    while (i50 < width) {
                        ?? r93 = (double[]) writableRaster.getDataElements(i49, minY, bArr10);
                        ?? r112 = r93[numBands];
                        if (r112 != 0.0d) {
                            double d2 = 1.0d / r112;
                            for (int i51 = 0; i51 < numBands; i51++) {
                                r93[i51] = r93[i51] * d2;
                            }
                            writableRaster.setDataElements(i49, minY, r93);
                        }
                        i50++;
                        i49++;
                        bArr10 = r93;
                    }
                    i48++;
                    minY++;
                    bArr = bArr10;
                }
            }
        }
        return !this.signed ? new ComponentColorModel(this.colorSpace, this.nBits, this.supportsAlpha, z, this.transparency, this.transferType) : new ComponentColorModel(this.colorSpace, this.supportsAlpha, z, this.transparency, this.transferType);
    }

    @Override // java.awt.image.ColorModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        int[] iArr = new int[this.numComponents];
        for (int i3 = 0; i3 < this.numComponents; i3++) {
            iArr[i3] = i3;
        }
        int i4 = this.transferType;
        if (i4 == 0 || i4 == 1) {
            int i5 = this.transferType;
            int i6 = this.numComponents;
            return new PixelInterleavedSampleModel(i5, i, i2, i6, i * i6, iArr);
        }
        int i7 = this.transferType;
        int i8 = this.numComponents;
        return new ComponentSampleModel(i7, i, i2, i8, i * i8, iArr);
    }

    @Override // java.awt.image.ColorModel
    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        int i3 = this.numComponents;
        int i4 = this.transferType;
        if (i4 == 0 || i4 == 1) {
            return Raster.createInterleavedRaster(i4, i, i2, i3, null);
        }
        SampleModel createCompatibleSampleModel = createCompatibleSampleModel(i, i2);
        return Raster.createWritableRaster(createCompatibleSampleModel, createCompatibleSampleModel.createDataBuffer(), null);
    }

    @Override // java.awt.image.ColorModel
    public boolean equals(Object obj) {
        return super.equals(obj) && obj.getClass() == getClass();
    }

    @Override // java.awt.image.ColorModel
    public int getAlpha(int i) {
        if (!this.supportsAlpha) {
            return 255;
        }
        if (this.numComponents <= 1) {
            if (!this.signed) {
                return (int) (((i / ((1 << this.nBits[0]) - 1)) * 255.0f) + 0.5f);
            }
            throw new IllegalArgumentException("Component value is signed");
        }
        throw new IllegalArgumentException("More than one component per pixel");
    }

    @Override // java.awt.image.ColorModel
    public WritableRaster getAlphaRaster(WritableRaster writableRaster) {
        if (!hasAlpha()) {
            return null;
        }
        int minX = writableRaster.getMinX();
        int minY = writableRaster.getMinY();
        return writableRaster.createWritableChild(minX, minY, writableRaster.getWidth(), writableRaster.getHeight(), minX, minY, new int[]{writableRaster.getNumBands() - 1});
    }

    @Override // java.awt.image.ColorModel
    public int getBlue(int i) {
        return getRGBComponent(i, 2);
    }

    @Override // java.awt.image.ColorModel
    public int[] getComponents(int i, int[] iArr, int i2) {
        if (this.numComponents <= 1) {
            if (this.needScaleInit) {
                initScale();
            }
            if (!this.noUnnorm) {
                if (iArr == null) {
                    iArr = new int[i2 + 1];
                }
                iArr[i2 + 0] = ((1 << this.nBits[0]) - 1) & i;
                return iArr;
            }
            throw new IllegalArgumentException("This ColorModel does not support the unnormalized form");
        }
        throw new IllegalArgumentException("More than one component per pixel");
    }

    @Override // java.awt.image.ColorModel
    public int getDataElement(int[] iArr, int i) {
        if (this.needScaleInit) {
            initScale();
        }
        if (this.numComponents == 1) {
            if (!this.noUnnorm) {
                return iArr[i + 0];
            }
            throw new IllegalArgumentException("This ColorModel does not support the unnormalized form");
        }
        throw new IllegalArgumentException("This model returns " + this.numComponents + " elements in the pixel array.");
    }

    /* JADX WARN: Removed duplicated region for block: B:274:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0575  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0563  */
    @Override // java.awt.image.ColorModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getDataElements(int r22, java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 1554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.ComponentColorModel.getDataElements(int, java.lang.Object):java.lang.Object");
    }

    @Override // java.awt.image.ColorModel
    public int getGreen(int i) {
        return getRGBComponent(i, 1);
    }

    @Override // java.awt.image.ColorModel
    public float[] getNormalizedComponents(int[] iArr, int i, float[] fArr, int i2) {
        if (this.needScaleInit) {
            initScale();
        }
        if (!this.noUnnorm) {
            return super.getNormalizedComponents(iArr, i, fArr, i2);
        }
        throw new IllegalArgumentException("This ColorModel does not support the unnormalized form");
    }

    @Override // java.awt.image.ColorModel
    public int getRGB(int i) {
        if (this.numComponents <= 1) {
            if (!this.signed) {
                return (getBlue(i) << 0) | (getAlpha(i) << 24) | (getRed(i) << 16) | (getGreen(i) << 8);
            }
            throw new IllegalArgumentException("Component value is signed");
        }
        throw new IllegalArgumentException("More than one component per pixel");
    }

    @Override // java.awt.image.ColorModel
    public int getRed(int i) {
        return getRGBComponent(i, 0);
    }

    @Override // java.awt.image.ColorModel
    public int[] getUnnormalizedComponents(float[] fArr, int i, int[] iArr, int i2) {
        if (this.needScaleInit) {
            initScale();
        }
        if (this.noUnnorm) {
            throw new IllegalArgumentException("This ColorModel does not support the unnormalized form");
        }
        return super.getUnnormalizedComponents(fArr, i, iArr, i2);
    }

    @Override // java.awt.image.ColorModel
    public boolean isCompatibleRaster(Raster raster) {
        SampleModel sampleModel = raster.getSampleModel();
        if (!(sampleModel instanceof ComponentSampleModel) || sampleModel.getNumBands() != getNumComponents()) {
            return false;
        }
        for (int i = 0; i < this.nBits.length; i++) {
            if (sampleModel.getSampleSize(i) < this.nBits[i]) {
                return false;
            }
        }
        return raster.getTransferType() == this.transferType;
    }

    @Override // java.awt.image.ColorModel
    public boolean isCompatibleSampleModel(SampleModel sampleModel) {
        return (sampleModel instanceof ComponentSampleModel) && this.numComponents == sampleModel.getNumBands() && sampleModel.getTransferType() == this.transferType;
    }

    @Override // java.awt.image.ColorModel
    public int getBlue(Object obj) {
        return getRGBComponent(obj, 2);
    }

    @Override // java.awt.image.ColorModel
    public int getGreen(Object obj) {
        return getRGBComponent(obj, 1);
    }

    @Override // java.awt.image.ColorModel
    public int getRed(Object obj) {
        return getRGBComponent(obj, 0);
    }

    @Override // java.awt.image.ColorModel
    public float[] getNormalizedComponents(Object obj, float[] fArr, int i) {
        if (fArr == null) {
            fArr = new float[this.numComponents + i];
        }
        int i2 = this.transferType;
        if (i2 == 0) {
            byte[] bArr = (byte[]) obj;
            int i3 = i;
            int i4 = 0;
            while (i4 < this.numComponents) {
                fArr[i3] = (bArr[i4] & 255) / ((1 << this.nBits[i4]) - 1);
                i4++;
                i3++;
            }
        } else if (i2 == 1) {
            short[] sArr = (short[]) obj;
            int i5 = i;
            int i6 = 0;
            while (i6 < this.numComponents) {
                fArr[i5] = (sArr[i6] & 65535) / ((1 << this.nBits[i6]) - 1);
                i6++;
                i5++;
            }
        } else if (i2 == 2) {
            short[] sArr2 = (short[]) obj;
            int i7 = i;
            int i8 = 0;
            while (i8 < this.numComponents) {
                fArr[i7] = sArr2[i8] / 32767.0f;
                i8++;
                i7++;
            }
        } else if (i2 == 3) {
            int[] iArr = (int[]) obj;
            int i9 = i;
            int i10 = 0;
            while (i10 < this.numComponents) {
                fArr[i9] = iArr[i10] / ((1 << this.nBits[i10]) - 1);
                i10++;
                i9++;
            }
        } else if (i2 == 4) {
            float[] fArr2 = (float[]) obj;
            int i11 = i;
            int i12 = 0;
            while (i12 < this.numComponents) {
                fArr[i11] = fArr2[i12];
                i12++;
                i11++;
            }
        } else if (i2 == 5) {
            double[] dArr = (double[]) obj;
            int i13 = i;
            int i14 = 0;
            while (i14 < this.numComponents) {
                fArr[i13] = (float) dArr[i14];
                i14++;
                i13++;
            }
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        if (this.supportsAlpha && this.isAlphaPremultiplied) {
            float f = fArr[this.numColorComponents + i];
            if (f != 0.0f) {
                float f2 = 1.0f / f;
                for (int i15 = i; i15 < this.numColorComponents + i; i15++) {
                    fArr[i15] = fArr[i15] * f2;
                }
            }
        }
        if (this.min != null) {
            for (int i16 = 0; i16 < this.numColorComponents; i16++) {
                int i17 = i16 + i;
                fArr[i17] = this.min[i16] + (this.diffMinMax[i16] * fArr[i17]);
            }
        }
        return fArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0077 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
    @Override // java.awt.image.ColorModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getAlpha(java.lang.Object r8) {
        /*
            r7 = this;
            boolean r0 = r7.supportsAlpha
            if (r0 != 0) goto L7
            r7 = 255(0xff, float:3.57E-43)
            return r7
        L7:
            int r0 = r7.numColorComponents
            int[] r1 = r7.nBits
            r1 = r1[r0]
            r2 = 1
            int r3 = r2 << r1
            int r3 = r3 - r2
            int r4 = r7.transferType
            r5 = 1056964608(0x3f000000, float:0.5)
            r6 = 1132396544(0x437f0000, float:255.0)
            if (r4 == 0) goto L6e
            if (r4 == r2) goto L69
            r3 = 2
            if (r4 == r3) goto L5c
            r3 = 3
            if (r4 == r3) goto L57
            r1 = 4
            if (r4 == r1) goto L4f
            r1 = 5
            if (r4 != r1) goto L36
            double[] r8 = (double[]) r8
            r7 = r8[r0]
            r0 = 4643176031446892544(0x406fe00000000000, double:255.0)
            double r7 = r7 * r0
            r0 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            double r7 = r7 + r0
            int r7 = (int) r7
            return r7
        L36:
            java.lang.UnsupportedOperationException r8 = new java.lang.UnsupportedOperationException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "This method has not been implemented for transferType "
            r0.append(r1)
            int r7 = r7.transferType
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r8.<init>(r7)
            throw r8
        L4f:
            float[] r8 = (float[]) r8
            r7 = r8[r0]
            float r7 = r7 * r6
            float r7 = r7 + r5
            int r7 = (int) r7
            return r7
        L57:
            int[] r8 = (int[]) r8
            r7 = r8[r0]
            goto L73
        L5c:
            short[] r8 = (short[]) r8
            short r7 = r8[r0]
            float r7 = (float) r7
            r8 = 1191181824(0x46fffe00, float:32767.0)
            float r7 = r7 / r8
            float r7 = r7 * r6
            float r7 = r7 + r5
            int r7 = (int) r7
            return r7
        L69:
            short[] r8 = (short[]) r8
            short r7 = r8[r0]
            goto L72
        L6e:
            byte[] r8 = (byte[]) r8
            r7 = r8[r0]
        L72:
            r7 = r7 & r3
        L73:
            r8 = 8
            if (r1 != r8) goto L78
            return r7
        L78:
            float r7 = (float) r7
            int r8 = r2 << r1
            int r8 = r8 - r2
            float r8 = (float) r8
            float r7 = r7 / r8
            float r7 = r7 * r6
            float r7 = r7 + r5
            int r7 = (int) r7
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.ComponentColorModel.getAlpha(java.lang.Object):int");
    }

    @Override // java.awt.image.ColorModel
    public int getDataElement(float[] fArr, int i) {
        if (this.numComponents <= 1) {
            if (!this.signed) {
                if (this.needScaleInit) {
                    initScale();
                }
                Object dataElements = getDataElements(fArr, i, (Object) null);
                int i2 = this.transferType;
                if (i2 == 0) {
                    return ((byte[]) dataElements)[0] & 255;
                }
                if (i2 == 1) {
                    return ((short[]) dataElements)[0] & 65535;
                }
                if (i2 == 3) {
                    return ((int[]) dataElements)[0];
                }
                throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
            }
            throw new IllegalArgumentException("Component value is signed");
        }
        throw new IllegalArgumentException("More than one component per pixel");
    }

    @Override // java.awt.image.ColorModel
    public int[] getComponents(Object obj, int[] iArr, int i) {
        int[] intArray;
        if (this.needScaleInit) {
            initScale();
        }
        if (!this.noUnnorm) {
            if (obj instanceof int[]) {
                intArray = (int[]) obj;
            } else {
                intArray = DataBuffer.toIntArray(obj);
                if (intArray == null) {
                    throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
                }
            }
            int length = intArray.length;
            int i2 = this.numComponents;
            if (length >= i2) {
                if (iArr == null) {
                    iArr = new int[i + i2];
                } else if (iArr.length - i < i2) {
                    throw new IllegalArgumentException("Length of components array < number of components in model");
                }
                System.arraycopy(intArray, 0, iArr, i, i2);
                return iArr;
            }
            throw new IllegalArgumentException("Length of pixel array < number of components in model");
        }
        throw new IllegalArgumentException("This ColorModel does not support the unnormalized form");
    }

    @Override // java.awt.image.ColorModel
    public int getRGB(Object obj) {
        if (this.needScaleInit) {
            initScale();
        }
        if (!this.is_sRGB_stdScale && !this.is_LinearRGB_stdScale) {
            if (this.colorSpaceType == 6) {
                int red = getRed(obj);
                return (getAlpha(obj) << 24) | (red << 16) | (red << 8) | red;
            }
            float[] rgb = this.colorSpace.toRGB(getNormalizedComponents(obj, null, 0));
            return (getAlpha(obj) << 24) | (((int) ((rgb[0] * 255.0f) + 0.5f)) << 16) | (((int) ((rgb[1] * 255.0f) + 0.5f)) << 8) | (((int) ((rgb[2] * 255.0f) + 0.5f)) << 0);
        }
        return getBlue(obj) | (getAlpha(obj) << 24) | (getRed(obj) << 16) | (getGreen(obj) << 8);
    }

    private int getRGBComponent(Object obj, int i) {
        if (this.needScaleInit) {
            initScale();
        }
        if (this.is_sRGB_stdScale) {
            return extractComponent(obj, i, 8);
        }
        if (this.is_LinearRGB_stdScale) {
            return this.tosRGB8LUT[extractComponent(obj, i, 16)] & 255;
        }
        if (this.is_ICCGray_stdScale) {
            return this.tosRGB8LUT[extractComponent(obj, 0, 16)] & 255;
        }
        return (int) ((this.colorSpace.toRGB(getNormalizedComponents(obj, null, 0))[i] * 255.0f) + 0.5f);
    }

    public ComponentColorModel(ColorSpace colorSpace, boolean z, boolean z2, int i, int i2) {
        this(colorSpace, null, z, z2, i, i2);
    }

    @Override // java.awt.image.ColorModel
    public Object getDataElements(int[] iArr, int i, Object obj) {
        byte[] bArr;
        short[] sArr;
        int[] iArr2;
        if (this.needScaleInit) {
            initScale();
        }
        if (!this.noUnnorm) {
            int length = iArr.length - i;
            int i2 = this.numComponents;
            if (length >= i2) {
                int i3 = this.transferType;
                int i4 = 0;
                if (i3 == 0) {
                    if (obj == null) {
                        bArr = new byte[i2];
                    } else {
                        bArr = (byte[]) obj;
                    }
                    while (i4 < this.numComponents) {
                        bArr[i4] = (byte) (iArr[i + i4] & 255);
                        i4++;
                    }
                    return bArr;
                }
                if (i3 == 1) {
                    if (obj == null) {
                        sArr = new short[i2];
                    } else {
                        sArr = (short[]) obj;
                    }
                    while (i4 < this.numComponents) {
                        sArr[i4] = (short) (iArr[i + i4] & 65535);
                        i4++;
                    }
                    return sArr;
                }
                if (i3 == 3) {
                    if (obj == null) {
                        iArr2 = new int[i2];
                    } else {
                        iArr2 = (int[]) obj;
                    }
                    System.arraycopy(iArr, i, iArr2, 0, i2);
                    return iArr2;
                }
                throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
            }
            throw new IllegalArgumentException("Component array too small (should be " + this.numComponents);
        }
        throw new IllegalArgumentException("This ColorModel does not support the unnormalized form");
    }

    @Override // java.awt.image.ColorModel
    public Object getDataElements(float[] fArr, int i, Object obj) {
        float[] fArr2;
        byte[] bArr;
        int i2;
        short[] sArr;
        int i3;
        short[] sArr2;
        int i4;
        int[] iArr;
        int i5;
        float[] fArr3;
        int i6;
        double[] dArr;
        int i7;
        int i8;
        int i9 = 0;
        boolean z = this.supportsAlpha && this.isAlphaPremultiplied;
        if (this.needScaleInit) {
            initScale();
        }
        if (this.nonStdScale) {
            fArr2 = new float[this.numComponents];
            int i10 = i;
            int i11 = 0;
            while (true) {
                i8 = this.numColorComponents;
                if (i11 >= i8) {
                    break;
                }
                float f = (fArr[i10] - this.compOffset[i11]) * this.compScale[i11];
                fArr2[i11] = f;
                if (f < 0.0f) {
                    fArr2[i11] = 0.0f;
                }
                if (fArr2[i11] > 1.0f) {
                    fArr2[i11] = 1.0f;
                }
                i11++;
                i10++;
            }
            if (this.supportsAlpha) {
                fArr2[i8] = fArr[i + i8];
            }
            i = 0;
        } else {
            fArr2 = fArr;
        }
        int i12 = this.transferType;
        if (i12 == 0) {
            if (obj == null) {
                bArr = new byte[this.numComponents];
            } else {
                bArr = (byte[]) obj;
            }
            if (z) {
                float f2 = fArr2[this.numColorComponents + i];
                while (true) {
                    i2 = this.numColorComponents;
                    if (i9 >= i2) {
                        break;
                    }
                    bArr[i9] = (byte) ((fArr2[i] * f2 * ((1 << this.nBits[i9]) - 1)) + 0.5f);
                    i9++;
                    i++;
                }
                bArr[i2] = (byte) ((f2 * ((1 << this.nBits[i2]) - 1)) + 0.5f);
            } else {
                while (i9 < this.numComponents) {
                    bArr[i9] = (byte) ((fArr2[i] * ((1 << this.nBits[i9]) - 1)) + 0.5f);
                    i9++;
                    i++;
                }
            }
            return bArr;
        }
        if (i12 == 1) {
            if (obj == null) {
                sArr = new short[this.numComponents];
            } else {
                sArr = (short[]) obj;
            }
            if (z) {
                float f3 = fArr2[this.numColorComponents + i];
                while (true) {
                    i3 = this.numColorComponents;
                    if (i9 >= i3) {
                        break;
                    }
                    sArr[i9] = (short) ((fArr2[i] * f3 * ((1 << this.nBits[i9]) - 1)) + 0.5f);
                    i9++;
                    i++;
                }
                sArr[i3] = (short) ((f3 * ((1 << this.nBits[i3]) - 1)) + 0.5f);
            } else {
                while (i9 < this.numComponents) {
                    sArr[i9] = (short) ((fArr2[i] * ((1 << this.nBits[i9]) - 1)) + 0.5f);
                    i9++;
                    i++;
                }
            }
            return sArr;
        }
        if (i12 == 2) {
            if (obj == null) {
                sArr2 = new short[this.numComponents];
            } else {
                sArr2 = (short[]) obj;
            }
            if (z) {
                float f4 = fArr2[this.numColorComponents + i];
                while (true) {
                    i4 = this.numColorComponents;
                    if (i9 >= i4) {
                        break;
                    }
                    sArr2[i9] = (short) ((fArr2[i] * f4 * 32767.0f) + 0.5f);
                    i9++;
                    i++;
                }
                sArr2[i4] = (short) ((f4 * 32767.0f) + 0.5f);
            } else {
                while (i9 < this.numComponents) {
                    sArr2[i9] = (short) ((fArr2[i] * 32767.0f) + 0.5f);
                    i9++;
                    i++;
                }
            }
            return sArr2;
        }
        if (i12 == 3) {
            if (obj == null) {
                iArr = new int[this.numComponents];
            } else {
                iArr = (int[]) obj;
            }
            if (z) {
                float f5 = fArr2[this.numColorComponents + i];
                while (true) {
                    i5 = this.numColorComponents;
                    if (i9 >= i5) {
                        break;
                    }
                    iArr[i9] = (int) ((fArr2[i] * f5 * ((1 << this.nBits[i9]) - 1)) + 0.5f);
                    i9++;
                    i++;
                }
                iArr[i5] = (int) ((f5 * ((1 << this.nBits[i5]) - 1)) + 0.5f);
            } else {
                while (i9 < this.numComponents) {
                    iArr[i9] = (int) ((fArr2[i] * ((1 << this.nBits[i9]) - 1)) + 0.5f);
                    i9++;
                    i++;
                }
            }
            return iArr;
        }
        if (i12 == 4) {
            if (obj == null) {
                fArr3 = new float[this.numComponents];
            } else {
                fArr3 = (float[]) obj;
            }
            if (z) {
                float f6 = fArr[this.numColorComponents + i];
                while (true) {
                    i6 = this.numColorComponents;
                    if (i9 >= i6) {
                        break;
                    }
                    fArr3[i9] = fArr[i] * f6;
                    i9++;
                    i++;
                }
                fArr3[i6] = f6;
            } else {
                while (i9 < this.numComponents) {
                    fArr3[i9] = fArr[i];
                    i9++;
                    i++;
                }
            }
            return fArr3;
        }
        if (i12 != 5) {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        if (obj == null) {
            dArr = new double[this.numComponents];
        } else {
            dArr = (double[]) obj;
        }
        if (z) {
            double d = fArr[this.numColorComponents + i];
            while (true) {
                i7 = this.numColorComponents;
                if (i9 >= i7) {
                    break;
                }
                dArr[i9] = fArr[i] * d;
                i9++;
                i++;
            }
            dArr[i7] = d;
        } else {
            while (i9 < this.numComponents) {
                dArr[i9] = fArr[i];
                i9++;
                i++;
            }
        }
        return dArr;
    }
}
