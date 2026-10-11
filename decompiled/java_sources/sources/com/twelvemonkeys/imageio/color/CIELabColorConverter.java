package com.twelvemonkeys.imageio.color;

import com.twelvemonkeys.lang.Validate;

/* loaded from: classes10.dex */
public final class CIELabColorConverter {

    /* renamed from: a */
    public final float[] f94012a;

    /* loaded from: classes10.dex */
    public enum Illuminant {
        D50(new float[]{96.4212f, 100.0f, 82.5188f}),
        D65(new float[]{95.0429f, 100.0f, 108.89f});

        private final float[] whitePoint;

        Illuminant(float[] fArr) {
            this.whitePoint = (float[]) Validate.isTrue(fArr != null && fArr.length == 3, fArr, "Bad white point definition: %s");
        }

        public float[] getWhitePoint() {
            return this.whitePoint;
        }
    }

    public CIELabColorConverter(Illuminant illuminant) {
        this.f94012a = ((Illuminant) Validate.notNull(illuminant, "illuminant")).getWhitePoint();
    }

    /* renamed from: e */
    public static double m60427e(double d, double d2) {
        return Double.longBitsToDouble(((long) (d2 * (Double.doubleToLongBits(d) - 4606921280493453312L))) + 4606921280493453312L);
    }

    /* renamed from: a */
    public final float[] m60428a(float f, float f2, float f3, float[] fArr) {
        float f4 = (f + 16.0f) / 116.0f;
        float f5 = f4 * f4 * f4;
        float f6 = (f2 / 500.0f) + f4;
        float f7 = f6 * f6 * f6;
        float f8 = f4 - (f3 / 200.0f);
        float f9 = f8 * f8 * f8;
        if (f5 <= 0.008856f) {
            f5 = (f4 - 0.13793103f) / 7.787f;
        }
        if (f7 <= 0.008856f) {
            f7 = (f6 - 0.13793103f) / 7.787f;
        }
        if (f9 <= 0.008856f) {
            f9 = (f8 - 0.13793103f) / 7.787f;
        }
        float[] fArr2 = this.f94012a;
        fArr[0] = f7 * fArr2[0];
        fArr[1] = f5 * fArr2[1];
        fArr[2] = f9 * fArr2[2];
        return fArr;
    }

    /* renamed from: b */
    public final float[] m60429b(float f, float f2, float f3, float[] fArr) {
        float f4 = f / 100.0f;
        float f5 = f2 / 100.0f;
        float f6 = f3 / 100.0f;
        float f7 = (3.2406f * f4) + ((-1.5372f) * f5) + ((-0.4986f) * f6);
        float f8 = ((-0.9689f) * f4) + (1.8758f * f5) + (0.0415f * f6);
        float f9 = (f4 * 0.0557f) + (f5 * (-0.204f)) + (f6 * 1.057f);
        float m60427e = f7 > 0.0031308f ? (((float) m60427e(f7, 0.4166666666666667d)) * 1.055f) - 0.055f : f7 * 12.92f;
        float m60427e2 = f8 > 0.0031308f ? (((float) m60427e(f8, 0.4166666666666667d)) * 1.055f) - 0.055f : f8 * 12.92f;
        float m60427e3 = f9 > 0.0031308f ? (((float) m60427e(f9, 0.4166666666666667d)) * 1.055f) - 0.055f : f9 * 12.92f;
        fArr[0] = m60431d(m60427e * 255.0f);
        fArr[1] = m60431d(m60427e2 * 255.0f);
        fArr[2] = m60431d(m60427e3 * 255.0f);
        return fArr;
    }

    /* renamed from: c */
    public final float[] m60430c(float[] fArr, float[] fArr2) {
        return m60429b(fArr[0], fArr[1], fArr[2], fArr2);
    }

    /* renamed from: d */
    public final float m60431d(float f) {
        if (f < 0.0f) {
            return 0.0f;
        }
        if (f > 255.0f) {
            return 255.0f;
        }
        return f;
    }

    public void toRGB(float f, float f2, float f3, float[] fArr) {
        m60430c(m60428a(f, f2, f3, fArr), fArr);
    }
}
