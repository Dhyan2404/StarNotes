package java.awt.image;

import java.awt.Graphics2D;
import java.awt.Point;
import java.awt.RenderingHints;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.Hashtable;
import sun.java2d.cmm.CMSManager;
import sun.java2d.cmm.ColorTransform;
import sun.java2d.cmm.PCMM;
import sun.java2d.cmm.ProfileDeferralMgr;

/* loaded from: classes5.dex */
public class ColorConvertOp implements BufferedImageOp, RasterOp {
    ColorSpace[] CSList;
    float[] dstMaxVals;
    float[] dstMinVals;
    boolean gotProfiles;
    RenderingHints hints;
    ICC_Profile[] profileList;
    float[] srcMaxVals;
    float[] srcMinVals;
    ICC_Profile thisDestProfile;
    ColorTransform thisRasterTransform;
    ICC_Profile thisSrcProfile;
    ColorTransform thisTransform;

    static {
        if (ProfileDeferralMgr.deferring) {
            ProfileDeferralMgr.activateProfiles();
        }
    }

    public ColorConvertOp(RenderingHints renderingHints) {
        this.profileList = new ICC_Profile[0];
        this.hints = renderingHints;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x006e, code lost:
    
        if ((r5.profileList[0] instanceof java.awt.color.ICC_ProfileGray) != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.awt.image.BufferedImage ICCBIFilter(java.awt.image.BufferedImage r6, java.awt.color.ColorSpace r7, java.awt.image.BufferedImage r8, java.awt.color.ColorSpace r9) {
        /*
            r5 = this;
            java.awt.color.ICC_Profile[] r0 = r5.profileList
            int r0 = r0.length
            java.awt.color.ICC_ColorSpace r7 = (java.awt.color.ICC_ColorSpace) r7
            java.awt.color.ICC_Profile r7 = r7.getProfile()
            r1 = 0
            if (r8 != 0) goto L21
            if (r0 == 0) goto L19
            java.awt.color.ICC_Profile[] r8 = r5.profileList
            int r9 = r0 + (-1)
            r8 = r8[r9]
            java.awt.image.BufferedImage r9 = r5.createCompatibleDestImage(r6, r1)
            goto L3e
        L19:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Destination ColorSpace is undefined"
            r5.<init>(r6)
            throw r5
        L21:
            int r2 = r6.getHeight()
            int r3 = r8.getHeight()
            if (r2 != r3) goto L8f
            int r2 = r6.getWidth()
            int r3 = r8.getWidth()
            if (r2 != r3) goto L8f
            java.awt.color.ICC_ColorSpace r9 = (java.awt.color.ICC_ColorSpace) r9
            java.awt.color.ICC_Profile r9 = r9.getProfile()
            r4 = r9
            r9 = r8
            r8 = r4
        L3e:
            r2 = 0
            if (r7 != r8) goto L62
            r8 = r2
        L42:
            if (r8 >= r0) goto L4f
            java.awt.color.ICC_Profile[] r3 = r5.profileList
            r3 = r3[r8]
            if (r7 == r3) goto L4c
            r7 = r2
            goto L50
        L4c:
            int r8 = r8 + 1
            goto L42
        L4f:
            r7 = 1
        L50:
            if (r7 == 0) goto L62
            java.awt.Graphics2D r5 = r9.createGraphics()
            r5.drawImage(r6, r2, r2, r1)     // Catch: java.lang.Throwable -> L5d
            r5.dispose()
            return r9
        L5d:
            r6 = move-exception
            r5.dispose()
            throw r6
        L62:
            java.awt.Graphics2D r7 = r9.createGraphics()
            if (r0 == 0) goto L70
            java.awt.color.ICC_Profile[] r5 = r5.profileList     // Catch: java.lang.Throwable -> L8a
            r5 = r5[r2]     // Catch: java.lang.Throwable -> L8a
            boolean r5 = r5 instanceof java.awt.color.ICC_ProfileGray     // Catch: java.lang.Throwable -> L8a
            if (r5 == 0) goto L83
        L70:
            boolean r5 = r7 instanceof com.trans.android.AndroidGraphics2D     // Catch: java.lang.Throwable -> L8a
            if (r5 == 0) goto L83
            android.graphics.ColorMatrix r5 = new android.graphics.ColorMatrix     // Catch: java.lang.Throwable -> L8a
            r5.<init>()     // Catch: java.lang.Throwable -> L8a
            r8 = 0
            r5.setSaturation(r8)     // Catch: java.lang.Throwable -> L8a
            r8 = r7
            com.trans.android.AndroidGraphics2D r8 = (com.trans.android.AndroidGraphics2D) r8     // Catch: java.lang.Throwable -> L8a
            r8.setImageColorFilter(r5)     // Catch: java.lang.Throwable -> L8a
        L83:
            r7.drawImage(r6, r2, r2, r1)     // Catch: java.lang.Throwable -> L8a
            r7.dispose()
            return r9
        L8a:
            r5 = move-exception
            r7.dispose()
            throw r5
        L8f:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Width or height of BufferedImages do not match"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.image.ColorConvertOp.ICCBIFilter(java.awt.image.BufferedImage, java.awt.color.ColorSpace, java.awt.image.BufferedImage, java.awt.color.ColorSpace):java.awt.image.BufferedImage");
    }

    private void getMinMaxValsFromColorSpaces(ColorSpace colorSpace, ColorSpace colorSpace2) {
        int numComponents = colorSpace.getNumComponents();
        this.srcMinVals = new float[numComponents];
        this.srcMaxVals = new float[numComponents];
        for (int i = 0; i < numComponents; i++) {
            this.srcMinVals[i] = colorSpace.getMinValue(i);
            this.srcMaxVals[i] = colorSpace.getMaxValue(i);
        }
        int numComponents2 = colorSpace2.getNumComponents();
        this.dstMinVals = new float[numComponents2];
        this.dstMaxVals = new float[numComponents2];
        for (int i2 = 0; i2 < numComponents2; i2++) {
            this.dstMinVals[i2] = colorSpace2.getMinValue(i2);
            this.dstMaxVals[i2] = colorSpace2.getMaxValue(i2);
        }
    }

    private void getMinMaxValsFromProfiles(ICC_Profile iCC_Profile, ICC_Profile iCC_Profile2) {
        int colorSpaceType = iCC_Profile.getColorSpaceType();
        int numComponents = iCC_Profile.getNumComponents();
        float[] fArr = new float[numComponents];
        this.srcMinVals = fArr;
        float[] fArr2 = new float[numComponents];
        this.srcMaxVals = fArr2;
        setMinMax(colorSpaceType, numComponents, fArr, fArr2);
        int colorSpaceType2 = iCC_Profile2.getColorSpaceType();
        int numComponents2 = iCC_Profile2.getNumComponents();
        float[] fArr3 = new float[numComponents2];
        this.dstMinVals = fArr3;
        float[] fArr4 = new float[numComponents2];
        this.dstMaxVals = fArr4;
        setMinMax(colorSpaceType2, numComponents2, fArr3, fArr4);
    }

    private int getRenderingIntent(ICC_Profile iCC_Profile) {
        byte[] data = iCC_Profile.getData(1751474532);
        return (data[67] & 255) | ((data[66] & 255) << 8);
    }

    private final BufferedImage nonICCBIFilter(BufferedImage bufferedImage, ColorSpace colorSpace, BufferedImage bufferedImage2, ColorSpace colorSpace2) {
        BufferedImage bufferedImage3;
        ColorSpace colorSpace3;
        int i;
        BufferedImage bufferedImage4;
        ICC_Profile profile;
        WritableRaster writableRaster;
        boolean z;
        ICC_Profile profile2;
        ICC_ColorSpace iCC_ColorSpace;
        ColorSpace colorSpace4;
        int i2;
        int i3;
        ColorSpace colorSpace5;
        float[] fArr;
        float[] fArr2;
        int i4;
        int i5;
        ColorSpace colorSpace6 = colorSpace;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        ICC_ColorSpace iCC_ColorSpace2 = (ICC_ColorSpace) ColorSpace.getInstance(1001);
        if (bufferedImage2 == null) {
            bufferedImage3 = createCompatibleDestImage(bufferedImage, null);
            colorSpace3 = bufferedImage3.getColorModel().getColorSpace();
        } else {
            if (height != bufferedImage2.getHeight() || width != bufferedImage2.getWidth()) {
                throw new IllegalArgumentException("Width or height of BufferedImages do not match");
            }
            bufferedImage3 = bufferedImage2;
            colorSpace3 = colorSpace2;
        }
        WritableRaster raster = bufferedImage.getRaster();
        WritableRaster raster2 = bufferedImage3.getRaster();
        ColorModel colorModel = bufferedImage.getColorModel();
        ColorModel colorModel2 = bufferedImage3.getColorModel();
        int numColorComponents = colorModel.getNumColorComponents();
        int numColorComponents2 = colorModel2.getNumColorComponents();
        boolean hasAlpha = colorModel2.hasAlpha();
        boolean z2 = true;
        boolean z3 = colorModel.hasAlpha() && hasAlpha;
        ColorSpace[] colorSpaceArr = this.CSList;
        if (colorSpaceArr == null) {
            bufferedImage4 = bufferedImage3;
            if (this.profileList.length != 0) {
                if (colorSpace6 instanceof ICC_ColorSpace) {
                    profile = ((ICC_ColorSpace) colorSpace6).getProfile();
                    writableRaster = raster2;
                    z = false;
                } else {
                    profile = iCC_ColorSpace2.getProfile();
                    writableRaster = raster2;
                    z = true;
                }
                if (colorSpace3 instanceof ICC_ColorSpace) {
                    profile2 = ((ICC_ColorSpace) colorSpace3).getProfile();
                    iCC_ColorSpace = iCC_ColorSpace2;
                    z2 = false;
                } else {
                    profile2 = iCC_ColorSpace2.getProfile();
                    iCC_ColorSpace = iCC_ColorSpace2;
                }
                if (this.thisTransform == null || this.thisSrcProfile != profile || this.thisDestProfile != profile2) {
                    updateBITransform(profile, profile2);
                }
                if (z) {
                    colorSpace4 = iCC_ColorSpace;
                    i2 = 3;
                } else {
                    colorSpace4 = colorSpace6;
                    i2 = numColorComponents;
                }
                float[] fArr3 = new float[i2];
                ColorSpace colorSpace7 = colorSpace3;
                float[] fArr4 = new float[i2];
                ColorModel colorModel3 = colorModel2;
                for (int i6 = 0; i6 < numColorComponents; i6++) {
                    fArr3[i6] = colorSpace4.getMinValue(i6);
                    fArr4[i6] = 65535.0f / (colorSpace4.getMaxValue(i6) - fArr3[i6]);
                }
                if (z2) {
                    colorSpace5 = iCC_ColorSpace;
                    i3 = 3;
                } else {
                    i3 = numColorComponents2;
                    colorSpace5 = colorSpace7;
                }
                float[] fArr5 = new float[i3];
                float[] fArr6 = new float[i3];
                for (int i7 = 0; i7 < numColorComponents2; i7++) {
                    fArr5[i7] = colorSpace5.getMinValue(i7);
                    fArr6[i7] = (colorSpace5.getMaxValue(i7) - fArr5[i7]) / 65535.0f;
                }
                if (hasAlpha) {
                    int i8 = numColorComponents2 + 1;
                    if (i8 <= 3) {
                        i8 = 3;
                    }
                    fArr = new float[i8];
                } else {
                    fArr = new float[numColorComponents2 > 3 ? numColorComponents2 : 3];
                }
                short[] sArr = new short[width * i2];
                float[] fArr7 = fArr5;
                short[] sArr2 = new short[width * i3];
                float[] fArr8 = z3 ? new float[width] : null;
                int i9 = numColorComponents2;
                int i10 = 0;
                while (i10 < height) {
                    int i11 = height;
                    float[] fArr9 = fArr;
                    float[] fArr10 = fArr6;
                    int i12 = 0;
                    Object obj = null;
                    float[] fArr11 = null;
                    int i13 = 0;
                    while (i12 < width) {
                        obj = raster.getDataElements(i12, i10, obj);
                        WritableRaster writableRaster2 = raster;
                        fArr11 = colorModel.getNormalizedComponents(obj, fArr11, 0);
                        if (z3) {
                            fArr8[i12] = fArr11[numColorComponents];
                        }
                        if (z) {
                            fArr11 = colorSpace6.toCIEXYZ(fArr11);
                        }
                        int i14 = 0;
                        while (i14 < i2) {
                            sArr[i13] = (short) (((fArr11[i14] - fArr3[i14]) * fArr4[i14]) + 0.5f);
                            i14++;
                            i13++;
                            obj = obj;
                        }
                        i12++;
                        raster = writableRaster2;
                    }
                    WritableRaster writableRaster3 = raster;
                    float[] fArr12 = fArr7;
                    this.thisTransform.colorConvert(sArr, sArr2);
                    boolean z4 = z;
                    Object obj2 = null;
                    int i15 = 0;
                    int i16 = 0;
                    while (i15 < width) {
                        int i17 = i16;
                        int i18 = 0;
                        while (i18 < i3) {
                            fArr9[i18] = ((sArr2[i17] & 65535) * fArr10[i18]) + fArr12[i18];
                            i18++;
                            i17++;
                            sArr2 = sArr2;
                        }
                        short[] sArr3 = sArr2;
                        float[] fArr13 = fArr9;
                        if (z2) {
                            float[] fromCIEXYZ = colorSpace6.fromCIEXYZ(fArr13);
                            fArr2 = fArr12;
                            int i19 = i9;
                            i4 = i2;
                            i5 = i19;
                            for (int i20 = 0; i20 < i5; i20++) {
                                fArr13[i20] = fromCIEXYZ[i20];
                            }
                        } else {
                            fArr2 = fArr12;
                            int i21 = i9;
                            i4 = i2;
                            i5 = i21;
                        }
                        if (z3) {
                            fArr13[i5] = fArr8[i15];
                        } else if (hasAlpha) {
                            fArr13[i5] = 1.0f;
                        }
                        ColorModel colorModel4 = colorModel3;
                        obj2 = colorModel4.getDataElements(fArr13, 0, obj2);
                        writableRaster.setDataElements(i15, i10, obj2);
                        i15++;
                        colorModel3 = colorModel4;
                        i16 = i17;
                        fArr12 = fArr2;
                        fArr9 = fArr13;
                        sArr2 = sArr3;
                        int i22 = i4;
                        i9 = i5;
                        i2 = i22;
                    }
                    i10++;
                    z = z4;
                    height = i11;
                    fArr7 = fArr12;
                    fArr6 = fArr10;
                    raster = writableRaster3;
                    fArr = fArr9;
                    sArr2 = sArr2;
                    i9 = i9;
                    i2 = i2;
                }
                return bufferedImage4;
            }
            i = height;
        } else {
            i = height;
            bufferedImage4 = bufferedImage3;
        }
        ColorSpace colorSpace8 = colorSpace3;
        int length = colorSpaceArr == null ? 0 : colorSpaceArr.length;
        float[] fArr14 = hasAlpha ? new float[numColorComponents2 + 1] : new float[numColorComponents2];
        int i23 = i;
        float[] fArr15 = null;
        Object obj3 = null;
        int i24 = 0;
        Object obj4 = null;
        while (i24 < i23) {
            Object obj5 = obj3;
            int i25 = i23;
            Object obj6 = obj4;
            int i26 = 0;
            while (i26 < width) {
                int i27 = width;
                obj6 = raster.getDataElements(i26, i24, obj6);
                fArr15 = colorModel.getNormalizedComponents(obj6, fArr15, 0);
                float[] ciexyz = colorSpace6.toCIEXYZ(fArr15);
                int i28 = 0;
                while (i28 < length) {
                    ciexyz = this.CSList[i28].toCIEXYZ(this.CSList[i28].fromCIEXYZ(ciexyz));
                    i28++;
                    length = length;
                }
                int i29 = length;
                ColorSpace colorSpace9 = colorSpace8;
                float[] fromCIEXYZ2 = colorSpace9.fromCIEXYZ(ciexyz);
                for (int i30 = 0; i30 < numColorComponents2; i30++) {
                    fArr14[i30] = fromCIEXYZ2[i30];
                }
                if (z3) {
                    fArr14[numColorComponents2] = fArr15[numColorComponents];
                } else if (hasAlpha) {
                    fArr14[numColorComponents2] = 1.0f;
                }
                obj5 = colorModel2.getDataElements(fArr14, 0, obj5);
                raster2.setDataElements(i26, i24, obj5);
                i26++;
                colorSpace6 = colorSpace;
                colorSpace8 = colorSpace9;
                width = i27;
                length = i29;
            }
            i24++;
            colorSpace6 = colorSpace;
            obj3 = obj5;
            length = length;
            obj4 = obj6;
            i23 = i25;
        }
        return bufferedImage4;
    }

    private final WritableRaster nonICCRasterFilter(Raster raster, WritableRaster writableRaster) {
        WritableRaster writableRaster2;
        float[] fArr;
        float[] fArr2;
        int i = 2;
        if (this.CSList.length != 2) {
            throw new IllegalArgumentException("Destination ColorSpace is undefined");
        }
        if (raster.getNumBands() != this.CSList[0].getNumComponents()) {
            throw new IllegalArgumentException("Numbers of source Raster bands and source color space components do not match");
        }
        if (writableRaster == null) {
            writableRaster2 = createCompatibleDestRaster(raster);
        } else {
            if (raster.getHeight() != writableRaster.getHeight() || raster.getWidth() != writableRaster.getWidth()) {
                throw new IllegalArgumentException("Width or height of Rasters do not match");
            }
            if (writableRaster.getNumBands() != this.CSList[1].getNumComponents()) {
                throw new IllegalArgumentException("Numbers of destination Raster bands and destination color space components do not match");
            }
            writableRaster2 = writableRaster;
        }
        if (this.srcMinVals == null) {
            ColorSpace[] colorSpaceArr = this.CSList;
            getMinMaxValsFromColorSpaces(colorSpaceArr[0], colorSpaceArr[1]);
        }
        SampleModel sampleModel = raster.getSampleModel();
        SampleModel sampleModel2 = writableRaster2.getSampleModel();
        int transferType = raster.getTransferType();
        int transferType2 = writableRaster2.getTransferType();
        boolean z = transferType == 4 || transferType == 5;
        boolean z2 = transferType2 == 4 || transferType2 == 5;
        int width = raster.getWidth();
        int height = raster.getHeight();
        int numBands = raster.getNumBands();
        int numBands2 = writableRaster2.getNumBands();
        float[] fArr3 = null;
        if (z) {
            fArr = null;
        } else {
            fArr = new float[numBands];
            int i2 = 0;
            while (i2 < numBands) {
                if (transferType == i) {
                    fArr[i2] = (this.srcMaxVals[i2] - this.srcMinVals[i2]) / 32767.0f;
                } else {
                    fArr[i2] = (this.srcMaxVals[i2] - this.srcMinVals[i2]) / ((1 << sampleModel.getSampleSize(i2)) - 1);
                }
                i2++;
                i = 2;
            }
        }
        if (!z2) {
            float[] fArr4 = new float[numBands2];
            for (int i3 = 0; i3 < numBands2; i3++) {
                if (transferType2 == 2) {
                    fArr4[i3] = 32767.0f / (this.dstMaxVals[i3] - this.dstMinVals[i3]);
                } else {
                    fArr4[i3] = ((1 << sampleModel2.getSampleSize(i3)) - 1) / (this.dstMaxVals[i3] - this.dstMinVals[i3]);
                }
            }
            fArr3 = fArr4;
        }
        int minY = raster.getMinY();
        int minY2 = writableRaster2.getMinY();
        float[] fArr5 = new float[numBands];
        ColorSpace[] colorSpaceArr2 = this.CSList;
        int i4 = 0;
        ColorSpace colorSpace = colorSpaceArr2[0];
        ColorSpace colorSpace2 = colorSpaceArr2[1];
        int i5 = 0;
        while (i5 < height) {
            int i6 = i5;
            int i7 = i4;
            int minX = raster.getMinX();
            int i8 = height;
            int minX2 = writableRaster2.getMinX();
            while (i7 < width) {
                int i9 = width;
                int i10 = 0;
                while (i10 < numBands) {
                    int i11 = numBands;
                    float sampleFloat = raster.getSampleFloat(minX, minY, i10);
                    if (z) {
                        fArr2 = fArr;
                    } else {
                        fArr2 = fArr;
                        sampleFloat = (sampleFloat * fArr[i10]) + this.srcMinVals[i10];
                    }
                    fArr5[i10] = sampleFloat;
                    i10++;
                    numBands = i11;
                    fArr = fArr2;
                }
                float[] fArr6 = fArr;
                int i12 = numBands;
                float[] fromCIEXYZ = colorSpace2.fromCIEXYZ(colorSpace.toCIEXYZ(fArr5));
                int i13 = 0;
                while (i13 < numBands2) {
                    float f = fromCIEXYZ[i13];
                    float[] fArr7 = fromCIEXYZ;
                    if (!z2) {
                        f = (f - this.dstMinVals[i13]) * fArr3[i13];
                    }
                    writableRaster2.setSample(minX2, minY2, i13, f);
                    i13++;
                    fromCIEXYZ = fArr7;
                }
                i7++;
                minX++;
                minX2++;
                width = i9;
                numBands = i12;
                fArr = fArr6;
            }
            i5 = i6 + 1;
            minY++;
            minY2++;
            height = i8;
            numBands = numBands;
            i4 = 0;
        }
        return writableRaster2;
    }

    private void setMinMax(int i, int i2, float[] fArr, float[] fArr2) {
        if (i == 1) {
            fArr[0] = 0.0f;
            fArr2[0] = 100.0f;
            fArr[1] = -128.0f;
            fArr2[1] = 127.0f;
            fArr[2] = -128.0f;
            fArr2[2] = 127.0f;
            return;
        }
        if (i != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                fArr[i3] = 0.0f;
                fArr2[i3] = 1.0f;
            }
            return;
        }
        fArr[2] = 0.0f;
        fArr[1] = 0.0f;
        fArr[0] = 0.0f;
        fArr2[2] = 1.9999695f;
        fArr2[1] = 1.9999695f;
        fArr2[0] = 1.9999695f;
    }

    private void updateBITransform(ICC_Profile iCC_Profile, ICC_Profile iCC_Profile2) {
        int i;
        boolean z;
        boolean z2;
        int i2;
        ICC_Profile[] iCC_ProfileArr = this.profileList;
        int length = iCC_ProfileArr.length;
        if (length == 0 || iCC_Profile != iCC_ProfileArr[0]) {
            i = length + 1;
            z = true;
        } else {
            i = length;
            z = false;
        }
        if (length == 0 || iCC_Profile2 != iCC_ProfileArr[length - 1] || i < 2) {
            i++;
            z2 = true;
        } else {
            z2 = false;
        }
        ICC_Profile[] iCC_ProfileArr2 = new ICC_Profile[i];
        if (z) {
            iCC_ProfileArr2[0] = iCC_Profile;
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i3 = 0;
        while (i3 < length) {
            iCC_ProfileArr2[i2] = this.profileList[i3];
            i3++;
            i2++;
        }
        if (z2) {
            iCC_ProfileArr2[i2] = iCC_Profile2;
        }
        ColorTransform[] colorTransformArr = new ColorTransform[i];
        int i4 = iCC_ProfileArr2[0].getProfileClass() == 2 ? 1 : 0;
        PCMM module = CMSManager.getModule();
        int i5 = 1;
        int i6 = 0;
        while (i6 < i) {
            if (i6 == i - 1) {
                i5 = 2;
            } else if (i5 == 4 && iCC_ProfileArr2[i6].getProfileClass() == 5) {
                i5 = 1;
                i4 = 0;
            }
            colorTransformArr[i6] = module.createTransform(iCC_ProfileArr2[i6], i4, i5);
            i4 = getRenderingIntent(iCC_ProfileArr2[i6]);
            i6++;
            i5 = 4;
        }
        this.thisTransform = module.createTransform(colorTransformArr);
        this.thisSrcProfile = iCC_Profile;
        this.thisDestProfile = iCC_Profile2;
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        ColorSpace colorSpace;
        if (colorModel == null) {
            ColorSpace[] colorSpaceArr = this.CSList;
            if (colorSpaceArr == null) {
                ICC_Profile[] iCC_ProfileArr = this.profileList;
                int length = iCC_ProfileArr.length;
                if (length != 0) {
                    colorSpace = new ICC_ColorSpace(iCC_ProfileArr[length - 1]);
                } else {
                    throw new IllegalArgumentException("Destination ColorSpace is undefined");
                }
            } else {
                colorSpace = colorSpaceArr[colorSpaceArr.length - 1];
            }
        } else {
            colorSpace = null;
        }
        return createCompatibleDestImage(bufferedImage, colorModel, colorSpace);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        int numComponents;
        ColorSpace[] colorSpaceArr = this.CSList;
        if (colorSpaceArr == null) {
            ICC_Profile[] iCC_ProfileArr = this.profileList;
            int length = iCC_ProfileArr.length;
            if (length < 2) {
                throw new IllegalArgumentException("Destination ColorSpace is undefined");
            }
            numComponents = iCC_ProfileArr[length - 1].getNumComponents();
        } else {
            if (colorSpaceArr.length != 2) {
                throw new IllegalArgumentException("Destination ColorSpace is undefined");
            }
            numComponents = colorSpaceArr[1].getNumComponents();
        }
        return Raster.createInterleavedRaster(0, raster.getWidth(), raster.getHeight(), numComponents, new Point(raster.getMinX(), raster.getMinY()));
    }

    @Override // java.awt.image.BufferedImageOp
    public final BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        BufferedImage bufferedImage3;
        ColorSpace colorSpace;
        BufferedImage nonICCBIFilter;
        if (bufferedImage.getColorModel() instanceof IndexColorModel) {
            bufferedImage = ((IndexColorModel) bufferedImage.getColorModel()).convertToIntDiscrete(bufferedImage.getRaster(), true);
        }
        ColorSpace colorSpace2 = bufferedImage.getColorModel().getColorSpace();
        if (bufferedImage2 == null) {
            bufferedImage3 = null;
            colorSpace = null;
        } else if (bufferedImage2.getColorModel() instanceof IndexColorModel) {
            bufferedImage3 = bufferedImage2;
            bufferedImage2 = null;
            colorSpace = null;
        } else {
            colorSpace = bufferedImage2.getColorModel().getColorSpace();
            bufferedImage3 = null;
        }
        if (this.CSList == null && (colorSpace2 instanceof ICC_ColorSpace) && (bufferedImage2 == null || (colorSpace instanceof ICC_ColorSpace))) {
            nonICCBIFilter = ICCBIFilter(bufferedImage, colorSpace2, bufferedImage2, colorSpace);
        } else {
            nonICCBIFilter = nonICCBIFilter(bufferedImage, colorSpace2, bufferedImage2, colorSpace);
        }
        if (bufferedImage3 == null) {
            return nonICCBIFilter;
        }
        Graphics2D createGraphics = bufferedImage3.createGraphics();
        try {
            createGraphics.drawImage(nonICCBIFilter, 0, 0, (ImageObserver) null);
            return bufferedImage3;
        } finally {
            createGraphics.dispose();
        }
    }

    @Override // java.awt.image.BufferedImageOp
    public final Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return getBounds2D(bufferedImage.getRaster());
    }

    public final ICC_Profile[] getICC_Profiles() {
        if (!this.gotProfiles) {
            return null;
        }
        ICC_Profile[] iCC_ProfileArr = new ICC_Profile[this.profileList.length];
        int i = 0;
        while (true) {
            ICC_Profile[] iCC_ProfileArr2 = this.profileList;
            if (i >= iCC_ProfileArr2.length) {
                return iCC_ProfileArr;
            }
            iCC_ProfileArr[i] = iCC_ProfileArr2[i];
            i++;
        }
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public final Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        if (point2D2 == null) {
            point2D2 = new Point2D.Float();
        }
        point2D2.setLocation(point2D.getX(), point2D.getY());
        return point2D2;
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public final RenderingHints getRenderingHints() {
        return this.hints;
    }

    @Override // java.awt.image.RasterOp
    public final Rectangle2D getBounds2D(Raster raster) {
        return raster.getBounds();
    }

    public ColorConvertOp(ColorSpace colorSpace, RenderingHints renderingHints) {
        if (colorSpace != null) {
            if (colorSpace instanceof ICC_ColorSpace) {
                this.profileList = r0;
                ICC_Profile[] iCC_ProfileArr = {((ICC_ColorSpace) colorSpace).getProfile()};
            } else {
                this.CSList = r0;
                ColorSpace[] colorSpaceArr = {colorSpace};
            }
            this.hints = renderingHints;
            return;
        }
        throw new NullPointerException("ColorSpace cannot be null");
    }

    private BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel, ColorSpace colorSpace) {
        if (colorModel == null) {
            ColorModel colorModel2 = bufferedImage.getColorModel();
            int numComponents = colorSpace.getNumComponents();
            boolean hasAlpha = colorModel2.hasAlpha();
            if (hasAlpha) {
                numComponents++;
            }
            int[] iArr = new int[numComponents];
            for (int i = 0; i < numComponents; i++) {
                iArr[i] = 8;
            }
            colorModel = new ComponentColorModel(colorSpace, iArr, hasAlpha, colorModel2.isAlphaPremultiplied(), colorModel2.getTransparency(), 0);
        }
        return new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(bufferedImage.getWidth(), bufferedImage.getHeight()), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    public ColorConvertOp(ColorSpace colorSpace, ColorSpace colorSpace2, RenderingHints renderingHints) {
        if (colorSpace != null && colorSpace2 != null) {
            if ((colorSpace instanceof ICC_ColorSpace) && (colorSpace2 instanceof ICC_ColorSpace)) {
                ICC_Profile[] iCC_ProfileArr = new ICC_Profile[2];
                this.profileList = iCC_ProfileArr;
                iCC_ProfileArr[0] = ((ICC_ColorSpace) colorSpace).getProfile();
                this.profileList[1] = ((ICC_ColorSpace) colorSpace2).getProfile();
                getMinMaxValsFromColorSpaces(colorSpace, colorSpace2);
            } else {
                this.CSList = r0;
                ColorSpace[] colorSpaceArr = {colorSpace, colorSpace2};
            }
            this.hints = renderingHints;
            return;
        }
        throw new NullPointerException("ColorSpaces cannot be null");
    }

    @Override // java.awt.image.RasterOp
    public final WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        if (this.CSList != null) {
            return nonICCRasterFilter(raster, writableRaster);
        }
        int length = this.profileList.length;
        if (length >= 2) {
            if (raster.getNumBands() == this.profileList[0].getNumComponents()) {
                if (writableRaster == null) {
                    writableRaster = createCompatibleDestRaster(raster);
                } else if (raster.getHeight() == writableRaster.getHeight() && raster.getWidth() == writableRaster.getWidth()) {
                    if (writableRaster.getNumBands() != this.profileList[length - 1].getNumComponents()) {
                        throw new IllegalArgumentException("Numbers of destination Raster bands and destination color space components do not match");
                    }
                } else {
                    throw new IllegalArgumentException("Width or height of Rasters do not match");
                }
                if (this.thisRasterTransform == null) {
                    ColorTransform[] colorTransformArr = new ColorTransform[length];
                    int i = this.profileList[0].getProfileClass() == 2 ? 1 : 0;
                    PCMM module = CMSManager.getModule();
                    int i2 = 0;
                    int i3 = 1;
                    while (i2 < length) {
                        if (i2 == length - 1) {
                            i3 = 2;
                        } else if (i3 == 4 && this.profileList[i2].getProfileClass() == 5) {
                            i = 0;
                            i3 = 1;
                        }
                        colorTransformArr[i2] = module.createTransform(this.profileList[i2], i, i3);
                        i = getRenderingIntent(this.profileList[i2]);
                        i2++;
                        i3 = 4;
                    }
                    this.thisRasterTransform = module.createTransform(colorTransformArr);
                }
                int transferType = raster.getTransferType();
                int transferType2 = writableRaster.getTransferType();
                if (transferType != 4 && transferType != 5 && transferType2 != 4 && transferType2 != 5) {
                    this.thisRasterTransform.colorConvert(raster, writableRaster);
                } else {
                    if (this.srcMinVals == null) {
                        ICC_Profile[] iCC_ProfileArr = this.profileList;
                        getMinMaxValsFromProfiles(iCC_ProfileArr[0], iCC_ProfileArr[length - 1]);
                    }
                    this.thisRasterTransform.colorConvert(raster, writableRaster, this.srcMinVals, this.srcMaxVals, this.dstMinVals, this.dstMaxVals);
                }
                return writableRaster;
            }
            throw new IllegalArgumentException("Numbers of source Raster bands and source color space components do not match");
        }
        throw new IllegalArgumentException("Source or Destination ColorSpace is undefined");
    }

    public ColorConvertOp(ICC_Profile[] iCC_ProfileArr, RenderingHints renderingHints) {
        if (iCC_ProfileArr != null) {
            this.gotProfiles = true;
            this.profileList = new ICC_Profile[iCC_ProfileArr.length];
            for (int i = 0; i < iCC_ProfileArr.length; i++) {
                this.profileList[i] = iCC_ProfileArr[i];
            }
            this.hints = renderingHints;
            return;
        }
        throw new NullPointerException("Profiles cannot be null");
    }
}
