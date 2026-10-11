package com.twelvemonkeys.imageio.color;

import java.awt.color.ColorSpace;
import java.awt.image.ComponentColorModel;

/* loaded from: classes10.dex */
public final class UInt32ColorModel extends ComponentColorModel {
    public UInt32ColorModel(ColorSpace colorSpace, boolean z, boolean z2) {
        super(colorSpace, z, z2, z ? 3 : 1, 3);
    }

    @Override // java.awt.image.ComponentColorModel, java.awt.image.ColorModel
    public float[] getNormalizedComponents(Object obj, float[] fArr, int i) {
        int numComponents = getNumComponents();
        if (fArr == null) {
            fArr = new float[numComponents + i];
        }
        int[] iArr = (int[]) obj;
        int i2 = 0;
        int i3 = i;
        while (i2 < numComponents) {
            fArr[i3] = ((float) (iArr[i2] & 4294967295L)) / ((float) ((1 << getComponentSize(i2)) - 1));
            i2++;
            i3++;
        }
        int numColorComponents = getNumColorComponents();
        if (hasAlpha() && isAlphaPremultiplied()) {
            int i4 = numColorComponents + i;
            float f = fArr[i4];
            if (f != 0.0f) {
                float f2 = 1.0f / f;
                while (i < i4) {
                    fArr[i] = fArr[i] * f2;
                    i++;
                }
            }
        }
        return fArr;
    }
}
