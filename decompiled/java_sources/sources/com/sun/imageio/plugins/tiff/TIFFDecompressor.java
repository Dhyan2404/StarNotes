package com.sun.imageio.plugins.tiff;

import com.sun.imageio.plugins.common.BogusColorSpace;
import com.sun.imageio.plugins.common.ImageUtil;
import com.sun.imageio.plugins.common.SimpleCMYKColorSpace;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentColorModel;
import java.awt.image.ComponentSampleModel;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.PixelInterleavedSampleModel;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.awt.image.WritableRaster;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import javax.imageio.IIOException;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;

/* loaded from: classes9.dex */
public abstract class TIFFDecompressor {
    protected int activeSrcHeight;
    protected int activeSrcMinX;
    protected int activeSrcMinY;
    protected int activeSrcWidth;
    private boolean adjustBitDepths;
    private int[][] bitDepthScale;
    protected int[] bitsPerSample;
    protected int byteCount;
    protected TIFFColorConverter colorConverter;
    protected char[] colorMap;
    protected int compression;
    protected int[] destinationBands;
    protected int dstHeight;
    protected int dstMinX;
    protected int dstMinY;
    protected int dstWidth;
    protected int dstXOffset;
    protected int dstYOffset;
    protected int[] extraSamples;
    protected BufferedImage image;
    private boolean isBilevel;
    private boolean isContiguous;
    private boolean isImageSimple;
    protected IIOMetadata metadata;
    protected long offset;
    protected int photometricInterpretation;
    protected boolean planar;
    protected BufferedImage rawImage;
    protected ImageReader reader;
    protected int samplesPerPixel;
    protected int[] sourceBands;
    protected int sourceXOffset;
    protected int sourceYOffset;
    protected int srcHeight;
    protected int srcMinX;
    protected int srcMinY;
    protected int srcWidth;
    protected ImageInputStream stream;
    protected int subsampleX;
    protected int subsampleY;
    protected int planarBand = 0;
    protected int[] sampleFormat = {1};
    private boolean isFirstBitDepthTable = true;
    private boolean planarCache = false;
    private int[] destBitsPerSampleCache = null;
    private int[] sourceBandsCache = null;
    private int[] bitsPerSampleCache = null;
    private int[] destinationBandsCache = null;

    private static boolean areIntArraysEqual(int[] iArr, int[] iArr2) {
        if (iArr == null || iArr2 == null) {
            return iArr == null && iArr2 == null;
        }
        if (iArr.length != iArr2.length) {
            return false;
        }
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    private static boolean areSampleSizesEqual(SampleModel sampleModel) {
        int[] sampleSize = sampleModel.getSampleSize();
        int i = sampleSize[0];
        int length = sampleSize.length;
        for (int i2 = 1; i2 < length; i2++) {
            if (sampleSize[i2] != i) {
                return false;
            }
        }
        return true;
    }

    public static ColorModel createComponentCM(ColorSpace colorSpace, int i, int[] iArr, int i2, boolean z, boolean z2) {
        return new ComponentColorModel(colorSpace, iArr, z, z2, z ? 3 : 1, i2);
    }

    public static SampleModel createInterleavedSM(int i, int i2) {
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = i3;
        }
        return new PixelInterleavedSampleModel(i, 1, 1, i2, i2, iArr);
    }

    private static int createMask(int[] iArr, int i) {
        int i2 = (1 << iArr[i]) - 1;
        for (int i3 = i + 1; i3 < iArr.length; i3++) {
            i2 <<= iArr[i3];
        }
        return i2;
    }

    private static int getBitsPerPixel(SampleModel sampleModel) {
        int i = 0;
        for (int i2 : sampleModel.getSampleSize()) {
            i += i2;
        }
        return i;
    }

    private static int getDataTypeFromNumBits(int i, boolean z) {
        if (i <= 8) {
            return 0;
        }
        if (i <= 16) {
            return z ? 2 : 1;
        }
        return 3;
    }

    private static int getDataTypeSize(int i) throws IIOException {
        if (i == 0) {
            return 8;
        }
        if (i == 1 || i == 2) {
            return 16;
        }
        if (i == 3 || i == 4) {
            return 32;
        }
        if (i == 5) {
            return 64;
        }
        throw new IIOException("Unknown data type " + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImageTypeSpecifier getRawImageTypeSpecifier(int i, int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, char[] cArr) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        Object[] objArr;
        int i12;
        Object[] objArr2;
        ColorModel createComponentCM;
        int i13;
        boolean z;
        int i14;
        boolean z2 = false;
        r8 = false;
        boolean z3 = false;
        z2 = false;
        if (i3 == 1 && ((i14 = iArr[0]) == 1 || i14 == 2 || i14 == 4 || i14 == 8 || i14 == 16)) {
            if (cArr == null) {
                int i15 = iArr2[0];
                boolean z4 = i15 == 2;
                return ImageTypeSpecifier.createGrayscale(i14, i14 > 8 ? i15 != 2 ? 1 : 2 : 0, z4);
            }
            int i16 = 1 << i14;
            byte[] bArr = new byte[i16];
            byte[] bArr2 = new byte[i16];
            byte[] bArr3 = new byte[i16];
            for (int i17 = 0; i17 < i16; i17++) {
                bArr[i17] = (byte) ((cArr[i17] * 255) / 65535);
                bArr2[i17] = (byte) ((cArr[i16 + i17] * 255) / 65535);
                bArr3[i17] = (byte) ((cArr[(i16 * 2) + i17] * 255) / 65535);
            }
            int i18 = iArr[0];
            if (i18 <= 8) {
                r9 = false;
            } else if (iArr2[0] == 2) {
                r9 = 2;
            }
            return ImageTypeSpecifier.createIndexed(bArr, bArr2, bArr3, null, i18, r9 ? 1 : 0);
        }
        if (i3 == 2 && iArr[0] == 8 && iArr[1] == 8) {
            return ImageTypeSpecifier.createGrayscale(8, 0, false, iArr3 != null && iArr3[0] == 1);
        }
        if (i3 == 2 && iArr[0] == 16 && iArr[1] == 16) {
            int i19 = iArr2[0] == 2 ? 2 : 1;
            return ImageTypeSpecifier.createGrayscale(16, i19, i19 == 2, iArr3 != null && iArr3[0] == 1);
        }
        ColorSpace colorSpace = ColorSpace.getInstance(1000);
        if (i3 == 3 && iArr[0] == 8 && iArr[1] == 8 && iArr[2] == 8) {
            int[] iArr4 = {0, 1, 2};
            if ((i == 6 && i2 != 7 && i2 != 6) || i == 8) {
                colorSpace = ColorSpace.getInstance(1004);
            }
            return ImageTypeSpecifier.createInterleaved(colorSpace, iArr4, 0, false, false);
        }
        if (i3 == 4 && iArr[0] == 8 && iArr[1] == 8 && iArr[2] == 8 && iArr[3] == 8) {
            int[] iArr5 = {0, 1, 2, 3};
            if (i == 5) {
                colorSpace = SimpleCMYKColorSpace.getInstance();
                z = false;
                r9 = false;
            } else {
                z = iArr3 != null && iArr3[0] == 1;
            }
            return ImageTypeSpecifier.createInterleaved(colorSpace, iArr5, 0, r9, z);
        }
        if (i3 == 3 && iArr[0] == 16 && iArr[1] == 16 && iArr[2] == 16) {
            return ImageTypeSpecifier.createInterleaved(colorSpace, new int[]{0, 1, 2}, iArr2[0] != 2 ? 1 : 2, false, false);
        }
        if (i3 == 4 && iArr[0] == 16 && iArr[1] == 16 && iArr[2] == 16 && iArr[3] == 16) {
            int[] iArr6 = {0, 1, 2, 3};
            int i20 = iArr2[0] != 2 ? 1 : 2;
            if (iArr3 != null && iArr3[0] == 1) {
                z3 = true;
            }
            return ImageTypeSpecifier.createInterleaved(colorSpace, iArr6, i20, true, z3);
        }
        int i21 = 0;
        for (int i22 : iArr) {
            i21 += i22;
        }
        if ((i3 == 3 || i3 == 4) && (i21 == 8 || i21 == 16)) {
            return ImageTypeSpecifier.createPacked(colorSpace, createMask(iArr, 0), createMask(iArr, 1), createMask(iArr, 2), i3 == 4 ? createMask(iArr, 3) : 0, i21 == 8 ? 0 : 1, iArr3 != null && iArr3[0] == 1);
        }
        if (iArr[0] % 8 == 0) {
            int i23 = 1;
            while (true) {
                if (i23 >= iArr.length) {
                    objArr = true;
                    break;
                }
                if (iArr[i23] != iArr[i23 - 1]) {
                    objArr = false;
                    break;
                }
                i23++;
            }
            if (objArr != false) {
                int i24 = iArr[0];
                if (i24 == 8) {
                    if (iArr2[0] != 3) {
                        i12 = 0;
                        objArr2 = true;
                    }
                    i12 = -1;
                    objArr2 = false;
                } else if (i24 == 16) {
                    int i25 = iArr2[0];
                    if (i25 != 3) {
                        i13 = i25 == 2 ? 2 : 1;
                        i12 = i13;
                        objArr2 = true;
                    }
                    i12 = -1;
                    objArr2 = false;
                } else if (i24 != 32) {
                    if (i24 == 64 && iArr2[0] == 3) {
                        objArr2 = true;
                        i12 = 5;
                    }
                    i12 = -1;
                    objArr2 = false;
                } else {
                    i13 = iArr2[0] == 3 ? 4 : 3;
                    i12 = i13;
                    objArr2 = true;
                }
                if (objArr2 != false) {
                    SampleModel createInterleavedSM = createInterleavedSM(i12, i3);
                    if (i3 < 1 || i3 > 4 || !(i12 == 3 || i12 == 4)) {
                        createComponentCM = createComponentCM(new BogusColorSpace(i3), i3, iArr, i12, false, false);
                    } else {
                        ColorSpace colorSpace2 = i3 <= 2 ? ColorSpace.getInstance(1003) : colorSpace;
                        boolean z5 = i3 % 2 == 0;
                        createComponentCM = createComponentCM(colorSpace2, i3, iArr, i12, z5, z5 && iArr3 != null && iArr3[0] == 1);
                    }
                    return new ImageTypeSpecifier(createComponentCM, createInterleavedSM);
                }
            }
        }
        if (cArr != null || iArr2[0] == 3) {
            return null;
        }
        int i26 = 0;
        for (int i27 : iArr) {
            if (i27 > i26) {
                i26 = i27;
            }
        }
        boolean z6 = iArr2[0] == 2;
        if (i3 == 1 && ((i11 = iArr[0]) == 1 || i11 == 2 || i11 == 4 || i11 == 8 || i11 == 16)) {
            return ImageTypeSpecifier.createGrayscale(iArr[0], getDataTypeFromNumBits(i26, z6), z6);
        }
        if (i3 == 2 && (i10 = iArr[0]) == iArr[1] && (i10 == 1 || i10 == 2 || i10 == 4 || i10 == 8 || i10 == 16)) {
            return ImageTypeSpecifier.createGrayscale(i26, getDataTypeFromNumBits(i26, z6), false, iArr3 != null && iArr3[0] == 1);
        }
        if (i3 == 3 || i3 == 4) {
            int dataTypeFromNumBits = getDataTypeFromNumBits(i26, z6);
            try {
                i4 = getDataTypeSize(dataTypeFromNumBits);
            } catch (IIOException unused) {
                i4 = i26;
            }
            if (i21 <= 32 && !z6) {
                return ImageTypeSpecifier.createPacked(colorSpace, createMask(iArr, 0), createMask(iArr, 1), createMask(iArr, 2), i3 == 4 ? createMask(iArr, 3) : 0, getDataTypeFromNumBits(i21, false), iArr3 != null && iArr3[0] == 1);
            }
            if (i3 == 3 && i4 == (i8 = iArr[0]) && i8 == (i9 = iArr[1]) && i9 == iArr[2]) {
                return ImageTypeSpecifier.createInterleaved(colorSpace, new int[]{0, 1, 2}, dataTypeFromNumBits, false, false);
            }
            if (i3 == 4 && i4 == (i5 = iArr[0]) && i5 == (i6 = iArr[1]) && i6 == (i7 = iArr[2]) && i7 == iArr[3]) {
                int[] iArr7 = {0, 1, 2, 3};
                if (iArr3 != null && iArr3[0] == 1) {
                    z2 = true;
                }
                return ImageTypeSpecifier.createInterleaved(colorSpace, iArr7, dataTypeFromNumBits, true, z2);
            }
        }
        int dataTypeFromNumBits2 = getDataTypeFromNumBits(i26, z6);
        return new ImageTypeSpecifier(createComponentCM(i3 <= 2 ? ColorSpace.getInstance(1003) : i3 <= 4 ? colorSpace : new BogusColorSpace(i3), i3, iArr, dataTypeFromNumBits2, false, false), createInterleavedSM(dataTypeFromNumBits2, i3));
    }

    private static boolean isDataBufferBitContiguous(SampleModel sampleModel, int[] iArr) throws IIOException {
        int dataTypeSize = getDataTypeSize(sampleModel.getDataType());
        if (sampleModel instanceof ComponentSampleModel) {
            int numBands = sampleModel.getNumBands();
            for (int i = 0; i < numBands; i++) {
                if (iArr[i] != dataTypeSize) {
                    return false;
                }
            }
            return true;
        }
        if (sampleModel instanceof MultiPixelPackedSampleModel) {
            return dataTypeSize % ((MultiPixelPackedSampleModel) sampleModel).getPixelBitStride() == 0;
        }
        if (!(sampleModel instanceof SinglePixelPackedSampleModel)) {
            return false;
        }
        int numBands2 = sampleModel.getNumBands();
        int i2 = 0;
        for (int i3 = 0; i3 < numBands2; i3++) {
            i2 += sampleModel.getSampleSize(i3);
        }
        return i2 == dataTypeSize;
    }

    private static void reformatData(byte[] bArr, int i, int i2, short[] sArr, int[] iArr, int i3, int i4) throws IIOException {
        int i5;
        if (sArr != null) {
            int i6 = i / 2;
            int i7 = i % 2;
            int i8 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                int i10 = i3;
                int i11 = 0;
                while (i11 < i6) {
                    int i12 = i8 + 1;
                    sArr[i10] = (short) (((bArr[i8] & 255) << 8) | (bArr[i12] & 255));
                    i11++;
                    i10++;
                    i8 = i12 + 1;
                }
                if (i7 != 0) {
                    sArr[i10] = (short) ((bArr[i8] & 255) << 8);
                    i8++;
                }
                i3 += i4;
            }
            return;
        }
        if (iArr == null) {
            throw new IIOException("shortData == null && intData == null!");
        }
        int i13 = i / 4;
        int i14 = i % 4;
        int i15 = 0;
        for (int i16 = 0; i16 < i2; i16++) {
            int i17 = i3;
            int i18 = 0;
            while (true) {
                i5 = 24;
                if (i18 >= i13) {
                    break;
                }
                int i19 = i15 + 1;
                int i20 = i19 + 1;
                int i21 = ((bArr[i15] & 255) << 24) | ((bArr[i19] & 255) << 16);
                int i22 = i20 + 1;
                iArr[i17] = i21 | ((bArr[i20] & 255) << 8) | (bArr[i22] & 255);
                i18++;
                i15 = i22 + 1;
                i17++;
            }
            if (i14 != 0) {
                int i23 = 0;
                int i24 = 0;
                while (i23 < i14) {
                    i24 |= (bArr[i15] & 255) << i5;
                    i5 -= 8;
                    i23++;
                    i15++;
                }
                iArr[i17] = i24;
            }
            i3 += i4;
        }
    }

    private static void reformatDiscontiguousData(byte[] bArr, int[] iArr, int i, int i2, int i3, WritableRaster writableRaster) throws IOException {
        int numBands = writableRaster.getSampleModel().getNumBands();
        MemoryCacheImageInputStream memoryCacheImageInputStream = new MemoryCacheImageInputStream(new ByteArrayInputStream(bArr));
        int minY = writableRaster.getMinY();
        long j = 0;
        int i4 = 0;
        while (i4 < i3) {
            memoryCacheImageInputStream.seek(j);
            int minX = writableRaster.getMinX();
            int i5 = 0;
            while (i5 < i2) {
                for (int i6 = 0; i6 < numBands; i6++) {
                    writableRaster.setSample(minX, minY, i6, (int) memoryCacheImageInputStream.readBits(iArr[i6]));
                }
                i5++;
                minX++;
            }
            j += i;
            i4++;
            minY++;
        }
    }

    public void beginDecoding() {
        int[] sampleSize;
        boolean z;
        boolean z2;
        boolean z3 = false;
        this.adjustBitDepths = false;
        int length = this.destinationBands.length;
        if (this.planar) {
            int length2 = this.bitsPerSample.length;
            sampleSize = new int[length2];
            int sampleSize2 = this.image.getSampleModel().getSampleSize(0);
            for (int i = 0; i < length2; i++) {
                sampleSize[i] = sampleSize2;
            }
        } else {
            sampleSize = this.image.getSampleModel().getSampleSize();
        }
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            if (sampleSize[this.destinationBands[i2]] != this.bitsPerSample[this.sourceBands[i2]]) {
                this.adjustBitDepths = true;
                break;
            }
            i2++;
        }
        if (!this.adjustBitDepths) {
            this.bitDepthScale = null;
        } else if (this.isFirstBitDepthTable || this.planar != this.planarCache || !areIntArraysEqual(sampleSize, this.destBitsPerSampleCache) || !areIntArraysEqual(this.sourceBands, this.sourceBandsCache) || !areIntArraysEqual(this.bitsPerSample, this.bitsPerSampleCache) || !areIntArraysEqual(this.destinationBands, this.destinationBandsCache)) {
            this.isFirstBitDepthTable = false;
            this.planarCache = this.planar;
            this.destBitsPerSampleCache = (int[]) sampleSize.clone();
            int[] iArr = this.sourceBands;
            this.sourceBandsCache = iArr == null ? null : (int[]) iArr.clone();
            int[] iArr2 = this.bitsPerSample;
            this.bitsPerSampleCache = iArr2 != null ? (int[]) iArr2.clone() : null;
            this.destinationBandsCache = (int[]) this.destinationBands.clone();
            this.bitDepthScale = new int[length];
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = (1 << this.bitsPerSample[this.sourceBands[i3]]) - 1;
                int i5 = i4 / 2;
                int i6 = (1 << sampleSize[this.destinationBands[i3]]) - 1;
                this.bitDepthScale[i3] = new int[i4 + 1];
                for (int i7 = 0; i7 <= i4; i7++) {
                    this.bitDepthScale[i3][i7] = ((i7 * i6) + i5) / i4;
                }
            }
        }
        if (length == this.samplesPerPixel) {
            z = true;
            z2 = true;
            for (int i8 = 0; i8 < length; i8++) {
                if (this.sourceBands[i8] != i8) {
                    z = false;
                }
                if (this.destinationBands[i8] != i8) {
                    z2 = false;
                }
            }
        } else {
            z = false;
            z2 = false;
        }
        boolean isBinary = ImageUtil.isBinary(this.image.getRaster().getSampleModel());
        this.isBilevel = isBinary;
        this.isContiguous = isBinary ? true : ImageUtil.imageIsContiguous(this.image);
        if (this.colorConverter == null && this.subsampleX == 1 && this.subsampleY == 1) {
            int i9 = this.srcWidth;
            int i10 = this.dstWidth;
            if (i9 == i10 && this.srcHeight == this.dstHeight && this.dstMinX + i10 <= this.image.getWidth() && this.dstMinY + this.dstHeight <= this.image.getHeight() && z && z2 && !this.adjustBitDepths) {
                z3 = true;
            }
        }
        this.isImageSimple = z3;
    }

    public BufferedImage createRawImage() {
        if (!this.planar) {
            ImageTypeSpecifier rawImageType = getRawImageType();
            if (rawImageType == null) {
                return null;
            }
            return rawImageType.createBufferedImage(this.srcWidth, this.srcHeight);
        }
        int i = this.bitsPerSample[this.sourceBands[0]];
        int i2 = this.sampleFormat[0];
        int i3 = 3;
        if (i2 == 3) {
            i3 = i <= 32 ? 4 : 5;
        } else if (i <= 8) {
            i3 = 0;
        } else if (i <= 16) {
            i3 = 2;
            if (i2 != 2) {
                i3 = 1;
            }
        }
        return ImageTypeSpecifier.createInterleaved(ColorSpace.getInstance(1003), new int[]{0}, i3, false, false).createBufferedImage(this.srcWidth, this.srcHeight);
    }

    /* JADX WARN: Removed duplicated region for block: B:218:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x05ca A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x05cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decode() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFDecompressor.decode():void");
    }

    public abstract void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException;

    public void decodeRaw(short[] sArr, int i, int i2, int i3) throws IOException {
        int i4 = ((this.srcWidth * i2) + 7) / 8;
        int i5 = i4 / 2;
        decodeRaw(new byte[this.srcHeight * i4], 0, i2, i4);
        if (this.stream.getByteOrder() == ByteOrder.BIG_ENDIAN) {
            int i6 = 0;
            for (int i7 = 0; i7 < this.srcHeight; i7++) {
                int i8 = 0;
                while (i8 < i5) {
                    sArr[i + i8] = (short) ((r2[i6] << 8) | (r2[r5] & 255));
                    i8++;
                    i6 = i6 + 1 + 1;
                }
                i += i3;
            }
            return;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.srcHeight; i10++) {
            int i11 = 0;
            while (i11 < i5) {
                sArr[i + i11] = (short) ((r2[i9] & 255) | (r2[r5] << 8));
                i11++;
                i9 = i9 + 1 + 1;
            }
            i += i3;
        }
    }

    public ImageTypeSpecifier getRawImageType() {
        return getRawImageTypeSpecifier(this.photometricInterpretation, this.compression, this.samplesPerPixel, this.bitsPerSample, this.sampleFormat, this.extraSamples, this.colorMap);
    }

    public void setActiveSrcHeight(int i) {
        this.activeSrcHeight = i;
    }

    public void setActiveSrcMinX(int i) {
        this.activeSrcMinX = i;
    }

    public void setActiveSrcMinY(int i) {
        this.activeSrcMinY = i;
    }

    public void setActiveSrcWidth(int i) {
        this.activeSrcWidth = i;
    }

    public void setBitsPerSample(int[] iArr) {
        this.bitsPerSample = iArr == null ? null : (int[]) iArr.clone();
    }

    public void setByteCount(int i) {
        this.byteCount = i;
    }

    public void setColorConverter(TIFFColorConverter tIFFColorConverter) {
        this.colorConverter = tIFFColorConverter;
    }

    public void setColorMap(char[] cArr) {
        this.colorMap = cArr == null ? null : (char[]) cArr.clone();
    }

    public void setCompression(int i) {
        this.compression = i;
    }

    public void setDestinationBands(int[] iArr) {
        this.destinationBands = iArr == null ? null : (int[]) iArr.clone();
    }

    public void setDstHeight(int i) {
        this.dstHeight = i;
    }

    public void setDstMinX(int i) {
        this.dstMinX = i;
    }

    public void setDstMinY(int i) {
        this.dstMinY = i;
    }

    public void setDstWidth(int i) {
        this.dstWidth = i;
    }

    public void setDstXOffset(int i) {
        this.dstXOffset = i;
    }

    public void setDstYOffset(int i) {
        this.dstYOffset = i;
    }

    public void setExtraSamples(int[] iArr) {
        this.extraSamples = iArr == null ? null : (int[]) iArr.clone();
    }

    public void setImage(BufferedImage bufferedImage) {
        this.image = bufferedImage;
    }

    public void setMetadata(IIOMetadata iIOMetadata) {
        this.metadata = iIOMetadata;
    }

    public void setOffset(long j) {
        this.offset = j;
    }

    public void setPhotometricInterpretation(int i) {
        this.photometricInterpretation = i;
    }

    public void setPlanar(boolean z) {
        this.planar = z;
    }

    public void setPlanarBand(int i) {
        this.planarBand = i;
    }

    public void setReader(ImageReader imageReader) {
        this.reader = imageReader;
    }

    public void setSampleFormat(int[] iArr) {
        this.sampleFormat = iArr == null ? new int[]{1} : (int[]) iArr.clone();
    }

    public void setSamplesPerPixel(int i) {
        this.samplesPerPixel = i;
    }

    public void setSourceBands(int[] iArr) {
        this.sourceBands = iArr == null ? null : (int[]) iArr.clone();
    }

    public void setSourceXOffset(int i) {
        this.sourceXOffset = i;
    }

    public void setSourceYOffset(int i) {
        this.sourceYOffset = i;
    }

    public void setSrcHeight(int i) {
        this.srcHeight = i;
    }

    public void setSrcMinX(int i) {
        this.srcMinX = i;
    }

    public void setSrcMinY(int i) {
        this.srcMinY = i;
    }

    public void setSrcWidth(int i) {
        this.srcWidth = i;
    }

    public void setStream(ImageInputStream imageInputStream) {
        this.stream = imageInputStream;
    }

    public void setSubsampleX(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("subsampleX <= 0!");
        }
        this.subsampleX = i;
    }

    public void setSubsampleY(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("subsampleY <= 0!");
        }
        this.subsampleY = i;
    }

    public void decodeRaw(int[] iArr, int i, int i2, int i3) throws IOException {
        int i4 = this.srcWidth * (i2 / 32);
        int i5 = i4 * 4;
        byte[] bArr = new byte[this.srcHeight * i5];
        decodeRaw(bArr, 0, i2, i5);
        if (this.stream.getByteOrder() == ByteOrder.BIG_ENDIAN) {
            int i6 = 0;
            for (int i7 = 0; i7 < this.srcHeight; i7++) {
                int i8 = 0;
                while (i8 < i4) {
                    int i9 = i6 + 1;
                    int i10 = i9 + 1;
                    int i11 = i10 + 1;
                    iArr[i + i8] = ((bArr[i6] & 255) << 24) | ((bArr[i9] & 255) << 16) | ((bArr[i10] & 255) << 8) | (bArr[i11] & 255);
                    i8++;
                    i6 = i11 + 1;
                }
                i += i3;
            }
            return;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.srcHeight; i13++) {
            int i14 = 0;
            while (i14 < i4) {
                int i15 = i12 + 1;
                int i16 = i15 + 1;
                int i17 = i16 + 1;
                iArr[i + i14] = (bArr[i12] & 255) | ((bArr[i15] & 255) << 8) | ((bArr[i16] & 255) << 16) | ((bArr[i17] & 255) << 24);
                i14++;
                i12 = i17 + 1;
            }
            i += i3;
        }
    }

    public void decodeRaw(float[] fArr, int i, int i2, int i3) throws IOException {
        int i4 = this.srcWidth * (i2 / 32);
        int i5 = i4 * 4;
        byte[] bArr = new byte[this.srcHeight * i5];
        decodeRaw(bArr, 0, i2, i5);
        if (this.stream.getByteOrder() == ByteOrder.BIG_ENDIAN) {
            int i6 = 0;
            for (int i7 = 0; i7 < this.srcHeight; i7++) {
                int i8 = 0;
                while (i8 < i4) {
                    int i9 = i6 + 1;
                    int i10 = i9 + 1;
                    int i11 = i10 + 1;
                    fArr[i + i8] = Float.intBitsToFloat(((bArr[i6] & 255) << 24) | ((bArr[i9] & 255) << 16) | ((bArr[i10] & 255) << 8) | (bArr[i11] & 255));
                    i8++;
                    i6 = i11 + 1;
                }
                i += i3;
            }
            return;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.srcHeight; i13++) {
            int i14 = 0;
            while (i14 < i4) {
                int i15 = i12 + 1;
                int i16 = i15 + 1;
                int i17 = i16 + 1;
                fArr[i + i14] = Float.intBitsToFloat((bArr[i12] & 255) | ((bArr[i15] & 255) << 8) | ((bArr[i16] & 255) << 16) | ((bArr[i17] & 255) << 24));
                i14++;
                i12 = i17 + 1;
            }
            i += i3;
        }
    }

    public void decodeRaw(double[] dArr, int i, int i2, int i3) throws IOException {
        TIFFDecompressor tIFFDecompressor = this;
        int i4 = tIFFDecompressor.srcWidth * (i2 / 64);
        int i5 = i4 * 8;
        byte[] bArr = new byte[tIFFDecompressor.srcHeight * i5];
        int i6 = 0;
        tIFFDecompressor.decodeRaw(bArr, 0, i2, i5);
        if (tIFFDecompressor.stream.getByteOrder() == ByteOrder.BIG_ENDIAN) {
            int i7 = i;
            int i8 = 0;
            int i9 = 0;
            while (i8 < tIFFDecompressor.srcHeight) {
                int i10 = i6;
                while (i10 < i4) {
                    int i11 = i9 + 1;
                    long j = bArr[i9] & 255;
                    int i12 = i11 + 1;
                    long j2 = bArr[i11] & 255;
                    int i13 = i12 + 1;
                    long j3 = bArr[i12] & 255;
                    int i14 = i13 + 1;
                    long j4 = bArr[i13] & 255;
                    int i15 = i14 + 1;
                    int i16 = i8;
                    long j5 = bArr[i14] & 255;
                    int i17 = i15 + 1;
                    int i18 = i7;
                    long j6 = bArr[i15] & 255;
                    int i19 = i10;
                    dArr[i18 + i19] = Double.longBitsToDouble(((bArr[i17] & 255) << 8) | (j5 << 24) | (j2 << 48) | (j << 56) | (j3 << 40) | (j4 << 32) | (j6 << 16) | (bArr[r15] & 255));
                    i10 = i19 + 1;
                    i8 = i16;
                    i9 = i17 + 1 + 1;
                    i4 = i4;
                    i7 = i18;
                }
                i7 += i3;
                i8++;
                tIFFDecompressor = this;
                i6 = 0;
            }
            return;
        }
        int i20 = i4;
        int i21 = 0;
        int i22 = 0;
        TIFFDecompressor tIFFDecompressor2 = this;
        int i23 = i;
        while (i21 < tIFFDecompressor2.srcHeight) {
            int i24 = i20;
            int i25 = 0;
            while (i25 < i24) {
                int i26 = i22 + 1;
                long j7 = bArr[i22] & 255;
                int i27 = i26 + 1;
                long j8 = bArr[i26] & 255;
                int i28 = i27 + 1;
                long j9 = bArr[i27] & 255;
                int i29 = i28 + 1;
                long j10 = bArr[i28] & 255;
                int i30 = i29 + 1;
                long j11 = bArr[i29] & 255;
                int i31 = i30 + 1;
                int i32 = i24;
                int i33 = i25;
                long j12 = bArr[i30] & 255;
                dArr[i23 + i33] = Double.longBitsToDouble((j11 << 32) | ((bArr[r7] & 255) << 56) | ((bArr[i31] & 255) << 48) | (j12 << 40) | (j10 << 24) | (j9 << 16) | (j8 << 8) | j7);
                i22 = i31 + 1 + 1;
                i25 = i33 + 1;
                i21 = i21;
                i24 = i32;
                bArr = bArr;
            }
            i23 += i3;
            i21++;
            tIFFDecompressor2 = this;
            i20 = i24;
            bArr = bArr;
        }
    }
}
