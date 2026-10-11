package java.awt;

import java.awt.MultipleGradientPaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.ColorModel;

/* loaded from: classes4.dex */
final class RadialGradientPaintContext extends MultipleGradientPaintContext {
    private static final float SCALEBACK = 0.99f;
    private static final int SQRT_LUT_SIZE = 2048;
    private static float[] sqrtLut = new float[2049];
    private float centerX;
    private float centerY;
    private float constA;
    private float constB;
    private float focusX;
    private float focusY;
    private float gDeltaDelta;
    private boolean isNonCyclic;
    private boolean isSimpleFocus;
    private float radius;
    private float radiusSq;
    private float trivial;

    static {
        int i = 0;
        while (true) {
            float[] fArr = sqrtLut;
            if (i >= fArr.length) {
                return;
            }
            fArr[i] = (float) Math.sqrt(i / 2048.0f);
            i++;
        }
    }

    public RadialGradientPaintContext(RadialGradientPaint radialGradientPaint, ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints, float f, float f2, float f3, float f4, float f5, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod, MultipleGradientPaint.ColorSpaceType colorSpaceType) {
        super(radialGradientPaint, colorModel, rectangle, rectangle2D, affineTransform, renderingHints, fArr, colorArr, cycleMethod, colorSpaceType);
        this.isSimpleFocus = false;
        this.isNonCyclic = false;
        this.centerX = f;
        this.centerY = f2;
        this.focusX = f4;
        this.focusY = f5;
        this.radius = f3;
        this.isSimpleFocus = f4 == f && f5 == f2;
        this.isNonCyclic = cycleMethod == MultipleGradientPaint.CycleMethod.NO_CYCLE;
        this.radiusSq = f3 * f3;
        float f6 = f4 - f;
        float f7 = f5 - f2;
        double d = (f6 * f6) + (f7 * f7);
        if (d > r0 * 0.99f) {
            float sqrt = (float) Math.sqrt((r0 * 0.99f) / d);
            f6 *= sqrt;
            this.focusX = this.centerX + f6;
            this.focusY = this.centerY + (f7 * sqrt);
        }
        this.trivial = (float) Math.sqrt(this.radiusSq - (f6 * f6));
        this.constA = this.a02 - this.centerX;
        this.constB = this.a12 - this.centerY;
        float f8 = this.a00;
        float f9 = this.a10;
        this.gDeltaDelta = (((f8 * f8) + (f9 * f9)) * 2.0f) / this.radiusSq;
    }

    private void cyclicCircularGradientFillRaster(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        float f;
        float f2;
        int i7;
        int i8;
        float f3;
        float f4;
        double d;
        double d2;
        double d3;
        int i9 = i5;
        float f5 = -this.radiusSq;
        float f6 = this.centerX;
        float f7 = this.centerY;
        double d4 = f5 + (f6 * f6) + (f7 * f7);
        float f8 = i3;
        float f9 = i4;
        float f10 = (this.a00 * f8) + (this.a01 * f9) + this.a02;
        float f11 = (this.a10 * f8) + (this.a11 * f9) + this.a12;
        float f12 = f7 * 2.0f;
        float f13 = f6 * (-2.0f);
        int i10 = i9 + i2;
        int i11 = i;
        int i12 = i6;
        int i13 = 0;
        while (i13 < i12) {
            float f14 = i13;
            float f15 = (this.a01 * f14) + f10;
            float f16 = (this.a11 * f14) + f11;
            int i14 = 0;
            while (i14 < i9) {
                float f17 = this.focusX;
                if (f15 == f17) {
                    f = f10;
                    double d5 = f17;
                    double d6 = this.centerY;
                    if (f16 > this.focusY) {
                        f2 = f11;
                        d3 = this.trivial;
                    } else {
                        f2 = f11;
                        d3 = -this.trivial;
                    }
                    d2 = d6 + d3;
                    f4 = f13;
                    i7 = i13;
                    f3 = f16;
                    d = d5;
                    i8 = i14;
                } else {
                    f = f10;
                    f2 = f11;
                    double d7 = (f16 - this.focusY) / (f15 - f17);
                    i7 = i13;
                    double d8 = f16 - (f15 * d7);
                    double d9 = (d7 * d7) + 1.0d;
                    i8 = i14;
                    f3 = f16;
                    f4 = f13;
                    double d10 = f13 + ((-2.0d) * d7 * (this.centerY - d8));
                    float sqrt = (float) Math.sqrt((d10 * d10) - ((4.0d * d9) * (((d8 - f12) * d8) + d4)));
                    double d11 = -d10;
                    if (f15 < this.focusX) {
                        sqrt = -sqrt;
                    }
                    d = (d11 + sqrt) / (d9 * 2.0d);
                    d2 = d8 + (d7 * d);
                }
                float f18 = this.focusX;
                float f19 = f15 - f18;
                float f20 = this.focusY;
                float f21 = f3 - f20;
                float f22 = ((float) d) - f18;
                float f23 = ((float) d2) - f20;
                iArr[i11 + i8] = indexIntoGradientsArrays((float) Math.sqrt(((f19 * f19) + (f21 * f21)) / ((f22 * f22) + (f23 * f23))));
                f15 += this.a00;
                f16 = f3 + this.a10;
                i14 = i8 + 1;
                f10 = f;
                f11 = f2;
                i9 = i5;
                i13 = i7;
                f13 = f4;
            }
            i11 += i10;
            i13++;
            i9 = i5;
            i12 = i6;
        }
    }

    private void simpleNonCyclicFillRaster(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        float f;
        int i7;
        float f2 = i3;
        float f3 = i4;
        float f4 = (this.a00 * f2) + (this.a01 * f3) + this.constA;
        float f5 = (this.a10 * f2) + (this.a11 * f3) + this.constB;
        float f6 = this.gDeltaDelta;
        int i8 = i2 + i5;
        int i9 = this.gradient[this.fastGradientArraySize];
        float f7 = f5;
        float f8 = f4;
        int i10 = i;
        for (int i11 = 0; i11 < i6; i11++) {
            float f9 = this.radiusSq;
            float f10 = ((f8 * f8) + (f7 * f7)) / f9;
            float f11 = ((((this.a00 * f8) + (this.a10 * f7)) * 2.0f) / f9) + (f6 / 2.0f);
            int i12 = 0;
            while (true) {
                if (i12 >= i5 || f10 < 1.0f) {
                    break;
                }
                iArr[i10 + i12] = i9;
                f10 += f11;
                f11 += f6;
                i12++;
            }
            for (f = 1.0f; i12 < i5 && f10 < f; f = 1.0f) {
                if (f10 <= 0.0f) {
                    i7 = 0;
                } else {
                    float f12 = 2048.0f * f10;
                    int i13 = (int) f12;
                    float[] fArr = sqrtLut;
                    float f13 = fArr[i13];
                    i7 = (int) (this.fastGradientArraySize * (f13 + ((f12 - i13) * (fArr[i13 + 1] - f13))));
                }
                iArr[i10 + i12] = this.gradient[i7];
                f10 += f11;
                f11 += f6;
                i12++;
            }
            while (i12 < i5) {
                iArr[i10 + i12] = i9;
                i12++;
            }
            i10 += i8;
            f8 += this.a01;
            f7 += this.a11;
        }
    }

    @Override // java.awt.MultipleGradientPaintContext
    public void fillRaster(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.isSimpleFocus && this.isNonCyclic && this.isSimpleLookup) {
            simpleNonCyclicFillRaster(iArr, i, i2, i3, i4, i5, i6);
        } else {
            cyclicCircularGradientFillRaster(iArr, i, i2, i3, i4, i5, i6);
        }
    }
}
