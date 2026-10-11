package com.sun.imageio.plugins.tiff;

import javax.imageio.plugins.tiff.TIFFField;

/* loaded from: classes9.dex */
public class TIFFYCbCrColorConverter extends TIFFColorConverter {
    private static final float CODING_RANGE_CB_CR = 127.0f;
    private static final float CODING_RANGE_Y = 255.0f;
    private float lumaBlue;
    private float lumaGreen;
    private float lumaRed;
    private float referenceBlackCb;
    private float referenceBlackCr;
    private float referenceBlackY;
    private float referenceWhiteCb;
    private float referenceWhiteCr;
    private float referenceWhiteY;

    public TIFFYCbCrColorConverter(TIFFImageMetadata tIFFImageMetadata) {
        this.lumaRed = 0.299f;
        this.lumaGreen = 0.587f;
        this.lumaBlue = 0.114f;
        this.referenceBlackY = 0.0f;
        this.referenceWhiteY = 255.0f;
        this.referenceBlackCb = 128.0f;
        this.referenceWhiteCb = 255.0f;
        this.referenceBlackCr = 128.0f;
        this.referenceWhiteCr = 255.0f;
        TIFFField tIFFField = tIFFImageMetadata.getTIFFField(529);
        if (tIFFField != null && tIFFField.getCount() == 3) {
            this.lumaRed = tIFFField.getAsFloat(0);
            this.lumaGreen = tIFFField.getAsFloat(1);
            this.lumaBlue = tIFFField.getAsFloat(2);
        }
        TIFFField tIFFField2 = tIFFImageMetadata.getTIFFField(532);
        if (tIFFField2 == null || tIFFField2.getCount() != 6) {
            return;
        }
        this.referenceBlackY = tIFFField2.getAsFloat(0);
        this.referenceWhiteY = tIFFField2.getAsFloat(1);
        this.referenceBlackCb = tIFFField2.getAsFloat(2);
        this.referenceWhiteCb = tIFFField2.getAsFloat(3);
        this.referenceBlackCr = tIFFField2.getAsFloat(4);
        this.referenceWhiteCr = tIFFField2.getAsFloat(5);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFColorConverter
    public void fromRGB(float f, float f2, float f3, float[] fArr) {
        float f4 = this.lumaRed;
        float f5 = (f4 * f) + (this.lumaGreen * f2);
        float f6 = this.lumaBlue;
        float f7 = f5 + (f6 * f3);
        float f8 = (f3 - f7) / (2.0f - (f6 * 2.0f));
        float f9 = (f - f7) / (2.0f - (f4 * 2.0f));
        float f10 = this.referenceWhiteY;
        float f11 = this.referenceBlackY;
        fArr[0] = ((f7 * (f10 - f11)) / 255.0f) + f11;
        float f12 = this.referenceWhiteCb;
        float f13 = this.referenceBlackCb;
        fArr[1] = ((f8 * (f12 - f13)) / CODING_RANGE_CB_CR) + f13;
        float f14 = this.referenceWhiteCr;
        float f15 = this.referenceBlackCr;
        fArr[2] = ((f9 * (f14 - f15)) / CODING_RANGE_CB_CR) + f15;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFColorConverter
    public void toRGB(float f, float f2, float f3, float[] fArr) {
        float f4 = this.referenceBlackY;
        float f5 = ((f - f4) * 255.0f) / (this.referenceWhiteY - f4);
        float f6 = this.referenceBlackCb;
        float f7 = ((f2 - f6) * CODING_RANGE_CB_CR) / (this.referenceWhiteCb - f6);
        float f8 = this.referenceBlackCr;
        float f9 = ((f3 - f8) * CODING_RANGE_CB_CR) / (this.referenceWhiteCr - f8);
        float f10 = this.lumaRed;
        float f11 = (f9 * (2.0f - (f10 * 2.0f))) + f5;
        fArr[0] = f11;
        float f12 = this.lumaBlue;
        float f13 = (f7 * (2.0f - (f12 * 2.0f))) + f5;
        fArr[2] = f13;
        fArr[1] = ((f5 - (f12 * f13)) - (f10 * f11)) / this.lumaGreen;
    }
}
