package sun.java2d.pipe;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.LinearGradientPaint;
import java.awt.MultipleGradientPaint;
import java.awt.Paint;
import java.awt.RadialGradientPaint;
import java.awt.TexturePaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;
import sun.awt.image.PixelConverter;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class BufferedPaints {
    public static final int MULTI_MAX_FRACTIONS = 12;

    private static int colorToIntArgbPrePixel(Color color, boolean z) {
        int rgb = color.getRGB();
        if (!z && (rgb >> 24) == -1) {
            return rgb;
        }
        int i = rgb >>> 24;
        int i2 = (rgb >> 16) & 255;
        int i3 = (rgb >> 8) & 255;
        int i4 = rgb & 255;
        if (z) {
            i2 = convertSRGBtoLinearRGB(i2);
            i3 = convertSRGBtoLinearRGB(i3);
            i4 = convertSRGBtoLinearRGB(i4);
        }
        int i5 = (i >> 7) + i;
        return ((i4 * i5) >> 8) | (i << 24) | (((i2 * i5) >> 8) << 16) | (((i3 * i5) >> 8) << 8);
    }

    public static int convertSRGBtoLinearRGB(int i) {
        float f = i / 255.0f;
        return Math.round((f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055d) / 1.055d, 2.4d)) * 255.0f);
    }

    private static int[] convertToIntArgbPrePixels(Color[] colorArr, boolean z) {
        int[] iArr = new int[colorArr.length];
        for (int i = 0; i < colorArr.length; i++) {
            iArr[i] = colorToIntArgbPrePixel(colorArr[i], z);
        }
        return iArr;
    }

    public static void resetPaint(RenderQueue renderQueue) {
        renderQueue.ensureCapacity(4);
        renderQueue.getBuffer().putInt(100);
    }

    private static void setColor(RenderQueue renderQueue, int i) {
        renderQueue.ensureCapacity(8);
        RenderBuffer buffer = renderQueue.getBuffer();
        buffer.putInt(101);
        buffer.putInt(i);
    }

    private static void setGradientPaint(RenderQueue renderQueue, AffineTransform affineTransform, Color color, Color color2, Point2D point2D, Point2D point2D2, boolean z, boolean z2) {
        double d;
        double d2;
        PixelConverter pixelConverter = PixelConverter.ArgbPre.instance;
        int rgbToPixel = pixelConverter.rgbToPixel(color.getRGB(), null);
        int rgbToPixel2 = pixelConverter.rgbToPixel(color2.getRGB(), null);
        double x = point2D.getX();
        double y = point2D.getY();
        affineTransform.translate(x, y);
        double x2 = point2D2.getX() - x;
        double y2 = point2D2.getY() - y;
        double sqrt = Math.sqrt((x2 * x2) + (y2 * y2));
        affineTransform.rotate(x2, y2);
        affineTransform.scale(sqrt * 2.0d, 1.0d);
        double d3 = 0.0d;
        affineTransform.translate(-0.25d, 0.0d);
        try {
            affineTransform.invert();
            double scaleX = affineTransform.getScaleX();
            d2 = affineTransform.getShearX();
            d = affineTransform.getTranslateX();
            d3 = scaleX;
        } catch (NoninvertibleTransformException unused) {
            d = 0.0d;
            d2 = 0.0d;
        }
        renderQueue.ensureCapacityAndAlignment(44, 12);
        RenderBuffer buffer = renderQueue.getBuffer();
        buffer.putInt(102);
        buffer.putInt(z2 ? 1 : 0);
        buffer.putInt(z ? 1 : 0);
        buffer.putDouble(d3).putDouble(d2).putDouble(d);
        buffer.putInt(rgbToPixel).putInt(rgbToPixel2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    private static void setLinearGradientPaint(RenderQueue renderQueue, SunGraphics2D sunGraphics2D, LinearGradientPaint linearGradientPaint, boolean z) {
        float f;
        float f2;
        float f3;
        ?? r0 = linearGradientPaint.getColorSpace() == MultipleGradientPaint.ColorSpaceType.LINEAR_RGB ? 1 : 0;
        Color[] colors = linearGradientPaint.getColors();
        int length = colors.length;
        Point2D startPoint = linearGradientPaint.getStartPoint();
        Point2D endPoint = linearGradientPaint.getEndPoint();
        AffineTransform transform = linearGradientPaint.getTransform();
        transform.preConcatenate(sunGraphics2D.transform);
        if (r0 == 0 && length == 2 && linearGradientPaint.getCycleMethod() != MultipleGradientPaint.CycleMethod.REPEAT) {
            setGradientPaint(renderQueue, transform, colors[0], colors[1], startPoint, endPoint, linearGradientPaint.getCycleMethod() != MultipleGradientPaint.CycleMethod.NO_CYCLE, z);
            return;
        }
        int ordinal = linearGradientPaint.getCycleMethod().ordinal();
        float[] fractions = linearGradientPaint.getFractions();
        int[] convertToIntArgbPrePixels = convertToIntArgbPrePixels(colors, r0);
        double x = startPoint.getX();
        double y = startPoint.getY();
        transform.translate(x, y);
        double x2 = endPoint.getX() - x;
        double y2 = endPoint.getY() - y;
        double sqrt = Math.sqrt((x2 * x2) + (y2 * y2));
        transform.rotate(x2, y2);
        transform.scale(sqrt, 1.0d);
        try {
            transform.invert();
            f = (float) transform.getScaleX();
            f3 = (float) transform.getShearX();
            f2 = (float) transform.getTranslateX();
        } catch (NoninvertibleTransformException unused) {
            f = 0.0f;
            f2 = 0.0f;
            f3 = 0.0f;
        }
        renderQueue.ensureCapacity((length * 4 * 2) + 32);
        RenderBuffer buffer = renderQueue.getBuffer();
        buffer.putInt(103);
        buffer.putInt(z ? 1 : 0);
        buffer.putInt(r0);
        buffer.putInt(ordinal);
        buffer.putInt(length);
        buffer.putFloat(f);
        buffer.putFloat(f3);
        buffer.putFloat(f2);
        buffer.put(fractions);
        buffer.put(convertToIntArgbPrePixels);
    }

    public static void setPaint(RenderQueue renderQueue, SunGraphics2D sunGraphics2D, Paint paint, int i) {
        int i2 = sunGraphics2D.paintState;
        if (i2 <= 1) {
            setColor(renderQueue, sunGraphics2D.pixel);
            return;
        }
        boolean z = (i & 2) != 0;
        if (i2 == 2) {
            setGradientPaint(renderQueue, sunGraphics2D, (GradientPaint) paint, z);
            return;
        }
        if (i2 == 3) {
            setLinearGradientPaint(renderQueue, sunGraphics2D, (LinearGradientPaint) paint, z);
        } else if (i2 == 4) {
            setRadialGradientPaint(renderQueue, sunGraphics2D, (RadialGradientPaint) paint, z);
        } else {
            if (i2 != 5) {
                return;
            }
            setTexturePaint(renderQueue, sunGraphics2D, (TexturePaint) paint, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
    private static void setRadialGradientPaint(RenderQueue renderQueue, SunGraphics2D sunGraphics2D, RadialGradientPaint radialGradientPaint, boolean z) {
        ?? r0 = radialGradientPaint.getColorSpace() == MultipleGradientPaint.ColorSpaceType.LINEAR_RGB ? 1 : 0;
        int ordinal = radialGradientPaint.getCycleMethod().ordinal();
        float[] fractions = radialGradientPaint.getFractions();
        Color[] colors = radialGradientPaint.getColors();
        int length = colors.length;
        int[] convertToIntArgbPrePixels = convertToIntArgbPrePixels(colors, r0);
        Point2D centerPoint = radialGradientPaint.getCenterPoint();
        Point2D focusPoint = radialGradientPaint.getFocusPoint();
        float radius = radialGradientPaint.getRadius();
        double x = centerPoint.getX();
        double y = centerPoint.getY();
        double x2 = focusPoint.getX();
        double y2 = focusPoint.getY();
        AffineTransform transform = radialGradientPaint.getTransform();
        transform.preConcatenate(sunGraphics2D.transform);
        Point2D transform2 = transform.transform(focusPoint, focusPoint);
        transform.translate(x, y);
        transform.rotate(x2 - x, y2 - y);
        double d = radius;
        transform.scale(d, d);
        try {
            transform.invert();
        } catch (Exception unused) {
            transform.setToScale(0.0d, 0.0d);
        }
        double min = Math.min(transform.transform(transform2, transform2).getX(), 0.99d);
        renderQueue.ensureCapacity((length * 4 * 2) + 48);
        RenderBuffer buffer = renderQueue.getBuffer();
        buffer.putInt(104);
        buffer.putInt(z ? 1 : 0);
        buffer.putInt(r0);
        buffer.putInt(length);
        buffer.putInt(ordinal);
        buffer.putFloat((float) transform.getScaleX());
        buffer.putFloat((float) transform.getShearX());
        buffer.putFloat((float) transform.getTranslateX());
        buffer.putFloat((float) transform.getShearY());
        buffer.putFloat((float) transform.getScaleY());
        buffer.putFloat((float) transform.getTranslateY());
        buffer.putFloat((float) min);
        buffer.put(fractions);
        buffer.put(convertToIntArgbPrePixels);
    }

    private static void setTexturePaint(RenderQueue renderQueue, SunGraphics2D sunGraphics2D, TexturePaint texturePaint, boolean z) {
    }

    private static void setGradientPaint(RenderQueue renderQueue, SunGraphics2D sunGraphics2D, GradientPaint gradientPaint, boolean z) {
        setGradientPaint(renderQueue, (AffineTransform) sunGraphics2D.transform.clone(), gradientPaint.getColor1(), gradientPaint.getColor2(), gradientPaint.getPoint1(), gradientPaint.getPoint2(), gradientPaint.isCyclic(), z);
    }
}
