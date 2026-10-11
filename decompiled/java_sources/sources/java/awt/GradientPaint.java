package java.awt;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import com.trans.android.util.ColorUtils;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.ColorModel;
import java.beans.ConstructorProperties;

/* loaded from: classes4.dex */
public class GradientPaint implements Paint, IAndroidGradient {
    Color color1;
    Color color2;
    boolean cyclic;

    /* renamed from: p1 */
    Point2D.Float f97723p1;

    /* renamed from: p2 */
    Point2D.Float f97724p2;

    public GradientPaint(float f, float f2, Color color, float f3, float f4, Color color2) {
        if (color != null && color2 != null) {
            this.f97723p1 = new Point2D.Float(f, f2);
            this.f97724p2 = new Point2D.Float(f3, f4);
            this.color1 = color;
            this.color2 = color2;
            return;
        }
        throw new NullPointerException("Colors cannot be null");
    }

    @Override // java.awt.Paint
    public PaintContext createContext(ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints) {
        return new GradientPaintContext(colorModel, this.f97723p1, this.f97724p2, affineTransform, this.color1, this.color2, this.cyclic);
    }

    public Color getColor1() {
        return this.color1;
    }

    public Color getColor2() {
        return this.color2;
    }

    public Point2D getPoint1() {
        Point2D.Float r2 = this.f97723p1;
        return new Point2D.Float(r2.f97777x, r2.f97778y);
    }

    public Point2D getPoint2() {
        Point2D.Float r2 = this.f97724p2;
        return new Point2D.Float(r2.f97777x, r2.f97778y);
    }

    @Override // java.awt.IAndroidGradient
    public Shader getShader() {
        Point2D.Float r0 = this.f97723p1;
        float f = r0.f97777x;
        float f2 = r0.f97778y;
        Point2D.Float r02 = this.f97724p2;
        return new LinearGradient(f, f2, r02.f97777x, r02.f97778y, ColorUtils.toColorInt(new Color[]{this.color1, this.color2}), (float[]) null, this.cyclic ? Shader.TileMode.REPEAT : Shader.TileMode.CLAMP);
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        return (this.color2.getAlpha() & this.color1.getAlpha()) == 255 ? 1 : 3;
    }

    public boolean isCyclic() {
        return this.cyclic;
    }

    public GradientPaint(Point2D point2D, Color color, Point2D point2D2, Color color2) {
        if (color != null && color2 != null && point2D != null && point2D2 != null) {
            this.f97723p1 = new Point2D.Float((float) point2D.getX(), (float) point2D.getY());
            this.f97724p2 = new Point2D.Float((float) point2D2.getX(), (float) point2D2.getY());
            this.color1 = color;
            this.color2 = color2;
            return;
        }
        throw new NullPointerException("Colors and points should be non-null");
    }

    public GradientPaint(float f, float f2, Color color, float f3, float f4, Color color2, boolean z) {
        this(f, f2, color, f3, f4, color2);
        this.cyclic = z;
    }

    @ConstructorProperties({"point1", "color1", "point2", "color2", "cyclic"})
    public GradientPaint(Point2D point2D, Color color, Point2D point2D2, Color color2, boolean z) {
        this(point2D, color, point2D2, color2);
        this.cyclic = z;
    }
}
