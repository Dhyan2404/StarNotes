package com.twelvemonkeys.imageio.color;

import java.awt.color.ColorSpace;

/* loaded from: classes10.dex */
final class CMYKColorSpace extends ColorSpace {
    static final ColorSpace INSTANCE = new CMYKColorSpace();
    final ColorSpace sRGB;

    private CMYKColorSpace() {
        super(9, 4);
        this.sRGB = ColorSpace.getInstance(1000);
    }

    public static ColorSpace getInstance() {
        return INSTANCE;
    }

    @Override // java.awt.color.ColorSpace
    public float[] fromCIEXYZ(float[] fArr) {
        return this.sRGB.fromCIEXYZ(fromRGB(fArr));
    }

    @Override // java.awt.color.ColorSpace
    public float[] fromRGB(float[] fArr) {
        float f = 1.0f - fArr[0];
        float f2 = 1.0f - fArr[1];
        float f3 = 1.0f - fArr[2];
        float min = Math.min(f, Math.min(f2, f3));
        return new float[]{f - min, f2 - min, f3 - min, min};
    }

    @Override // java.awt.color.ColorSpace
    public float[] toCIEXYZ(float[] fArr) {
        return this.sRGB.toCIEXYZ(toRGB(fArr));
    }

    @Override // java.awt.color.ColorSpace
    public float[] toRGB(float[] fArr) {
        float f = 1.0f - fArr[0];
        float f2 = fArr[3];
        return new float[]{f * (1.0f - f2), (1.0f - fArr[1]) * (1.0f - f2), (1.0f - fArr[2]) * (1.0f - f2)};
    }
}
