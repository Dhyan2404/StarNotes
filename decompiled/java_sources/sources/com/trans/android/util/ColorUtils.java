package com.trans.android.util;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Composite;
import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import sun.java2d.loops.XORComposite;

/* loaded from: classes10.dex */
public class ColorUtils {
    public static final int OPAQUE = 255;
    public static final String TAG = "ColorUtils";

    public static int[] BGRToRGB(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            int i3 = (i2 >> 24) & 255;
            int i4 = (i2 >> 8) & 255;
            iArr[i] = ((i2 & 255) << 16) | (i3 << 24) | (i4 << 8) | ((i2 >> 16) & 255);
        }
        return iArr;
    }

    public static int getAlphaFromComposite(Composite composite) {
        if (composite == null) {
            return 255;
        }
        if (composite instanceof AlphaComposite) {
            return (int) Math.min(((AlphaComposite) composite).getAlpha() * 255.0f, 255.0f);
        }
        if (composite instanceof XORComposite) {
            return ((XORComposite) composite).getXorColor().getAlpha();
        }
        return 255;
    }

    public static int[] toAndroidPixels(Raster raster, ColorModel colorModel, int[] iArr) {
        if (colorModel instanceof IndexColorModel) {
            return toAndroidPixels((IndexColorModel) colorModel, iArr);
        }
        SampleModel sampleModel = raster.getSampleModel();
        int numBands = sampleModel.getNumBands();
        if (numBands == 1) {
            return iArr;
        }
        if (sampleModel instanceof SinglePixelPackedSampleModel) {
            SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) sampleModel;
            return toAndroidPixels(iArr, singlePixelPackedSampleModel.getBitMasks(), singlePixelPackedSampleModel.getBitOffsets(), numBands);
        }
        return toAndroidPixels(iArr, numBands);
    }

    public static int[] toColorInt(Color[] colorArr) {
        int[] iArr = new int[colorArr.length];
        for (int i = 0; i < colorArr.length; i++) {
            iArr[i] = colorArr[i].getRGB();
        }
        return iArr;
    }

    public static int[] toJavaPixels(Raster raster, int[] iArr) {
        SampleModel sampleModel = raster.getSampleModel();
        int numBands = sampleModel.getNumBands();
        if (numBands == 1) {
            return iArr;
        }
        if (sampleModel instanceof SinglePixelPackedSampleModel) {
            SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) sampleModel;
            return toJavaPixels(iArr, singlePixelPackedSampleModel.getBitMasks(), singlePixelPackedSampleModel.getBitOffsets(), singlePixelPackedSampleModel.getSampleSize(), numBands);
        }
        return toJavaPixels(iArr, numBands);
    }

    public static int[] toRasterPixels(Raster raster, int[] iArr) {
        int numBands = raster.getNumBands();
        if (numBands == 1) {
            return iArr;
        }
        SampleModel sampleModel = raster.getSampleModel();
        int[] iArr2 = new int[iArr.length * numBands];
        if (sampleModel instanceof SinglePixelPackedSampleModel) {
            SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) sampleModel;
            int[] bitMasks = singlePixelPackedSampleModel.getBitMasks();
            int[] bitOffsets = singlePixelPackedSampleModel.getBitOffsets();
            for (int i = 0; i < iArr.length; i++) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < numBands; i3++) {
                    iArr2[(i * numBands) + i3] = (i2 >> bitOffsets[i3]) & bitMasks[i3];
                }
            }
        } else {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                for (int i5 = 0; i5 < numBands; i5++) {
                    iArr2[(i4 * numBands) + i5] = (0 >> (((numBands - i5) - 1) * 8)) & 255;
                }
            }
        }
        return iArr2;
    }

    private static int[] toJavaPixels(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i) {
        int[] iArr5 = new int[iArr.length * i];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = iArr3[i4];
                int i6 = i5 / iArr4[i4];
                if (i6 == 0) {
                    iArr5[(i2 * i) + 2] = (i3 >> i5) & 255;
                } else if (i6 == 2) {
                    iArr5[i2 * i] = (i3 >> i5) & 255;
                } else {
                    iArr5[(i2 * i) + i6] = (i3 >> i5) & 255;
                }
            }
        }
        return iArr5;
    }

    private static int[] toAndroidPixels(IndexColorModel indexColorModel, int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = indexColorModel.getRGB(iArr[i]);
        }
        return iArr2;
    }

    private static int[] toAndroidPixels(int[] iArr, int[] iArr2, int[] iArr3, int i) {
        int length = iArr.length / i;
        int[] iArr4 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4++) {
                i3 |= ((iArr[(i2 * i) + i4] & 255) << iArr3[i4]) & iArr2[i4];
            }
            if (i <= 3) {
                i3 |= -16777216;
            }
            iArr4[i2] = i3;
        }
        return iArr4;
    }

    private static int[] toAndroidPixels(int[] iArr, int i) {
        int length = iArr.length / i;
        int[] iArr2 = new int[length];
        int min = Math.min(i, 3);
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < min; i4++) {
                i3 |= (iArr[(i2 * i) + i4] & 255) << (((min - i4) - 1) * 8);
            }
            iArr2[i2] = (i <= 3 ? -16777216 : iArr[(i2 * i) + 3] << 24) | i3;
        }
        return iArr2;
    }

    private static int[] toJavaPixels(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length * i];
        int min = Math.min(i, 3);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            for (int i4 = 0; i4 < min; i4++) {
                iArr2[(i2 * i) + i4] = (i3 >> (((min - i4) - 1) * 8)) & 255;
            }
            if (i == 4) {
                iArr2[(i2 * i) + 3] = (i3 >> 24) & 255;
            }
        }
        return iArr2;
    }
}
