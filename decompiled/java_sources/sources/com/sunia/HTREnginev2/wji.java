package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.Validate;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.WritableRaster;
import java.util.Hashtable;
import javax.imageio.ImageTypeSpecifier;

/* loaded from: classes10.dex */
public final class wji extends ImageTypeSpecifier {
    public wji(IndexColorModel indexColorModel) {
        super((ColorModel) Validate.notNull(indexColorModel, "colorModel"), indexColorModel.createCompatibleSampleModel(1, 1));
    }

    @Override // javax.imageio.ImageTypeSpecifier
    public final BufferedImage createBufferedImage(int i, int i2) {
        try {
            WritableRaster createCompatibleWritableRaster = this.colorModel.createCompatibleWritableRaster(i, i2);
            ColorModel colorModel = this.colorModel;
            return new BufferedImage(colorModel, createCompatibleWritableRaster, colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) new Hashtable());
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("Array size > Integer.MAX_VALUE!");
        }
    }
}
