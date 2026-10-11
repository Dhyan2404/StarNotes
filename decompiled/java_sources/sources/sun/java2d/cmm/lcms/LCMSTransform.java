package sun.java2d.cmm.lcms;

import java.awt.color.CMMException;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_Profile;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import sun.java2d.cmm.ColorTransform;
import sun.java2d.cmm.ProfileDeferralMgr;
import sun.java2d.cmm.lcms.LCMSImageLayout;

/* loaded from: classes16.dex */
public class LCMSTransform implements ColorTransform {

    /* renamed from: ID */
    long f116376ID;
    LCMSProfile[] lcmsProfiles;
    private int numInComponents;
    private int numOutComponents;
    ICC_Profile[] profiles;
    int renderType;
    int transformType;
    private int inFormatter = 0;
    private boolean isInIntPacked = false;
    private int outFormatter = 0;
    private boolean isOutIntPacked = false;
    private Object disposerReferent = new Object();

    static {
        if (ProfileDeferralMgr.deferring) {
            ProfileDeferralMgr.activateProfiles();
        }
    }

    public LCMSTransform(ICC_Profile iCC_Profile, int i, int i2) {
        this.numInComponents = -1;
        this.numOutComponents = -1;
        this.profiles = r3;
        ICC_Profile[] iCC_ProfileArr = {iCC_Profile};
        this.lcmsProfiles = r3;
        LCMSProfile[] lCMSProfileArr = {LCMS.getProfileID(iCC_Profile)};
        this.renderType = i == -1 ? 0 : i;
        this.transformType = i2;
        this.numInComponents = this.profiles[0].getNumComponents();
        ICC_Profile[] iCC_ProfileArr2 = this.profiles;
        this.numOutComponents = iCC_ProfileArr2[iCC_ProfileArr2.length - 1].getNumComponents();
    }

    private synchronized void doTransform(LCMSImageLayout lCMSImageLayout, LCMSImageLayout lCMSImageLayout2) {
        long j = this.f116376ID;
        if (j == 0 || this.inFormatter != lCMSImageLayout.pixelType || this.isInIntPacked != lCMSImageLayout.isIntPacked || this.outFormatter != lCMSImageLayout2.pixelType || this.isOutIntPacked != lCMSImageLayout2.isIntPacked) {
            if (j != 0) {
                this.disposerReferent = new Object();
            }
            int i = lCMSImageLayout.pixelType;
            this.inFormatter = i;
            boolean z = lCMSImageLayout.isIntPacked;
            this.isInIntPacked = z;
            int i2 = lCMSImageLayout2.pixelType;
            this.outFormatter = i2;
            boolean z2 = lCMSImageLayout2.isIntPacked;
            this.isOutIntPacked = z2;
            this.f116376ID = LCMS.createTransform(this.lcmsProfiles, this.renderType, i, z, i2, z2, this.disposerReferent);
        }
        LCMS.colorConvert(this, lCMSImageLayout, lCMSImageLayout2);
    }

    @Override // sun.java2d.cmm.ColorTransform
    public void colorConvert(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        float[] fArr;
        WritableRaster writableRaster;
        float[] fArr2;
        float[] fArr3;
        float[] fArr4;
        LCMSImageLayout createImageLayout;
        LCMSImageLayout createImageLayout2;
        try {
            if (!bufferedImage2.getColorModel().hasAlpha() && (createImageLayout = LCMSImageLayout.createImageLayout(bufferedImage2)) != null && (createImageLayout2 = LCMSImageLayout.createImageLayout(bufferedImage)) != null) {
                doTransform(createImageLayout2, createImageLayout);
                return;
            }
            WritableRaster raster = bufferedImage.getRaster();
            WritableRaster raster2 = bufferedImage2.getRaster();
            ColorModel colorModel = bufferedImage.getColorModel();
            ColorModel colorModel2 = bufferedImage2.getColorModel();
            int width = bufferedImage.getWidth();
            int height = bufferedImage.getHeight();
            int numColorComponents = colorModel.getNumColorComponents();
            int numColorComponents2 = colorModel2.getNumColorComponents();
            float f = 255.0f;
            char c = '\b';
            for (int i = 0; i < numColorComponents; i++) {
                if (colorModel.getComponentSize(i) > 8) {
                    c = 16;
                    f = 65535.0f;
                }
            }
            for (int i2 = 0; i2 < numColorComponents2; i2++) {
                if (colorModel2.getComponentSize(i2) > 8) {
                    c = 16;
                    f = 65535.0f;
                }
            }
            float[] fArr5 = new float[numColorComponents];
            float[] fArr6 = new float[numColorComponents];
            ColorSpace colorSpace = colorModel.getColorSpace();
            for (int i3 = 0; i3 < numColorComponents; i3++) {
                fArr5[i3] = colorSpace.getMinValue(i3);
                fArr6[i3] = f / (colorSpace.getMaxValue(i3) - fArr5[i3]);
            }
            ColorSpace colorSpace2 = colorModel2.getColorSpace();
            float[] fArr7 = new float[numColorComponents2];
            float[] fArr8 = new float[numColorComponents2];
            for (int i4 = 0; i4 < numColorComponents2; i4++) {
                fArr7[i4] = colorSpace2.getMinValue(i4);
                fArr8[i4] = (colorSpace2.getMaxValue(i4) - fArr7[i4]) / f;
            }
            boolean hasAlpha = colorModel2.hasAlpha();
            boolean z = colorModel.hasAlpha() && hasAlpha;
            if (hasAlpha) {
                fArr = new float[numColorComponents2 + 1];
            } else {
                fArr = new float[numColorComponents2];
            }
            ColorModel colorModel3 = colorModel2;
            if (c == '\b') {
                int i5 = width * numColorComponents;
                byte[] bArr = new byte[i5];
                int i6 = width * numColorComponents2;
                float[] fArr9 = fArr;
                byte[] bArr2 = new byte[i6];
                if (z) {
                    fArr4 = new float[width];
                    fArr3 = fArr8;
                } else {
                    fArr3 = fArr8;
                    fArr4 = null;
                }
                try {
                    int i7 = numColorComponents2;
                    LCMSImageLayout lCMSImageLayout = new LCMSImageLayout(bArr, i5 / getNumInComponents(), LCMSImageLayout.CHANNELS_SH(getNumInComponents()) | LCMSImageLayout.BYTES_SH(1), getNumInComponents());
                    LCMSImageLayout lCMSImageLayout2 = new LCMSImageLayout(bArr2, i6 / getNumOutComponents(), LCMSImageLayout.CHANNELS_SH(getNumOutComponents()) | LCMSImageLayout.BYTES_SH(1), getNumOutComponents());
                    int i8 = 0;
                    while (i8 < height) {
                        int i9 = height;
                        float[] fArr10 = null;
                        Object obj = null;
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < width) {
                            Object dataElements = raster.getDataElements(i10, i8, obj);
                            WritableRaster writableRaster2 = raster;
                            fArr10 = colorModel.getNormalizedComponents(dataElements, fArr10, 0);
                            int i12 = 0;
                            while (i12 < numColorComponents) {
                                bArr[i11] = (byte) (((fArr10[i12] - fArr5[i12]) * fArr6[i12]) + 0.5f);
                                i12++;
                                i11++;
                                dataElements = dataElements;
                            }
                            Object obj2 = dataElements;
                            if (z) {
                                fArr4[i10] = fArr10[numColorComponents];
                            }
                            i10++;
                            raster = writableRaster2;
                            obj = obj2;
                        }
                        WritableRaster writableRaster3 = raster;
                        doTransform(lCMSImageLayout, lCMSImageLayout2);
                        Object obj3 = null;
                        int i13 = 0;
                        int i14 = 0;
                        while (i13 < width) {
                            LCMSImageLayout lCMSImageLayout3 = lCMSImageLayout2;
                            int i15 = i14;
                            int i16 = i7;
                            int i17 = 0;
                            while (i17 < i16) {
                                fArr9[i17] = ((bArr2[i15] & 255) * fArr3[i17]) + fArr7[i17];
                                i17++;
                                i15++;
                                lCMSImageLayout = lCMSImageLayout;
                            }
                            LCMSImageLayout lCMSImageLayout4 = lCMSImageLayout;
                            if (z) {
                                fArr9[i16] = fArr4[i13];
                            } else if (hasAlpha) {
                                fArr9[i16] = 1.0f;
                            }
                            ColorModel colorModel4 = colorModel3;
                            float[] fArr11 = fArr9;
                            obj3 = colorModel4.getDataElements(fArr11, 0, obj3);
                            raster2.setDataElements(i13, i8, obj3);
                            i13++;
                            i7 = i16;
                            fArr9 = fArr11;
                            i14 = i15;
                            fArr4 = fArr4;
                            lCMSImageLayout2 = lCMSImageLayout3;
                            colorModel3 = colorModel4;
                            lCMSImageLayout = lCMSImageLayout4;
                        }
                        i8++;
                        height = i9;
                        fArr4 = fArr4;
                        raster = writableRaster3;
                        lCMSImageLayout2 = lCMSImageLayout2;
                        colorModel3 = colorModel3;
                        lCMSImageLayout = lCMSImageLayout;
                    }
                    return;
                } catch (LCMSImageLayout.ImageLayoutException unused) {
                    throw new CMMException("Unable to convert images");
                }
            }
            float[] fArr12 = fArr;
            LCMSTransform lCMSTransform = this;
            int i18 = numColorComponents2;
            int i19 = width * numColorComponents;
            short[] sArr = new short[i19];
            int i20 = width * i18;
            short[] sArr2 = new short[i20];
            if (z) {
                fArr2 = new float[width];
                writableRaster = raster2;
            } else {
                writableRaster = raster2;
                fArr2 = null;
            }
            try {
                ColorModel colorModel5 = colorModel3;
                float[] fArr13 = fArr12;
                LCMSImageLayout lCMSImageLayout5 = new LCMSImageLayout(sArr, i19 / getNumInComponents(), LCMSImageLayout.CHANNELS_SH(getNumInComponents()) | LCMSImageLayout.BYTES_SH(2), getNumInComponents() * 2);
                LCMSImageLayout lCMSImageLayout6 = new LCMSImageLayout(sArr2, i20 / getNumOutComponents(), LCMSImageLayout.CHANNELS_SH(getNumOutComponents()) | LCMSImageLayout.BYTES_SH(2), getNumOutComponents() * 2);
                int i21 = height;
                int i22 = 0;
                while (i22 < i21) {
                    int i23 = i21;
                    short[] sArr3 = sArr2;
                    Object obj4 = null;
                    float[] fArr14 = null;
                    int i24 = 0;
                    int i25 = 0;
                    while (i24 < width) {
                        int i26 = i18;
                        obj4 = raster.getDataElements(i24, i22, obj4);
                        fArr14 = colorModel.getNormalizedComponents(obj4, fArr14, 0);
                        int i27 = 0;
                        while (i27 < numColorComponents) {
                            sArr[i25] = (short) (((fArr14[i27] - fArr5[i27]) * fArr6[i27]) + 0.5f);
                            i27++;
                            i25++;
                            colorModel = colorModel;
                        }
                        ColorModel colorModel6 = colorModel;
                        if (z) {
                            fArr2[i24] = fArr14[numColorComponents];
                        }
                        i24++;
                        i18 = i26;
                        colorModel = colorModel6;
                    }
                    int i28 = i18;
                    ColorModel colorModel7 = colorModel;
                    lCMSTransform.doTransform(lCMSImageLayout5, lCMSImageLayout6);
                    Object obj5 = null;
                    int i29 = 0;
                    int i30 = 0;
                    while (i29 < width) {
                        int i31 = i30;
                        int i32 = i28;
                        int i33 = 0;
                        while (i33 < i32) {
                            fArr13[i33] = ((sArr3[i31] & 65535) * fArr8[i33]) + fArr7[i33];
                            i33++;
                            i31++;
                        }
                        if (z) {
                            fArr13[i32] = fArr2[i29];
                        } else if (hasAlpha) {
                            fArr13[i32] = 1.0f;
                        }
                        LCMSImageLayout lCMSImageLayout7 = lCMSImageLayout6;
                        float[] fArr15 = fArr13;
                        ColorModel colorModel8 = colorModel5;
                        obj5 = colorModel8.getDataElements(fArr15, 0, obj5);
                        writableRaster.setDataElements(i29, i22, obj5);
                        i29++;
                        fArr13 = fArr15;
                        colorModel5 = colorModel8;
                        i30 = i31;
                        i28 = i32;
                        lCMSImageLayout6 = lCMSImageLayout7;
                    }
                    i22++;
                    i18 = i28;
                    i21 = i23;
                    sArr2 = sArr3;
                    colorModel = colorModel7;
                    lCMSTransform = this;
                    lCMSImageLayout6 = lCMSImageLayout6;
                }
            } catch (LCMSImageLayout.ImageLayoutException unused2) {
                throw new CMMException("Unable to convert images");
            }
        } catch (LCMSImageLayout.ImageLayoutException unused3) {
            throw new CMMException("Unable to convert images");
        }
    }

    @Override // sun.java2d.cmm.ColorTransform
    public int getNumInComponents() {
        return this.numInComponents;
    }

    @Override // sun.java2d.cmm.ColorTransform
    public int getNumOutComponents() {
        return this.numOutComponents;
    }

    public LCMSTransform(ColorTransform[] colorTransformArr) {
        this.numInComponents = -1;
        this.numOutComponents = -1;
        int i = 0;
        for (ColorTransform colorTransform : colorTransformArr) {
            i += ((LCMSTransform) colorTransform).profiles.length;
        }
        this.profiles = new ICC_Profile[i];
        this.lcmsProfiles = new LCMSProfile[i];
        int i2 = 0;
        for (ColorTransform colorTransform2 : colorTransformArr) {
            LCMSTransform lCMSTransform = (LCMSTransform) colorTransform2;
            ICC_Profile[] iCC_ProfileArr = lCMSTransform.profiles;
            System.arraycopy(iCC_ProfileArr, 0, this.profiles, i2, iCC_ProfileArr.length);
            LCMSProfile[] lCMSProfileArr = lCMSTransform.lcmsProfiles;
            System.arraycopy(lCMSProfileArr, 0, this.lcmsProfiles, i2, lCMSProfileArr.length);
            i2 += lCMSTransform.profiles.length;
        }
        this.renderType = ((LCMSTransform) colorTransformArr[0]).renderType;
        this.numInComponents = this.profiles[0].getNumComponents();
        this.numOutComponents = this.profiles[r8.length - 1].getNumComponents();
    }

    @Override // sun.java2d.cmm.ColorTransform
    public void colorConvert(Raster raster, WritableRaster writableRaster, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
        SampleModel sampleModel = raster.getSampleModel();
        SampleModel sampleModel2 = writableRaster.getSampleModel();
        int transferType = raster.getTransferType();
        int transferType2 = writableRaster.getTransferType();
        boolean z = transferType == 4 || transferType == 5;
        boolean z2 = transferType2 == 4 || transferType2 == 5;
        int width = raster.getWidth();
        int height = raster.getHeight();
        int numBands = raster.getNumBands();
        int numBands2 = writableRaster.getNumBands();
        float[] fArr5 = new float[numBands];
        float[] fArr6 = new float[numBands2];
        float[] fArr7 = new float[numBands];
        float[] fArr8 = new float[numBands2];
        for (int i = 0; i < numBands; i++) {
            if (z) {
                fArr5[i] = 65535.0f / (fArr2[i] - fArr[i]);
                fArr7[i] = fArr[i];
            } else {
                if (transferType == 2) {
                    fArr5[i] = 2.0000305f;
                } else {
                    fArr5[i] = 65535.0f / ((1 << sampleModel.getSampleSize(i)) - 1);
                }
                fArr7[i] = 0.0f;
            }
        }
        for (int i2 = 0; i2 < numBands2; i2++) {
            if (z2) {
                fArr6[i2] = (fArr4[i2] - fArr3[i2]) / 65535.0f;
                fArr8[i2] = fArr3[i2];
            } else {
                if (transferType2 == 2) {
                    fArr6[i2] = 0.49999237f;
                } else {
                    fArr6[i2] = ((1 << sampleModel2.getSampleSize(i2)) - 1) / 65535.0f;
                }
                fArr8[i2] = 0.0f;
            }
        }
        int minY = raster.getMinY();
        int minY2 = writableRaster.getMinY();
        int i3 = width * numBands;
        short[] sArr = new short[i3];
        int i4 = width * numBands2;
        short[] sArr2 = new short[i4];
        try {
            LCMSImageLayout lCMSImageLayout = new LCMSImageLayout(sArr, i3 / getNumInComponents(), LCMSImageLayout.CHANNELS_SH(getNumInComponents()) | LCMSImageLayout.BYTES_SH(2), getNumInComponents() * 2);
            LCMSImageLayout lCMSImageLayout2 = new LCMSImageLayout(sArr2, i4 / getNumOutComponents(), LCMSImageLayout.CHANNELS_SH(getNumOutComponents()) | LCMSImageLayout.BYTES_SH(2), getNumOutComponents() * 2);
            int i5 = minY2;
            int i6 = 0;
            int i7 = minY;
            while (i6 < height) {
                int minX = raster.getMinX();
                int i8 = height;
                int i9 = 0;
                int i10 = 0;
                while (i9 < width) {
                    int i11 = i6;
                    int i12 = 0;
                    while (i12 < numBands) {
                        sArr[i10] = (short) (((raster.getSampleFloat(minX, i7, i12) - fArr7[i12]) * fArr5[i12]) + 0.5f);
                        i12++;
                        numBands = numBands;
                        i10++;
                    }
                    i9++;
                    minX++;
                    i6 = i11;
                }
                int i13 = i6;
                int i14 = numBands;
                doTransform(lCMSImageLayout, lCMSImageLayout2);
                int minX2 = writableRaster.getMinX();
                int i15 = 0;
                int i16 = 0;
                while (i15 < width) {
                    LCMSImageLayout lCMSImageLayout3 = lCMSImageLayout2;
                    int i17 = 0;
                    while (i17 < numBands2) {
                        writableRaster.setSample(minX2, i5, i17, ((sArr2[i16] & 65535) * fArr6[i17]) + fArr8[i17]);
                        i17++;
                        i16++;
                        sArr = sArr;
                    }
                    i15++;
                    minX2++;
                    lCMSImageLayout2 = lCMSImageLayout3;
                    sArr = sArr;
                }
                i7++;
                i5++;
                i6 = i13 + 1;
                height = i8;
                numBands = i14;
                sArr = sArr;
                lCMSImageLayout2 = lCMSImageLayout2;
            }
        } catch (LCMSImageLayout.ImageLayoutException unused) {
            throw new CMMException("Unable to convert rasters");
        }
    }

    @Override // sun.java2d.cmm.ColorTransform
    public void colorConvert(Raster raster, WritableRaster writableRaster) {
        LCMSImageLayout createImageLayout;
        LCMSTransform lCMSTransform = this;
        LCMSImageLayout createImageLayout2 = LCMSImageLayout.createImageLayout(writableRaster);
        if (createImageLayout2 != null && (createImageLayout = LCMSImageLayout.createImageLayout(raster)) != null) {
            lCMSTransform.doTransform(createImageLayout, createImageLayout2);
            return;
        }
        SampleModel sampleModel = raster.getSampleModel();
        SampleModel sampleModel2 = writableRaster.getSampleModel();
        int transferType = raster.getTransferType();
        int transferType2 = writableRaster.getTransferType();
        int width = raster.getWidth();
        int height = raster.getHeight();
        int numBands = raster.getNumBands();
        int numBands2 = writableRaster.getNumBands();
        float f = 255.0f;
        char c = '\b';
        for (int i = 0; i < numBands; i++) {
            if (sampleModel.getSampleSize(i) > 8) {
                f = 65535.0f;
                c = 16;
            }
        }
        for (int i2 = 0; i2 < numBands2; i2++) {
            if (sampleModel2.getSampleSize(i2) > 8) {
                f = 65535.0f;
                c = 16;
            }
        }
        float[] fArr = new float[numBands];
        float[] fArr2 = new float[numBands2];
        for (int i3 = 0; i3 < numBands; i3++) {
            if (transferType == 2) {
                fArr[i3] = f / 32767.0f;
            } else {
                fArr[i3] = f / ((1 << sampleModel.getSampleSize(i3)) - 1);
            }
        }
        for (int i4 = 0; i4 < numBands2; i4++) {
            if (transferType2 == 2) {
                fArr2[i4] = 32767.0f / f;
            } else {
                fArr2[i4] = ((1 << sampleModel2.getSampleSize(i4)) - 1) / f;
            }
        }
        int minY = raster.getMinY();
        int minY2 = writableRaster.getMinY();
        if (c == '\b') {
            int i5 = width * numBands;
            byte[] bArr = new byte[i5];
            int i6 = width * numBands2;
            byte[] bArr2 = new byte[i6];
            try {
                LCMSImageLayout lCMSImageLayout = new LCMSImageLayout(bArr, i5 / getNumInComponents(), LCMSImageLayout.CHANNELS_SH(getNumInComponents()) | LCMSImageLayout.BYTES_SH(1), getNumInComponents());
                LCMSImageLayout lCMSImageLayout2 = new LCMSImageLayout(bArr2, i6 / getNumOutComponents(), LCMSImageLayout.CHANNELS_SH(getNumOutComponents()) | LCMSImageLayout.BYTES_SH(1), getNumOutComponents());
                int i7 = minY2;
                int i8 = minY;
                int i9 = 0;
                while (i9 < height) {
                    int minX = raster.getMinX();
                    int i10 = height;
                    int i11 = 0;
                    int i12 = 0;
                    while (i11 < width) {
                        int i13 = i9;
                        int i14 = 0;
                        while (i14 < numBands) {
                            bArr[i12] = (byte) ((raster.getSample(minX, i8, i14) * fArr[i14]) + 0.5f);
                            i14++;
                            i12++;
                            numBands = numBands;
                        }
                        i11++;
                        minX++;
                        i9 = i13;
                    }
                    int i15 = i9;
                    int i16 = numBands;
                    lCMSTransform.doTransform(lCMSImageLayout, lCMSImageLayout2);
                    int minX2 = writableRaster.getMinX();
                    int i17 = 0;
                    int i18 = 0;
                    while (i17 < width) {
                        int i19 = 0;
                        while (i19 < numBands2) {
                            writableRaster.setSample(minX2, i7, i19, (int) (((bArr2[i18] & 255) * fArr2[i19]) + 0.5f));
                            i19++;
                            i18++;
                            lCMSImageLayout2 = lCMSImageLayout2;
                        }
                        i17++;
                        minX2++;
                        lCMSImageLayout2 = lCMSImageLayout2;
                    }
                    i9 = i15 + 1;
                    i8++;
                    i7++;
                    height = i10;
                    numBands = i16;
                    lCMSImageLayout2 = lCMSImageLayout2;
                }
                return;
            } catch (LCMSImageLayout.ImageLayoutException unused) {
                throw new CMMException("Unable to convert rasters");
            }
        }
        int i20 = numBands;
        int i21 = width * i20;
        short[] sArr = new short[i21];
        int i22 = width * numBands2;
        short[] sArr2 = new short[i22];
        try {
            LCMSImageLayout lCMSImageLayout3 = new LCMSImageLayout(sArr, i21 / getNumInComponents(), LCMSImageLayout.CHANNELS_SH(getNumInComponents()) | LCMSImageLayout.BYTES_SH(2), getNumInComponents() * 2);
            LCMSImageLayout lCMSImageLayout4 = new LCMSImageLayout(sArr2, i22 / getNumOutComponents(), LCMSImageLayout.CHANNELS_SH(getNumOutComponents()) | LCMSImageLayout.BYTES_SH(2), getNumOutComponents() * 2);
            int i23 = minY2;
            int i24 = height;
            int i25 = minY;
            int i26 = 0;
            while (i26 < i24) {
                int minX3 = raster.getMinX();
                int i27 = i24;
                int i28 = 0;
                int i29 = 0;
                while (i28 < width) {
                    int i30 = i26;
                    int i31 = i20;
                    int i32 = 0;
                    while (i32 < i31) {
                        sArr[i29] = (short) ((raster.getSample(minX3, i25, i32) * fArr[i32]) + 0.5f);
                        i32++;
                        i29++;
                        i31 = i31;
                    }
                    i20 = i31;
                    i28++;
                    minX3++;
                    i26 = i30;
                }
                int i33 = i26;
                lCMSTransform.doTransform(lCMSImageLayout3, lCMSImageLayout4);
                int minX4 = writableRaster.getMinX();
                int i34 = 0;
                int i35 = 0;
                while (i34 < width) {
                    int i36 = 0;
                    while (i36 < numBands2) {
                        writableRaster.setSample(minX4, i23, i36, (int) (((sArr2[i35] & 65535) * fArr2[i36]) + 0.5f));
                        i36++;
                        i35++;
                    }
                    i34++;
                    minX4++;
                }
                i26 = i33 + 1;
                i25++;
                i23++;
                i24 = i27;
                lCMSTransform = this;
            }
        } catch (LCMSImageLayout.ImageLayoutException unused2) {
            throw new CMMException("Unable to convert rasters");
        }
    }

    @Override // sun.java2d.cmm.ColorTransform
    public short[] colorConvert(short[] sArr, short[] sArr2) {
        if (sArr2 == null) {
            sArr2 = new short[(sArr.length / getNumInComponents()) * getNumOutComponents()];
        }
        try {
            doTransform(new LCMSImageLayout(sArr, sArr.length / getNumInComponents(), LCMSImageLayout.CHANNELS_SH(getNumInComponents()) | LCMSImageLayout.BYTES_SH(2), getNumInComponents() * 2), new LCMSImageLayout(sArr2, sArr2.length / getNumOutComponents(), LCMSImageLayout.CHANNELS_SH(getNumOutComponents()) | LCMSImageLayout.BYTES_SH(2), getNumOutComponents() * 2));
            return sArr2;
        } catch (LCMSImageLayout.ImageLayoutException unused) {
            throw new CMMException("Unable to convert data");
        }
    }

    @Override // sun.java2d.cmm.ColorTransform
    public byte[] colorConvert(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            bArr2 = new byte[(bArr.length / getNumInComponents()) * getNumOutComponents()];
        }
        try {
            doTransform(new LCMSImageLayout(bArr, bArr.length / getNumInComponents(), LCMSImageLayout.CHANNELS_SH(getNumInComponents()) | LCMSImageLayout.BYTES_SH(1), getNumInComponents()), new LCMSImageLayout(bArr2, bArr2.length / getNumOutComponents(), LCMSImageLayout.CHANNELS_SH(getNumOutComponents()) | LCMSImageLayout.BYTES_SH(1), getNumOutComponents()));
            return bArr2;
        } catch (LCMSImageLayout.ImageLayoutException unused) {
            throw new CMMException("Unable to convert data");
        }
    }
}
