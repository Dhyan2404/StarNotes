package java.awt;

import android.graphics.Shader;
import com.trans.android.util.BridgeUtils;
import java.awt.MultipleGradientPaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.ColorModel;

/* loaded from: classes4.dex */
public final class RadialGradientPaint extends MultipleGradientPaint {
    private final Point2D center;
    private final Point2D focus;
    private final float radius;

    public RadialGradientPaint(float f, float f2, float f3, float[] fArr, Color[] colorArr) {
        this(f, f2, f3, f, f2, fArr, colorArr, MultipleGradientPaint.CycleMethod.NO_CYCLE);
    }

    private static AffineTransform createGradientTransform(Rectangle2D rectangle2D) {
        double centerX = rectangle2D.getCenterX();
        double centerY = rectangle2D.getCenterY();
        AffineTransform translateInstance = AffineTransform.getTranslateInstance(centerX, centerY);
        translateInstance.scale(rectangle2D.getWidth() / 2.0d, rectangle2D.getHeight() / 2.0d);
        translateInstance.translate(-centerX, -centerY);
        return translateInstance;
    }

    @Override // java.awt.Paint
    public PaintContext createContext(ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints) {
        AffineTransform affineTransform2 = new AffineTransform(affineTransform);
        affineTransform2.concatenate(this.gradientTransform);
        return new RadialGradientPaintContext(this, colorModel, rectangle, rectangle2D, affineTransform2, renderingHints, (float) this.center.getX(), (float) this.center.getY(), this.radius, (float) this.focus.getX(), (float) this.focus.getY(), this.fractions, this.colors, this.cycleMethod, this.colorSpace);
    }

    public Point2D getCenterPoint() {
        return new Point2D.Double(this.center.getX(), this.center.getY());
    }

    public Point2D getFocusPoint() {
        return new Point2D.Double(this.focus.getX(), this.focus.getY());
    }

    public float getRadius() {
        return this.radius;
    }

    @Override // java.awt.IAndroidGradient
    public Shader getShader() {
        return BridgeUtils.getRadialGradient(getTransform(), getCenterPoint(), getFocusPoint(), getRadius(), getColors(), getFractions(), getTileMode());
    }

    public RadialGradientPaint(Point2D point2D, float f, float[] fArr, Color[] colorArr) {
        this(point2D, f, point2D, fArr, colorArr, MultipleGradientPaint.CycleMethod.NO_CYCLE);
    }

    public RadialGradientPaint(float f, float f2, float f3, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod) {
        this(f, f2, f3, f, f2, fArr, colorArr, cycleMethod);
    }

    public RadialGradientPaint(Point2D point2D, float f, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod) {
        this(point2D, f, point2D, fArr, colorArr, cycleMethod);
    }

    public RadialGradientPaint(float f, float f2, float f3, float f4, float f5, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod) {
        this(new Point2D.Float(f, f2), f3, new Point2D.Float(f4, f5), fArr, colorArr, cycleMethod);
    }

    public RadialGradientPaint(Point2D point2D, float f, Point2D point2D2, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod) {
        this(point2D, f, point2D2, fArr, colorArr, cycleMethod, MultipleGradientPaint.ColorSpaceType.SRGB, new AffineTransform());
    }

    public RadialGradientPaint(Point2D point2D, float f, Point2D point2D2, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod, MultipleGradientPaint.ColorSpaceType colorSpaceType, AffineTransform affineTransform) {
        super(fArr, colorArr, cycleMethod, colorSpaceType, affineTransform);
        if (point2D == null) {
            throw new NullPointerException("Center point must be non-null");
        }
        if (point2D2 == null) {
            throw new NullPointerException("Focus point must be non-null");
        }
        if (f > 0.0f) {
            this.center = new Point2D.Double(point2D.getX(), point2D.getY());
            this.focus = new Point2D.Double(point2D2.getX(), point2D2.getY());
            this.radius = f;
            return;
        }
        throw new IllegalArgumentException("Radius must be greater than zero");
    }

    public RadialGradientPaint(Rectangle2D rectangle2D, float[] fArr, Color[] colorArr, MultipleGradientPaint.CycleMethod cycleMethod) {
        this(new Point2D.Double(rectangle2D.getCenterX(), rectangle2D.getCenterY()), 1.0f, new Point2D.Double(rectangle2D.getCenterX(), rectangle2D.getCenterY()), fArr, colorArr, cycleMethod, MultipleGradientPaint.ColorSpaceType.SRGB, createGradientTransform(rectangle2D));
        if (rectangle2D.isEmpty()) {
            throw new IllegalArgumentException("Gradient bounds must be non-empty");
        }
    }
}
