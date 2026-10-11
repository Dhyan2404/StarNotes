package com.twelvemonkeys.image;

import java.awt.image.RGBImageFilter;

/* loaded from: classes10.dex */
public class BrightnessContrastFilter extends RGBImageFilter {

    /* renamed from: a */
    public final int[] f93905a;

    public BrightnessContrastFilter() {
        this(0.3f, 0.3f);
    }

    /* renamed from: a */
    public static int m60307a(int i) {
        if (i < 0) {
            return 0;
        }
        if (i > 255) {
            return 255;
        }
        return i;
    }

    /* renamed from: b */
    public static int[] m60308b(float f, float f2) {
        int[] iArr = new int[256];
        double pow = f2 > 0.0f ? Math.pow(f2, 7.0d) * 127.0d : f2;
        double d = f + 1.0d;
        for (int i = 0; i < 256; i++) {
            iArr[i] = m60307a((int) ((127.5d * d) + ((i - 127) * (pow + 1.0d))));
        }
        if (f2 == 1.0f) {
            iArr[127] = iArr[126];
        }
        return iArr;
    }

    public int filterRGB(int i, int i2, int i3) {
        int[] iArr = this.f93905a;
        int i4 = iArr[(i3 >> 16) & 255];
        return iArr[i3 & 255] | (i4 << 16) | (i3 & (-16777216)) | (iArr[(i3 >> 8) & 255] << 8);
    }

    public BrightnessContrastFilter(float f, float f2) {
        this.canFilterIndexColorModel = true;
        this.f93905a = m60308b(f, f2);
    }
}
