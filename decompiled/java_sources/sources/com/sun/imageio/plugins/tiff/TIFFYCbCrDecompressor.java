package com.sun.imageio.plugins.tiff;

import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.Hashtable;
import javax.imageio.ImageReader;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;

/* loaded from: classes9.dex */
public class TIFFYCbCrDecompressor extends TIFFDecompressor {
    private static final int FRAC_BITS = 16;
    private static final float FRAC_SCALE = 65536.0f;
    private boolean colorConvert;
    private TIFFDecompressor decompressor;
    private BufferedImage tmpImage;
    private float lumaRed = 0.299f;
    private float lumaGreen = 0.587f;
    private float lumaBlue = 0.114f;
    private float referenceBlackY = 0.0f;
    private float referenceWhiteY = 255.0f;
    private float referenceBlackCb = 128.0f;
    private float referenceWhiteCb = 255.0f;
    private float referenceBlackCr = 128.0f;
    private float referenceWhiteCr = 255.0f;
    private float codingRangeY = 255.0f;
    private int[] iYTab = new int[256];
    private int[] iCbTab = new int[256];
    private int[] iCrTab = new int[256];
    private int[] iGYTab = new int[256];
    private int[] iGCbTab = new int[256];
    private int[] iGCrTab = new int[256];
    private int chromaSubsampleH = 2;
    private int chromaSubsampleV = 2;

    public TIFFYCbCrDecompressor(TIFFDecompressor tIFFDecompressor, boolean z) {
        this.decompressor = tIFFDecompressor;
        this.colorConvert = z;
    }

    private byte clamp(int i) {
        if (i < 0) {
            return (byte) 0;
        }
        if (i > 16711680) {
            return (byte) -1;
        }
        return (byte) (i >> 16);
    }

    private void warning(String str) {
        ImageReader imageReader = this.reader;
        if (imageReader instanceof TIFFImageReader) {
            ((TIFFImageReader) imageReader).forwardWarningMessage(str);
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void beginDecoding() {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.beginDecoding();
        }
        TIFFImageMetadata tIFFImageMetadata = (TIFFImageMetadata) this.metadata;
        TIFFField tIFFField = tIFFImageMetadata.getTIFFField(530);
        if (tIFFField != null) {
            if (tIFFField.getCount() == 2) {
                this.chromaSubsampleH = tIFFField.getAsInt(0);
                this.chromaSubsampleV = tIFFField.getAsInt(1);
                int i = this.chromaSubsampleH;
                if (i != 1 && i != 2 && i != 4) {
                    warning("Y_CB_CR_SUBSAMPLING[0] has illegal value " + this.chromaSubsampleH + " (should be 1, 2, or 4), setting to 1");
                    this.chromaSubsampleH = 1;
                }
                int i2 = this.chromaSubsampleV;
                if (i2 != 1 && i2 != 2 && i2 != 4) {
                    warning("Y_CB_CR_SUBSAMPLING[1] has illegal value " + this.chromaSubsampleV + " (should be 1, 2, or 4), setting to 1");
                    this.chromaSubsampleV = 1;
                }
            } else {
                warning("Y_CB_CR_SUBSAMPLING count != 2, assuming no subsampling");
            }
        }
        TIFFField tIFFField2 = tIFFImageMetadata.getTIFFField(529);
        if (tIFFField2 != null) {
            if (tIFFField2.getCount() == 3) {
                this.lumaRed = tIFFField2.getAsFloat(0);
                this.lumaGreen = tIFFField2.getAsFloat(1);
                this.lumaBlue = tIFFField2.getAsFloat(2);
            } else {
                warning("Y_CB_CR_COEFFICIENTS count != 3, assuming default values for CCIR 601-1");
            }
        }
        TIFFField tIFFField3 = tIFFImageMetadata.getTIFFField(532);
        if (tIFFField3 == null) {
            warning("REFERENCE_BLACK_WHITE not found, assuming 0-255/128-255/128-255");
        } else if (tIFFField3.getCount() == 6) {
            this.referenceBlackY = tIFFField3.getAsFloat(0);
            this.referenceWhiteY = tIFFField3.getAsFloat(1);
            this.referenceBlackCb = tIFFField3.getAsFloat(2);
            this.referenceWhiteCb = tIFFField3.getAsFloat(3);
            this.referenceBlackCr = tIFFField3.getAsFloat(4);
            this.referenceWhiteCr = tIFFField3.getAsFloat(5);
        } else {
            warning("REFERENCE_BLACK_WHITE count != 6, ignoring it");
        }
        this.colorConvert = true;
        float f = this.lumaBlue;
        float f2 = 2.0f - (f * 2.0f);
        float f3 = this.lumaRed;
        float f4 = 2.0f - (f3 * 2.0f);
        float f5 = this.lumaGreen;
        float f6 = ((1.0f - f) - f3) / f5;
        float f7 = ((f * 2.0f) * (f - 1.0f)) / f5;
        float f8 = ((2.0f * f3) * (f3 - 1.0f)) / f5;
        for (int i3 = 0; i3 < 256; i3++) {
            float f9 = i3;
            float f10 = this.referenceBlackY;
            float f11 = ((f9 - f10) * this.codingRangeY) / (this.referenceWhiteY - f10);
            float f12 = this.referenceBlackCb;
            float f13 = ((f9 - f12) * 127.0f) / (this.referenceWhiteCb - f12);
            float f14 = this.referenceBlackCr;
            float f15 = ((f9 - f14) * 127.0f) / (this.referenceWhiteCr - f14);
            this.iYTab[i3] = (int) (f11 * FRAC_SCALE);
            this.iCbTab[i3] = (int) (f13 * f2 * FRAC_SCALE);
            this.iCrTab[i3] = (int) (f15 * f4 * FRAC_SCALE);
            this.iGYTab[i3] = (int) (f11 * f6 * FRAC_SCALE);
            this.iGCbTab[i3] = (int) (f13 * f7 * FRAC_SCALE);
            this.iGCrTab[i3] = (int) (f15 * f8 * FRAC_SCALE);
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i;
        int i11 = (this.chromaSubsampleH * this.chromaSubsampleV) + 2;
        byte[] bArr2 = new byte[i11];
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            int i12 = this.srcWidth * 3;
            byte[] bArr3 = new byte[this.srcHeight * i12];
            tIFFDecompressor.decodeRaw(bArr3, i10, i2, i12);
            this.stream = new MemoryCacheImageInputStream(new ByteArrayInputStream(bArr3));
        } else {
            this.stream.seek(this.offset);
        }
        int i13 = this.srcMinY;
        while (i13 < this.srcMinY + this.srcHeight) {
            int i14 = this.srcMinX;
            while (i14 < this.srcMinX + this.srcWidth) {
                try {
                    this.stream.readFully(bArr2);
                    byte b = bArr2[i11 - 2];
                    byte b2 = bArr2[i11 - 1];
                    if (this.colorConvert) {
                        int i15 = b & 255;
                        int i16 = b2 & 255;
                        i6 = this.iCbTab[i15];
                        i7 = this.iCrTab[i16];
                        i4 = this.iGCbTab[i15];
                        i5 = this.iGCrTab[i16];
                    } else {
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                    }
                    int i17 = 0;
                    int i18 = 0;
                    while (true) {
                        if (i17 >= this.chromaSubsampleV) {
                            i8 = i11;
                            break;
                        }
                        int i19 = ((i14 - this.srcMinX) * 3) + i10;
                        int i20 = this.srcMinY;
                        int i21 = i19 + (((i13 - i20) + i17) * i3);
                        i8 = i11;
                        if (i13 + i17 >= i20 + this.srcHeight) {
                            break;
                        }
                        int i22 = 0;
                        while (true) {
                            if (i22 >= this.chromaSubsampleH) {
                                i9 = i13;
                                break;
                            }
                            i9 = i13;
                            if (i14 + i22 >= this.srcMinX + this.srcWidth) {
                                break;
                            }
                            int i23 = i18 + 1;
                            byte b3 = bArr2[i18];
                            if (this.colorConvert) {
                                int i24 = b3 & 255;
                                int i25 = this.iYTab[i24];
                                int i26 = this.iGYTab[i24];
                                byte clamp = clamp(i25 + i7);
                                byte clamp2 = clamp(i26 + i4 + i5);
                                byte clamp3 = clamp(i25 + i6);
                                bArr[i21] = clamp;
                                bArr[i21 + 1] = clamp2;
                                bArr[i21 + 2] = clamp3;
                            } else {
                                bArr[i21] = b3;
                                bArr[i21 + 1] = b;
                                bArr[i21 + 2] = b2;
                            }
                            i21 += 3;
                            i22++;
                            i18 = i23;
                            i13 = i9;
                        }
                        i17++;
                        i10 = i;
                        i11 = i8;
                        i13 = i9;
                    }
                    i14 += this.chromaSubsampleH;
                    i10 = i;
                    i11 = i8;
                    i13 = i13;
                } catch (EOFException unused) {
                    return;
                }
            }
            i13 += this.chromaSubsampleV;
            i10 = i;
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setActiveSrcHeight(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setActiveSrcHeight(i);
        }
        super.setActiveSrcHeight(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setActiveSrcMinX(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setActiveSrcMinX(i);
        }
        super.setActiveSrcMinX(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setActiveSrcMinY(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setActiveSrcMinY(i);
        }
        super.setActiveSrcMinY(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setActiveSrcWidth(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setActiveSrcWidth(i);
        }
        super.setActiveSrcWidth(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setBitsPerSample(int[] iArr) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setBitsPerSample(iArr);
        }
        super.setBitsPerSample(iArr);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setByteCount(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setByteCount(i);
        }
        super.setByteCount(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setColorMap(char[] cArr) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setColorMap(cArr);
        }
        super.setColorMap(cArr);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setCompression(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setCompression(i);
        }
        super.setCompression(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setDestinationBands(int[] iArr) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setDestinationBands(iArr);
        }
        super.setDestinationBands(iArr);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setDstHeight(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setDstHeight(i);
        }
        super.setDstHeight(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setDstMinX(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setDstMinX(i);
        }
        super.setDstMinX(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setDstMinY(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setDstMinY(i);
        }
        super.setDstMinY(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setDstWidth(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setDstWidth(i);
        }
        super.setDstWidth(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setDstXOffset(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setDstXOffset(i);
        }
        super.setDstXOffset(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setDstYOffset(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setDstYOffset(i);
        }
        super.setDstYOffset(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setExtraSamples(int[] iArr) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setExtraSamples(iArr);
        }
        super.setExtraSamples(iArr);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setImage(BufferedImage bufferedImage) {
        if (this.decompressor != null) {
            ColorModel colorModel = bufferedImage.getColorModel();
            BufferedImage bufferedImage2 = new BufferedImage(colorModel, bufferedImage.getRaster().createCompatibleWritableRaster(1, 1), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
            this.tmpImage = bufferedImage2;
            this.decompressor.setImage(bufferedImage2);
        }
        super.setImage(bufferedImage);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setMetadata(IIOMetadata iIOMetadata) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setMetadata(iIOMetadata);
        }
        super.setMetadata(iIOMetadata);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setOffset(long j) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setOffset(j);
        }
        super.setOffset(j);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setPhotometricInterpretation(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setPhotometricInterpretation(i);
        }
        super.setPhotometricInterpretation(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setPlanar(boolean z) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setPlanar(z);
        }
        super.setPlanar(z);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setReader(ImageReader imageReader) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setReader(imageReader);
        }
        super.setReader(imageReader);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSampleFormat(int[] iArr) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSampleFormat(iArr);
        }
        super.setSampleFormat(iArr);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSamplesPerPixel(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSamplesPerPixel(i);
        }
        super.setSamplesPerPixel(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSourceBands(int[] iArr) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSourceBands(iArr);
        }
        super.setSourceBands(iArr);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSourceXOffset(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSourceXOffset(i);
        }
        super.setSourceXOffset(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSourceYOffset(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSourceYOffset(i);
        }
        super.setSourceYOffset(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSrcHeight(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSrcHeight(i);
        }
        super.setSrcHeight(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSrcMinX(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSrcMinX(i);
        }
        super.setSrcMinX(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSrcMinY(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSrcMinY(i);
        }
        super.setSrcMinY(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setSrcWidth(int i) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setSrcWidth(i);
        }
        super.setSrcWidth(i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void setStream(ImageInputStream imageInputStream) {
        TIFFDecompressor tIFFDecompressor = this.decompressor;
        if (tIFFDecompressor != null) {
            tIFFDecompressor.setStream(imageInputStream);
        } else {
            super.setStream(imageInputStream);
        }
    }
}
