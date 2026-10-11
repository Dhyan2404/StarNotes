package com.twelvemonkeys.imageio.util;

import com.sunia.HTREnginev2.kpn;
import com.sunia.HTREnginev2.lmi;
import com.sunia.HTREnginev2.wji;
import com.twelvemonkeys.lang.Validate;
import java.awt.color.ColorSpace;
import java.awt.image.DirectColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.MultiPixelPackedSampleModel;
import javax.imageio.ImageTypeSpecifier;

/* loaded from: classes10.dex */
public final class ImageTypeSpecifiers {
    public static ImageTypeSpecifier createBanded(ColorSpace colorSpace, int[] iArr, int[] iArr2, int i, boolean z, boolean z2) {
        return ImageTypeSpecifier.createBanded(colorSpace, iArr, iArr2, i, z, z2);
    }

    public static ImageTypeSpecifier createFromBufferedImageType(int i) {
        return ImageTypeSpecifier.createFromBufferedImageType(i);
    }

    public static ImageTypeSpecifier createFromIndexColorModel(IndexColorModel indexColorModel) {
        return new wji(indexColorModel);
    }

    public static ImageTypeSpecifier createGrayscale(int i, int i2) {
        if (i == 16 && i2 == 2) {
            return new lmi(ColorSpace.getInstance(1003), new int[]{0}, false, false);
        }
        if (i == 32 && i2 == 3) {
            return new kpn(ColorSpace.getInstance(1003), new int[]{0}, false, false);
        }
        return ImageTypeSpecifier.createGrayscale(i, i2, false);
    }

    public static ImageTypeSpecifier createIndexed(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, int i2) {
        return ImageTypeSpecifier.createIndexed(bArr, bArr2, bArr3, bArr4, i, i2);
    }

    public static ImageTypeSpecifier createInterleaved(ColorSpace colorSpace, int[] iArr, int i, boolean z, boolean z2) {
        return i == 3 ? new kpn(colorSpace, iArr, z, z2) : ImageTypeSpecifier.createInterleaved(colorSpace, iArr, i, z, z2);
    }

    public static ImageTypeSpecifier createPacked(ColorSpace colorSpace, int i, int i2, int i3, int i4, int i5, boolean z) {
        if (i5 != 0 && i5 != 1) {
            return ImageTypeSpecifier.createPacked(colorSpace, i, i2, i3, i4, i5, z);
        }
        Validate.notNull(colorSpace, "colorSpace");
        Validate.isTrue(colorSpace.getType() == 5, colorSpace, "ColorSpace must be TYPE_RGB");
        Validate.isTrue((i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? false : true, "No mask has at least 1 bit set");
        DirectColorModel directColorModel = new DirectColorModel(colorSpace, i5 == 0 ? 8 : 16, i, i2, i3, i4, z, i5);
        return new ImageTypeSpecifier(directColorModel, directColorModel.createCompatibleSampleModel(1, 1));
    }

    public static ImageTypeSpecifier createPackedGrayscale(ColorSpace colorSpace, int i, int i2) {
        Validate.notNull(colorSpace, "colorSpace");
        Validate.isTrue(colorSpace.getType() == 6, colorSpace, "ColorSpace must be TYPE_GRAY");
        Validate.isTrue(i == 1 || i == 2 || i == 4, Integer.valueOf(i), "bits must be 1, 2, or 4: %s");
        Validate.isTrue(i2 == 0, Integer.valueOf(i2), "dataType must be TYPE_BYTE: %s");
        int i3 = 1 << i;
        byte[] bArr = new byte[i3];
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            float[] rgb = colorSpace.toRGB(new float[]{i4 / (i3 - 1)});
            bArr[i4] = (byte) (rgb[0] * 255.0f);
            bArr2[i4] = (byte) (rgb[1] * 255.0f);
            bArr3[i4] = (byte) (rgb[2] * 255.0f);
        }
        return new ImageTypeSpecifier(new IndexColorModel(i, i3, bArr, bArr2, bArr3), new MultiPixelPackedSampleModel(i2, 1, 1, i));
    }

    public static ImageTypeSpecifier createIndexed(int[] iArr, boolean z, int i, int i2, int i3) {
        return createFromIndexColorModel(new IndexColorModel(i2, iArr.length, iArr, 0, z, i, i3));
    }

    public static ImageTypeSpecifier createGrayscale(int i, int i2, boolean z) {
        if (i == 16 && i2 == 2) {
            return new lmi(ColorSpace.getInstance(1003), new int[]{0, 1}, true, z);
        }
        if (i == 32 && i2 == 3) {
            return new kpn(ColorSpace.getInstance(1003), new int[]{0, 1}, true, z);
        }
        return ImageTypeSpecifier.createGrayscale(i, i2, false, z);
    }
}
