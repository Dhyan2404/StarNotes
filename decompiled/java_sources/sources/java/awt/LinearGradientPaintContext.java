package java.awt;

import java.awt.MultipleGradientPaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.ColorModel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class LinearGradientPaintContext extends MultipleGradientPaintContext {
    private float dgdX;
    private float dgdY;

    /* renamed from: gc */
    private float f97729gc;

    public LinearGradientPaintContext(LinearGradientPaint linearGradientPaint, ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints, Point2D point2D, Point2D point2D2, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod, MultipleGradientPaint.ColorSpaceType colorSpaceType) {
        super(linearGradientPaint, colorModel, rectangle, rectangle2D, affineTransform, renderingHints, fArr, colorArr, cycleMethod, colorSpaceType);
        float x = (float) point2D.getX();
        float y = (float) point2D.getY();
        float x2 = ((float) point2D2.getX()) - x;
        float y2 = ((float) point2D2.getY()) - y;
        float f = (x2 * x2) + (y2 * y2);
        float f2 = x2 / f;
        float f3 = y2 / f;
        this.dgdX = (this.a00 * f2) + (this.a10 * f3);
        this.dgdY = (this.a01 * f2) + (this.a11 * f3);
        this.f97729gc = ((this.a02 - x) * f2) + ((this.a12 - y) * f3);
    }

    @Override // java.awt.MultipleGradientPaintContext
    public void fillRaster(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i + i5;
        float f = (this.dgdX * i3) + this.f97729gc;
        for (int i8 = 0; i8 < i6; i8++) {
            float f2 = (this.dgdY * (i4 + i8)) + f;
            while (i < i7) {
                iArr[i] = indexIntoGradientsArrays(f2);
                f2 += this.dgdX;
                i++;
            }
            i += i2;
            i7 = i + i5;
        }
    }
}
